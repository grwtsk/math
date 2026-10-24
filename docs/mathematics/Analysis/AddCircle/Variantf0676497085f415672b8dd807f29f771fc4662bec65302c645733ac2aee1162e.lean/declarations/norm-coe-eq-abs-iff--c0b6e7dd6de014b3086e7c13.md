# norm_coe_eq_abs_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ae562e14-b8ee-4df5-90d1-3d44d5939bb2",
  "kind": "theorem",
  "lexical_name": "norm_coe_eq_abs_iff",
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
  "slug": "norm-coe-eq-abs-iff--c0b6e7dd6de014b3086e7c13",
  "source": {
    "blob": "38c2c066aa52d6d94abd4ad2a3697efb4a1dd6b2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 177,
    "line": 151,
    "path": "GRWTSK/Analysis/AddCircle/Variantf0676497085f415672b8dd807f29f771fc4662bec65302c645733ac2aee1162e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c0b6e7dd6de014b3086e7c139c66ec8753576085fcf193bbddb24e5e327ee402",
  "verification": {
    "reference": "docs/verification/Analysis/AddCircle/Variantf0676497085f415672b8dd807f29f771fc4662bec65302c645733ac2aee1162e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ae562e14-b8ee-4df5-90d1-3d44d5939bb2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 151–177.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem norm_coe_eq_abs_iff {x : ℝ} (hp : p ≠ 0) : ‖(x : AddCircle p)‖ = |x| ↔ |x| ≤ |p| / 2 := by
  refine' ⟨fun hx => hx ▸ norm_le_half_period p hp, fun hx => _⟩
  suffices ∀ p : ℝ, 0 < p → |x| ≤ p / 2 → ‖(x : AddCircle p)‖ = |x| by
    -- Porting note: replaced `lt_trichotomy` which had trouble substituting `p = 0`.
    rcases hp.symm.lt_or_lt with (hp | hp)
    · rw [abs_eq_self.mpr hp.le] at hx
      exact this p hp hx
    · rw [← norm_neg_period]
      rw [abs_eq_neg_self.mpr hp.le] at hx
      exact this (-p) (neg_pos.mpr hp) hx
  clear hx
  intro p hp hx
  rcases eq_or_ne x (p / (2 : ℝ)) with (rfl | hx')
  · simp [abs_div, abs_two]
  suffices round (p⁻¹ * x) = 0 by simp [norm_eq, this]
  rw [round_eq_zero_iff]
  obtain ⟨hx₁, hx₂⟩ := abs_le.mp hx
  replace hx₂ := Ne.lt_of_le hx' hx₂
  constructor
  · rwa [← mul_le_mul_left hp, ← mul_assoc, mul_inv_cancel hp.ne.symm, one_mul, mul_neg, ←
      mul_div_assoc, mul_one]
  · rwa [← mul_lt_mul_left hp, ← mul_assoc, mul_inv_cancel hp.ne.symm, one_mul, ← mul_div_assoc,
      mul_one]
#align add_circle.norm_coe_eq_abs_iff AddCircle.norm_coe_eq_abs_iff

open Metric

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/AddCircle/Variantf0676497085f415672b8dd807f29f771fc4662bec65302c645733ac2aee1162e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AddCircle/Variantf0676497085f415672b8dd807f29f771fc4662bec65302c645733ac2aee1162e.lean#L151).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `38c2c066aa52d6d94abd4ad2a3697efb4a1dd6b2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
