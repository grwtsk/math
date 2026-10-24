# intCn1Plus_add_intCn1Minus_eq_rectangleIntegral_add_verticalAt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:4eccf6fb-90b2-9da1-2627-c7ee43a8c7c4",
  "kind": "lemma",
  "lexical_name": "intCn1Plus_add_intCn1Minus_eq_rectangleIntegral_add_verticalAt",
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
  "slug": "intcn1plus-add-intcn1minus-eq-rectangleintegral-add-verticalat--e5e1b43fe98c147d1035144c",
  "source": {
    "blob": "46d07824909f05f0ffe5b70a4f74a8f7078179e3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 2325,
    "line": 2284,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/CH2/Variant04d2846d4699a4b555dd3721d3efff047f35c60e1d7af99ccdc6110fb25f3490.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e5e1b43fe98c147d1035144c45dd6ada724a48cace62090e887acad59fe1f5a1",
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

Occurrence: `result:4eccf6fb-90b2-9da1-2627-c7ee43a8c7c4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 2284–2325.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma intCn1Plus_add_intCn1Minus_eq_rectangleIntegral_add_verticalAt (l : LadderParams) (n : ℕ) (F : ℂ → ℂ)
    (h_int_σ1 : IntervalIntegrable (fun t : ℝ ↦ F ((l.σ n : ℂ) + t * Complex.I) * Complex.I) volume (-l.T) (-l.δ))
    (h_int_σ2 : IntervalIntegrable (fun t : ℝ ↦ F ((l.σ n : ℂ) + t * Complex.I) * Complex.I) volume (-l.δ) l.δ)
    (h_int_σ3 : IntervalIntegrable (fun t : ℝ ↦ F ((l.σ n : ℂ) + t * Complex.I) * Complex.I) volume l.δ l.T)
    (h_int_11 : IntervalIntegrable (fun t : ℝ ↦ F (1 + t * Complex.I) * Complex.I) volume (-l.δ) 0)
    (h_int_12 : IntervalIntegrable (fun t : ℝ ↦ F (1 + t * Complex.I) * Complex.I) volume 0 l.δ) :
    l.intCn1Plus n F + l.intCn1Minus n F =
    RectangleIntegral F ((l.σ n : ℂ) - (l.δ : ℂ) * Complex.I) (1 + (l.δ : ℂ) * Complex.I) + l.intVerticalAt (l.σ n) F := by
  have h1 : l.intCn1Plus n F = intVSeg 1 0 l.δ F + intHSeg l.δ 1 (l.σ n) F + intVSeg (l.σ n) l.δ l.T F := rfl
  have h2 : l.intCn1Minus n F = intVSeg (l.σ n) (-l.T) (-l.δ) F + intHSeg (-l.δ) (l.σ n) 1 F + intVSeg 1 (-l.δ) 0 F := rfl
  have h3 : RectangleIntegral F ((l.σ n : ℂ) - (l.δ : ℂ) * Complex.I) (1 + (l.δ : ℂ) * Complex.I) = intHSeg (-l.δ) (l.σ n) 1 F - intHSeg l.δ (l.σ n) 1 F + intVSeg 1 (-l.δ) l.δ F - intVSeg (l.σ n) (-l.δ) l.δ F := by
    have hH1 : HIntegral F (l.σ n) 1 (-l.δ) = intHSeg (-l.δ) (l.σ n) 1 F := rfl
    have hH2 : HIntegral F (l.σ n) 1 l.δ = intHSeg l.δ (l.σ n) 1 F := rfl
    have hV1 : Complex.I * ∫ (y : ℝ) in (-l.δ)..l.δ, F (1 + ↑y * Complex.I) =
      intVSeg 1 (-l.δ) l.δ F := by
      rw [intVSeg, ← smul_eq_mul, ← intervalIntegral.integral_smul]
      refine intervalIntegral.integral_congr (fun y _ ↦ ?_)
      rw [smul_eq_mul, mul_comm]; rfl
    have hV2 : Complex.I * ∫ (y : ℝ) in (-l.δ)..l.δ, F (↑(l.σ n) + ↑y * Complex.I) =
      intVSeg (l.σ n) (-l.δ) l.δ F := by
      rw [intVSeg, ← smul_eq_mul, ← intervalIntegral.integral_smul]
      refine intervalIntegral.integral_congr (fun y _ ↦ ?_)
      rw [smul_eq_mul, mul_comm]
    rw [RectangleIntegral]
    simp only [Complex.sub_re, Complex.add_re, Complex.add_im, Complex.sub_im, Complex.mul_re, Complex.mul_im,
      Complex.ofReal_re, Complex.ofReal_im, Complex.I_re, Complex.I_im, Complex.one_re,
      Complex.one_im, mul_zero, sub_zero, add_zero, mul_one, zero_add, zero_sub]
    dsimp [VIntegral]
    rw [hH1, hH2, hV1, hV2]
  have h4 : l.intVerticalAt (l.σ n) F = intVSeg (l.σ n) (-l.T) l.T F := rfl
  have h5 : intVSeg (l.σ n) (-l.T) (-l.δ) F + intVSeg (l.σ n) (-l.δ) l.δ F + intVSeg (l.σ n) l.δ l.T F = intVSeg (l.σ n) (-l.T) l.T F := by
    rw [intVSeg, intVSeg, intVSeg, intVSeg]
    rw [intervalIntegral.integral_add_adjacent_intervals h_int_σ1 h_int_σ2]
    rw [intervalIntegral.integral_add_adjacent_intervals (IntervalIntegrable.trans h_int_σ1 h_int_σ2) h_int_σ3]
  have h6 : intVSeg 1 (-l.δ) 0 F + intVSeg 1 0 l.δ F = intVSeg 1 (-l.δ) l.δ F := by
    rw [intVSeg, intVSeg, intVSeg]; push_cast
    rw [intervalIntegral.integral_add_adjacent_intervals h_int_11 h_int_12]
  have h7 : intHSeg l.δ 1 (l.σ n) F = - intHSeg l.δ (l.σ n) 1 F := by
    rw [intHSeg, intHSeg, intervalIntegral.integral_symm]
  rw [h1, h2, h3, h4, h7, ← h5, ← h6]
  ring

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/CH2/Variant04d2846d4699a4b555dd3721d3efff047f35c60e1d7af99ccdc6110fb25f3490.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/CH2/Variant04d2846d4699a4b555dd3721d3efff047f35c60e1d7af99ccdc6110fb25f3490.lean#L2284).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `46d07824909f05f0ffe5b70a4f74a8f7078179e3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
