# sourceGreenConvolution_continuous

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "d7d788b5486ab410cf2a2fa7849aecacc6f0b488",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 185,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/e1/e12a7a0526276b28b00f4cac4ff6d3b11886f88bfdeb1ba042c10da52c46b712.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:afd96a1f-cc3c-ee68-565e-2d5cf7dc1abc",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:3cb1d6fa-775c-3611-5048-0c478fad1516",
  "kind": "theorem",
  "lexical_name": "sourceGreenConvolution_continuous",
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
  "slug": "sourcegreenconvolution-continuous--bc33ef65477eab69b2c61872",
  "source": {
    "blob": "d7d788b5486ab410cf2a2fa7849aecacc6f0b488",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 192,
    "line": 185,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/PairingV1Prebytes/Variante12a7a0526276b28b00f4cac4ff6d3b11886f88bfdeb1ba042c10da52c46b712.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:bc33ef65477eab69b2c618728d814c50a499bd297f71fe0dc5f67195bad75efe",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/PairingV1Prebytes/Variante12a7a0526276b28b00f4cac4ff6d3b11886f88bfdeb1ba042c10da52c46b712.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3cb1d6fa-775c-3611-5048-0c478fad1516`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 185–192.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sourceGreenConvolution_continuous {A : ℝ} (hA : 0 < A) :
    Continuous (sourceGreenConvolution A) := by
  have he : sourceGreenConvolution A = fun x ↦ -normalizedPrimitiveBump A x :=
    funext (sourceGreenConvolution_eq_neg_bump hA)
  rw [he]
  exact (normalizedPrimitiveBump_contDiff hA).continuous.neg

/-- The cancellation giving compact support is proved for this differential source. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/PairingV1Prebytes/Variante12a7a0526276b28b00f4cac4ff6d3b11886f88bfdeb1ba042c10da52c46b712.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/PairingV1Prebytes/Variante12a7a0526276b28b00f4cac4ff6d3b11886f88bfdeb1ba042c10da52c46b712.lean#L185).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d7d788b5486ab410cf2a2fa7849aecacc6f0b488` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
