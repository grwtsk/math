# sourceGreenConvolution_eq_tails

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "b72ed102c1a016d093088361f168308c8c551c1e",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 168,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/fc/fce4f73ece6a86f8b673a6bc58d2e139e45f2cd3f329cbb32140de5d754ec4e3.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:d440acaa-4bac-c3b0-98d4-fe58b34031b0",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:780d4942-b6f9-c7da-0923-a46706d2e94a",
  "kind": "theorem",
  "lexical_name": "sourceGreenConvolution_eq_tails",
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
  "slug": "sourcegreenconvolution-eq-tails--76cf467f0bfed7b9297592ae",
  "source": {
    "blob": "b72ed102c1a016d093088361f168308c8c551c1e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 176,
    "line": 168,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ConvolutionV1Prebytes/Variantfce4f73ece6a86f8b673a6bc58d2e139e45f2cd3f329cbb32140de5d754ec4e3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:76cf467f0bfed7b9297592ae433715a4072c859b6c7d04256e3920a6e452823c",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ConvolutionV1Prebytes/Variantfce4f73ece6a86f8b673a6bc58d2e139e45f2cd3f329cbb32140de5d754ec4e3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:780d4942-b6f9-c7da-0923-a46706d2e94a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 168–176.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sourceGreenConvolution_eq_tails {A : ℝ} (hA : 0 < A) (x : ℝ) :
    sourceGreenConvolution A x = causalSourceTail A x + causalSourceTail A (-x) := by
  have hi := sourceGreenConvolution_integrable hA x
  have hs := integral_Iic_add_Ioi (hi.integrableOn (s := Iic x))
    (hi.integrableOn (s := Ioi x))
  rw [sourceGreenConvolution_lower_half hA, sourceGreenConvolution_upper_half hA] at hs
  exact hs.symm.trans (add_comm _ _)

/-- This special source convolution is exactly the negative globally compact bump. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ConvolutionV1Prebytes/Variantfce4f73ece6a86f8b673a6bc58d2e139e45f2cd3f329cbb32140de5d754ec4e3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ConvolutionV1Prebytes/Variantfce4f73ece6a86f8b673a6bc58d2e139e45f2cd3f329cbb32140de5d754ec4e3.lean#L168).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b72ed102c1a016d093088361f168308c8c551c1e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
