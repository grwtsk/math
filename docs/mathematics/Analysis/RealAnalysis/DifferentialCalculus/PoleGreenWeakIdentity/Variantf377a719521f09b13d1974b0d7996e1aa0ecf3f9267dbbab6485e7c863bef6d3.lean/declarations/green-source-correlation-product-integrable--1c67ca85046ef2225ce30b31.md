# green_source_correlation_product_integrable

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "8982e1d065f016d8bc6fce4c1b64951e21661e81",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 273,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/f3/f377a719521f09b13d1974b0d7996e1aa0ecf3f9267dbbab6485e7c863bef6d3.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:6b75c2dd-caba-e124-e05a-f81326d38ea3",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:8e510d64-f6b4-e11d-49c7-fb40b1060c4c",
  "kind": "theorem",
  "lexical_name": "green_source_correlation_product_integrable",
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
  "slug": "green-source-correlation-product-integrable--1c67ca85046ef2225ce30b31",
  "source": {
    "blob": "8982e1d065f016d8bc6fce4c1b64951e21661e81",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 286,
    "line": 273,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/PoleGreenWeakIdentity/Variantf377a719521f09b13d1974b0d7996e1aa0ecf3f9267dbbab6485e7c863bef6d3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1c67ca85046ef2225ce30b31ab029a7eb02d4f5a30b5fb0934aded7e9ff01697",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/PoleGreenWeakIdentity/Variantf377a719521f09b13d1974b0d7996e1aa0ecf3f9267dbbab6485e7c863bef6d3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8e510d64-f6b4-e11d-49c7-fb40b1060c4c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 273–286.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem green_source_correlation_product_integrable (A x : ℝ) (hA : 1 ≤ A) :
    Integrable (fun t ↦ poleSquaredGreenKernel t *
      sourceCorrelation explicitSecondDerivative A (x - t)) := by
  have hc : Continuous poleSquaredGreenKernel := by unfold poleSquaredGreenKernel; fun_prop
  have hcor := (sourceCorrelation_contDiff A (by linarith)).continuous
  have hcomp : HasCompactSupport
      (fun t ↦ sourceCorrelation explicitSecondDerivative A (x - t)) :=
    (sourceCorrelation_hasCompactSupport A (by linarith)).comp_homeomorph (Homeomorph.subLeft x)
  have hcont : Continuous (fun t ↦ poleSquaredGreenKernel t *
      sourceCorrelation explicitSecondDerivative A (x - t)) :=
    hc.mul (hcor.comp (continuous_const.sub continuous_id))
  exact hcont.integrable_of_hasCompactSupport hcomp.mul_left

/-- Convolution with the actual Green kernel exactly recovers the normalized positive base. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/PoleGreenWeakIdentity/Variantf377a719521f09b13d1974b0d7996e1aa0ecf3f9267dbbab6485e7c863bef6d3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/PoleGreenWeakIdentity/Variantf377a719521f09b13d1974b0d7996e1aa0ecf3f9267dbbab6485e7c863bef6d3.lean#L273).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8982e1d065f016d8bc6fce4c1b64951e21661e81` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
