# actualRelativePsiTimeError_eq_one_convolution

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a99c79d3-9536-9d80-37b4-0377f64b25e3",
  "kind": "theorem",
  "lexical_name": "actualRelativePsiTimeError_eq_one_convolution",
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
  "slug": "actualrelativepsitimeerror-eq-one-convolution--d798842469b1c8b2fbdd5302",
  "source": {
    "blob": "493ba438234566516cfd020ddd479269a32b7f31",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 48,
    "line": 34,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Attempt02/Variant0ddb2c76952172160229433382342c4497bb702fcea655b0f420a2cb81cd41b2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d798842469b1c8b2fbdd5302cc6022bb7bca5f1629dabc6bd11a2a30a36c19b5",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Attempt02/Variant0ddb2c76952172160229433382342c4497bb702fcea655b0f420a2cb81cd41b2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a99c79d3-9536-9d80-37b4-0377f64b25e3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 34–48.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualRelativePsiTimeError_eq_one_convolution {t : ℝ} (ht : 0 ≤ t) :
    actualRelativePsiTimeError t = actualCenteredMangoldtLogError t -
      actualMangoldtErrorConvolution 1 t -
        (Real.eulerMascheroniConstant + 1) * Real.exp (-t) := by
  have h := actualNormalizedMangoldtExpReadout_eq_convolution (by norm_num : (1 : ℝ) ≠ 0) ht
  rw [actualNormalizedMangoldtExpReadout_one ht] at h
  have hx : Real.exp t * Real.exp (-t) = 1 := by
    rw [← Real.exp_add, add_neg_cancel, Real.exp_zero]
  simp only [one_div, inv_one, one_mul, neg_mul] at h
  unfold actualRelativePsiTimeError
  calc
    _ = Real.exp (-t) * Chebyshev.psi (Real.exp t) - 1 := by rw [sub_mul, hx]; ring
    _ = _ := by linarith

/-- Actual closed prime jumps cause no loss of local L1 on finite time intervals. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Attempt02/Variant0ddb2c76952172160229433382342c4497bb702fcea655b0f420a2cb81cd41b2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Attempt02/Variant0ddb2c76952172160229433382342c4497bb702fcea655b0f420a2cb81cd41b2.lean#L34).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `493ba438234566516cfd020ddd479269a32b7f31` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
