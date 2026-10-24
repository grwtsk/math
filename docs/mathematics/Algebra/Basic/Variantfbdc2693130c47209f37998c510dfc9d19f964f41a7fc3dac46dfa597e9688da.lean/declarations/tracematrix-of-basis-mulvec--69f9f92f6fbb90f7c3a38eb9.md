# traceMatrix_of_basis_mulVec

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b6796d00-e0db-7f29-8221-54061c316083",
  "kind": "theorem",
  "lexical_name": "traceMatrix_of_basis_mulVec",
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
  "slug": "tracematrix-of-basis-mulvec--69f9f92f6fbb90f7c3a38eb9",
  "source": {
    "blob": "152c6c70403a104029f09e17b870bde34c604eb1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 366,
    "line": 340,
    "path": "GRWTSK/Algebra/Basic/Variantfbdc2693130c47209f37998c510dfc9d19f964f41a7fc3dac46dfa597e9688da.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:69f9f92f6fbb90f7c3a38eb9b91d8bef8bccd895ad9f2c2bfd0bb5777c43a91d",
  "verification": {
    "reference": "docs/verification/Algebra/Basic/Variantfbdc2693130c47209f37998c510dfc9d19f964f41a7fc3dac46dfa597e9688da.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b6796d00-e0db-7f29-8221-54061c316083`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 340–366.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem traceMatrix_of_basis_mulVec (b : Basis ι A B) (z : B) :
    traceMatrix A b *ᵥ b.equivFun z = fun i => trace A B (z * b i) := by
  ext i
  rw [← replicateCol_apply (ι := Fin 1) (traceMatrix A b *ᵥ b.equivFun z) i 0, replicateCol_mulVec,
    Matrix.mul_apply, traceMatrix]
  simp only [replicateCol_apply, traceForm_apply]
  conv_lhs =>
    congr
    rfl
    ext
    rw [mul_comm _ (b.equivFun z _), ← smul_eq_mul, of_apply, ← LinearMap.map_smul]
  rw [← _root_.map_sum]
  congr
  conv_lhs =>
    congr
    rfl
    ext
    rw [← mul_smul_comm]
  rw [← Finset.mul_sum, mul_comm z]
  congr
  rw [b.sum_equivFun]

variable (A)

/-- `embeddingsMatrix A C b : Matrix κ (B →ₐ[A] C) C` is the matrix whose `(i, σ)` coefficient is
  `σ (b i)`. It is mostly useful for fields when `Fintype.card κ = finrank A B` and `C` is
  algebraically closed. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Basic/Variantfbdc2693130c47209f37998c510dfc9d19f964f41a7fc3dac46dfa597e9688da.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Basic/Variantfbdc2693130c47209f37998c510dfc9d19f964f41a7fc3dac46dfa597e9688da.lean#L340).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `152c6c70403a104029f09e17b870bde34c604eb1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
