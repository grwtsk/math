# inverseThreeHalves_integral_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c7b78ac7-3f21-f7bc-63e5-b1418ddc7fa5",
  "kind": "theorem",
  "lexical_name": "inverseThreeHalves_integral_le",
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
  "slug": "inversethreehalves-integral-le--08d84e17377a6a6008d29624",
  "source": {
    "blob": "7e475170f09ee7d8c7ab8f114394ebeecd8d79ee",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 230,
    "line": 215,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceKapitzaSquareShell/Variant99ed5b053200cdc7be4653b17ceb44bc1e314e72356631b630b704c2cb2b9818.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:08d84e17377a6a6008d29624eb51b164dc0ddc186f070550a59e7e191960566d",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceKapitzaSquareShell/Variant99ed5b053200cdc7be4653b17ceb44bc1e314e72356631b630b704c2cb2b9818.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c7b78ac7-3f21-f7bc-63e5-b1418ddc7fa5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 215–230.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem inverseThreeHalves_integral_le {y : ℝ} (hy : 1 ≤ y) :
    (∫ x in (1 : ℝ)..y, inverseThreeHalves x) ≤ 2 := by
  have hi : IntervalIntegrable inverseThreeHalves volume 1 y :=
    (inverseThreeHalves_continuousOn hy).intervalIntegrable
  have hd : ∀ x ∈ Set.uIcc (1 : ℝ) y,
      HasDerivAt inversePrimitive (inverseThreeHalves x) x := by
    intro x hx
    rw [Set.uIcc_of_le hy] at hx
    exact inversePrimitive_hasDerivAt (by linarith [hx.1])
  rw [intervalIntegral.integral_eq_sub_of_hasDerivAt hd hi]
  unfold inversePrimitive
  norm_num only [Real.one_rpow, mul_one]
  have hpow := Real.rpow_nonneg (by linarith : (0 : ℝ) ≤ y) (-(1 / 2 : ℝ))
  linarith

/-- The generic finite inverse-power budget is uniform in every natural cutoff. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceKapitzaSquareShell/Variant99ed5b053200cdc7be4653b17ceb44bc1e314e72356631b630b704c2cb2b9818.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceKapitzaSquareShell/Variant99ed5b053200cdc7be4653b17ceb44bc1e314e72356631b630b704c2cb2b9818.lean#L215).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7e475170f09ee7d8c7ab8f114394ebeecd8d79ee` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
