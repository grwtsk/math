# MulEquiv.toSemigroupCatIso

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:e53f6c2138c7c08643cd3b2582215b56812069b2c4ab112415bfe5fa8d0b194f",
  "kind": "def",
  "lexical_name": "MulEquiv.toSemigroupCatIso",
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
  "slug": "mulequiv-tosemigroupcatiso--1469dd0df94536da7003ff83",
  "source": {
    "blob": "8f9d219ddb82a522356d5330d3da376ac38c7a7e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 260,
    "line": 248,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant878ce4d73fdbac072104150ad7c45e0294d5434cdcb7cfde1fb47e43e206bab5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:1469dd0df94536da7003ff832780a24d7f12812f5455aaf9be3255d5b3aa999f",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant878ce4d73fdbac072104150ad7c45e0294d5434cdcb7cfde1fb47e43e206bab5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:e53f6c2138c7c08643cd3b2582215b56812069b2c4ab112415bfe5fa8d0b194f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 248–260.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def MulEquiv.toSemigroupCatIso (e : X ≃* Y) : SemigroupCat.of X ≅ SemigroupCat.of Y where
  hom := e.toMulHom
  inv := e.symm.toMulHom
#align mul_equiv.to_Semigroup_iso MulEquiv.toSemigroupCatIso
#align add_equiv.to_AddSemigroup_iso AddEquiv.toAddSemigroupCatIso

end

namespace CategoryTheory.Iso

/-- Build a `mul_equiv` from an isomorphism in the category `Magma`. -/
@[to_additive
      "Build an `add_equiv` from an isomorphism in the category\n`AddMagma`."]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant878ce4d73fdbac072104150ad7c45e0294d5434cdcb7cfde1fb47e43e206bab5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant878ce4d73fdbac072104150ad7c45e0294d5434cdcb7cfde1fb47e43e206bab5.lean#L248).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8f9d219ddb82a522356d5330d3da376ac38c7a7e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
