# monoidalCategory

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:11d561846f32d247b3d7c97b5e1b328a468e7600babcab467304052d9f54519e",
  "kind": "instance",
  "lexical_name": "monoidalCategory",
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
  "slug": "monoidalcategory--da7151434db36b1fc4d975b5",
  "source": {
    "blob": "67d42177dc5f756671f7448ee7c3e54cd1c09b1e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 320,
    "line": 310,
    "path": "GRWTSK/Algebra/LinearAlgebra/Basic/Variantb77ea42154481b4b38f24f61e123940d6b8c117f4c34bf067723a514439e647b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:da7151434db36b1fc4d975b5529a32534327de32506518d0fafba1ed7d201682",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Basic/Variantb77ea42154481b4b38f24f61e123940d6b8c117f4c34bf067723a514439e647b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:11d561846f32d247b3d7c97b5e1b328a468e7600babcab467304052d9f54519e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 310–320.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance monoidalCategory : MonoidalCategory (ModuleCat.{u} R) :=
  Monoidal.induced equivalenceSemimoduleCat.functor
  { μIso _ _ := .refl _
    εIso := .refl _
    associator_eq _ _ _ := by ext1; exact TensorProduct.ext (TensorProduct.ext rfl)
    leftUnitor_eq _ := by ext1; exact TensorProduct.ext rfl
    rightUnitor_eq _ := by ext1; exact TensorProduct.ext rfl }

open MonoidalCategory

/-- Remind ourselves that the monoidal unit, being just `R`, is still a commutative ring. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Basic/Variantb77ea42154481b4b38f24f61e123940d6b8c117f4c34bf067723a514439e647b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Basic/Variantb77ea42154481b4b38f24f61e123940d6b8c117f4c34bf067723a514439e647b.lean#L310).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `67d42177dc5f756671f7448ee7c3e54cd1c09b1e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
