# analyticWithinAt_uncurry_compContinuousLinearMap

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "2670a49138c7cc57c30157ad969a9658e25f1816",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 262,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/38/3879afdc6c0ce83822b2462887ffde81208df8f947995a2d9d0240a755c7a4f8.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:330e2789-1891-c08a-2b83-6216618a01ee",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:7a0d0d97-5684-566e-86f0-b9f9b18331f4",
  "kind": "lemma",
  "lexical_name": "analyticWithinAt_uncurry_compContinuousLinearMap",
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
  "slug": "analyticwithinat-uncurry-compcontinuouslinearmap--1a57183c9b48a03a2ff4417b",
  "source": {
    "blob": "2670a49138c7cc57c30157ad969a9658e25f1816",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 268,
    "line": 262,
    "path": "GRWTSK/Analysis/ComplexAnalysis/CPolynomial/Variant3879afdc6c0ce83822b2462887ffde81208df8f947995a2d9d0240a755c7a4f8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1a57183c9b48a03a2ff4417bc797e60bcbb5f1a12dc2b19edc1cb2ee538d3e3a",
  "verification": {
    "reference": "docs/verification/Analysis/ComplexAnalysis/CPolynomial/Variant3879afdc6c0ce83822b2462887ffde81208df8f947995a2d9d0240a755c7a4f8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7a0d0d97-5684-566e-86f0-b9f9b18331f4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 262–268.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma analyticWithinAt_uncurry_compContinuousLinearMap :
    AnalyticWithinAt 𝕜 (fun (p : (Π i, Fm i →L[𝕜] Em i) × (ContinuousMultilinearMap 𝕜 Em G))
      ↦ p.2.compContinuousLinearMap p.1) t q :=
  analyticWithinAt_uncurry_of_linear
    (ContinuousMultilinearMap.compContinuousLinearMapContinuousMultilinear 𝕜 Fm Em G)

end ContinuousMultilinearMap
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/ComplexAnalysis/CPolynomial/Variant3879afdc6c0ce83822b2462887ffde81208df8f947995a2d9d0240a755c7a4f8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/ComplexAnalysis/CPolynomial/Variant3879afdc6c0ce83822b2462887ffde81208df8f947995a2d9d0240a755c7a4f8.lean#L262).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2670a49138c7cc57c30157ad969a9658e25f1816` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
