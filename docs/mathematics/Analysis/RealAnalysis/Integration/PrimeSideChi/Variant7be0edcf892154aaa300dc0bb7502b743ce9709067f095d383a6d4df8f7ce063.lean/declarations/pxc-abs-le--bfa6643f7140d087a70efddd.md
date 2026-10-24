# PXc_abs_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8cd995c7-2d60-2aeb-f297-6f268c39d77f",
  "kind": "lemma",
  "lexical_name": "PXc_abs_le",
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
  "slug": "pxc-abs-le--bfa6643f7140d087a70efddd",
  "source": {
    "blob": "b7f058ea3d12e02b6f34456557fc66c69d693d9c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 175,
    "line": 130,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/PrimeSideChi/Variant7be0edcf892154aaa300dc0bb7502b743ce9709067f095d383a6d4df8f7ce063.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:bfa6643f7140d087a70efddd029aee9553dcafa422b49bd58b0a7a7bb78051d0",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/PrimeSideChi/Variant7be0edcf892154aaa300dc0bb7502b743ce9709067f095d383a6d4df8f7ce063.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8cd995c7-2d60-2aeb-f297-6f268c39d77f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 130–175.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma PXc_abs_le (hcheb : ChebyshevMertens) (hc : CoeffOK q c) :
    ∃ x₀ : ℝ, 1 ≤ x₀ ∧ ∀ X : ℝ, x₀ ≤ X → ∀ τ : ℝ, |PXc c X τ| ≤ Real.sqrt X := by
  obtain ⟨x₀, hx₀⟩ := hcheb.cheb1b
  refine ⟨max x₀ 1, le_max_right _ _, fun X hX τ => ?_⟩
  have hXx : x₀ ≤ X := (le_max_left _ _).trans hX
  have hX1 : (1:ℝ) ≤ X := (le_max_right _ _).trans hX
  have hπ3 : (3:ℝ) < π := Real.pi_gt_three
  unfold PXc
  rw [abs_mul, abs_neg, abs_of_pos (by positivity : (0:ℝ) < 1 / π)]
  have hsum : |(∑ n ∈ Finset.Ioc 0 ⌊X⌋₊,
      ((Λ n : ℝ) : ℂ) * c n * (n : ℂ) ^ (-(1 / 2 : ℂ) - Complex.I * τ)).re|
      ≤ ∑ n ∈ Finset.Ioc 0 ⌊X⌋₊, Λ n / Real.sqrt n := by
    refine (Complex.abs_re_le_norm _).trans ?_
    refine (norm_sum_le _ _).trans (Finset.sum_le_sum fun n hn => ?_)
    have hn0 : 0 < n := (Finset.mem_Ioc.1 hn).1
    rw [norm_mul, norm_mul]
    have h1 : ‖((Λ n : ℝ) : ℂ)‖ = Λ n := by
      rw [Complex.norm_real, Real.norm_eq_abs, abs_of_nonneg ArithmeticFunction.vonMangoldt_nonneg]
    have h2 : ‖(n : ℂ) ^ (-(1 / 2 : ℂ) - Complex.I * τ)‖ = 1 / Real.sqrt n := by
      rw [Complex.norm_natCast_cpow_of_pos hn0]
      have hre : (-(1 / 2 : ℂ) - Complex.I * τ).re = -(1/2 : ℝ) := by simp
      rw [hre, Real.rpow_neg (Nat.cast_nonneg n), ← Real.sqrt_eq_rpow, one_div]
    rw [h1, h2]
    calc Λ n * ‖c n‖ * (1 / Real.sqrt n) ≤ Λ n * 1 * (1 / Real.sqrt n) := by
          gcongr
          exact hc.norm_le n
      _ = Λ n / Real.sqrt n := by ring
  calc 1 / π * |(∑ n ∈ Finset.Ioc 0 ⌊X⌋₊,
        ((Λ n : ℝ) : ℂ) * c n * (n : ℂ) ^ (-(1 / 2 : ℂ) - Complex.I * τ)).re|
      ≤ 1 / π * ∑ n ∈ Finset.Ioc 0 ⌊X⌋₊, Λ n / Real.sqrt n := by
        apply mul_le_mul_of_nonneg_left hsum (by positivity)
    _ ≤ 1 / π * (3 * Real.sqrt X) := by
        apply mul_le_mul_of_nonneg_left (hx₀ X hXx) (by positivity)
    _ ≤ Real.sqrt X := by
        rw [div_mul_eq_mul_div, one_mul, div_le_iff₀ (by positivity)]
        nlinarith [Real.sqrt_nonneg X]

end RegimeChi

/-! ## The P-part Fourier identities for χ (Core-typed; phases via the complex Dirichlet kernel) -/

section PPartChi

variable {cϱ : ℝ} {p : Setting} {F : LocalFun}

/-- Core copy of `integral_phiHat_sq_mul_sin` (the original is typed over full `LocalHyps`). -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/PrimeSideChi/Variant7be0edcf892154aaa300dc0bb7502b743ce9709067f095d383a6d4df8f7ce063.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/PrimeSideChi/Variant7be0edcf892154aaa300dc0bb7502b743ce9709067f095d383a6d4df8f7ce063.lean#L130).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b7f058ea3d12e02b6f34456557fc66c69d693d9c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
