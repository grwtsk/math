# near_main_eq_integral

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d16a98aa-32e3-8643-dc0b-1a296ef3a9b9",
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
  "slug": "near-main-eq-integral--6f1a3d4c45b02693a2653f7b",
  "source": {
    "blob": "bf239ee13b35a3e41e4dd07ad000533458bb2d1a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 264,
    "line": 213,
    "path": "GRWTSK/Topology/GeneralTopology/SourceActualNearCriticalRelative/Varianta94fd667a6ad2dd40aefb7abe88096546f4f2170268fd29ed9ba040a82317f6c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6f1a3d4c45b02693a2653f7ba2e939a77d1c1bfcf918c0cba6e2be44fa43f4ac",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/SourceActualNearCriticalRelative/Varianta94fd667a6ad2dd40aefb7abe88096546f4f2170268fd29ed9ba040a82317f6c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d16a98aa-32e3-8643-dc0b-1a296ef3a9b9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 213–264.

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
    rw [Real.sqrt_eq_rpow, ← Real.exp_mul, show t * (1 / 2 : ℝ) = t / 2 by ring]
    unfold relativePsiError
    rw [Real.exp_neg]
    have hh : Real.exp (t / 2) ^ 2 = Real.exp t := by
      rw [sq, ← Real.exp_add]
      congr 1
      ring
    have h1 : Real.exp (t / 2) ≠ 0 := (Real.exp_pos _).ne'
    field_simp
    nlinarith
  have hsub : (∫ t in 0..2 * Real.log A,
      Real.exp (t / 2) * relativePsiError t) =
      ∫ x in 1..A ^ 2, (Chebyshev.psi x - x) / (x * Real.sqrt x) := by
    have hd (t : ℝ) (_ht : t ∈ Ioo (min 0 (2 * Real.log A))
        (max 0 (2 * Real.log A))) : HasDerivAt Real.exp (Real.exp t) t :=
      Real.hasDerivAt_exp t
    have hi := intervalIntegral.integral_comp_mul_deriv_of_deriv_nonneg
      Real.continuous_exp.continuousOn hd (fun t _ => (Real.exp_pos t).le)
      (g := fun x : ℝ => (Chebyshev.psi x - x) / (x * Real.sqrt x))
    have hc' : (fun t : ℝ =>
        ((fun x : ℝ => (Chebyshev.psi x - x) / (x * Real.sqrt x)) ∘ Real.exp) t *
          Real.exp t) = fun t => Real.exp (t / 2) * relativePsiError t := by
      simpa only [Function.comp_apply, mul_comm] using hc
    rw [hc', Real.exp_zero, hex] at hi
    exact hi
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

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/SourceActualNearCriticalRelative/Varianta94fd667a6ad2dd40aefb7abe88096546f4f2170268fd29ed9ba040a82317f6c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/SourceActualNearCriticalRelative/Varianta94fd667a6ad2dd40aefb7abe88096546f4f2170268fd29ed9ba040a82317f6c.lean#L213).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bf239ee13b35a3e41e4dd07ad000533458bb2d1a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
