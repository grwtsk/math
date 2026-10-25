# getExplanations

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:933fba5cdde3639581480d7eb4bdd19976f20b091fbc7b3a011eb24af947eb3e",
  "kind": "def",
  "lexical_name": "getExplanations",
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
  "slug": "getexplanations--633375b16bd90902c312ea0c",
  "source": {
    "blob": "b83293af180ce45823c46310efb782862baeb4aa",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 342,
    "line": 301,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Shake/Variant72820923a805c9ef6f160b87c7dcbe3683eab5531c1f3a7f0ee24e96cc1ae2e3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:633375b16bd90902c312ea0c028ef276526b81921453debbd425ef5518fc7437",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Shake/Variant72820923a805c9ef6f160b87c7dcbe3683eab5531c1f3a7f0ee24e96cc1ae2e3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:933fba5cdde3639581480d7eb4bdd19976f20b091fbc7b3a011eb24af947eb3e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 301–342.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def getExplanations (s : State) (i : ModuleIdx) : Explanations := Id.run do
  let env := s.env
  let mut deps := default
  for ci in env.header.moduleData[i]!.constants do
    -- Added guard for cases like `structure` that are still exported even if private
    let pubCI? := guard (!isPrivateName ci.name) *> (env.setExporting true).find? ci.name
    let k := { isExported := pubCI?.isSome, isMeta := isDeclMeta' env ci.name }
    deps := visitExpr k ci.name ci.type deps
    if let some e := ci.value? (allowOpaque := true) then
      let k := if k.isMeta then k else
        if pubCI?.any (·.hasValue (allowOpaque := true)) then .pub else .priv
      deps := visitExpr k ci.name e deps

  for use in getExtraModUses env i do
    let j := env.getModuleIdx? use.module |>.get!
    if !deps.contains (j, { use with }) then
      deps := deps.insert (j, { use with }) none

  return deps
where
  /-- Accumulate the results from expression `e` into `deps`. -/
  visitExpr (k : NeedsKind) name e deps :=
    let env := s.env
    Lean.Expr.foldConsts e deps fun c deps => Id.run do
      let mut deps := deps
      if let some c := getDepConstName? s c then
        if let some j := env.getModuleIdxFor? c then
          let k := { k with isMeta := k.isMeta && !isDeclMeta' env c }
          deps := addExplanation j k name c deps
        for indMod in s.indirectModUses[c]?.getD #[] do
          if s.transDeps[i]!.has k indMod then
            deps := addExplanation indMod k name (`_indirect ++ c) deps
      return deps
  addExplanation (j : ModuleIdx) (k : NeedsKind) (use def_ : Name) (deps : Explanations) : Explanations :=
    if
      if let some (some (name', _)) := deps[(j, k)]? then
        decide (use.toString.chars.length < name'.toString.chars.length)
      else true
    then
      deps.insert (j, k) (use, def_)
    else deps

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Shake/Variant72820923a805c9ef6f160b87c7dcbe3683eab5531c1f3a7f0ee24e96cc1ae2e3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Shake/Variant72820923a805c9ef6f160b87c7dcbe3683eab5531c1f3a7f0ee24e96cc1ae2e3.lean#L301).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b83293af180ce45823c46310efb782862baeb4aa` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
