# equivalenceOfIsEmpty

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:19f12554c3a4a8a26a994675abddc3731bc3b598f338aee860fddc397727b26b",
  "kind": "def",
  "lexical_name": "equivalenceOfIsEmpty",
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
  "slug": "equivalenceofisempty--2ea01c238640ea9544d4cac2",
  "source": {
    "blob": "e3da73d3907e8e93248a8989109c912ecf5a8038",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 45,
    "line": 38,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/PEmpty/Variant1710432b1633cdc701d37769875c9b38d5d10c7c1f104b36e62e03044780ebd8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:2ea01c238640ea9544d4cac273b93e71a6456969075ad4ee0a3855f7ade2a482",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/PEmpty/Variant1710432b1633cdc701d37769875c9b38d5d10c7c1f104b36e62e03044780ebd8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:19f12554c3a4a8a26a994675abddc3731bc3b598f338aee860fddc397727b26b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 38–45.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def equivalenceOfIsEmpty [IsEmpty C] [IsEmpty D] : C ≌ D where
  functor := functorOfIsEmpty C D
  inverse := functorOfIsEmpty D C
  unitIso := Functor.isEmptyExt _ _
  counitIso := Functor.isEmptyExt _ _
  functor_unitIso_comp := isEmptyElim

/-- Equivalence between two empty categories. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/PEmpty/Variant1710432b1633cdc701d37769875c9b38d5d10c7c1f104b36e62e03044780ebd8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/PEmpty/Variant1710432b1633cdc701d37769875c9b38d5d10c7c1f104b36e62e03044780ebd8.lean#L38).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e3da73d3907e8e93248a8989109c912ecf5a8038` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
