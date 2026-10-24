# sourceLogKernel_deriv_abs_le_anchored

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "d2e664bfce47c7542160a528945688531893406d",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 56,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/8e/8e311d1763dfe277fb2e7298763e548850c6de60aef276352f235ba7ead0050d.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:c33cc016-e6ef-25dc-c261-46ac12d3a095",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:108d25cc-ce75-bf0e-c37c-24e17f94f9cf",
  "kind": "theorem",
  "lexical_name": "sourceLogKernel_deriv_abs_le_anchored",
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
  "slug": "sourcelogkernel-deriv-abs-le-anchored--990226485575cb8325b17186",
  "source": {
    "blob": "d2e664bfce47c7542160a528945688531893406d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 68,
    "line": 56,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variant8e311d1763dfe277fb2e7298763e548850c6de60aef276352f235ba7ead0050d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:990226485575cb8325b171863c4202a3844381fd23146bc8f0c97c9931d202fd",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variant8e311d1763dfe277fb2e7298763e548850c6de60aef276352f235ba7ead0050d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:108d25cc-ce75-bf0e-c37c-24e17f94f9cf`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 56–68.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sourceLogKernel_deriv_abs_le_anchored (A s : ℝ) (hA : 1 ≤ A) (hs : 0 ≤ s) :
    |deriv (sourceLogKernel A) s| ≤ 520 * (s + 4) / (3 * A ^ 2) := by
  have h := anchored_two_moment_sampling_bound
    (sourceCorrelation_deriv_contDiff A hA) (sourceCorrelation_deriv_twoMomentProfile A hA)
    (sourceCorrelation_deriv_zero A (by linarith))
    (show 0 ≤ 65 / (3 * A ^ 2) by positivity)
    (fun t ↦ sourceCorrelation_second_deriv_abs_le A t hA) s hs (sourceKernelCutoff A)
    (sourceCorrelation_deriv_samplingTailZero A (Real.exp s) hA (Real.one_le_exp_iff.mpr hs))
  rw [sourceLogKernel_deriv_eq_sum A s (by linarith)]
  convert h using 1
  ring

/-- Both genuine source envelopes remain available pointwise. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variant8e311d1763dfe277fb2e7298763e548850c6de60aef276352f235ba7ead0050d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variant8e311d1763dfe277fb2e7298763e548850c6de60aef276352f235ba7ead0050d.lean#L56).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d2e664bfce47c7542160a528945688531893406d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
