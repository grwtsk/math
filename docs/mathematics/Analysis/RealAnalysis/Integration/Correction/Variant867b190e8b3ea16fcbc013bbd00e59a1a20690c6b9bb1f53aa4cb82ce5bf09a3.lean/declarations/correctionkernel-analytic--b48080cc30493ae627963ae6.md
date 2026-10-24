# correctionKernel_analytic

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:61e133a3-4bd2-d7ab-4e3c-c70f4c381fa3",
  "kind": "theorem",
  "lexical_name": "correctionKernel_analytic",
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
  "slug": "correctionkernel-analytic--b48080cc30493ae627963ae6",
  "source": {
    "blob": "e7826ef9fdd8d2e2277066b91a63c32323477813",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 197,
    "line": 188,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/Correction/Variant867b190e8b3ea16fcbc013bbd00e59a1a20690c6b9bb1f53aa4cb82ce5bf09a3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b48080cc30493ae627963ae6f507a8787810d23639dcf1256ab1ad258434b4bf",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/Correction/Variant867b190e8b3ea16fcbc013bbd00e59a1a20690c6b9bb1f53aa4cb82ce5bf09a3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:61e133a3-4bd2-d7ab-4e3c-c70f4c381fa3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 188–197.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem correctionKernel_analytic
    (s : ℂ) (hs : s ≠ 0) :
    AnalyticAt ℂ correctionKernel s := by
  unfold correctionKernel
  exact
    ((analyticAt_const.mul (J_analytic 17 s hs)).add
      (analyticAt_const.mul (J_analytic 15 s hs))).add
      (analyticAt_const.mul (J_analytic 13 s hs))

/-- The complete corrected continuation. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/Correction/Variant867b190e8b3ea16fcbc013bbd00e59a1a20690c6b9bb1f53aa4cb82ce5bf09a3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/Correction/Variant867b190e8b3ea16fcbc013bbd00e59a1a20690c6b9bb1f53aa4cb82ce5bf09a3.lean#L188).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e7826ef9fdd8d2e2277066b91a63c32323477813` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
