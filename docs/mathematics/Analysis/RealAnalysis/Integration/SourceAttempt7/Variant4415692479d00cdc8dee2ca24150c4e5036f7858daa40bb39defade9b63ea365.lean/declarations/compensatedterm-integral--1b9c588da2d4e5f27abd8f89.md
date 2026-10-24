# compensatedTerm_integral

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:4b0c6e3c-a0af-b9d7-1bed-8a5902fc9403",
  "kind": "theorem",
  "lexical_name": "compensatedTerm_integral",
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
  "slug": "compensatedterm-integral--1b9c588da2d4e5f27abd8f89",
  "source": {
    "blob": "08631576591096b67a93508df3b9edbab7d776aa",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 140,
    "line": 114,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/SourceAttempt7/Variant4415692479d00cdc8dee2ca24150c4e5036f7858daa40bb39defade9b63ea365.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1b9c588da2d4e5f27abd8f89fc0a1e9a279e8878565f6687f2530d4b30f70f36",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/SourceAttempt7/Variant4415692479d00cdc8dee2ca24150c4e5036f7858daa40bb39defade9b63ea365.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4b0c6e3c-a0af-b9d7-1bed-8a5902fc9403`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 114–140.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem compensatedTerm_integral {x : ℝ} (hx : -2 < x) (n : ℕ) :
    (∫ t : ℝ in Ioi 0, compensatedTerm x n t) =
      ContinuousResearch.CompensatedGammaProfile.term x n := by
  have hb := physicalRate_pos n
  have ha := shifted_physicalRate_pos hx n
  have hdd := dividedDifference_integrable ha hb
  have hexp := (integrableOn_exp_mul_Ioi (by linarith : -physicalRate n < 0) 0).const_mul x
  have heq : (compensatedTerm x n) =ᵐ[volume.restrict (Ioi 0)]
      (fun t ↦ dividedDifference (physicalRate n + x) (physicalRate n) t +
        x * Real.exp (-physicalRate n * t)) := by
    filter_upwards [ae_restrict_mem measurableSet_Ioi] with t ht
    exact compensatedTerm_split x n (ne_of_gt ht)
  rw [integral_congr_ae heq, integral_add hdd hexp, dividedDifference_integral ha hb,
    integral_const_mul, integral_exp_mul_Ioi (by linarith : -physicalRate n < 0)]
  simp only [mul_zero, Real.exp_zero, neg_div_neg_eq, one_div]
  unfold ContinuousResearch.CompensatedGammaProfile.term
  change Real.log (physicalRate n / (physicalRate n + x)) + x / physicalRate n = _
  have hlog : Real.log (physicalRate n / (physicalRate n + x)) =
      -Real.log (1 + x / physicalRate n) := by
    have hratio : physicalRate n / (physicalRate n + x) = (1 + x / physicalRate n)⁻¹ := by
      field_simp
    rw [hratio, Real.log_inv]
  rw [hlog]
  unfold physicalRate
  ring


```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/SourceAttempt7/Variant4415692479d00cdc8dee2ca24150c4e5036f7858daa40bb39defade9b63ea365.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/SourceAttempt7/Variant4415692479d00cdc8dee2ca24150c4e5036f7858daa40bb39defade9b63ea365.lean#L114).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `08631576591096b67a93508df3b9edbab7d776aa` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
