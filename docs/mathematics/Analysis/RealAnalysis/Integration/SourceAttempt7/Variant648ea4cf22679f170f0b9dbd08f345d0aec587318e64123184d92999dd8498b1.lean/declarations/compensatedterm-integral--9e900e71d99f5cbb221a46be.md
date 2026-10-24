# compensatedTerm_integral

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:75e7e70f-925d-6bd3-6e17-b9cd5dd324a3",
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
  "slug": "compensatedterm-integral--9e900e71d99f5cbb221a46be",
  "source": {
    "blob": "437fa83e7f505e1b8c17bf316bf88b7709cc47fd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 132,
    "line": 106,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/SourceAttempt7/Variant648ea4cf22679f170f0b9dbd08f345d0aec587318e64123184d92999dd8498b1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9e900e71d99f5cbb221a46be968d2106655a53237f953582dcddb92d2f6ff568",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/SourceAttempt7/Variant648ea4cf22679f170f0b9dbd08f345d0aec587318e64123184d92999dd8498b1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:75e7e70f-925d-6bd3-6e17-b9cd5dd324a3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 106–132.

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

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/SourceAttempt7/Variant648ea4cf22679f170f0b9dbd08f345d0aec587318e64123184d92999dd8498b1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/SourceAttempt7/Variant648ea4cf22679f170f0b9dbd08f345d0aec587318e64123184d92999dd8498b1.lean#L106).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `437fa83e7f505e1b8c17bf316bf88b7709cc47fd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
