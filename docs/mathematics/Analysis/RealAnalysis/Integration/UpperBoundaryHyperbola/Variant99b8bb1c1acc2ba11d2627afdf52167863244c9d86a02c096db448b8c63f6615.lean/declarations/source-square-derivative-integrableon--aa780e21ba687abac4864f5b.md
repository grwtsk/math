# source_square_derivative_integrableOn

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "9828b34de7f2f3b8c0121a9a50a1c208474ff83d",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 248,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/99/99b8bb1c1acc2ba11d2627afdf52167863244c9d86a02c096db448b8c63f6615.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:76a83b82-18c9-19a9-322c-17ef6a52a4ba",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:d79f5797-fba9-f2b3-0ee2-b7591712a028",
  "kind": "theorem",
  "lexical_name": "source_square_derivative_integrableOn",
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
  "slug": "source-square-derivative-integrableon--aa780e21ba687abac4864f5b",
  "source": {
    "blob": "9828b34de7f2f3b8c0121a9a50a1c208474ff83d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 256,
    "line": 248,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/UpperBoundaryHyperbola/Variant99b8bb1c1acc2ba11d2627afdf52167863244c9d86a02c096db448b8c63f6615.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:aa780e21ba687abac4864f5baf0a75b2b67ad72b0f1d0e80d35e64d206f84643",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/UpperBoundaryHyperbola/Variant99b8bb1c1acc2ba11d2627afdf52167863244c9d86a02c096db448b8c63f6615.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d79f5797-fba9-f2b3-0ee2-b7591712a028`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 248–256.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem source_square_derivative_integrableOn (A : ℝ) (hA : 1 ≤ A) :
    IntegrableOn
      (fun x ↦ upperSmallSum ⌊Real.exp A⌋₊ x ^ 2 *
        deriv (SourceSampling.sourceSamplingKernel A) x)
      (Set.Icc 1 (Real.exp (2 * A))) :=
  upperSmallSum_square_mul_integrableOn _ _ _ _
    (MertensTransport.sourceSamplingKernel_derivative_integrableOn A 1 _ hA (by norm_num))

/-- The unchanged source core, triangular pairing and exact square retain the original Q. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/UpperBoundaryHyperbola/Variant99b8bb1c1acc2ba11d2627afdf52167863244c9d86a02c096db448b8c63f6615.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/UpperBoundaryHyperbola/Variant99b8bb1c1acc2ba11d2627afdf52167863244c9d86a02c096db448b8c63f6615.lean#L248).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9828b34de7f2f3b8c0121a9a50a1c208474ff83d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
