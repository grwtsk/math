# compactPolePrimitive_endpoints

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "4176599746f4627102b0d55bc87f7194e08da145",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 175,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/d2/d21b6a0f27ef0bdcc91bbaf18446617974cbb9636adac5cda60db9b7130089d5.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:f1fc4f9c-5ace-487b-e939-ff99ae6ef9a1",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:c0ba90f8-8c4f-108c-13f6-2fa2202c419d",
  "kind": "theorem",
  "lexical_name": "compactPolePrimitive_endpoints",
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
  "slug": "compactpoleprimitive-endpoints--47ed48eca4628da67d71f83b",
  "source": {
    "blob": "4176599746f4627102b0d55bc87f7194e08da145",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 182,
    "line": 175,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/TailV2Prebytes/Variantd21b6a0f27ef0bdcc91bbaf18446617974cbb9636adac5cda60db9b7130089d5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:47ed48eca4628da67d71f83bcf159de09dd7b4c4ec71c20b7698dcd1e3a17e5d",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/TailV2Prebytes/Variantd21b6a0f27ef0bdcc91bbaf18446617974cbb9636adac5cda60db9b7130089d5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c0ba90f8-8c4f-108c-13f6-2fa2202c419d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 175–182.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem compactPolePrimitive_endpoints {A : ℝ} (hA : 0 < A) :
    compactPolePrimitive A (-A) = 0 ∧ compactPolePrimitive A A = 0 := by
  simp [compactPolePrimitive, (normalizedPrimitiveBump_endpoints hA).1,
    (normalizedPrimitiveBump_endpoints hA).2,
    (normalizedPrimitiveBump_deriv_endpoints hA).1,
    (normalizedPrimitiveBump_deriv_endpoints hA).2]

/-- The exponential multiplier does not enlarge the primitive's support. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/TailV2Prebytes/Variantd21b6a0f27ef0bdcc91bbaf18446617974cbb9636adac5cda60db9b7130089d5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/TailV2Prebytes/Variantd21b6a0f27ef0bdcc91bbaf18446617974cbb9636adac5cda60db9b7130089d5.lean#L175).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4176599746f4627102b0d55bc87f7194e08da145` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
