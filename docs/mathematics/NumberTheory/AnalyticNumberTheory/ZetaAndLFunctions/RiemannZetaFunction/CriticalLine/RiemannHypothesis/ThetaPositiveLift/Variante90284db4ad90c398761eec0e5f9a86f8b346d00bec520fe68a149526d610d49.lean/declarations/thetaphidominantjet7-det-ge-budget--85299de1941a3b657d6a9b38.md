# thetaPhiDominantJet7_det_ge_budget

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "f31c2ed23133d12676df5d51370d86da2fa2bb8e",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 84,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/e9/e90284db4ad90c398761eec0e5f9a86f8b346d00bec520fe68a149526d610d49.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:27d530dd-07a9-3ab3-fe68-3e6a035faefa",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:db149edd-5b98-e05a-4ca6-75ceb8dc37ec",
  "kind": "theorem",
  "lexical_name": "thetaPhiDominantJet7_det_ge_budget",
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
  "slug": "thetaphidominantjet7-det-ge-budget--85299de1941a3b657d6a9b38",
  "source": {
    "blob": "f31c2ed23133d12676df5d51370d86da2fa2bb8e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 114,
    "line": 84,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variante90284db4ad90c398761eec0e5f9a86f8b346d00bec520fe68a149526d610d49.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:85299de1941a3b657d6a9b3886d30ed717c5d653be9576ee45f0ee9e8fd697c6",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variante90284db4ad90c398761eec0e5f9a86f8b346d00bec520fe68a149526d610d49.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:db149edd-5b98-e05a-4ca6-75ceb8dc37ec`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 84–114.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem thetaPhiDominantJet7_det_ge_budget {t : ℝ} (ht : 0 ≤ t) :
    thetaPhiRankFourDominantBudget t ≤
      thetaPhiJetDet4 (thetaPhiDominantJet7 t) := by
  have he : 1 ≤ Real.exp (4 * t) := Real.one_le_exp (by linarith)
  have hA : 3 ≤ thetaModeA t := by
    unfold thetaModeA
    exact (le_of_lt Real.pi_gt_three).trans
      (le_mul_of_one_le_right Real.pi_pos.le he)
  have hq := thetaPhiJetDet4_single_mode_quartic_ge_369 hA
  rw [show thetaPhiJetDet4 (thetaPhiDominantJet7 t) =
      201326592 * thetaModeA t ^ 6 *
        (16 * thetaModeA t ^ 4 - 96 * thetaModeA t ^ 3 +
          360 * thetaModeA t ^ 2 - 840 * thetaModeA t + 945) by
    change thetaPhiJetDet4
      (fun k => thetaPhiJetPolynomial7 k (thetaModeA t)) =
        201326592 * thetaModeA t ^ 6 *
          (16 * thetaModeA t ^ 4 - 96 * thetaModeA t ^ 3 +
            360 * thetaModeA t ^ 2 - 840 * thetaModeA t + 945)
    exact thetaPhiJetDet4_single_mode (thetaModeA t)]
  unfold thetaPhiRankFourDominantBudget
  calc
    (201326592 : ℝ) * 369 * thetaModeA t ^ 6 =
        ((201326592 : ℝ) * thetaModeA t ^ 6) * 369 := by ring
    _ ≤ ((201326592 : ℝ) * thetaModeA t ^ 6) *
        (16 * thetaModeA t ^ 4 - 96 * thetaModeA t ^ 3 +
          360 * thetaModeA t ^ 2 - 840 * thetaModeA t + 945) := by
      exact mul_le_mul_of_nonneg_left hq (by positivity)
    _ = _ := by ring

/-- A pointwise perturbation bound strictly below the explicit dominant budget
is sufficient for positivity of the full normalized determinant. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variante90284db4ad90c398761eec0e5f9a86f8b346d00bec520fe68a149526d610d49.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variante90284db4ad90c398761eec0e5f9a86f8b346d00bec520fe68a149526d610d49.lean#L84).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f31c2ed23133d12676df5d51370d86da2fa2bb8e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
