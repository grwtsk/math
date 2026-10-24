# negativeSmoothMoment_eq_forward_integral

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "5dc567623d5f5acd70533e58c89d0bb38298d4e2",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 66,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/9c/9c54a97e33644100fa5a5099ec23f9c2651ce5313cc7aba5a5ce60272a83b47b.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:28db96ee-a12d-3c06-853f-4337ce4f5f69",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:d751bd14-3c6d-10c5-7b6c-957628a63d62",
  "kind": "theorem",
  "lexical_name": "negativeSmoothMoment_eq_forward_integral",
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
  "slug": "negativesmoothmoment-eq-forward-integral--da377a52d7df7f800994c9c4",
  "source": {
    "blob": "5dc567623d5f5acd70533e58c89d0bb38298d4e2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 77,
    "line": 66,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/CompactTailPairingV4Source/Variant9c54a97e33644100fa5a5099ec23f9c2651ce5313cc7aba5a5ce60272a83b47b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:da377a52d7df7f800994c9c4be9397fab3f0f520f862d7654435a43fdb11449b",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/CompactTailPairingV4Source/Variant9c54a97e33644100fa5a5099ec23f9c2651ce5313cc7aba5a5ce60272a83b47b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d751bd14-3c6d-10c5-7b6c-957628a63d62`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 66–77.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem negativeSmoothMoment_eq_forward_integral {A : ℝ} (hA : 0 < A) :
    negativeSmoothMoment A = ∫ x : ℝ, ∫ t in 0..2*A, forwardHalfKernel A (t,x) := by
  unfold negativeSmoothMoment
  simp_rw [sourceCorrelation_eq_plus_shift, ← integral_const_mul]
  have hi : Integrable (Function.uncurry (fun t x : ℝ ↦ forwardHalfKernel A (t,x)))
      ((volume.restrict (uIoc 0 (2*A))).prod volume) := by
    exact (forwardHalfKernel_integrable hA).mono_measure
      (Measure.prod_mono Measure.restrict_le_self le_rfl)
  simpa only [forwardHalfKernel, Function.uncurry, mul_assoc] using
    intervalIntegral_integral_swap hi

/-- Only a nonzero first source factor requires replacing the shifted finite interval by a tail. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/CompactTailPairingV4Source/Variant9c54a97e33644100fa5a5099ec23f9c2651ce5313cc7aba5a5ce60272a83b47b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/CompactTailPairingV4Source/Variant9c54a97e33644100fa5a5099ec23f9c2651ce5313cc7aba5a5ce60272a83b47b.lean#L66).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5dc567623d5f5acd70533e58c89d0bb38298d4e2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
