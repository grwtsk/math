# observeWithMembers

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:96a8bb1d4c4069f8724f273ecd05e66b3ee25608d12cd3d88e6460c4b762903e",
  "kind": "def",
  "lexical_name": "observeWithMembers",
  "mathematical_admission": "NOT_CLAIMED",
  "metrics": [
    {
      "coverage": "No exact-source compiler-observed verification dependency graph supplied.",
      "id": "spectral_log_volume",
      "profile": "docs/reference/ranking-profile.json",
      "profile_id": "spectral-volume-radius3-v1",
      "profile_sha256": "f8800b2ae8ab1d08df856bc79abc53dbafa1cbd922963b7247e927bf0ed9afd6",
      "radius": 3,
      "reason": "verification_dependency_graph_unavailable",
      "status": "UNAVAILABLE",
      "value": null
    }
  ],
  "schema": "grwtsk.source-declaration-article/1",
  "slug": "observewithmembers--54dc03107c132effd49c498e",
  "source": {
    "blob": "1fd14e85391a1a62262b687bff0428463d1c1db4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 71,
    "line": 30,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/TypeTheory/Observers/LeanMatcherFamily.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:54dc03107c132effd49c498e767236fc942e26a6d2ba723dd1dd43a55f2e1b70",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/TypeTheory/Observers/LeanMatcherFamily.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:96a8bb1d4c4069f8724f273ecd05e66b3ee25608d12cd3d88e6460c4b762903e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 30–71.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
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

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/TypeTheory/Observers/LeanMatcherFamily.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/TypeTheory/Observers/LeanMatcherFamily.lean#L30).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1fd14e85391a1a62262b687bff0428463d1c1db4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
