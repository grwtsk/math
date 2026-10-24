# epi_of_flat_of_surjective

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "8df1840034f03f6976335b08c21ed3f529cc0142",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 155,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/be/beb3f499047422f911e5b1d062fadd4bc0f60facea6e339c662288a00e853270.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:5a4699eb-2a9c-7137-aa2e-f6a4f9fd58b0",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:0fa2eeb3-6052-5233-c357-e87938176dc5",
  "kind": "lemma",
  "lexical_name": "epi_of_flat_of_surjective",
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
  "slug": "epi-of-flat-of-surjective--4ac1c86b292360855696f573",
  "source": {
    "blob": "8df1840034f03f6976335b08c21ed3f529cc0142",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 167,
    "line": 155,
    "path": "GRWTSK/Geometry/AlgebraicGeometry/Flat/Variantbeb3f499047422f911e5b1d062fadd4bc0f60facea6e339c662288a00e853270.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4ac1c86b292360855696f5735637b7ed5d0f461cb3c7018f7426c2f92eac2f66",
  "verification": {
    "reference": "docs/verification/Geometry/AlgebraicGeometry/Flat/Variantbeb3f499047422f911e5b1d062fadd4bc0f60facea6e339c662288a00e853270.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0fa2eeb3-6052-5233-c357-e87938176dc5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 155–167.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma epi_of_flat_of_surjective (f : X ⟶ Y) [Flat f] [Surjective f] : Epi f := by
  apply CategoryTheory.Functor.epi_of_epi_map (Scheme.forgetToLocallyRingedSpace)
  apply CategoryTheory.Functor.epi_of_epi_map (LocallyRingedSpace.forgetToSheafedSpace)
  apply SheafedSpace.epi_of_base_surjective_of_stalk_mono _ ‹Surjective f›.surj
  intro x
  apply ConcreteCategory.mono_of_injective
  algebraize [(f.stalkMap x).hom]
  have : Module.FaithfullyFlat (Y.presheaf.stalk (f x)) (X.presheaf.stalk x) :=
    @Module.FaithfullyFlat.of_flat_of_isLocalHom _ _ _ _ _ _ _
      (Flat.stalkMap f x) (f.toLRSHom.prop x)
  exact ‹RingHom.FaithfullyFlat _›.injective

set_option backward.isDefEq.respectTransparency.types false in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/Flat/Variantbeb3f499047422f911e5b1d062fadd4bc0f60facea6e339c662288a00e853270.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/AlgebraicGeometry/Flat/Variantbeb3f499047422f911e5b1d062fadd4bc0f60facea6e339c662288a00e853270.lean#L155).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8df1840034f03f6976335b08c21ed3f529cc0142` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
