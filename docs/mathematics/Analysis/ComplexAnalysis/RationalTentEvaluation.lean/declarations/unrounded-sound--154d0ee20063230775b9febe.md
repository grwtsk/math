# unrounded_sound

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ed908a3e-2bee-f7a1-03d2-00bbf55ce4d7",
  "kind": "theorem",
  "lexical_name": "unrounded_sound",
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
  "slug": "unrounded-sound--154d0ee20063230775b9febe",
  "source": {
    "blob": "2d5a94a9b3306e31e3d819315c91046fa2cc75a9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 150,
    "line": 96,
    "path": "GRWTSK/Analysis/Complex/RationalTentEvaluation.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:154d0ee20063230775b9febe75abc8b91fa27f3536decb6014453f8a4d309526",
  "verification": {
    "reference": "docs/verification/Analysis/ComplexAnalysis/RationalTentEvaluation.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ed908a3e-2bee-f7a1-03d2-00bbf55ce4d7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 96–150.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem unrounded_sound (x h : ℚ) (p : Input) (hp : Admissible x h p)
    (z : ℂ) (hz : z.re ≤ 1) (hcoord : ‖z - QComplex.embed p.center‖ ≤ (p.coordinateError : ℝ)) :
    ‖tentKernel (x : ℝ) (h : ℝ) z - QComplex.embed (quotient x h p)‖ ≤
      (unroundedError x h p : ℝ) := by
  rcases hp with ⟨hh, ha, hc, hr, hd, hden, hA, hX, hB⟩
  have hhR : (0 : ℝ) < h := by exact_mod_cast hh
  have haR : (1 : ℝ) < (x : ℝ) - (h : ℝ) := by exact_mod_cast ha
  have hcR : (QComplex.embed p.center).re ≤ 1 := by exact_mod_cast hc
  have hrR : (0 : ℝ) ≤ p.coordinateError := by exact_mod_cast hr
  have hdR : (0 : ℝ) < p.denominatorLower := by exact_mod_cast hd
  have hdenR := QComplex.denominator_lower h p.denominatorLower p.center hh hd hden
  have hAp := RationalPowerEvaluation.compute_sound (x - h) (exponent p) p.lower hA
  have hXp := RationalPowerEvaluation.compute_sound x (exponent p) p.middle hX
  have hBp := RationalPowerEvaluation.compute_sound (x + h) (exponent p) p.upper hB
  simp only [Rat.cast_sub, Rat.cast_add, embed_exponent] at hAp hXp hBp
  have hquot := endpoint_quotient_error (x : ℝ) (h : ℝ) hhR haR
    (QComplex.embed p.center)
    (QComplex.embed (RationalPowerEvaluation.compute (x - h) (exponent p) p.lower).value)
    (QComplex.embed (RationalPowerEvaluation.compute x (exponent p) p.middle).value)
    (QComplex.embed (RationalPowerEvaluation.compute (x + h) (exponent p) p.upper).value)
    ((RationalPowerEvaluation.compute (x - h) (exponent p) p.lower).error : ℝ)
    ((RationalPowerEvaluation.compute x (exponent p) p.middle).error : ℝ)
    ((RationalPowerEvaluation.compute (x + h) (exponent p) p.upper).error : ℝ)
    (p.denominatorLower : ℝ) hdR hdenR hAp hXp hBp
  rw [← quotient_refines x h p] at hquot
  have hlog := (RationalPowerEvaluation.toLogInput (x + h) p.upper hB.1).sound
  have hlogUpper : Real.log ((x : ℝ) + (h : ℝ)) ≤
      ((RationalPowerEvaluation.logCenter (x + h) p.upper + RationalPowerEvaluation.logError (x + h) p.upper : ℚ) : ℝ) := by
    have ht := (abs_le.mp hlog).2
    simp only [RationalPowerEvaluation.toLogInput_center, RationalPowerEvaluation.toLogInput_error, Rat.cast_add] at ht ⊢
    linarith
  have hlog0 : 0 ≤ Real.log ((x : ℝ) + (h : ℝ)) :=
    Real.log_nonneg (by linarith)
  have htransport := norm_tentKernel_sub_le_one (x : ℝ) (h : ℝ) hhR haR z
    (QComplex.embed p.center) hz hcR
  have hcoordBound : ‖tentKernel (x : ℝ) (h : ℝ) z -
      tentKernel (x : ℝ) (h : ℝ) (QComplex.embed p.center)‖ ≤
      4 * ((x : ℝ) + (h : ℝ)) *
        ((RationalPowerEvaluation.logCenter (x + h) p.upper + RationalPowerEvaluation.logError (x + h) p.upper : ℚ) : ℝ) *
          (p.coordinateError : ℝ) := by
    refine htransport.trans ?_
    exact mul_le_mul
      (mul_le_mul_of_nonneg_left hlogUpper (by linarith)) hcoord
      (norm_nonneg _) (mul_nonneg (by linarith) (hlog0.trans hlogUpper))
  calc
    _ = ‖(tentKernel (x : ℝ) (h : ℝ) z -
          tentKernel (x : ℝ) (h : ℝ) (QComplex.embed p.center)) +
        (tentKernel (x : ℝ) (h : ℝ) (QComplex.embed p.center) -
          QComplex.embed (quotient x h p))‖ := by congr 1; ring
    _ ≤ _ := by
      have ht := (norm_add_le _ _).trans (add_le_add hcoordBound hquot)
      simpa only [unroundedError, Rat.cast_add, Rat.cast_mul, Rat.cast_div,
        Rat.cast_ofNat] using ht

/-- Quotient quantization is charged AFTER endpoint and coordinate errors. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/ComplexAnalysis/RationalTentEvaluation.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/Complex/RationalTentEvaluation.lean#L96).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2d5a94a9b3306e31e3d819315c91046fa2cc75a9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
