# exists_lift_of_mono_of_isConnected

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "5111b10c4ea7e39ec81507c6c751e2d8ba8e2612",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 51,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/0e/0edeb0bf3831115d4394a244392476e9069e9a4a6010de39c950b49b6429be1e.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:4efd54f7-99dd-e9b3-e9be-25d52b818d56",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:92268efa-8a72-be26-768f-791de0ca04ef",
  "kind": "lemma",
  "lexical_name": "exists_lift_of_mono_of_isConnected",
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
  "slug": "exists-lift-of-mono-of-isconnected--b015af8f2e4ed2bdd0ae6f44",
  "source": {
    "blob": "5111b10c4ea7e39ec81507c6c751e2d8ba8e2612",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 71,
    "line": 51,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Full/Variant0edeb0bf3831115d4394a244392476e9069e9a4a6010de39c950b49b6429be1e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b015af8f2e4ed2bdd0ae6f448b9741fd806333b180831eb8d68a5ecb94bf5fc2",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Full/Variant0edeb0bf3831115d4394a244392476e9069e9a4a6010de39c950b49b6429be1e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:92268efa-8a72-be26-768f-791de0ca04ef`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 51–71.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma exists_lift_of_mono_of_isConnected (X : C) (Y : Action FintypeCat.{u} (Aut F))
    (i : Y ⟶ (functorToAction F).obj X) [Mono i] [IsConnected Y] : ∃ (Z : C) (f : Z ⟶ X)
    (u : Y ≅ (functorToAction F).obj Z),
    IsConnected Z ∧ Mono f ∧ i = u.hom ≫ (functorToAction F).map f := by
  obtain ⟨y⟩ := nonempty_fiber_of_isConnected (forget₂ _ FintypeCat) Y
  obtain ⟨Z, f, z, hz, hc, hm⟩ := fiber_in_connected_component F X (i.hom y)
  have : IsConnected ((functorToAction F).obj Z) := PreservesIsConnected.preserves
  obtain ⟨u, hu⟩ := connected_component_unique
    (forget₂ (Action FintypeCat (Aut F)) FintypeCat) (B := (functorToAction F).obj Z)
    y z i ((functorToAction F).map f) hz.symm
  refine ⟨Z, f, u, hc, hm, ?_⟩
  apply evaluation_injective_of_isConnected
    (forget₂ (Action FintypeCat (Aut F)) FintypeCat) Y ((functorToAction F).obj X) y
  suffices h : i.hom y = F.map f z by simpa [hu]
  exact hz.symm

/--
Let `X` be an object of a Galois category with fiber functor `F` and `Y` a sub-`Aut F`-set
of `F.obj X`. Then there exists a sub-object `Z` of `X` and an isomorphism
`Y ≅ F.obj X` as `Aut F`-sets such that the obvious triangle commutes.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Full/Variant0edeb0bf3831115d4394a244392476e9069e9a4a6010de39c950b49b6429be1e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Full/Variant0edeb0bf3831115d4394a244392476e9069e9a4a6010de39c950b49b6429be1e.lean#L51).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5111b10c4ea7e39ec81507c6c751e2d8ba8e2612` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
