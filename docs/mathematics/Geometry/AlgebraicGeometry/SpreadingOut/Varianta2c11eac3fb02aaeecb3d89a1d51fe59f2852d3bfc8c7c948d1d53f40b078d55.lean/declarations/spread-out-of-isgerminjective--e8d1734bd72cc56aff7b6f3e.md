# spread_out_of_isGermInjective'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "5ea1da853c6efcb2335716ec01896185c7721e4f",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 362,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/a2/a2c11eac3fb02aaeecb3d89a1d51fe59f2852d3bfc8c7c948d1d53f40b078d55.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:8d182266-92f0-7a21-f837-cd0c9e0cc6be",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:476bdb4f-f254-b6ba-6914-67d4f5a1f36b",
  "kind": "lemma",
  "lexical_name": "spread_out_of_isGermInjective'",
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
  "slug": "spread-out-of-isgerminjective--e8d1734bd72cc56aff7b6f3e",
  "source": {
    "blob": "5ea1da853c6efcb2335716ec01896185c7721e4f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 376,
    "line": 362,
    "path": "GRWTSK/Geometry/AlgebraicGeometry/SpreadingOut/Varianta2c11eac3fb02aaeecb3d89a1d51fe59f2852d3bfc8c7c948d1d53f40b078d55.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e8d1734bd72cc56aff7b6f3e1a98ac4b83235e764bcf0d7fe4b1d8bec5aad4e6",
  "verification": {
    "reference": "docs/verification/Geometry/AlgebraicGeometry/SpreadingOut/Varianta2c11eac3fb02aaeecb3d89a1d51fe59f2852d3bfc8c7c948d1d53f40b078d55.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:476bdb4f-f254-b6ba-6914-67d4f5a1f36b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 362–376.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma spread_out_of_isGermInjective' [LocallyOfFiniteType sY] {x : X} [X.IsGermInjectiveAt x]
    (φ : Spec (X.presheaf.stalk x) ⟶ Y)
    (h : φ ≫ sY = X.fromSpecStalk x ≫ sX) :
    ∃ (U : X.Opens) (hxU : x ∈ U) (f : U.toScheme ⟶ Y),
      φ = U.fromSpecStalkOfMem x hxU ≫ f ∧ f ≫ sY = U.ι ≫ sX := by
  have := spread_out_of_isGermInjective sX sY ?_ (Scheme.stalkClosedPointTo φ) ?_
  · simpa only [Scheme.Spec_stalkClosedPointTo_fromSpecStalk] using this
  · rw [← Scheme.comp_base_apply, h, Scheme.comp_base_apply, Scheme.fromSpecStalk_closedPoint]
  · apply Spec.map_injective
    rw [← cancel_mono (S.fromSpecStalk _)]
    simpa only [Spec.map_comp, Category.assoc, Scheme.Spec_map_stalkMap_fromSpecStalk,
      Scheme.Spec_stalkClosedPointTo_fromSpecStalk_assoc,
      Scheme.Spec_map_stalkSpecializes_fromSpecStalk]

end AlgebraicGeometry
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/SpreadingOut/Varianta2c11eac3fb02aaeecb3d89a1d51fe59f2852d3bfc8c7c948d1d53f40b078d55.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/AlgebraicGeometry/SpreadingOut/Varianta2c11eac3fb02aaeecb3d89a1d51fe59f2852d3bfc8c7c948d1d53f40b078d55.lean#L362).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5ea1da853c6efcb2335716ec01896185c7721e4f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
