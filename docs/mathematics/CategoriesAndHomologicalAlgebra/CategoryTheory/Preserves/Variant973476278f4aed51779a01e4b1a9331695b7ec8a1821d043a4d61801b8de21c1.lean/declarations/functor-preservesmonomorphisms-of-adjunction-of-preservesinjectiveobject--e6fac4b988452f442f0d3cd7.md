# Functor.preservesMonomorphisms_of_adjunction_of_preservesInjectiveObjects

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d3e81451-ec5e-acf9-edf8-2d35c3370890",
  "kind": "theorem",
  "lexical_name": "Functor.preservesMonomorphisms_of_adjunction_of_preservesInjectiveObjects",
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
  "slug": "functor-preservesmonomorphisms-of-adjunction-of-preservesinjectiveobject--e6fac4b988452f442f0d3cd7",
  "source": {
    "blob": "75acef8ef499f6285d2b37844bc3c4b26a0993c1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 72,
    "line": 63,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Preserves/Variant973476278f4aed51779a01e4b1a9331695b7ec8a1821d043a4d61801b8de21c1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e6fac4b988452f442f0d3cd751e0e5ab42605d210495626fc3684fe3a63666f4",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Preserves/Variant973476278f4aed51779a01e4b1a9331695b7ec8a1821d043a4d61801b8de21c1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d3e81451-ec5e-acf9-edf8-2d35c3370890`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 63–72.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Functor.preservesMonomorphisms_of_adjunction_of_preservesInjectiveObjects
    [EnoughInjectives D] {F : C ⥤ D} {G : D ⥤ C} (adj : F ⊣ G) [G.PreservesInjectiveObjects] :
    F.PreservesMonomorphisms where
  preserves {X Y} f _ := by
    suffices ∃ h, F.map f ≫ h = Injective.ι (F.obj X) from mono_of_mono_fac this.choose_spec
    have : Injective (G.obj (Injective.under (F.obj X))) := G.injective_obj _
    exact ⟨F.map (Injective.factorThru (adj.unit.app X ≫ G.map (Injective.ι _)) f) ≫
      adj.counit.app (Injective.under (F.obj X)), by simp [← Functor.map_comp_assoc]⟩

end CategoryTheory
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Preserves/Variant973476278f4aed51779a01e4b1a9331695b7ec8a1821d043a4d61801b8de21c1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Preserves/Variant973476278f4aed51779a01e4b1a9331695b7ec8a1821d043a4d61801b8de21c1.lean#L63).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `75acef8ef499f6285d2b37844bc3c4b26a0993c1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
