# bitblast_decl_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "e77c8c840a5a44a32412fdcc9bc86be057746a09",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 65,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/8c/8ccad18a8e7c08051c1900dfabcff101a897e70f04b2c63c43c061e40c291827.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:e01daf1d-ecd2-03be-1275-2f1056b5a9a1",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:7d4c800f-42dc-9d31-d940-931ddc9e9a50",
  "kind": "theorem",
  "lexical_name": "bitblast_decl_eq",
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
  "slug": "bitblast-decl-eq--5006ff10bf30b434a72ad05a",
  "source": {
    "blob": "e77c8c840a5a44a32412fdcc9bc86be057746a09",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 96,
    "line": 65,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Pred/Variant8ccad18a8e7c08051c1900dfabcff101a897e70f04b2c63c43c061e40c291827.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5006ff10bf30b434a72ad05a5835d18740dc52d04d1f0338071012b247cd81c2",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Pred/Variant8ccad18a8e7c08051c1900dfabcff101a897e70f04b2c63c43c061e40c291827.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7d4c800f-42dc-9d31-d940-931ddc9e9a50`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 65–96.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem bitblast_decl_eq (aig : AIG BVBit) (input : BVExpr.WithCache BVPred aig) :
    ∀ (idx : Nat) (h1) (h2), (bitblast aig input).result.val.aig.decls[idx]'h2 = aig.decls[idx]'h1 := by
  intro idx h1 h2
  rcases input with ⟨pred, cache⟩
  simp only [BVPred.bitblast]
  cases pred with
  | bin lhs op rhs =>
    cases op with
    | eq =>
      dsimp only
      rw [AIG.LawfulOperator.decl_eq (f := mkEq)]
      rw [BVExpr.bitblast_decl_eq]
      rw [BVExpr.bitblast_decl_eq]
      · apply BVExpr.bitblast_lt_size_of_lt_aig_size
        assumption
      · apply BVExpr.bitblast_lt_size_of_lt_aig_size
        apply BVExpr.bitblast_lt_size_of_lt_aig_size
        assumption
    | ult =>
      simp only
      rw [AIG.LawfulOperator.decl_eq (f := mkUlt)]
      rw [BVExpr.bitblast_decl_eq]
      rw [BVExpr.bitblast_decl_eq]
      · apply BVExpr.bitblast_lt_size_of_lt_aig_size
        assumption
      · apply BVExpr.bitblast_lt_size_of_lt_aig_size
        apply BVExpr.bitblast_lt_size_of_lt_aig_size
        assumption
  | getLsbD expr idx =>
    simp only
    rw [BVExpr.bitblast_decl_eq]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Pred/Variant8ccad18a8e7c08051c1900dfabcff101a897e70f04b2c63c43c061e40c291827.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Pred/Variant8ccad18a8e7c08051c1900dfabcff101a897e70f04b2c63c43c061e40c291827.lean#L65).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e77c8c840a5a44a32412fdcc9bc86be057746a09` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
