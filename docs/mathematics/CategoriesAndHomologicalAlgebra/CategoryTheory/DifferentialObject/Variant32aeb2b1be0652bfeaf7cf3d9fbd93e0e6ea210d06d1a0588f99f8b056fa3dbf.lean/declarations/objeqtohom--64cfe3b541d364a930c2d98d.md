# objEqToHom

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:13d0eaacc192b8746bddb82466fb25a32beb4245783f171943a7f0d0229fd35c",
  "kind": "abbrev",
  "lexical_name": "objEqToHom",
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
  "slug": "objeqtohom--64cfe3b541d364a930c2d98d",
  "source": {
    "blob": "ba27bdfe29be817a18cea8f9255b0bfb132f98ee",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 49,
    "line": 43,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/DifferentialObject/Variant32aeb2b1be0652bfeaf7cf3d9fbd93e0e6ea210d06d1a0588f99f8b056fa3dbf.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:64cfe3b541d364a930c2d98d9199357ea3dc473729719124360ad5a45b878e26",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/DifferentialObject/Variant32aeb2b1be0652bfeaf7cf3d9fbd93e0e6ea210d06d1a0588f99f8b056fa3dbf.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `abbrev` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:13d0eaacc192b8746bddb82466fb25a32beb4245783f171943a7f0d0229fd35c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 43–49.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
abbrev objEqToHom {i j : β} (h : i = j) :
    X.obj i ⟶ X.obj j :=
  eqToHom (congr_arg X.obj h)
set_option linter.uppercaseLean3 false in
#align category_theory.differential_object.X_eq_to_hom CategoryTheory.DifferentialObject.objEqToHom

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/DifferentialObject/Variant32aeb2b1be0652bfeaf7cf3d9fbd93e0e6ea210d06d1a0588f99f8b056fa3dbf.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/DifferentialObject/Variant32aeb2b1be0652bfeaf7cf3d9fbd93e0e6ea210d06d1a0588f99f8b056fa3dbf.lean#L43).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ba27bdfe29be817a18cea8f9255b0bfb132f98ee` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
