# go_Inv_of_Inv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b7e9a81e-5106-232a-0aa5-c9b1261cd313",
  "kind": "theorem",
  "lexical_name": "go_Inv_of_Inv",
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
  "slug": "go-inv-of-inv--b960c5f0e28e10bfdb5097b0",
  "source": {
    "blob": "e8c2448ea337836b573ed636737c6f98c39341e6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 75,
    "line": 39,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variantfd26d31ec948dccd2045b0ffaded4abc8a8885cf6b55a55352777679226fe2b6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b960c5f0e28e10bfdb5097b09aee88e1f0ae9fbb27e8c05d839fe9a1902aadbb",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variantfd26d31ec948dccd2045b0ffaded4abc8a8885cf6b55a55352777679226fe2b6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b7e9a81e-5106-232a-0aa5-c9b1261cd313`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 39–75.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem go_Inv_of_Inv (expr : BVLogicalExpr) (aig : AIG BVBit) (assign : BVExpr.Assignment)
    (cache : BVExpr.Cache aig) (hinv : BVExpr.Cache.Inv assign aig cache) :
    BVExpr.Cache.Inv assign (go aig expr cache).result.val.aig (go aig expr cache).cache := by
  induction expr generalizing aig with
  | const =>
    simp only [go]
    apply BVExpr.Cache.Inv_cast
    · apply IsPrefix.rfl
    · exact hinv
  | literal =>
    simp only [go]
    apply BVPred.bitblast_Inv_of_Inv
    exact hinv
  | not expr ih =>
    simp only [go]
    apply BVExpr.Cache.Inv_cast
    · apply LawfulOperator.isPrefix_aig (f := mkNotCached)
    · apply ih
      exact hinv
  | gate g lhs rhs lih rih =>
    cases g
    all_goals
      simp [go]
      apply BVExpr.Cache.Inv_cast
      · apply LawfulOperator.isPrefix_aig
      · apply rih
        apply lih
        exact hinv
  | ite discr lhs rhs dih lih rih =>
    simp only [go]
    apply BVExpr.Cache.Inv_cast
    · apply LawfulOperator.isPrefix_aig (f := mkIfCached)
    · apply rih
      apply lih
      apply dih
      exact hinv

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variantfd26d31ec948dccd2045b0ffaded4abc8a8885cf6b55a55352777679226fe2b6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variantfd26d31ec948dccd2045b0ffaded4abc8a8885cf6b55a55352777679226fe2b6.lean#L39).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e8c2448ea337836b573ed636737c6f98c39341e6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
