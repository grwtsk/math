# near_main_eq_integral

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:84a37abe-2b9c-e996-5841-2565c1973134",
  "kind": "theorem",
  "lexical_name": "near_main_eq_integral",
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
  "slug": "near-main-eq-integral--c76aa212324158c0cece3e13",
  "source": {
    "blob": "e85f0b8c39898f7e934d1b0af1e60466c41cfd6d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 252,
    "line": 206,
    "path": "GRWTSK/Topology/GeneralTopology/SourceActualNearCriticalRelative/Variant2e82e408dd5df82278010dd42dc80200f679f62d6d31b295e0262bf116922ef7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c76aa212324158c0cece3e13775310bc90e4c346fd2e5b3fb2fbfd0903fce9b1",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/SourceActualNearCriticalRelative/Variant2e82e408dd5df82278010dd42dc80200f679f62d6d31b295e0262bf116922ef7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:84a37abe-2b9c-e996-5841-2565c1973134`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 206–252.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem near_main_eq_integral {A : ℝ} (hA : 1 ≤ A) :
    actualNearCriticalRelativeMain A =
      (1 / 2 : ℝ) * ∫ t in 0..2 * Real.log A,
        Real.exp (t / 2) * relativePsiError t := by
  have hp : 0 < A := by linarith
  have hT : 0 ≤ 2 * Real.log A := by positivity [Real.log_nonneg hA]
  have hY : 1 ≤ A ^ 2 := by nlinarith
  have hex : Real.exp (2 * Real.log A) = A ^ 2 := by
    rw [show 2 * Real.log A = Real.log A + Real.log A by ring,
      Real.exp_add, Real.exp_log hp]
    ring
  have hc : (fun t : ℝ => Real.exp t *
      ((Chebyshev.psi (Real.exp t) - Real.exp t) /
        (Real.exp t * Real.sqrt (Real.exp t)))) =
      fun t => Real.exp (t / 2) * relativePsiError t := by
    funext t
    rw [Real.sqrt_eq_rpow, Real.exp_mul]
    unfold relativePsiError
    have hx : Real.exp t * Real.exp (-t) = 1 := by
      rw [← Real.exp_add, add_neg_cancel, Real.exp_zero]
    have hh : Real.exp (t / 2) ^ 2 = Real.exp t := by
      rw [sq, ← Real.exp_add]
      congr 1
      ring
    have h1 : Real.exp (t / 2) ≠ 0 := (Real.exp_pos _).ne'
    field_simp
    nlinarith
  have hs := intervalIntegral.integral_comp_mul_deriv_of_deriv_nonneg
    (a := 0) (b := 2 * Real.log A) (f := Real.exp)
    (g := fun x : ℝ => (Chebyshev.psi x - x) / (x * Real.sqrt x))
  have hsub : (∫ t in 0..2 * Real.log A,
      Real.exp (t / 2) * relativePsiError t) =
      ∫ x in 1..A ^ 2, (Chebyshev.psi x - x) / (x * Real.sqrt x) := by
    have hi := integral_comp_exp (a := 0) (b := 2 * Real.log A)
      (f := fun x : ℝ => (Chebyshev.psi x - x) / (x * Real.sqrt x))
    simpa only [Real.exp_zero, hex, smul_eq_mul, hc] using hi
  rw [hsub, physical_relative_half hY]
  unfold actualNearCriticalRelativeMain actualMangoldtHalfClosedPrefix
  rw [hex, Real.sqrt_sq_eq_abs, abs_of_pos hp]
  have hI : Finset.Icc 0 ⌊A ^ 2⌋₊ = insert 0 (Finset.Ioc 0 ⌊A ^ 2⌋₊) := by
    ext n
    simp only [Finset.mem_Icc, Finset.mem_insert, Finset.mem_Ioc]
    omega
  rw [hI, Finset.sum_insert (by simp)]
  simp

/-- A vanishing unscaled remainder pays the whole genuine near relative-Psi sector. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/SourceActualNearCriticalRelative/Variant2e82e408dd5df82278010dd42dc80200f679f62d6d31b295e0262bf116922ef7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/SourceActualNearCriticalRelative/Variant2e82e408dd5df82278010dd42dc80200f679f62d6d31b295e0262bf116922ef7.lean#L206).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e85f0b8c39898f7e934d1b0af1e60466c41cfd6d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
