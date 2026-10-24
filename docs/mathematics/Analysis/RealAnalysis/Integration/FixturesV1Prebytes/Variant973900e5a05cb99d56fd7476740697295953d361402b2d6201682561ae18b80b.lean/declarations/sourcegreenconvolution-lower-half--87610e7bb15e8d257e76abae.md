# sourceGreenConvolution_lower_half

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "c00f637a17e6b633aa6c0492eb7d37dbab48b830",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 156,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/97/973900e5a05cb99d56fd7476740697295953d361402b2d6201682561ae18b80b.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:577fc99a-85d6-ec7d-12ea-fb303a712364",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:2d8d398e-40ef-8075-9b55-b855a6eacaba",
  "kind": "theorem",
  "lexical_name": "sourceGreenConvolution_lower_half",
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
  "slug": "sourcegreenconvolution-lower-half--87610e7bb15e8d257e76abae",
  "source": {
    "blob": "c00f637a17e6b633aa6c0492eb7d37dbab48b830",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 170,
    "line": 156,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/FixturesV1Prebytes/Variant973900e5a05cb99d56fd7476740697295953d361402b2d6201682561ae18b80b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:87610e7bb15e8d257e76abae04a501aab2991b9fead68917e70434e6909f68d2",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/FixturesV1Prebytes/Variant973900e5a05cb99d56fd7476740697295953d361402b2d6201682561ae18b80b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2d8d398e-40ef-8075-9b55-b855a6eacaba`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 156–170.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sourceGreenConvolution_lower_half {A : ℝ} (hA : 0 < A) (x : ℝ) :
    (∫ y in Iic x, greenKernel (x-y) * normalizedTest explicitSecondDerivative A y) =
      causalSourceTail A (-x) := by
  have he : (fun y : ℝ ↦ greenKernel (x-y) * normalizedTest explicitSecondDerivative A y) =
      fun y : ℝ ↦ greenKernel (-x-(-y)) * normalizedTest explicitSecondDerivative A (-y) := by
    funext y
    rw [normalized_source_even hA]
    congr 1
    rw [show -x-(-y) = -(x-y) by ring, greenKernel_even]
  rw [he]
  exact (integral_comp_neg_Iic x (fun y : ℝ ↦
    greenKernel (-x-y) * normalizedTest explicitSecondDerivative A y)).trans
      (sourceGreenConvolution_upper_half A (-x))

/-- Genuine integrability licenses the full-line split with only one copy of the endpoint. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/FixturesV1Prebytes/Variant973900e5a05cb99d56fd7476740697295953d361402b2d6201682561ae18b80b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/FixturesV1Prebytes/Variant973900e5a05cb99d56fd7476740697295953d361402b2d6201682561ae18b80b.lean#L156).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c00f637a17e6b633aa6c0492eb7d37dbab48b830` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
