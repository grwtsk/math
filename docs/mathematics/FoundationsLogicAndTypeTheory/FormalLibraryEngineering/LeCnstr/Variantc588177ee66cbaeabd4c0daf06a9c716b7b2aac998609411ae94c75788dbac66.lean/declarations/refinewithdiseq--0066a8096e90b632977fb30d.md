# refineWithDiseq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:862926cf9814323e741a6991cfa65d7b05f3dd3319f6105725a52d709f93adf7",
  "kind": "def",
  "lexical_name": "refineWithDiseq",
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
  "slug": "refinewithdiseq--0066a8096e90b632977fb30d",
  "source": {
    "blob": "2a5accc7848eccf91fdde5bb792b38f049012fbb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 103,
    "line": 84,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LeCnstr/Variantc588177ee66cbaeabd4c0daf06a9c716b7b2aac998609411ae94c75788dbac66.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:0066a8096e90b632977fb30db4b5af60c9d3ccfd597940dc2b61055d0e036957",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LeCnstr/Variantc588177ee66cbaeabd4c0daf06a9c716b7b2aac998609411ae94c75788dbac66.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:862926cf9814323e741a6991cfa65d7b05f3dd3319f6105725a52d709f93adf7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 84–103.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def refineWithDiseq (c : LeCnstr) : GoalM LeCnstr := do
  let .add _ x _ := c.p | c.throwUnexpected
  let mut c := c
  repeat
    let some c' ← refineWithDiseqStep? x c | return c
    c := c'
  return c
where
  refineWithDiseqStep? (x : Var) (c : LeCnstr) : GoalM (Option LeCnstr) := do
    let s ← get'
    let cs' := s.diseqs[x]!
    for c' in cs' do
      if c.p == c'.p || c.p.isNegEq c'.p then
        -- Remove `c'`
        modify' fun s => { s with diseqs := s.diseqs.modify x fun cs' => cs'.filter fun c => c.p != c'.p }
        return some { p := c.p.addConst 1, h := .ofLeDiseq c c' }
    return none

set_option compiler.ignoreBorrowAnnotation true in
@[export lean_grind_cutsat_assert_le]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LeCnstr/Variantc588177ee66cbaeabd4c0daf06a9c716b7b2aac998609411ae94c75788dbac66.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LeCnstr/Variantc588177ee66cbaeabd4c0daf06a9c716b7b2aac998609411ae94c75788dbac66.lean#L84).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2a5accc7848eccf91fdde5bb792b38f049012fbb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
