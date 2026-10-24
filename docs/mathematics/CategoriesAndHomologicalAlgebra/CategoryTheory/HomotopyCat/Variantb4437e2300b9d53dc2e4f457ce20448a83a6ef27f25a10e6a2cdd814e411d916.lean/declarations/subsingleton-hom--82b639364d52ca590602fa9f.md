# subsingleton_hom

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:238290468016c71569394605f98139cc3d934916be9cf12f4c594c39e9d836cc",
  "kind": "instance",
  "lexical_name": "subsingleton_hom",
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
  "slug": "subsingleton-hom--82b639364d52ca590602fa9f",
  "source": {
    "blob": "8ae3d974a68bdc3dc22d11f78f2d9f95aae418d8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 484,
    "line": 477,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/HomotopyCat/Variantb4437e2300b9d53dc2e4f457ce20448a83a6ef27f25a10e6a2cdd814e411d916.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:82b639364d52ca590602fa9f89b11f4d1564e3ff7314a840b3437db3abb827db",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/HomotopyCat/Variantb4437e2300b9d53dc2e4f457ce20448a83a6ef27f25a10e6a2cdd814e411d916.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:238290468016c71569394605f98139cc3d934916be9cf12f4c594c39e9d836cc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 477–484.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance subsingleton_hom (X : Truncated.{u} 2) [Unique (X _⦋0⦌₂)] [Subsingleton (X _⦋1⦌₂)]
    (x y : X.HomotopyCategory) :
    Subsingleton (x ⟶ y) :=
  letI : Unique (OneTruncation₂ X) := inferInstanceAs (Unique (X _⦋0⦌₂))
  letI (x y : (OneTruncation₂ X)) : Subsingleton (x ⟶ y) :=
    inferInstanceAs (Subsingleton <| X.Edge _ _)
  CategoryTheory.Quotient.instSubsingletonHom _ _ _

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/HomotopyCat/Variantb4437e2300b9d53dc2e4f457ce20448a83a6ef27f25a10e6a2cdd814e411d916.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/HomotopyCat/Variantb4437e2300b9d53dc2e4f457ce20448a83a6ef27f25a10e6a2cdd814e411d916.lean#L477).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8ae3d974a68bdc3dc22d11f78f2d9f95aae418d8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
