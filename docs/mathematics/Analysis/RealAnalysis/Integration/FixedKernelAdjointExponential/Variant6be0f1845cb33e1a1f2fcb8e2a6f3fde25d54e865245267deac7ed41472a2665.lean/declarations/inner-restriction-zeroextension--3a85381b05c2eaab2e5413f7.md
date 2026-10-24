# inner_restriction_zeroExtension

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "887ffb60a1988b3fe946bbe3884c96e745ff7f65",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 238,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/6b/6be0f1845cb33e1a1f2fcb8e2a6f3fde25d54e865245267deac7ed41472a2665.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:358f4bab-22e5-e54a-e380-b87e38f67392",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:e153fb32-525d-4168-833e-964fbc62ed79",
  "kind": "theorem",
  "lexical_name": "inner_restriction_zeroExtension",
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
  "slug": "inner-restriction-zeroextension--3a85381b05c2eaab2e5413f7",
  "source": {
    "blob": "887ffb60a1988b3fe946bbe3884c96e745ff7f65",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 255,
    "line": 238,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/FixedKernelAdjointExponential/Variant6be0f1845cb33e1a1f2fcb8e2a6f3fde25d54e865245267deac7ed41472a2665.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3a85381b05c2eaab2e5413f7aab385c2ff0dd3426f12c28e29e6d6422109ccc5",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/FixedKernelAdjointExponential/Variant6be0f1845cb33e1a1f2fcb8e2a6f3fde25d54e865245267deac7ed41472a2665.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e153fb32-525d-4168-833e-964fbc62ed79`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 238–255.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem inner_restriction_zeroExtension (f : FullH) (h : H) :
    inner ℂ (restriction f) h = inner ℂ f (zeroExtension h) := by
  rw [L2.inner_def, L2.inner_def]
  calc
    _ = ∫ t : ℝ, inner ℂ (f t) (h t) ∂halfLineMeasure := by
      apply integral_congr_ae
      filter_upwards [restriction_ae f] with t ht
      rw [ht]
    _ = ∫ t : ℝ, (Ioi (0 : ℝ)).indicator (fun x => inner ℂ (f x) (h x)) t := by
      exact (integral_indicator measurableSet_Ioi).symm
    _ = _ := by
      apply integral_congr_ae
      filter_upwards [zeroExtension_ae h] with t ht
      rw [ht]
      by_cases htpos : t ∈ Ioi (0 : ℝ)
      · simp only [indicator_of_mem htpos]
      · simp only [indicator_of_notMem htpos, inner_zero_right]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/FixedKernelAdjointExponential/Variant6be0f1845cb33e1a1f2fcb8e2a6f3fde25d54e865245267deac7ed41472a2665.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/FixedKernelAdjointExponential/Variant6be0f1845cb33e1a1f2fcb8e2a6f3fde25d54e865245267deac7ed41472a2665.lean#L238).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `887ffb60a1988b3fe946bbe3884c96e745ff7f65` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
