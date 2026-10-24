# latticeBasis

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:49825ced4266465119a23021272cbdeb38cabe7f31ef9617d3438393ece3c19d",
  "kind": "def",
  "lexical_name": "latticeBasis",
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
  "slug": "latticebasis--29a0973e1683587bd3d1b1b1",
  "source": {
    "blob": "5094e5a04007f4baf640da0e6a490cb8d6bd750b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 138,
    "line": 112,
    "path": "GRWTSK/NumberTheory/AlgebraicNumberTheory/Basic/Variant79467a7873a64a9cb6f47296f8ad6373559f0990c6d860a9384f93cf903f5109.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:29a0973e1683587bd3d1b1b1f823a3d774d6590ec6762245484c0e0d4dcba405",
  "verification": {
    "reference": "docs/verification/NumberTheory/AlgebraicNumberTheory/Basic/Variant79467a7873a64a9cb6f47296f8ad6373559f0990c6d860a9384f93cf903f5109.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:49825ced4266465119a23021272cbdeb38cabe7f31ef9617d3438393ece3c19d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 112–138.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def latticeBasis [NumberField K] :
    Basis (Free.ChooseBasisIndex ℤ (𝓞 K)) ℂ ((K →+* ℂ) → ℂ) := by
  classical
  -- Let `B` be the canonical basis of `(K →+* ℂ) → ℂ`. We prove that the determinant of
  -- the image by `canonicalEmbedding` of the integral basis of `K` is nonzero. This
  -- will imply the result.
    let B := Pi.basisFun ℂ (K →+* ℂ)
    let e : (K →+* ℂ) ≃ Free.ChooseBasisIndex ℤ (𝓞 K) :=
      Fintype.equivOfCardEq ((Embeddings.card K ℂ).trans (finrank_eq_card_basis (integralBasis K)))
    let M := B.toMatrix (fun i => canonicalEmbedding K (integralBasis K (e i)))
    suffices M.det ≠ 0 by
      rw [← isUnit_iff_ne_zero, ← Basis.det_apply, ← Basis.is_basis_iff_det] at this
      exact (basisOfPiSpaceOfLinearIndependent this.1).reindex e
  -- In order to prove that the determinant is nonzero, we show that it is equal to the
  -- square of the discriminant of the integral basis and thus it is not zero
    let N := Algebra.embeddingsMatrixReindex ℚ ℂ (fun i => integralBasis K (e i))
      (RingHom.equivRatAlgHom K ℂ)
    rw [show M = N.transpose by { ext : 2; rfl }]
    rw [Matrix.det_transpose, ← pow_ne_zero_iff two_ne_zero]
    convert!
      (map_ne_zero_iff _ (algebraMap ℚ ℂ).injective).mpr
        (Algebra.discr_not_zero_of_basis ℚ (integralBasis K))
    rw [← Algebra.discr_reindex ℚ (integralBasis K) e.symm]
    exact (Algebra.discr_eq_det_embeddingsMatrixReindex_pow_two ℚ ℂ
      (fun i => integralBasis K (e i)) (RingHom.equivRatAlgHom K ℂ)).symm

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/AlgebraicNumberTheory/Basic/Variant79467a7873a64a9cb6f47296f8ad6373559f0990c6d860a9384f93cf903f5109.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AlgebraicNumberTheory/Basic/Variant79467a7873a64a9cb6f47296f8ad6373559f0990c6d860a9384f93cf903f5109.lean#L112).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5094e5a04007f4baf640da0e6a490cb8d6bd750b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
