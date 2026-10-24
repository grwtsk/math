# criticalDensity_quadrature_eq_full_drift

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "b6ac3437ee5c9c6a74fed10ff618c8cc8de7e8bb",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 160,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/0c/0cd0d7e01bd400c454f3cf7d4a0652b3f010b326b2807998f3cf67592fc0b112.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:458b7427-a56f-344f-e531-22f3fc688564",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:3508aceb-9e7f-005e-c52c-066325d6c41b",
  "kind": "theorem",
  "lexical_name": "criticalDensity_quadrature_eq_full_drift",
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
  "slug": "criticaldensity-quadrature-eq-full-drift--7a2a892b99607211e0c1ef33",
  "source": {
    "blob": "b6ac3437ee5c9c6a74fed10ff618c8cc8de7e8bb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 180,
    "line": 160,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/SourceCriticalDensityQuadrature/Variant0cd0d7e01bd400c454f3cf7d4a0652b3f010b326b2807998f3cf67592fc0b112.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7a2a892b99607211e0c1ef335fd3d036aff4a0a3b8fd433d82d39bed18d6d1ee",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/SourceCriticalDensityQuadrature/Variant0cd0d7e01bd400c454f3cf7d4a0652b3f010b326b2807998f3cf67592fc0b112.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3508aceb-9e7f-005e-c52c-066325d6c41b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 160–180.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem criticalDensity_quadrature_eq_full_drift {A : ℝ} (hA : 1 ≤ A) :
    (∫ u in 0..2*A, criticalDensity u*pairedTailTest A u) =
      negativeTimeMean A-criticalContinuousMoment A+diagonalMainCoefficient A*A-
        1+criticalDecayNegativeMean A := by
  have hD := pairedTailTest_continuous hA
  have hi := hD.intervalIntegrable (μ := volume) 0 (2*A)
  have hh : IntervalIntegrable (fun u => criticalDecay u*pairedTailTest A u)
      volume 0 (2*A) :=
    (decay_continuous.mul hD).intervalIntegrable (μ := volume) 0 (2*A)
  have hf : (fun u : ℝ => criticalDensity u*pairedTailTest A u) =
      fun u => pairedTailTest A u-(criticalDecay u*pairedTailTest A u)/2 := by
    funext u
    unfold criticalDensity
    ring
  rw [hf, intervalIntegral.integral_sub hi (hh.div_const 2),
    intervalIntegral.integral_div, pairedTailTest_integral_eq hA]
  have he := criticalDensity_weighted_pairedTailTest hA
  linarith

/-- Literal closed prime quadrature retains the new actual continuous density
in the same readout. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/SourceCriticalDensityQuadrature/Variant0cd0d7e01bd400c454f3cf7d4a0652b3f010b326b2807998f3cf67592fc0b112.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/SourceCriticalDensityQuadrature/Variant0cd0d7e01bd400c454f3cf7d4a0652b3f010b326b2807998f3cf67592fc0b112.lean#L160).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b6ac3437ee5c9c6a74fed10ff618c8cc8de7e8bb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
