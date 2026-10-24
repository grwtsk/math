# background_hasDerivAt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a3c4880a-54bb-71c8-9b35-4d13e7eaf5de",
  "kind": "theorem",
  "lexical_name": "background_hasDerivAt",
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
  "slug": "background-hasderivat--cf2c77532f682b894a72a0f6",
  "source": {
    "blob": "c81fd1434c14a559ddaa80705e67048c87b0688e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 102,
    "line": 44,
    "path": "GRWTSK/NumberTheory/VonMangoldt/MellinBlockHolomorphy.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:cf2c77532f682b894a72a0f6b30153aed7bcfbf01c455e88f78d343e7e083332",
  "verification": {
    "reference": "docs/verification/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/VonMangoldtFunction/MellinBlockHolomorphy.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a3c4880a-54bb-71c8-9b35-4d13e7eaf5de`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 44–102.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem background_hasDerivAt {X : ℕ} (hX : 0 < X) (s₀ : ℂ) :
    HasDerivAt (fun s : ℂ => ∫ u in (X:ℝ)..(2*X:ℝ), power u (-s))
      (∫ u in (X:ℝ)..(2*X:ℝ), -(Real.log u : ℂ)*power u (-s₀)) s₀ := by
  have hXr : (0:ℝ) < X := by exact_mod_cast hX
  have hX1 : (1:ℝ) ≤ X := by exact_mod_cast hX
  have hXX : (X:ℝ) ≤ 2*X := by linarith
  let L : ℝ := Real.log (2*(X:ℝ))
  let M : ℝ := ‖s₀‖+1
  have hL : 0 ≤ L := Real.log_nonneg (by linarith)
  have hM : 0 ≤ M := by positivity
  have hc (s : ℂ) := power_continuousOn (b := (2*X:ℝ)) hXr (-s)
  have hd (s : ℂ) : ContinuousOn
      (fun u : ℝ => -(Real.log u : ℂ)*power u (-s)) (Icc (X:ℝ) (2*X:ℝ)) := by
    apply ContinuousOn.mul _ (hc s)
    intro u hu
    exact ((Complex.continuous_ofReal.continuousAt.comp
      (Real.continuousAt_log (ne_of_gt (hXr.trans_le hu.1)))).neg).continuousWithinAt
  have hbnd : ∀ u ∈ Ι (X:ℝ) (2*X:ℝ), ∀ s ∈ ball s₀ 1,
      ‖-(Real.log u : ℂ)*power u (-s)‖ ≤ L*Real.exp (M*L) := by
    intro u hu s hs
    have hu' : u ∈ Icc (X:ℝ) (2*X:ℝ) := by
      have hu'' : u ∈ Ioc (X:ℝ) (2*X:ℝ) := by simpa [uIoc_of_le hXX] using hu
      exact ⟨hu''.1.le, hu''.2⟩
    have hu0 : 0 < u := hXr.trans_le hu'.1
    have hlu0 : 0 ≤ Real.log u := Real.log_nonneg (hX1.trans hu'.1)
    have hluL : Real.log u ≤ L := Real.log_le_log hu0 hu'.2
    have hsn : ‖s‖ ≤ M := by
      have hs' : ‖s-s₀‖ < 1 := by simpa [mem_ball, dist_eq_norm] using hs
      calc
        ‖s‖ = ‖(s-s₀)+s₀‖ := by congr 1; abel
        _ ≤ ‖s-s₀‖+‖s₀‖ := norm_add_le _ _
        _ ≤ M := by dsimp [M]; linarith
    have hre : -s.re ≤ M := by
      have h := Complex.abs_re_le_norm s
      have h' := neg_le_abs s.re
      linarith
    rw [norm_mul, norm_neg, Complex.norm_real, Real.norm_eq_abs,
      abs_of_nonneg hlu0, norm_power]
    apply mul_le_mul hluL _ (Real.exp_pos _).le hL
    apply Real.exp_le_exp.mpr
    calc
      (-s).re*Real.log u ≤ M*Real.log u := by simpa using mul_le_mul_of_nonneg_right hre hlu0
      _ ≤ M*L := mul_le_mul_of_nonneg_left hluL hM
  have h := intervalIntegral.hasDerivAt_integral_of_dominated_loc_of_deriv_le
    (F := fun s u => power u (-s))
    (F' := fun s u => -(Real.log u : ℂ)*power u (-s))
    (bound := fun _ : ℝ => L*Real.exp (M*L))
    (a := (X:ℝ)) (b := (2*X:ℝ)) (μ := volume)
    (ball_mem_nhds s₀ (show (0:ℝ)<1 by norm_num))
    (Filter.Eventually.of_forall (fun s =>
      ((hc s).intervalIntegrable_of_Icc hXX).def'.aestronglyMeasurable))
    ((hc s₀).intervalIntegrable_of_Icc hXX)
    (((hd s₀).intervalIntegrable_of_Icc hXX).def'.aestronglyMeasurable)
    (Filter.Eventually.of_forall (fun u hu => hbnd u hu))
    (intervalIntegrable_const)
    (Filter.Eventually.of_forall (fun u _ s _ => parameter_derivative u s))
  exact h.2

/-- Every original finite block is entire. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/VonMangoldtFunction/MellinBlockHolomorphy.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/VonMangoldt/MellinBlockHolomorphy.lean#L44).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c81fd1434c14a559ddaa80705e67048c87b0688e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
