# normalizedMooreComplex

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:8274ad89a7a85b0e2f046ab40863a7d7b1150326bb3c9fe1137441b90c2170ba",
  "kind": "def",
  "lexical_name": "normalizedMooreComplex",
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
  "slug": "normalizedmoorecomplex--da194d0a5a1aeee8f1e2d573",
  "source": {
    "blob": "a277f19c694d8044104d21da4b5c4fe8d4177c4c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 164,
    "line": 158,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/MooreComplex/Variant4a058a76b031ff366914a23bd52d9cc11f8d0c8ddee3ee928c8280901f9f1b8e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:da194d0a5a1aeee8f1e2d573b436c8c0f24a1d692b0ee45469ef0ba05ac36e66",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/MooreComplex/Variant4a058a76b031ff366914a23bd52d9cc11f8d0c8ddee3ee928c8280901f9f1b8e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:8274ad89a7a85b0e2f046ab40863a7d7b1150326bb3c9fe1137441b90c2170ba`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 158–164.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def normalizedMooreComplex : SimplicialObject C ⥤ ChainComplex C ℕ where
  obj := obj
  map f := map f

set_option backward.isDefEq.respectTransparency.types false in
set_option backward.defeqAttrib.useBackward true in
-- Not `@[simp]` as `simp` can prove this.
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/MooreComplex/Variant4a058a76b031ff366914a23bd52d9cc11f8d0c8ddee3ee928c8280901f9f1b8e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/MooreComplex/Variant4a058a76b031ff366914a23bd52d9cc11f8d0c8ddee3ee928c8280901f9f1b8e.lean#L158).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a277f19c694d8044104d21da4b5c4fe8d4177c4c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
