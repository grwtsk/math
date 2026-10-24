# IsBilinearMap.toContinuousBilinearMap_apply

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "28992ed2ec8585592dea00c5483b2a1a20e87815",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 53,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/8d/8d46fdebd70835c3f8b63b6614fe3bc5ff98cf37676e5dae83a632cd663cb266.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:5e0edb45-84aa-a921-0a8e-3f7f8ad60f22",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:696cc5a7-cfa1-754b-1335-a82e7555e596",
  "kind": "lemma",
  "lexical_name": "IsBilinearMap.toContinuousBilinearMap_apply",
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
  "slug": "isbilinearmap-tocontinuousbilinearmap-apply--6b034b62f4fde675fdb912b2",
  "source": {
    "blob": "28992ed2ec8585592dea00c5483b2a1a20e87815",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 64,
    "line": 53,
    "path": "GRWTSK/Algebra/LinearAlgebra/FiniteDimensionBilinear/Variant8d46fdebd70835c3f8b63b6614fe3bc5ff98cf37676e5dae83a632cd663cb266.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6b034b62f4fde675fdb912b2ccaa38329b54e6dba881ab94be404bb9629b791b",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/FiniteDimensionBilinear/Variant8d46fdebd70835c3f8b63b6614fe3bc5ff98cf37676e5dae83a632cd663cb266.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:696cc5a7-cfa1-754b-1335-a82e7555e596`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 53–64.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma IsBilinearMap.toContinuousBilinearMap_apply {f : E → F → G} (h : IsBilinearMap 𝕜 f)
    (x : E) (y : F) :
  h.toContinuousBilinearMap x y = f x y := rfl

variable (𝕜 E F) in
/-- Evaluation of continuous linear maps as a continuous linear map in the
case of finite dimensional topological vector spaces over a complete field.
See also `ContinuousLinearMap.apply` for the case of normed spaces.

TODO: generalize the two constructions in the setting of maps from a bornological space to a locally
convex one, or define a `NormableSpace` class to deduce this case from the normed case.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/FiniteDimensionBilinear/Variant8d46fdebd70835c3f8b63b6614fe3bc5ff98cf37676e5dae83a632cd663cb266.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/FiniteDimensionBilinear/Variant8d46fdebd70835c3f8b63b6614fe3bc5ff98cf37676e5dae83a632cd663cb266.lean#L53).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `28992ed2ec8585592dea00c5483b2a1a20e87815` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
