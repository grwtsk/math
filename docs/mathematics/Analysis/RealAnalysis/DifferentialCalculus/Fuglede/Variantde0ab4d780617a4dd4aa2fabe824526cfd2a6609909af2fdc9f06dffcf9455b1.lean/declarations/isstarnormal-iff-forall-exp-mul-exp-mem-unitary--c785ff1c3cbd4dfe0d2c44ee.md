# isStarNormal_iff_forall_exp_mul_exp_mem_unitary

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8577454c-02af-c5ed-213c-00af0400f6f5",
  "kind": "lemma",
  "lexical_name": "isStarNormal_iff_forall_exp_mul_exp_mem_unitary",
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
  "slug": "isstarnormal-iff-forall-exp-mul-exp-mem-unitary--c785ff1c3cbd4dfe0d2c44ee",
  "source": {
    "blob": "fa1c8cc85608a37cd06ecb3ba0cb802aa95a44b8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 173,
    "line": 114,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Fuglede/Variantde0ab4d780617a4dd4aa2fabe824526cfd2a6609909af2fdc9f06dffcf9455b1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c785ff1c3cbd4dfe0d2c44eeefb91c0a6056c4e0120492d8ca1b72bd4a022204",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/Fuglede/Variantde0ab4d780617a4dd4aa2fabe824526cfd2a6609909af2fdc9f06dffcf9455b1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8577454c-02af-c5ed-213c-00af0400f6f5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 114–173.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
public lemma isStarNormal_iff_forall_exp_mul_exp_mem_unitary {a : A} :
    IsStarNormal a ↔ ∀ x : ℝ, exp (x • a) * exp (-x • star a) ∈ unitary A := by
  let _ : NormedAlgebra ℚ A := .restrictScalars ℚ ℂ A
  have : IsAddTorsionFree A := IsAddTorsionFree.of_module_rat A
  refine ⟨fun ha x ↦ ?_, fun ha ↦ ?_⟩
  /- If `a` is normal, then clearly `exp (x • a) * exp (- x • star a) = exp (I • x • 2 • ℑ a)`
  and the latter is clearly an exponential unitary. -/
  · convert! (selfAdjoint.expUnitary (x • (2 : ℝ) • ℑ a)).2
    have hcomm := star_comm_self (x := a) |>.symm.smul_left x |>.smul_right (-x)
    rw [← exp_add_of_commute hcomm]
    simp [imaginaryPart_apply_coe, smul_comm (2 : ℝ) I, smul_comm x I, smul_smul I I, smul_add x,
      sub_eq_add_neg]
  /- Take any `x : ℝ` and suppose `u := exp (x • a) * exp (- x • a)` is unitary. Then
  `exp (- x • a) * exp (x • star a) = star u = u⁻¹ = exp (x • star a) * exp (- x • a)`. -/
  · have key : ∀ x : ℝ, exp (- x • a) * exp (x • star a) = exp (x • star a) * exp (- x • a) := by
      intro x
      let u : unitary A := ⟨_, ha x⟩
      convert! congr(($(Unitary.star_eq_inv u) : A))
      · simp [u, star_exp]
      · simp_rw [u, ← Unitary.val_inv_toUnits_apply, neg_smul, ← Units.mul_eq_one_iff_eq_inv,
          Unitary.val_toUnits_apply]
        let _ := invertibleExp (𝔸 := A)
        rw [mul_assoc]
        simp [← invOf_exp]
    /- Compute the second derivative with respect to `x` of each side of this expression and
    evaluate at `x = 0`. -/
    have h_deriv (a b c : A) (y : ℝ) :
        deriv (fun x : ℝ ↦ exp (x • a) * c * exp (x • b)) y =
          exp (y • a) * (a * c + c * b) * exp (y • b) := by
      rw [mul_add, add_mul, ← mul_assoc _ a, ← mul_assoc _ c b, mul_assoc _ b]
      exact (hasDerivAt_exp_smul_const a y).mul_const c |>.mul
        (hasDerivAt_exp_smul_const' b y) |>.deriv
    have h_deriv₂ (a b : A) :
        deriv (fun y ↦ deriv (fun x : ℝ ↦ exp (x • a) * exp (x • b)) y) 0 =
          a ^ 2 + 2 • (a * b) + b ^ 2 := by
      conv => enter [1, 1, y, 1, x, 1]; rw [← mul_one (exp (x • a))]
      simp_rw [h_deriv, zero_smul, NormedSpace.exp_zero, mul_one, one_mul]
      noncomm_ring
    have h₃ := h_deriv₂ (-a) (star a)
    have h₄ := h_deriv₂ (star a) (-a)
    simp only [smul_neg, even_two, Even.neg_pow, neg_smul] at h₃ h₄ key
    /- By `key`, these second derivatives evaluated at zero must be equal, so we find
    `a ^ 2 + 2 • (- a * star a) + (star a) ^ 2 = star ^ 2 + 2 • (star a * a) + a ^ 2`,
    and then elementary algebra shows `star a * a = a * star a`, so `a` is normal.  -/
    simp_rw [key] at h₃
    rw [h₃] at h₄
    rw [isStarNormal_iff, commute_iff_eq]
    apply nsmul_right_injective two_ne_zero
    rw [← sub_eq_zero] at h₄ ⊢
    rw [← h₄]
    noncomm_ring

end Unital

section NonUnital

variable [NonUnitalCStarAlgebra A] {a b x : A}

/-- **Fuglede–Putnam–Rosenblum**: If `a` and `b` are normal elements in a C⋆-algebra `A` which
are interwined by `x`, then `star a` and `star b` are also intertwined by `x`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/Fuglede/Variantde0ab4d780617a4dd4aa2fabe824526cfd2a6609909af2fdc9f06dffcf9455b1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Fuglede/Variantde0ab4d780617a4dd4aa2fabe824526cfd2a6609909af2fdc9f06dffcf9455b1.lean#L114).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fa1c8cc85608a37cd06ecb3ba0cb802aa95a44b8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
