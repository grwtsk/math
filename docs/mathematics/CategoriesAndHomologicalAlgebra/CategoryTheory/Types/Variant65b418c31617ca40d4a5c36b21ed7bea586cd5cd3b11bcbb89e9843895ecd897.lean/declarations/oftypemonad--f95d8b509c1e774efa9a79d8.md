# ofTypeMonad

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:5749c1b3f769682a9ee16b2aa802c64b89c36143900c4058662692deeb29f2c7",
  "kind": "def",
  "lexical_name": "ofTypeMonad",
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
  "slug": "oftypemonad--f95d8b509c1e774efa9a79d8",
  "source": {
    "blob": "0394ec88cc0f0755af760c741704f4affe3918e1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 54,
    "line": 43,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Types/Variant65b418c31617ca40d4a5c36b21ed7bea586cd5cd3b11bcbb89e9843895ecd897.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:f95d8b509c1e774efa9a79d84602be1741da8f9fceeaf00bfba411b09083bd7b",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Types/Variant65b418c31617ca40d4a5c36b21ed7bea586cd5cd3b11bcbb89e9843895ecd897.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:5749c1b3f769682a9ee16b2aa802c64b89c36143900c4058662692deeb29f2c7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 43–54.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def ofTypeMonad : Monad (Type u) where
  toFunctor := ofTypeFunctor m
  η := ⟨@pure m _, fun _ _ f => funext fun x => (LawfulApplicative.map_pure f x).symm⟩
  μ := ⟨@joinM m _, fun α β (f : α → β) => funext fun a => by apply joinM_map_map⟩
  assoc α := funext fun a => by apply joinM_map_joinM
  left_unit α := funext fun a => by apply joinM_pure
  right_unit α := funext fun a => by apply joinM_map_pure

/-- The `Kleisli` category of a `Control.Monad` is equivalent to the `Kleisli` category of its
category-theoretic version, provided the monad is lawful.
-/
@[simps]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Types/Variant65b418c31617ca40d4a5c36b21ed7bea586cd5cd3b11bcbb89e9843895ecd897.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Types/Variant65b418c31617ca40d4a5c36b21ed7bea586cd5cd3b11bcbb89e9843895ecd897.lean#L43).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0394ec88cc0f0755af760c741704f4affe3918e1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
