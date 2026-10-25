# LocalRuleSet.trace

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:536988c668c2f380fa6437434fc794be4fcd62b6c55bbea7373982076bba93f7",
  "kind": "def",
  "lexical_name": "LocalRuleSet.trace",
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
  "slug": "localruleset-trace--39dea23c638087a5c4f6bc25",
  "source": {
    "blob": "1069d357ec7c206dbbad9cc19842067e269ea8dc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 234,
    "line": 218,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RuleSet/Variant7d08d9588a327688bb48a5c548f6ab7e2c2f9a3d1139f30f7287a1aa5f32ff68.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:39dea23c638087a5c4f6bc253c5f4de4b76d6f5406037150fe0f6dc4ffae3723",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RuleSet/Variant7d08d9588a327688bb48a5c548f6ab7e2c2f9a3d1139f30f7287a1aa5f32ff68.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:536988c668c2f380fa6437434fc794be4fcd62b6c55bbea7373982076bba93f7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 218–234.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def LocalRuleSet.trace (rs : LocalRuleSet) (traceOpt : TraceOption) :
    CoreM Unit := do
  if ! (← traceOpt.isEnabled) then
    return
  rs.toBaseRuleSet.trace traceOpt
  withConstAesopTraceNode traceOpt (return "Simp sets used by normalisation simp:") do
    rs.simpTheoremsArray.map (printSimpSetName ·.fst) |>.qsortOrd.forM λ s => do
      aesop_trace![traceOpt] s
  withConstAesopTraceNode traceOpt (return "Local normalisation simp theorems") do
    for r in rs.localNormSimpRules.map (·.simpTheorem) do
      aesop_trace![traceOpt] r
where
  printSimpSetName : Name → String
    | `_ => "<default>"
    | n => toString n


```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RuleSet/Variant7d08d9588a327688bb48a5c548f6ab7e2c2f9a3d1139f30f7287a1aa5f32ff68.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RuleSet/Variant7d08d9588a327688bb48a5c548f6ab7e2c2f9a3d1139f30f7287a1aa5f32ff68.lean#L218).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1069d357ec7c206dbbad9cc19842067e269ea8dc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
