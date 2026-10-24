# MulEquiv.toCommGrpIso

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:710ebb8bf722ef7431d2c6810532961a3e59db885c27547402091d2b458862f4",
  "kind": "def",
  "lexical_name": "MulEquiv.toCommGrpIso",
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
  "slug": "mulequiv-tocommgrpiso--bccbd9e46931da63377584bc",
  "source": {
    "blob": "1f045596438bb5f9695d010015ac89be69fd71cc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 540,
    "line": 529,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Varianta93bc572dc528b54cb80e11a805c87ce0e379de3ebd30ee1d833eef459e36b5e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:bccbd9e46931da63377584bcca0a604a88a9d79d471973e20915eaab478aeefb",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Varianta93bc572dc528b54cb80e11a805c87ce0e379de3ebd30ee1d833eef459e36b5e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:710ebb8bf722ef7431d2c6810532961a3e59db885c27547402091d2b458862f4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 529–540.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def MulEquiv.toCommGrpIso {X Y : CommGrpCat} (e : X ≃* Y) : X ≅ Y where
  hom := CommGrpCat.ofHom e.toMonoidHom
  inv := CommGrpCat.ofHom e.symm.toMonoidHom

/-- Build an isomorphism in the category `AddCommGrpCat` from an `AddEquiv`
between `AddCommGroup`s. -/
add_decl_doc AddEquiv.toAddCommGrpIso

namespace CategoryTheory.Iso

/-- Build a `MulEquiv` from an isomorphism in the category `GrpCat`. -/
@[to_additive (attr := simp)]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Varianta93bc572dc528b54cb80e11a805c87ce0e379de3ebd30ee1d833eef459e36b5e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Varianta93bc572dc528b54cb80e11a805c87ce0e379de3ebd30ee1d833eef459e36b5e.lean#L529).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1f045596438bb5f9695d010015ac89be69fd71cc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
