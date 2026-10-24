# IsHomotopyInvariant

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:3ecf179c14e1ecab9a576cd29c4aeebc1c960931b66564376e91abd133a3d99f",
  "kind": "class",
  "lexical_name": "IsHomotopyInvariant",
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
  "slug": "ishomotopyinvariant--bbb1e1849f51569717fb5d1e",
  "source": {
    "blob": "1b79a4cf67e3ef9874106dbcf2a37b962eda6e1b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 151,
    "line": 144,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/EilenbergSteenrod/Variant6a32ea00b8a414dbcd8c0afc5d72e10ade473d32599de266b627dd741b7b0988.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:bbb1e1849f51569717fb5d1eb3324e720189c761a644f49fb5ebca51ff6316ea",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/EilenbergSteenrod/Variant6a32ea00b8a414dbcd8c0afc5d72e10ade473d32599de266b627dd741b7b0988.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `class` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:3ecf179c14e1ecab9a576cd29c4aeebc1c960931b66564376e91abd133a3d99f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 144–151.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
class IsHomotopyInvariant (HP : HomologyPretheory.{u} C c) where
  map_eq_of_homotopy (HP) {X Y : TopPair.{u}} {f g : X ⟶ Y} (F : Homotopy f g) (i : ι) :
    (HP.Hₚ i).map f = (HP.Hₚ i).map g := by cat_disch

export IsHomotopyInvariant (map_eq_of_homotopy)

variable (C c) in
/-- An abbreviation for `HomologyPretheory.IsHomotopyInvariant` as `ObjectProperty`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/EilenbergSteenrod/Variant6a32ea00b8a414dbcd8c0afc5d72e10ade473d32599de266b627dd741b7b0988.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/EilenbergSteenrod/Variant6a32ea00b8a414dbcd8c0afc5d72e10ade473d32599de266b627dd741b7b0988.lean#L144).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1b79a4cf67e3ef9874106dbcf2a37b962eda6e1b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
