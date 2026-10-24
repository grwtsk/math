# tfae_equational_criterion

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0e875e02-9ac8-bb75-34e6-10be6e214ff2",
  "kind": "theorem",
  "lexical_name": "tfae_equational_criterion",
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
  "slug": "tfae-equational-criterion--3152b0118642b556bae26470",
  "source": {
    "blob": "64b398043cd825681679fecfc844744aca33de98",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 174,
    "line": 121,
    "path": "GRWTSK/Algebra/LinearAlgebra/EquationalCriterion/Variant15637e3984b8c716ac4a440ed3ea19edf95132b82beb619e93136c78a86506a7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3152b0118642b556bae26470ed90ac7cbf3600514a58cda2ba5c55a482b109f7",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/EquationalCriterion/Variant15637e3984b8c716ac4a440ed3ea19edf95132b82beb619e93136c78a86506a7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0e875e02-9ac8-bb75-34e6-10be6e214ff2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 121–174.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem tfae_equational_criterion : List.TFAE [
    Flat R M,
    ∀ I : Ideal R, Function.Injective (rTensor M I.subtype),
    ∀ {l : ℕ} {f : Fin l → R} {x : Fin l → M}, ∑ i, f i ⊗ₜ x i = (0 : R ⊗[R] M) →
      VanishesTrivially R f x,
    ∀ {l : ℕ} {f : Fin l → R} {x : Fin l → M}, ∑ i, f i • x i = 0 → IsTrivialRelation f x,
    ∀ {l : ℕ} {f : Fin l →₀ R} {x : (Fin l →₀ R) →ₗ[R] M}, x f = 0 →
      ∃ (k : ℕ) (a : (Fin l →₀ R) →ₗ[R] (Fin k →₀ R)) (y : (Fin k →₀ R) →ₗ[R] M),
        x = y ∘ₗ a ∧ a f = 0] := by
  classical
  tfae_have 1 ↔ 2 := iff_rTensor_injective'
  tfae_have 3 ↔ 2 := forall_vanishesTrivially_iff_forall_rTensor_injective R
  tfae_have 3 ↔ 4 := by
    simp [(TensorProduct.lid R M).injective.eq_iff.symm, isTrivialRelation_iff_vanishesTrivially]
  tfae_have 4 → 5
  | h₄, l, f, x, hfx => by
    let f' : Fin l → R := f
    let x' : Fin l → M := fun i ↦ x (single i 1)
    have := calc
      ∑ i, f' i • x' i
      _ = ∑ i, f i • x (single i 1)         := rfl
      _ = x (∑ i, f i • Finsupp.single i 1) := by simp_rw [map_sum, map_smul]
      _ = x f                               := by
        simp_rw [smul_single, smul_eq_mul, mul_one, univ_sum_single]
      _ = 0                                 := hfx
    obtain ⟨k, a', y', ⟨ha'y', ha'⟩⟩ := h₄ this
    use k
    use Finsupp.linearCombination R (fun i ↦ equivFunOnFinite.symm (a' i))
    use Finsupp.linearCombination R y'
    constructor
    · apply Finsupp.basisSingleOne.ext
      intro i
      simpa [linearCombination_apply, sum_fintype, Finsupp.single_apply] using ha'y' i
    · ext j
      simp only [linearCombination_apply, zero_smul, implies_true, sum_fintype, finset_sum_apply]
      exact ha' j
  tfae_have 5 → 4
  | h₅, l, f, x, hfx => by
    let f' : Fin l →₀ R := equivFunOnFinite.symm f
    let x' : (Fin l →₀ R) →ₗ[R] M := Finsupp.linearCombination R x
    have : x' f' = 0 := by simpa [x', f', linearCombination_apply, sum_fintype] using hfx
    obtain ⟨k, a', y', ha'y', ha'⟩ := h₅ this
    refine ⟨k, fun i ↦ a' (single i 1), fun j ↦ y' (single j 1), fun i ↦ ?_, fun j ↦ ?_⟩
    · simpa [x', ← map_smul, ← map_sum, smul_single] using
        LinearMap.congr_fun ha'y' (Finsupp.single i 1)
    · simp_rw [← smul_eq_mul, ← Finsupp.smul_apply, ← map_smul, ← finset_sum_apply, ← map_sum,
        smul_single, smul_eq_mul, mul_one,
        ← (fun _ ↦ equivFunOnFinite_symm_apply_toFun _ _ : ∀ x, f' x = f x), univ_sum_single]
      simpa using DFunLike.congr_fun ha' j
  tfae_finish

/-- **Equational criterion for flatness**:
a module $M$ is flat if and only if every relation $\sum_i f_i x_i = 0$ in $M$ is trivial. -/
@[stacks 00HK]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/EquationalCriterion/Variant15637e3984b8c716ac4a440ed3ea19edf95132b82beb619e93136c78a86506a7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/EquationalCriterion/Variant15637e3984b8c716ac4a440ed3ea19edf95132b82beb619e93136c78a86506a7.lean#L121).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `64b398043cd825681679fecfc844744aca33de98` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
