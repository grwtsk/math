# actual_criticalRelative_abs_le_pnt_budget

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "918240bbeba65c89058c328f5a21e92a7e7a88e3",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 21,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/91/91420702b19866f2d81a3f815a75c2ffe7e3a37f4780a75b46f68adc0f73511b.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:099f6341-3a62-728a-b908-3da6cd5bb153",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:fb586a94-3729-1440-b829-9d2ba8e1b214",
  "kind": "theorem",
  "lexical_name": "actual_criticalRelative_abs_le_pnt_budget",
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
  "slug": "actual-criticalrelative-abs-le-pnt-budget--5916faa7a93319adb4d94fb4",
  "source": {
    "blob": "918240bbeba65c89058c328f5a21e92a7e7a88e3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 44,
    "line": 21,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/ActualCriticalPntConsumer/Variant91420702b19866f2d81a3f815a75c2ffe7e3a37f4780a75b46f68adc0f73511b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5916faa7a93319adb4d94fb4a54f33c0798155a355242f38a0e3e9d274d63558",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/ActualCriticalPntConsumer/Variant91420702b19866f2d81a3f815a75c2ffe7e3a37f4780a75b46f68adc0f73511b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:fb586a94-3729-1440-b829-9d2ba8e1b214`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 21–44.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actual_criticalRelative_abs_le_pnt_budget (A c M : ℝ) (hA : 4 ≤ A)
    (hc : 0 ≤ c) (_hM : 0 ≤ M)
    (herr : ∀ t : ℝ, 0 < t → |relativePsiError t| ≤ M * Real.exp (-c * Real.sqrt t)) :
    |criticalRelativePairing A| ≤ M * actualCriticalPntAbsoluteBudget A c := by
  have hAi : 1 ≤ A := by linarith
  have hi := criticalKernel_integrable (A := A) hAi
  have hg := (actualCriticalPntAbsoluteIntegrand_integrable A c hA hc).const_mul M
  change |∫ t in Ioi (0 : ℝ), criticalKernel A t| ≤ _
  calc
    _ ≤ ∫ t in Ioi (0 : ℝ), |criticalKernel A t| := abs_integral_le_integral_abs
    _ ≤ ∫ t in Ioi (0 : ℝ), M * actualCriticalPntAbsoluteIntegrand A c t := by
      apply integral_mono_ae hi.abs hg
      filter_upwards [ae_restrict_mem measurableSet_Ioi] with t ht
      have he : |criticalKernel A t| = |relativePsiError t| * |baselineLogKernel A t| := by
        unfold criticalKernel baselineLogKernel
        rw [abs_mul, abs_mul, abs_mul, abs_of_pos (Real.exp_pos _)]
        ring
      rw [he, actualCriticalPntAbsoluteIntegrand]
      have hb := mul_le_mul_of_nonneg_right (herr t ht) (abs_nonneg (baselineLogKernel A t))
      simpa only [mul_assoc] using hb
    _ = _ := by rw [integral_const_mul, actualCriticalPntAbsoluteBudget]

end
end RH16IndependentChallengeNext
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/ActualCriticalPntConsumer/Variant91420702b19866f2d81a3f815a75c2ffe7e3a37f4780a75b46f68adc0f73511b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/ActualCriticalPntConsumer/Variant91420702b19866f2d81a3f815a75c2ffe7e3a37f4780a75b46f68adc0f73511b.lean#L21).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `918240bbeba65c89058c328f5a21e92a7e7a88e3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
