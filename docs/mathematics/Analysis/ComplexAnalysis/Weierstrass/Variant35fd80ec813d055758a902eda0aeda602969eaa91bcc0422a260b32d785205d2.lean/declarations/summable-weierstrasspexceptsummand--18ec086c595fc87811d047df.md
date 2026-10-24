# summable_weierstrassPExceptSummand

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3f97d2dd-d906-dad7-ef6d-b78dc8bc8b2a",
  "kind": "lemma",
  "lexical_name": "summable_weierstrassPExceptSummand",
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
  "slug": "summable-weierstrasspexceptsummand--18ec086c595fc87811d047df",
  "source": {
    "blob": "50cd53bb41662dfea7ffa092778592ba86849027",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 720,
    "line": 671,
    "path": "GRWTSK/Analysis/ComplexAnalysis/Weierstrass/Variant35fd80ec813d055758a902eda0aeda602969eaa91bcc0422a260b32d785205d2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:18ec086c595fc87811d047dfb67e3ac9302863e25a70caf64f0d703b80dad063",
  "verification": {
    "reference": "docs/verification/Analysis/ComplexAnalysis/Weierstrass/Variant35fd80ec813d055758a902eda0aeda602969eaa91bcc0422a260b32d785205d2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3f97d2dd-d906-dad7-ef6d-b78dc8bc8b2a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 671–720.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma summable_weierstrassPExceptSummand (l₀ z x : ℂ)
    (hx : ∀ l : L.lattice, l.1 ≠ l₀ → ‖z - x‖ < ‖l - x‖) :
    Summable (Function.uncurry fun b c ↦ L.weierstrassPExceptSummand l₀ x b c * (z - x) ^ b) := by
  -- We first find a `κ > 1`,
  -- such that the ball centered at `x` with radius `κ * ‖z - x‖` does not touch `L`.
  obtain ⟨κ, hκ, hκ'⟩ : ∃ κ : ℝ, 1 < κ ∧ ∀ l : L.lattice, l.1 ≠ l₀ → ‖z - x‖ * κ < ‖l - x‖ := by
    obtain ⟨κ, hκ, hκ'⟩ := Metric.isOpen_iff.mp ((continuous_mul_const ‖z - x‖).isOpen_preimage _
      (isClosedMap_dist x _
      (L.isClosed_of_subset_lattice (Set.sdiff_subset (t := {l₀})))).upperClosure.isOpen_compl) 1
      (by simpa [Complex.dist_eq, @forall_comm ℝ, norm_sub_rev x] using hx)
    refine ⟨κ / 2 + 1, by simpa, fun l hl ↦ ?_⟩
    have : ∀ l ∈ L.lattice, l ≠ l₀ → (κ / 2 + 1) * ‖z - x‖ < dist x l := by
      simpa using @hκ' (κ / 2 + 1) (by simp [div_lt_iff₀, abs_eq_self.mpr hκ.le, hκ])
    simpa only [Complex.dist_eq, norm_sub_rev x, mul_comm] using this _ l.2 hl
  -- We single out the degree zero term via this equiv.
  let e : ℕ × L.lattice ≃ L.lattice ⊕ (ℕ × L.lattice) :=
    (Equiv.prodCongrLeft fun _ ↦ (Denumerable.eqv (Option ℕ)).symm).trans optionProdEquiv
  rw [← e.symm.summable_iff]
  apply Summable.sum
  · -- for the degree zero term, this is the usual summability of the definition of `℘`.
    simpa [weierstrassPExceptSummand, e, Function.comp_def, Function.uncurry, sub_sq_comm x,
      Denumerable.eqv] using! (L.hasSum_weierstrassPExcept l₀ x).summable
  · -- for the remaining terms, we bound it by `(i + 2) κ⁻ⁱ * ‖l - x‖⁻³ * ‖z - x‖`.
    dsimp [e, Function.comp_def, Function.uncurry_def, Denumerable.eqv, weierstrassPExceptSummand]
    have H₁ : Summable fun i : ℕ ↦ ((i + 2) * κ ^ (-i : ℤ)) := by
      have : |κ⁻¹| < 1 := by grind [abs_inv, inv_lt_one_iff₀]
      simpa [mul_comm] using ((Real.hasFPowerSeriesOnBall_ofScalars_mul_add_zero 1 2).hasSum
        (y := κ⁻¹) (by simpa [enorm_eq_nnnorm])).summable
    have H₂ : Summable fun l : L.lattice ↦ ‖l - x‖ ^ (-3 : ℤ) * ‖z - x‖ :=
      (ZLattice.summable_norm_sub_zpow _ _ (by simp) _).mul_right _
    refine (H₁.mul_of_nonneg H₂ (by intro; positivity) (by intro; positivity)).of_norm_bounded ?_
    intro p
    split_ifs with hp
    · simp only [zero_mul, norm_zero, zpow_neg, zpow_natCast, Int.reduceNeg]; positivity
    have hpx : ‖p.2 - x‖ ≠ 0 := fun h ↦ by
      obtain rfl : p.2 = x := by simpa [sub_eq_zero] using h
      simpa [(norm_nonneg _).not_gt] using hx p.2 hp
    obtain rfl | hxz := eq_or_ne z x
    · simp
    calc
      _ = ‖(p.1 + 2 : ℂ)‖ * ‖p.2 - x‖ ^ (-3 - p.1 : ℤ) * ‖z - x‖ ^ (p.1 + 1) := by
        norm_num; ring_nf; simp
      _ = ‖(p.1 + 2 : ℂ)‖ * ((‖↑p.2 - x‖ / ‖z - x‖) ^ p.1)⁻¹ * ((‖p.2 - x‖ ^ 3)⁻¹ * ‖z - x‖) := by
        simp [hpx, zpow_sub₀, div_pow]; field
      _ ≤ (p.1 + 2) * (κ ^ p.1)⁻¹ * ((‖p.2 - x‖ ^ 3)⁻¹ * ‖z - x‖) := by
        gcongr
        · norm_cast
        · exact (le_div_iff₀ (by simpa [sub_eq_zero])).mpr ((mul_comm _ _).trans_le (hκ' p.2 hp).le)
      _ = _ := by simp [zpow_ofNat]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/ComplexAnalysis/Weierstrass/Variant35fd80ec813d055758a902eda0aeda602969eaa91bcc0422a260b32d785205d2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/ComplexAnalysis/Weierstrass/Variant35fd80ec813d055758a902eda0aeda602969eaa91bcc0422a260b32d785205d2.lean#L671).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `50cd53bb41662dfea7ffa092778592ba86849027` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
