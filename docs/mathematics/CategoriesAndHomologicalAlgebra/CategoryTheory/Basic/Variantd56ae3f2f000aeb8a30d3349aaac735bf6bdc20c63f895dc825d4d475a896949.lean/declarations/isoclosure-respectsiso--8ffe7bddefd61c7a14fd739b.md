# isoClosure_respectsIso

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:727bd5f54e3aca537abb799785e60d352236a273dd0a1779fd0fa5d184977a19",
  "kind": "instance",
  "lexical_name": "isoClosure_respectsIso",
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
  "slug": "isoclosure-respectsiso--8ffe7bddefd61c7a14fd739b",
  "source": {
    "blob": "bd91f779dfb4a27353630375bef92108a15f6786",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 273,
    "line": 267,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantd56ae3f2f000aeb8a30d3349aaac735bf6bdc20c63f895dc825d4d475a896949.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:8ffe7bddefd61c7a14fd739b0318cb231c569a7d75171ae2f1b38ba1f8dfbef3",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantd56ae3f2f000aeb8a30d3349aaac735bf6bdc20c63f895dc825d4d475a896949.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:727bd5f54e3aca537abb799785e60d352236a273dd0a1779fd0fa5d184977a19`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 267–273.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance isoClosure_respectsIso (P : MorphismProperty C) :
    RespectsIso P.isoClosure where
  precomp := fun e (he : IsIso e) f ⟨_, _, f', hf', ⟨iso⟩⟩ => ⟨_, _, f', hf',
      ⟨Arrow.isoMk (asIso iso.hom.left ≪≫ asIso (inv e)) (asIso iso.hom.right) (by simp)⟩⟩
  postcomp := fun e (he : IsIso e) f ⟨_, _, f', hf', ⟨iso⟩⟩ => ⟨_, _, f', hf',
      ⟨Arrow.isoMk (asIso iso.hom.left) (asIso iso.hom.right ≪≫ asIso e) (by simp)⟩⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantd56ae3f2f000aeb8a30d3349aaac735bf6bdc20c63f895dc825d4d475a896949.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantd56ae3f2f000aeb8a30d3349aaac735bf6bdc20c63f895dc825d4d475a896949.lean#L267).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bd91f779dfb4a27353630375bef92108a15f6786` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
