# uniformity_eq_aux

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "b052ad093668c06bd31a1cfd39ae148606b95b02",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 185,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/f4/f4bf6a52dd9ef2044f6a93d9e6ee48952bba383fe03767dbbc5f8db05041f7a1.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:65117658-93d8-ea61-8eed-d2d6848f85ac",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:36d74cca-9c87-fe8c-35b5-c5db3f46a4e5",
  "kind": "theorem",
  "lexical_name": "uniformity_eq_aux",
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
  "slug": "uniformity-eq-aux--f28e4c365a51f96a01c399a1",
  "source": {
    "blob": "b052ad093668c06bd31a1cfd39ae148606b95b02",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 191,
    "line": 185,
    "path": "GRWTSK/Topology/MetricTopology/Unitization/Variantf4bf6a52dd9ef2044f6a93d9e6ee48952bba383fe03767dbbc5f8db05041f7a1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f28e4c365a51f96a01c399a17c499726864471a0f2f8ffcedf4db61f052cc75f",
  "verification": {
    "reference": "docs/verification/Topology/MetricTopology/Unitization/Variantf4bf6a52dd9ef2044f6a93d9e6ee48952bba383fe03767dbbc5f8db05041f7a1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_SOURCE_DEPENDENCY"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:36d74cca-9c87-fe8c-35b5-c5db3f46a4e5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 185–191.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem uniformity_eq_aux :
    𝓤[instUniformSpaceProd.comap <| addEquiv 𝕜 A] = 𝓤 (Unitization 𝕜 A) := by
  have key : IsUniformInducing (addEquiv 𝕜 A) :=
    antilipschitzWith_addEquiv.isUniformInducing lipschitzWith_addEquiv.uniformContinuous
  rw [← key.comap_uniformity]
  rfl

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_SOURCE_DEPENDENCY`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/Unitization/Variantf4bf6a52dd9ef2044f6a93d9e6ee48952bba383fe03767dbbc5f8db05041f7a1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/Unitization/Variantf4bf6a52dd9ef2044f6a93d9e6ee48952bba383fe03767dbbc5f8db05041f7a1.lean#L185).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b052ad093668c06bd31a1cfd39ae148606b95b02` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
