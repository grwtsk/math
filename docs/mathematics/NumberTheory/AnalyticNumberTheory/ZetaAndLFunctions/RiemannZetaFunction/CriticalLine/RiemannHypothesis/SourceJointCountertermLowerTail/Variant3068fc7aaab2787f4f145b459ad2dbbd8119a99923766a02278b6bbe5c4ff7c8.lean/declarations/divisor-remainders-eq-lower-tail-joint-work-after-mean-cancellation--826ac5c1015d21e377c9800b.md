# divisor_remainders_eq_lower_tail_joint_work_after_mean_cancellation

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:bcfb9c55-8bd0-c3cb-b412-b5ade273d7c4",
  "kind": "theorem",
  "lexical_name": "divisor_remainders_eq_lower_tail_joint_work_after_mean_cancellation",
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
  "slug": "divisor-remainders-eq-lower-tail-joint-work-after-mean-cancellation--826ac5c1015d21e377c9800b",
  "source": {
    "blob": "8fc7caa77234650719166bfd8a67200416840c2f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 55,
    "line": 32,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceJointCountertermLowerTail/Variant3068fc7aaab2787f4f145b459ad2dbbd8119a99923766a02278b6bbe5c4ff7c8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:826ac5c1015d21e377c9800b7fb50482fe69f9f197285814d7daa2346a95a8ec",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceJointCountertermLowerTail/Variant3068fc7aaab2787f4f145b459ad2dbbd8119a99923766a02278b6bbe5c4ff7c8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:bcfb9c55-8bd0-c3cb-b412-b5ade273d7c4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 32–55.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem divisor_remainders_eq_lower_tail_joint_work_after_mean_cancellation
    (A : ℝ) (hA : 1 ≤ A) :
    (∑ d ∈ Finset.Icc 1 (vaughanCutoff A), realMoebius d * divisorRemainder A d) =
      -(∫ t in Set.Iic (Real.log (vaughanCutoff A : ℝ)),
        jointMangoldtTestProfile A t) -
      mangoldtLogError (Real.log (vaughanCutoff A : ℝ)) *
        jointMangoldtTestProfile A (Real.log (vaughanCutoff A : ℝ)) -
      jointMangoldtErrorWork A - centeredDeletedDiagonal A -
      (∑ d ∈ Finset.Icc 1 (vaughanCutoff A), realMoebius d * divisorCounterterm A d) +
      (let U := vaughanCutoff A
       let N := sourceKernelCutoff A
       let K := N / (U + 1)
       let B : ℕ → ℝ := fun k => ∑ n ∈ Finset.Ioc U k, centeredBeta U n
       let R : ℕ → ℝ := fun k =>
         ∑ m ∈ longInventory A,
           vonMangoldt m * sourcePlainWeight A ((m * k : ℕ) : ℝ)
       B K * R K) := by
  have hc :=
    SourceJointCountertermAlignment.divisor_remainders_eq_joint_work_after_mean_cancellation A hA
  rw [SourceJointMangoldtBaseline.jointMangoldtTestProfile_window_eq_neg_lower_tail A hA] at hc
  exact hc

end
end FormalResearch.RiemannHypothesis.SourceJointCountertermLowerTail
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceJointCountertermLowerTail/Variant3068fc7aaab2787f4f145b459ad2dbbd8119a99923766a02278b6bbe5c4ff7c8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceJointCountertermLowerTail/Variant3068fc7aaab2787f4f145b459ad2dbbd8119a99923766a02278b6bbe5c4ff7c8.lean#L32).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8fc7caa77234650719166bfd8a67200416840c2f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
