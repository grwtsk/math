# mapAffineOpenCover

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:247d17843ce3449bb7ea1cf2b4351c1487a80b42bd213b9ea96df05185fd8f3d",
  "kind": "def",
  "lexical_name": "mapAffineOpenCover",
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
  "slug": "mapaffineopencover--36c59fbb4ee78cd6b60837a3",
  "source": {
    "blob": "85aac6d9427d98b0a4425d56cda6421adc018f6d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 206,
    "line": 200,
    "path": "GRWTSK/Geometry/AlgebraicGeometry/Functor/Variant5d469124df50f3a90263a21289348d7e7218fc05920cfb49377642fa28956ad9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:36c59fbb4ee78cd6b60837a38d71c7583302615b15fe2f7f8025ebbba6b4b333",
  "verification": {
    "reference": "docs/verification/Geometry/AlgebraicGeometry/Functor/Variant5d469124df50f3a90263a21289348d7e7218fc05920cfb49377642fa28956ad9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:247d17843ce3449bb7ea1cf2b4351c1487a80b42bd213b9ea96df05185fd8f3d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 200–206.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[simps! I₀ f] noncomputable def mapAffineOpenCover : (Proj ℬ).AffineOpenCover :=
  affineOpenCoverOfIrrelevantLESpan _ (fun s : (affineOpenCover 𝒜).I₀ ↦ f s.2) (fun s ↦ f.2 s.2.2)
    (fun s ↦ s.1.2) <| (toIdeal_le_toIdeal_iff.mpr hf).trans <|
    Ideal.map_le_of_le_comap <| (toIdeal_irrelevant_le _).mpr fun i hi x hx ↦
    Ideal.subset_span ⟨⟨⟨i, hi⟩, ⟨x, hx⟩⟩, rfl⟩

set_option backward.isDefEq.respectTransparency false in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/Functor/Variant5d469124df50f3a90263a21289348d7e7218fc05920cfb49377642fa28956ad9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/AlgebraicGeometry/Functor/Variant5d469124df50f3a90263a21289348d7e7218fc05920cfb49377642fa28956ad9.lean#L200).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `85aac6d9427d98b0a4425d56cda6421adc018f6d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
