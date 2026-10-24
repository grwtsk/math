# smoothedTest_tsupport_subset

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "11295f9d8e7d8601b849859be81f6a5c881f5865",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 117,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/e5/e5e867e1c81105c4aa320ae40cb4d0a9c6e06c6ed47e9cacd02b621ccea6e6b4.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:1cc2289f-cb46-fd56-060c-a4e1509626d2",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:13a74cf6-8df4-b29f-8b41-e59831d1b9db",
  "kind": "theorem",
  "lexical_name": "smoothedTest_tsupport_subset",
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
  "slug": "smoothedtest-tsupport-subset--90007ab800fab7f6fec03170",
  "source": {
    "blob": "11295f9d8e7d8601b849859be81f6a5c881f5865",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 121,
    "line": 117,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/ZeroSmoothingAudit/Variante5e867e1c81105c4aa320ae40cb4d0a9c6e06c6ed47e9cacd02b621ccea6e6b4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:90007ab800fab7f6fec03170eed6f271a7754148b73d267ca1f4ca67596ff9d3",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/ZeroSmoothingAudit/Variante5e867e1c81105c4aa320ae40cb4d0a9c6e06c6ed47e9cacd02b621ccea6e6b4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:13a74cf6-8df4-b29f-8b41-e59831d1b9db`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 117–121.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem smoothedTest_tsupport_subset (A ε : ℝ) (hA : 1 ≤ A) (hε : 0 < ε) :
    tsupport (smoothedTest A ε hε) ⊆ Icc (-A - ε) (A + ε) :=
  closure_minimal (smoothedTest_support_subset A ε hA hε) isClosed_Icc

/-- The smooth source tests are compactly supported. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/ZeroSmoothingAudit/Variante5e867e1c81105c4aa320ae40cb4d0a9c6e06c6ed47e9cacd02b621ccea6e6b4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/ZeroSmoothingAudit/Variante5e867e1c81105c4aa320ae40cb4d0a9c6e06c6ed47e9cacd02b621ccea6e6b4.lean#L117).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `11295f9d8e7d8601b849859be81f6a5c881f5865` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
