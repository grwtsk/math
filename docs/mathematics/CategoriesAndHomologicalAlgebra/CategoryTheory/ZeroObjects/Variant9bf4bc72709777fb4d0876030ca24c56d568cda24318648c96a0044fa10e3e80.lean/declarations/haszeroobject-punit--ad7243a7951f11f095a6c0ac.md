# hasZeroObject_pUnit

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a5114377dbefbf0fd1938cbd39208d6b476881577bc89c9acf03869f8895353e",
  "kind": "instance",
  "lexical_name": "hasZeroObject_pUnit",
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
  "slug": "haszeroobject-punit--ad7243a7951f11f095a6c0ac",
  "source": {
    "blob": "74adaf404c7da9ccf5e247be989f0f68fbccfdcf",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 191,
    "line": 175,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/ZeroObjects/Variant9bf4bc72709777fb4d0876030ca24c56d568cda24318648c96a0044fa10e3e80.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ad7243a7951f11f095a6c0ac51bbc2b6cda3914eebb13513be310d7ca1045da1",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/ZeroObjects/Variant9bf4bc72709777fb4d0876030ca24c56d568cda24318648c96a0044fa10e3e80.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:a5114377dbefbf0fd1938cbd39208d6b476881577bc89c9acf03869f8895353e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 175–191.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance hasZeroObject_pUnit : HasZeroObject (Discrete PUnit) where zero :=
  ⟨⟨⟨⟩⟩,
    { unique_to := fun ⟨⟨⟩⟩ =>
      ⟨{ default := 𝟙 _,
          uniq := by subsingleton }⟩
      unique_from := fun ⟨⟨⟩⟩ =>
      ⟨{ default := 𝟙 _,
          uniq := by subsingleton }⟩}⟩

section

variable [HasZeroObject C]

/-- Construct a `Zero C` for a category with a zero object.
This cannot be a global instance as it will trigger for every `Zero C` typeclass search.
-/
@[instance_reducible]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/ZeroObjects/Variant9bf4bc72709777fb4d0876030ca24c56d568cda24318648c96a0044fa10e3e80.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/ZeroObjects/Variant9bf4bc72709777fb4d0876030ca24c56d568cda24318648c96a0044fa10e3e80.lean#L175).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `74adaf404c7da9ccf5e247be989f0f68fbccfdcf` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
