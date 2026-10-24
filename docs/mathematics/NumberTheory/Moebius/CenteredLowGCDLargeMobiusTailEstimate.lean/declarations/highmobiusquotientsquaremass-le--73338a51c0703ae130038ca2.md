# highMobiusQuotientSquareMass_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1af72a59-7bd8-9a3b-1e8c-1d9878649a57",
  "kind": "theorem",
  "lexical_name": "highMobiusQuotientSquareMass_le",
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
  "slug": "highmobiusquotientsquaremass-le--73338a51c0703ae130038ca2",
  "source": {
    "blob": "797b24c722c661d7ee3f8a2f0de91c7618db5331",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 222,
    "line": 144,
    "path": "GRWTSK/NumberTheory/Moebius/CenteredLowGCDLargeMobiusTailEstimate.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:73338a51c0703ae130038ca2494db070b942724cfc634d2233867d4e56e5fcac",
  "verification": {
    "reference": "docs/verification/NumberTheory/Moebius/CenteredLowGCDLargeMobiusTailEstimate.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1af72a59-7bd8-9a3b-1e8c-1d9878649a57`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 144–222.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem highMobiusQuotientSquareMass_le
    {X : ℕ}
    (hX : 1 ≤ X) :
    highMobiusQuotientSquareMass X ≤
      32 * (X : ℝ) * Real.sqrt (X : ℝ) := by
  have hXpos : 0 < (X : ℝ) := by
    exact_mod_cast (lt_of_lt_of_le Nat.zero_lt_one hX)
  have hsqrtpos : 0 < Real.sqrt (X : ℝ) :=
    Real.sqrt_pos.2 hXpos
  have hrootBound :
      Real.sqrt (X : ℝ) ≤ ((X.sqrt + 1 : ℕ) : ℝ) := by
    exact Real.real_sqrt_le_nat_sqrt_succ
  have hrecip :
      (∑ r ∈ highMobiusTailIndexSet X,
        (((r : ℝ)^2)⁻¹)) ≤
      2 / (((X.sqrt + 1 : ℕ) : ℝ)) := by
    calc
      (∑ r ∈ highMobiusTailIndexSet X,
        (((r : ℝ)^2)⁻¹)) ≤
        ∑ r ∈ Finset.Ioo X.sqrt (4 * X + 1),
          (((r : ℝ)^2)⁻¹) := by
        exact Finset.sum_le_sum_of_subset_of_nonneg
          (highMobiusTailIndexSet_subset_Ioo X)
          (fun r hrBig hrSmall => by positivity)
      _ ≤ 2 / (((X.sqrt + 1 : ℕ) : ℝ)) := by
        simpa using
          (Finset.sum_Ioo_inv_sq_le
            (α := ℝ) X.sqrt (4 * X + 1))
  have hterm :
      ∀ r ∈ highMobiusTailIndexSet X,
        (((4 * X / r : ℕ) : ℝ)^2) ≤
          16 * (X : ℝ)^2 * (((r : ℝ)^2)⁻¹) := by
    intro r hr
    have hrpos : 0 < r := by
      have := (mem_highMobiusTailIndexSet_iff.mp hr).2
      omega
    have hcast :
        ((4 * X / r : ℕ) : ℝ) ≤
          ((4 * X : ℕ) : ℝ) / (r : ℝ) := by
      exact Nat.cast_div_le
    have hsq :
        (((4 * X / r : ℕ) : ℝ)^2) ≤
          ((((4 * X : ℕ) : ℝ) / (r : ℝ))^2) := by
      exact (mul_self_le_mul_self
        (by positivity : 0 ≤ ((4 * X / r : ℕ) : ℝ)) hcast)
    calc
      (((4 * X / r : ℕ) : ℝ)^2) ≤
          ((((4 * X : ℕ) : ℝ) / (r : ℝ))^2) := hsq
      _ = 16 * (X : ℝ)^2 * (((r : ℝ)^2)⁻¹) := by
        field_simp [show (r : ℝ) ≠ 0 by exact_mod_cast (Nat.ne_of_gt hrpos)]
        ring
  have hdenInv :
      1 / (((X.sqrt + 1 : ℕ) : ℝ)) ≤
        1 / Real.sqrt (X : ℝ) := by
    exact one_div_le_one_div_of_le hsqrtpos hrootBound
  calc
    highMobiusQuotientSquareMass X ≤
      ∑ r ∈ highMobiusTailIndexSet X,
        16 * (X : ℝ)^2 * (((r : ℝ)^2)⁻¹) := by
      unfold highMobiusQuotientSquareMass
      exact Finset.sum_le_sum hterm
    _ = 16 * (X : ℝ)^2 *
        ∑ r ∈ highMobiusTailIndexSet X,
          (((r : ℝ)^2)⁻¹) := by
      rw [Finset.mul_sum]
    _ ≤ 16 * (X : ℝ)^2 *
        (2 / (((X.sqrt + 1 : ℕ) : ℝ))) := by
      exact mul_le_mul_of_nonneg_left hrecip (by positivity)
    _ ≤ 16 * (X : ℝ)^2 *
        (2 / Real.sqrt (X : ℝ)) := by
      gcongr
    _ = 32 * (X : ℝ) *
        ((X : ℝ) / Real.sqrt (X : ℝ)) := by
      ring
    _ = 32 * (X : ℝ) * Real.sqrt (X : ℝ) := by
      rw [Real.div_sqrt]

/-- The absolute large-index coprime energy is bounded by the quotient-square
mass and the common logarithmic envelope. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Moebius/CenteredLowGCDLargeMobiusTailEstimate.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Moebius/CenteredLowGCDLargeMobiusTailEstimate.lean#L144).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `797b24c722c661d7ee3f8a2f0de91c7618db5331` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
