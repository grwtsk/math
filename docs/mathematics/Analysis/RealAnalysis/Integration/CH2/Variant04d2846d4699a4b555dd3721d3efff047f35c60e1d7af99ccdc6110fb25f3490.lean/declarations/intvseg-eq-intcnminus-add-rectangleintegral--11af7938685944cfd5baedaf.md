# intVSeg_eq_intCnMinus_add_rectangleIntegral

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:393b7cba-dd46-3b9e-a0c7-a1b200da23ca",
  "kind": "lemma",
  "lexical_name": "intVSeg_eq_intCnMinus_add_rectangleIntegral",
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
  "slug": "intvseg-eq-intcnminus-add-rectangleintegral--11af7938685944cfd5baedaf",
  "source": {
    "blob": "46d07824909f05f0ffe5b70a4f74a8f7078179e3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1852,
    "line": 1812,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/CH2/Variant04d2846d4699a4b555dd3721d3efff047f35c60e1d7af99ccdc6110fb25f3490.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:11af7938685944cfd5baedafc047ed27463176d94657bbbd70780e8e7e6f39f8",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/CH2/Variant04d2846d4699a4b555dd3721d3efff047f35c60e1d7af99ccdc6110fb25f3490.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:393b7cba-dd46-3b9e-a0c7-a1b200da23ca`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1812–1852.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma intVSeg_eq_intCnMinus_add_rectangleIntegral (l : LadderParams) (n : ℕ) (F : ℂ → ℂ)
    (h_integrable1 : IntervalIntegrable (fun t : ℝ ↦ F (1 + t * Complex.I) * Complex.I) volume (-l.T) (-l.δ))
    (h_integrable2 : IntervalIntegrable (fun t : ℝ ↦ F (1 + t * Complex.I) * Complex.I) volume (-l.δ) 0) :
    intVSeg 1 (-l.T) 0 F = l.intCnMinus n F + RectangleIntegral F ((l.σ n : ℂ) - (l.T : ℂ) * Complex.I) (1 - (l.δ : ℂ) * Complex.I) := by
  have h1 : l.intCnMinus n F = (intHSeg (-l.T) 1 (l.σ n) F + intVSeg (l.σ n) (-l.T) (-l.δ) F + intHSeg (-l.δ) (l.σ n) 1 F + intVSeg 1 (-l.δ) 0 F) := rfl
  have h2 : RectangleIntegral F ((l.σ n : ℂ) - (l.T : ℂ) * Complex.I) (1 - (l.δ : ℂ) * Complex.I) = (intHSeg (-l.T) (l.σ n) 1 F - intHSeg (-l.δ) (l.σ n) 1 F + intVSeg 1 (-l.T) (-l.δ) F - intVSeg (l.σ n) (-l.T) (-l.δ) F) := by
    have hH1 : HIntegral F (l.σ n) 1 (-l.T) = intHSeg (-l.T) (l.σ n) 1 F := rfl
    have hH2 : HIntegral F (l.σ n) 1 (-l.δ) = intHSeg (-l.δ) (l.σ n) 1 F := rfl
    have hV1 : Complex.I * ∫ (y : ℝ) in (-l.T)..(-l.δ), F (1 + ↑y * Complex.I) =
      intVSeg 1 (-l.T) (-l.δ) F := by
      rw [intVSeg, ← smul_eq_mul, ← intervalIntegral.integral_smul]
      refine intervalIntegral.integral_congr (fun y _ ↦ ?_)
      rw [smul_eq_mul, mul_comm]; rfl
    have hV2 : Complex.I * ∫ (y : ℝ) in (-l.T)..(-l.δ), F (↑(l.σ n) + ↑y * Complex.I) =
      intVSeg (l.σ n) (-l.T) (-l.δ) F := by
      rw [intVSeg, ← smul_eq_mul, ← intervalIntegral.integral_smul]
      refine intervalIntegral.integral_congr (fun y _ ↦ ?_)
      rw [smul_eq_mul, mul_comm]
    rw [RectangleIntegral]
    simp only [Complex.sub_re, Complex.sub_im, Complex.mul_re, Complex.mul_im, Complex.ofReal_re,
      Complex.ofReal_im, Complex.I_re, Complex.I_im, Complex.one_re, Complex.one_im, mul_zero,
      sub_zero, add_zero, mul_one, zero_sub]
    dsimp [VIntegral]
    rw [hH1, hH2, hV1, hV2]
  have h_T_cancel : intHSeg (-l.T) 1 (l.σ n) F + intHSeg (-l.T) (l.σ n) 1 F = 0 := by
    rw [intHSeg, intHSeg, intervalIntegral.integral_symm]
    ring
  have h_cancelled : l.intCnMinus n F +
    RectangleIntegral F ((l.σ n : ℂ) - (l.T : ℂ) * Complex.I) (1 - (l.δ : ℂ) * Complex.I) =
    intVSeg 1 (-l.T) (-l.δ) F + intVSeg 1 (-l.δ) 0 F := by
      rw [h1, h2]
      calc
        _ = (intVSeg 1 (-l.T) (-l.δ) F + intVSeg 1 (-l.δ) 0 F) +
            (intHSeg (-l.T) 1 (l.σ n) F + intHSeg (-l.T) (l.σ n) 1 F) := by ring
        _ = intVSeg 1 (-l.T) (-l.δ) F + intVSeg 1 (-l.δ) 0 F := by rw [h_T_cancel, add_zero]
  have h_adjacent : intVSeg 1 (-l.T) (-l.δ) F + intVSeg 1 (-l.δ) 0 F =
    intVSeg 1 (-l.T) 0 F := by
      rw [intVSeg, intVSeg, intVSeg]; push_cast
      rw [intervalIntegral.integral_add_adjacent_intervals h_integrable1 h_integrable2]
  rw [h_cancelled, h_adjacent]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/CH2/Variant04d2846d4699a4b555dd3721d3efff047f35c60e1d7af99ccdc6110fb25f3490.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/CH2/Variant04d2846d4699a4b555dd3721d3efff047f35c60e1d7af99ccdc6110fb25f3490.lean#L1812).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `46d07824909f05f0ffe5b70a4f74a8f7078179e3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
