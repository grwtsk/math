# _root_.GRWTSK.Topology.ContinuousMultilinearMap.Variantc6b7c38a511e9a43d7379b68ffc79c43866f1f0eee4f6cbbd7e32294ffd62d79.ContinuousLinearMap.compContinuousMultilinearMap_coe

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:24e3f828-bf0b-025c-9dc3-378f6c9bec9b",
  "kind": "theorem",
  "lexical_name": "_root_.GRWTSK.Topology.ContinuousMultilinearMap.Variantc6b7c38a511e9a43d7379b68ffc79c43866f1f0eee4f6cbbd7e32294ffd62d79.ContinuousLinearMap.compContinuousMultilinearMap_coe",
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
  "slug": "root-grwtsk-topology-continuousmultilinearmap-variantc6b7c38a511e9a43d73--4cae13050264dd817b403edc",
  "source": {
    "blob": "9fe836f6d48a6b0a8671cee43786284259eace8c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 343,
    "line": 334,
    "path": "GRWTSK/Topology/Multilinear/Varianta33ce6e6c199baa3b620956f9ac83c38bb87d0d8d159645f55afb13407dea7af.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4cae13050264dd817b403edcfc82e659ebf7e3ebcd50f48be060b7379b56412c",
  "verification": {
    "reference": "docs/verification/Topology/Multilinear/Varianta33ce6e6c199baa3b620956f9ac83c38bb87d0d8d159645f55afb13407dea7af.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:24e3f828-bf0b-025c-9dc3-378f6c9bec9b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 334–343.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem _root_.GRWTSK.Topology.ContinuousMultilinearMap.Variantc6b7c38a511e9a43d7379b68ffc79c43866f1f0eee4f6cbbd7e32294ffd62d79.ContinuousLinearMap.compContinuousMultilinearMap_coe (g : M₂ →L[R] M₃)
    (f : ContinuousMultilinearMap R M₁ M₂) :
    (g.compContinuousMultilinearMap f : (∀ i, M₁ i) → M₃) =
      (g : M₂ → M₃) ∘ (f : (∀ i, M₁ i) → M₂) := by
  ext m
  rfl
#align continuous_linear_map.comp_continuous_multilinear_map_coe ContinuousLinearMap.compContinuousMultilinearMap_coe

/-- `ContinuousMultilinearMap.pi` as an `Equiv`. -/
@[simps]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Topology/Multilinear/Varianta33ce6e6c199baa3b620956f9ac83c38bb87d0d8d159645f55afb13407dea7af.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/Multilinear/Varianta33ce6e6c199baa3b620956f9ac83c38bb87d0d8d159645f55afb13407dea7af.lean#L334).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9fe836f6d48a6b0a8671cee43786284259eace8c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
