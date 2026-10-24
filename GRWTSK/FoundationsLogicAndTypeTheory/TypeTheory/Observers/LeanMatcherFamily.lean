import Lean

/-! Forward matcher API observations. Caller-owned source, imports and runtime
must be byte-qualified separately. These relations do not identify a semantic
source owner, complete every generator, replay consumers or admit declarations. -/
open Lean
namespace LeanMatcherFamily

def profile := "LEAN-MATCHER-API-RELATIONS/v1"
def obj := Json.mkObj
partial def nameJson : Name → Json
  | .anonymous => obj [("tag", toJson "anonymous")]
  | .str p s => obj [("tag", toJson "str"), ("prefix", nameJson p), ("value", toJson s)]
  | .num p n => obj [("tag", toJson "num"), ("prefix", nameJson p), ("value", toJson n)]
def names (ns : Array Name) := toJson (ns.map nameJson)

def infoJson (info : Meta.MatcherInfo) : Json := obj [
  ("num_params", toJson info.numParams), ("num_discriminants", toJson info.numDiscrs),
  ("num_alternatives", toJson info.numAlts), ("arity", toJson info.arity),
  ("elimination_universe_position", toJson info.uElimPos?),
  ("alternatives", toJson (info.altInfos.map fun a => obj [
    ("num_fields", toJson a.numFields), ("num_overlaps", toJson a.numOverlaps),
    ("unit_thunk", toJson a.hasUnitThunk)]))]

def added (before after : Environment) : Array Name :=
  after.checked.get.constants.foldStage2 (fun ns n _ =>
    if (before.find? n).isNone then ns.push n else ns) (#[] : Array Name)
    |>.qsort Name.lt

def observeWithMembers (candidates : Array Name) (includeCongruence : Bool := true) : MetaM (Json × Array Name) := do
  if Lean.versionString != "4.33.0" then throwError "MATCHER_TOOLCHAIN_4_33_REQUIRED"
  if candidates.size > 128 then throwError "MATCHER_CANDIDATES_LIMIT_128"
  if candidates.toList.eraseDups.length != candidates.size then throwError "MATCHER_DUPLICATE_CANDIDATE"
  let mut rows : Array Json := #[]
  let mut observed : Array Name := #[]
  for candidate in candidates do
    let before ← getEnv
    let resolution := if (before.find? candidate).isSome then "KNOWN" else "UNAVAILABLE"
    let common := [("candidate", nameJson candidate), ("candidate_resolution", toJson resolution),
      ("source_owner", toJson "UNAVAILABLE_NOT_SUPPLIED_BY_MATCHER_API"),
      ("source_commands", toJson "NOT_OBSERVED"), ("complete_context", toJson "UNAVAILABLE"),
      ("whole_generated_family", toJson "UNAVAILABLE_OTHER_GENERATORS_NOT_ENUMERATED"),
      ("kernel_admission", toJson "NOT_CLAIMED")]
    match Meta.getMatcherInfoCore? before candidate with
    | none =>
      rows := rows.push (obj (common ++ [("matcher_status", toJson (if resolution == "KNOWN" then "NOT_MATCHER" else "UNAVAILABLE")),
        ("matcher_info", Json.null), ("splitter_info", Json.null), ("relations", toJson (#[] : Array Json)),
        ("new_constants", names #[])]))
    | some info =>
      if info.numAlts > 63 then throwError "MATCHER_ALTERNATIVES_LIMIT_63"
      let equations ← Meta.Match.getEquationsFor candidate
      let congruence ← if includeCongruence then Meta.Match.genMatchCongrEqns candidate else pure #[]
      let after ← getEnv
      let mkRelation (member : Name) (role api : String) := obj [
        ("member", nameJson member), ("matcher", nameJson candidate), ("role", toJson role),
        ("api", toJson api), ("match_equation_predicate", toJson (Meta.Match.isMatchEqnTheorem after member))]
      let relations := equations.eqnNames.map (fun n => mkRelation n "match_equation" "Lean.Meta.Match.getEquationsFor") ++
        #[mkRelation equations.splitterName "splitter" "Lean.Meta.Match.getEquationsFor"] ++
        congruence.map (fun n => mkRelation n "congruence_equation" "Lean.Meta.Match.genMatchCongrEqns")
      if relations.size > 128 then throwError "MATCHER_MEMBERS_LIMIT_128"
      for member in equations.eqnNames ++ #[equations.splitterName] ++ congruence ++ added before after do
        unless observed.contains member do observed := observed.push member
      rows := rows.push (obj (common ++ [("matcher_status", toJson "KNOWN"),
        ("matcher_info", infoJson info), ("splitter_info", infoJson equations.splitterMatchInfo),
        ("relations", toJson relations), ("new_constants", names (added before after))]))
  let result := obj [("profile", toJson profile), ("candidate_count", toJson candidates.size),
    ("include_congruence", toJson includeCongruence), ("rows", toJson rows),
    ("scope", toJson "FORWARD_COMPILER_API_RELATIONS_ONLY"), ("kernel_admission", toJson "NOT_CLAIMED")]
  if result.compress.utf8ByteSize > 4 * 1024 * 1024 then throwError "MATCHER_METADATA_BYTES_LIMIT_4_MIB"
  return (result, observed.qsort Name.lt)

def observe (candidates : Array Name) (includeCongruence : Bool := true) : MetaM Json := do
  return (← observeWithMembers candidates includeCongruence).1
end LeanMatcherFamily
