# toTrivial

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:5bae9f335ff96d976a051ccc45a467e3d69c27a07970a7599ab8e4119db6671c",
  "kind": "def",
  "lexical_name": "toTrivial",
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
  "slug": "totrivial--86b0e66eeb40dde0530ab8e9",
  "source": {
    "blob": "8612de65224a28464ffb0164c78846c738aa907d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 186,
    "line": 176,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Bimon/Variant4e418b59f36c0c4f76a33ed177622f8f12360098d7a03d250d4e4ecbebdff05f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:86b0e66eeb40dde0530ab8e95bec24f90eea52192129b743be684ea8abc46dd6",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Bimon/Variant4e418b59f36c0c4f76a33ed177622f8f12360098d7a03d250d4e4ecbebdff05f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:5bae9f335ff96d976a051ccc45a467e3d69c27a07970a7599ab8e4119db6671c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 176–186.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def toTrivial (A : Bimon_ C) : A ⟶ trivial C :=
  (default : @Quiver.Hom (Comon_ (Mon_ C)) _ A (Comon_.trivial (Mon_ C)))

@[deprecated (since := "2024-12-07")] alias to_trivial := toTrivial
@[deprecated (since := "2024-12-07")] alias to_trivial_hom := toTrivial_hom

/-! # Additional lemmas -/

variable {C}

@[reassoc]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Bimon/Variant4e418b59f36c0c4f76a33ed177622f8f12360098d7a03d250d4e4ecbebdff05f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Bimon/Variant4e418b59f36c0c4f76a33ed177622f8f12360098d7a03d250d4e4ecbebdff05f.lean#L176).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8612de65224a28464ffb0164c78846c738aa907d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
