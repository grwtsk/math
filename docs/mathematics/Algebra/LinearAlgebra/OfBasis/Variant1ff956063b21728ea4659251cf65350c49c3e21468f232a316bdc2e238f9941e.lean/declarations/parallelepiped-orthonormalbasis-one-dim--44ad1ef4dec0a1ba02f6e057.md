# parallelepiped_orthonormalBasis_one_dim

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:38d56d11-6ceb-ba3f-0140-a003c486e004",
  "kind": "theorem",
  "lexical_name": "parallelepiped_orthonormalBasis_one_dim",
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
  "slug": "parallelepiped-orthonormalbasis-one-dim--44ad1ef4dec0a1ba02f6e057",
  "source": {
    "blob": "80762f57a53ae70ce74df570bbf12b707c94bece",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 128,
    "line": 100,
    "path": "GRWTSK/Algebra/LinearAlgebra/OfBasis/Variant1ff956063b21728ea4659251cf65350c49c3e21468f232a316bdc2e238f9941e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:44ad1ef4dec0a1ba02f6e05796b7935bec43ea5c65ad1ec832573e1c254dadf6",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/OfBasis/Variant1ff956063b21728ea4659251cf65350c49c3e21468f232a316bdc2e238f9941e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:38d56d11-6ceb-ba3f-0140-a003c486e004`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 100–128.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem parallelepiped_orthonormalBasis_one_dim (b : OrthonormalBasis ι ℝ ℝ) :
    parallelepiped b = Icc 0 1 ∨ parallelepiped b = Icc (-1) 0 := by
  have e : ι ≃ Fin 1 := by
    apply Fintype.equivFinOfCardEq
    simp only [← finrank_eq_card_basis b.toBasis, finrank_self]
  have B : parallelepiped (b.reindex e) = parallelepiped b := by
    convert parallelepiped_comp_equiv b e.symm
    ext i
    simp only [OrthonormalBasis.coe_reindex]
  rw [← B]
  let F : ℝ → Fin 1 → ℝ := fun t => fun _i => t
  have A : Icc (0 : Fin 1 → ℝ) 1 = F '' Icc (0 : ℝ) 1 := by
    apply Subset.antisymm
    · intro x hx
      refine ⟨x 0, ⟨hx.1 0, hx.2 0⟩, ?_⟩
      ext j
      simp only [F, Subsingleton.elim j 0]
    · rintro x ⟨y, hy, rfl⟩
      exact ⟨fun _j => hy.1, fun _j => hy.2⟩
  rcases orthonormalBasis_one_dim (b.reindex e) with (H | H)
  · left
    simp_rw [parallelepiped, H, A, Algebra.id.smul_eq_mul, mul_one]
    simp only [F, Finset.univ_unique, Fin.default_eq_zero, Finset.sum_singleton,
      ← image_comp, Function.comp_apply, image_id']
  · right
    simp_rw [H, parallelepiped, Algebra.id.smul_eq_mul, A]
    simp only [F, Finset.univ_unique, Fin.default_eq_zero, mul_neg, mul_one, Finset.sum_neg_distrib,
      Finset.sum_singleton, ← image_comp, Function.comp, image_neg_eq_neg, neg_Icc, neg_zero]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/OfBasis/Variant1ff956063b21728ea4659251cf65350c49c3e21468f232a316bdc2e238f9941e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/OfBasis/Variant1ff956063b21728ea4659251cf65350c49c3e21468f232a316bdc2e238f9941e.lean#L100).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `80762f57a53ae70ce74df570bbf12b707c94bece` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
