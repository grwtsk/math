# localizationToStalk_stalkSpecializes

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "bf3b21039e02b82b04f228d342b97c2be8cf694e",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 1023,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/bc/bcb153ed11fdb369659661b20f009c5e13a0f327ce108115f4419c513eb25e14.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:ae900a3e-37ae-5e6e-0f0f-9a185ab2d295",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:e259d87b-4e6f-fa63-3e9f-b1d1e3d2b0ee",
  "kind": "theorem",
  "lexical_name": "localizationToStalk_stalkSpecializes",
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
  "slug": "localizationtostalk-stalkspecializes--e49d3c8c60ca2ffb7fab4c87",
  "source": {
    "blob": "bf3b21039e02b82b04f228d342b97c2be8cf694e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1037,
    "line": 1023,
    "path": "GRWTSK/Algebra/StructureSheaf/Variantbcb153ed11fdb369659661b20f009c5e13a0f327ce108115f4419c513eb25e14.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e49d3c8c60ca2ffb7fab4c87e6734168561cbe5b1bdc7a1fd08be9d87ab98b60",
  "verification": {
    "reference": "docs/verification/Algebra/StructureSheaf/Variantbcb153ed11fdb369659661b20f009c5e13a0f327ce108115f4419c513eb25e14.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e259d87b-4e6f-fa63-3e9f-b1d1e3d2b0ee`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1023–1037.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem localizationToStalk_stalkSpecializes {R : Type*} [CommRing R] {x y : PrimeSpectrum R}
    (h : x ⤳ y) :
    StructureSheaf.localizationToStalk R y ≫ (structureSheaf R).presheaf.stalkSpecializes h =
      CommRingCat.ofHom (PrimeSpectrum.localizationMapOfSpecializes h) ≫
        StructureSheaf.localizationToStalk R x := by
  apply IsLocalization.ringHom_ext (S := Localization.AtPrime y.asIdeal) y.asIdeal.primeCompl
  erw [RingHom.comp_assoc]
  conv_rhs => erw [RingHom.comp_assoc]
  dsimp [CommRingCat.ofHom, localizationToStalk, PrimeSpectrum.localizationMapOfSpecializes]
  rw [IsLocalization.lift_comp, IsLocalization.lift_comp, IsLocalization.lift_comp]
  exact toStalk_stalkSpecializes h
set_option linter.uppercaseLean3 false in
#align algebraic_geometry.structure_sheaf.localizationToStalk_stalk_specializes AlgebraicGeometry.StructureSheaf.localizationToStalk_stalkSpecializes

@[simp, reassoc, elementwise]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/StructureSheaf/Variantbcb153ed11fdb369659661b20f009c5e13a0f327ce108115f4419c513eb25e14.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/StructureSheaf/Variantbcb153ed11fdb369659661b20f009c5e13a0f327ce108115f4419c513eb25e14.lean#L1023).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bf3b21039e02b82b04f228d342b97c2be8cf694e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
