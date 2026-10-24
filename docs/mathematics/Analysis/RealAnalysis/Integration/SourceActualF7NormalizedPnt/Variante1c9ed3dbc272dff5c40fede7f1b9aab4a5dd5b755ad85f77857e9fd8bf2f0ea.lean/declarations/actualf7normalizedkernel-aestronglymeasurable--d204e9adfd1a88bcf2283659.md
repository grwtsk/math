# actualF7NormalizedKernel_aestronglyMeasurable

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:94d27fc3-70d6-67d6-d4a9-23d476c76d58",
  "kind": "theorem",
  "lexical_name": "actualF7NormalizedKernel_aestronglyMeasurable",
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
  "slug": "actualf7normalizedkernel-aestronglymeasurable--d204e9adfd1a88bcf2283659",
  "source": {
    "blob": "daf8c7cc4789418ef5eed2439b35b2b933ff6316",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 32,
    "line": 25,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/SourceActualF7NormalizedPnt/Variante1c9ed3dbc272dff5c40fede7f1b9aab4a5dd5b755ad85f77857e9fd8bf2f0ea.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d204e9adfd1a88bcf22836594fb4d13a59ec16ba3490058f7ff837c00b6c5431",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/SourceActualF7NormalizedPnt/Variante1c9ed3dbc272dff5c40fede7f1b9aab4a5dd5b755ad85f77857e9fd8bf2f0ea.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:94d27fc3-70d6-67d6-d4a9-23d476c76d58`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 25–32.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualF7NormalizedKernel_aestronglyMeasurable (T : ℝ) :
    AEStronglyMeasurable (actualF7NormalizedKernel T)
      (volume.restrict (Ioi (Real.log 7))) := by
  have hm := actualXiInverseSquareTimeDensity_integrableOn.aestronglyMeasurable.mul
    (by fun_prop : Continuous (fun r : ℝ => Real.exp ((r - T) / 2))).aestronglyMeasurable
  exact hm.indicator measurableSet_Iic

/-- Genuine causal damping is at most one; no prime-source sign is assumed. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/SourceActualF7NormalizedPnt/Variante1c9ed3dbc272dff5c40fede7f1b9aab4a5dd5b755ad85f77857e9fd8bf2f0ea.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/SourceActualF7NormalizedPnt/Variante1c9ed3dbc272dff5c40fede7f1b9aab4a5dd5b755ad85f77857e9fd8bf2f0ea.lean#L25).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `daf8c7cc4789418ef5eed2439b35b2b933ff6316` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
