# monoCoprod

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:74ec29a6ad92f48051940aff9bf3f75b8d6d17b23d390642f342381040c4c43d",
  "kind": "instance",
  "lexical_name": "monoCoprod",
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
  "slug": "monocoprod--5d0ca6f1b045a199deb8ddbe",
  "source": {
    "blob": "6d543855320bfb0536cb9124486cc48945d737bb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 90,
    "line": 79,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Cartesian/Variantf60abf71bcb7281555814d8f6857e63560c7cc68fc0fa3ad013f0013da5891bc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:5d0ca6f1b045a199deb8ddbe8e7b13afb3bd1b88809baf166203cac36a55c7ef",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Cartesian/Variantf60abf71bcb7281555814d8f6857e63560c7cc68fc0fa3ad013f0013da5891bc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:74ec29a6ad92f48051940aff9bf3f75b8d6d17b23d390642f342381040c4c43d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 79–90.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance monoCoprod [IsCartesianDistributive C] : MonoCoprod C :=
  MonoCoprod.mk' fun A B =>
    ⟨_, coprodIsCoprod A B, ⟨fun {Z} f g he ↦ by
      let ι := coprod.inl (X := A) (Y := B)
      have : Mono (Z ◁ ι) := SplitMono.mono
        { retraction := (∂L Z A B).inv ≫ coprod.desc (𝟙 _) (fst Z B ≫ lift (𝟙 Z) f) }
      have : lift (𝟙 Z) f = lift (𝟙 Z) g := by rw [← cancel_mono (Z ◁ ι)]; aesop
      simpa only [lift_snd] using this =≫ snd _ _⟩⟩

end IsCartesianDistributive

end CategoryTheory
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Cartesian/Variantf60abf71bcb7281555814d8f6857e63560c7cc68fc0fa3ad013f0013da5891bc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Cartesian/Variantf60abf71bcb7281555814d8f6857e63560c7cc68fc0fa3ad013f0013da5891bc.lean#L79).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6d543855320bfb0536cb9124486cc48945d737bb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
