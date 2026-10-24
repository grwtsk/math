# isBigO_of_decay

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d45aab55-ae7d-b424-ebb5-63d945d7d99a",
  "kind": "theorem",
  "lexical_name": "isBigO_of_decay",
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
  "slug": "isbigo-of-decay--7cc6b95e69899ffff05d62b3",
  "source": {
    "blob": "7f5e5f7cf935d55f2cda540b3738e277f8a2b7a5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 95,
    "line": 53,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/Poisson/Variant52843fc351720a8ccf4be6cb10d722d4d4dbc71920257e62cb84a4c8f4887902.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7cc6b95e69899ffff05d62b37f4cc2f4e2d22912a9a945f8b80aeea214f9a883",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/Poisson/Variant52843fc351720a8ccf4be6cb10d722d4d4dbc71920257e62cb84a4c8f4887902.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d45aab55-ae7d-b424-ebb5-63d945d7d99a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 53–95.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isBigO_of_decay {g : ℝ → ℂ} {c h C : ℝ} (hh : h ≠ 0)
    (hg : ∀ w, ‖g w‖ * (1 + (c - w * h) ^ 2) ≤ C) :
    g =O[cocompact ℝ] fun w : ℝ => |w| ^ (-2 : ℝ) := by
  have hC : 0 ≤ C := le_trans (by positivity) (hg 0)
  refine IsBigO.of_bound (4 * C / h ^ 2) ?_
  have hev : ∀ᶠ w : ℝ in cocompact ℝ, max 1 (2 * |c| / |h|) ≤ ‖w‖ :=
    tendsto_norm_cocompact_atTop.eventually (eventually_ge_atTop _)
  filter_upwards [hev] with w hw
  rw [Real.norm_eq_abs] at hw
  have hw1 : 1 ≤ |w| := le_trans (le_max_left _ _) hw
  have hw2 : 2 * |c| / |h| ≤ |w| := le_trans (le_max_right _ _) hw
  have hhpos : 0 < |h| := abs_pos.mpr hh
  have h1 : |w| * |h| / 2 ≤ |c - w * h| := by
    have h3 : |w * h| - |c| ≤ |c - w * h| := by
      have := abs_sub_abs_le_abs_sub (w * h) c
      rw [abs_sub_comm] at this
      exact this
    rw [abs_mul] at h3
    rw [div_le_iff₀ hhpos] at hw2
    linarith
  have h2 : (|w| * |h| / 2) ^ 2 ≤ 1 + (c - w * h) ^ 2 := by
    have := pow_le_pow_left₀ (by positivity) h1 2
    rw [sq_abs] at this
    linarith
  have hnorm : ‖(|w| ^ (-2 : ℝ) : ℝ)‖ = (w ^ 2)⁻¹ := by
    rw [Real.norm_eq_abs, abs_of_nonneg (by positivity), Real.rpow_neg (abs_nonneg _),
      Real.rpow_two, sq_abs]
  rw [hnorm]
  have hden : 0 < 1 + (c - w * h) ^ 2 := by positivity
  have hq : 0 < (|w| * |h| / 2) ^ 2 := by positivity
  have hw0 : w ≠ 0 := by intro h0; rw [h0, abs_zero] at hw1; linarith
  calc ‖g w‖ ≤ C / (1 + (c - w * h) ^ 2) := by rw [le_div_iff₀ hden]; exact hg w
    _ ≤ C / ((|w| * |h| / 2) ^ 2) := by gcongr
    _ = 4 * C / h ^ 2 * (w ^ 2)⁻¹ := by
      rw [div_pow, mul_pow, sq_abs, sq_abs]
      field_simp
      ring

/-! #### The auxiliary function `G` -/

variable (φ : ℝ → ℝ) (L T τ τ' : ℝ)

/-- Integrand of `G`: `(ξ,u) ↦ L φ(u) φ(Lξ−u) e^{i(τu + τ'(Lξ−u) − TLξ)}`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/Poisson/Variant52843fc351720a8ccf4be6cb10d722d4d4dbc71920257e62cb84a4c8f4887902.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/Poisson/Variant52843fc351720a8ccf4be6cb10d722d4d4dbc71920257e62cb84a4c8f4887902.lean#L53).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7f5e5f7cf935d55f2cda540b3738e277f8a2b7a5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
