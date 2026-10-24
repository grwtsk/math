# embeddingMatrixEquiv_rationalCoordinates

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:4f23b65a-06fa-7b54-0411-3b480e6acb08",
  "kind": "theorem",
  "lexical_name": "embeddingMatrixEquiv_rationalCoordinates",
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
  "slug": "embeddingmatrixequiv-rationalcoordinates--84456d5e58ea43ab3ce53526",
  "source": {
    "blob": "ba778c311687f285edd2a8c02f895e8a9d9059bc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 129,
    "line": 113,
    "path": "GRWTSK/NumberTheory/NumberField/TotallyRealSignApproximation.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:84456d5e58ea43ab3ce53526a6718aabcd3988bc1a6918131e0a40b97dfb56f0",
  "verification": {
    "reference": "docs/verification/NumberTheory/AlgebraicNumberTheory/NumberFields/TotallyRealSignApproximation.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4f23b65a-06fa-7b54-0411-3b480e6acb08`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 113–129.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem embeddingMatrixEquiv_rationalCoordinates
    (b : Module.Basis (Fin n) ℚ K)
    (σ : EmbeddingOrder K n)
    (q : Fin n → ℚ) :
    embeddingMatrixEquiv b σ (fun i => (q i : ℝ)) =
      realEmbeddingVector σ (b.equivFun.symm q) := by
  funext j
  change
    ∑ i, orderedRealEmbedding σ j (b i) * (q i : ℝ) =
      orderedRealEmbedding σ j (b.equivFun.symm q)
  rw [Module.Basis.equivFun_symm_apply, map_sum]
  apply Finset.sum_congr rfl
  intro i _
  simp [map_smul, Rat.smul_def, mul_comm]

/-- The diagonal embedding of a totally real number field is dense in its
finite real embedding space. This is finite archimedean weak approximation. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/AlgebraicNumberTheory/NumberFields/TotallyRealSignApproximation.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/NumberField/TotallyRealSignApproximation.lean#L113).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ba778c311687f285edd2a8c02f895e8a9d9059bc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
