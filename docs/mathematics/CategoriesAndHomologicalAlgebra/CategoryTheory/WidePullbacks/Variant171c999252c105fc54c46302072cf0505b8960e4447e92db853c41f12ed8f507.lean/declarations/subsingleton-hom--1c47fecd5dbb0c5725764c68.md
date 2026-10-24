# subsingleton_hom

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:76d6852bcbaad554b743a3a33ed38ad930348f368c719c37130fb4ea5ea26c06",
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
  "slug": "subsingleton-hom--1c47fecd5dbb0c5725764c68",
  "source": {
    "blob": "e09a5bc9377f3dce662e0c94da65e38e1541ec2e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 101,
    "line": 95,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/WidePullbacks/Variant171c999252c105fc54c46302072cf0505b8960e4447e92db853c41f12ed8f507.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:1c47fecd5dbb0c5725764c6880b18f6cab4bbc35647c239734eacc78a8ac5c88",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/WidePullbacks/Variant171c999252c105fc54c46302072cf0505b8960e4447e92db853c41f12ed8f507.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:76d6852bcbaad554b743a3a33ed38ad930348f368c719c37130fb4ea5ea26c06`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 95–101.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance subsingleton_hom : Quiver.IsThin (WidePullbackShape J) := fun _ _ => by
  constructor
  intro a b
  casesm* WidePullbackShape _, (_: WidePullbackShape _) ⟶ (_ : WidePullbackShape _)
  rfl; rfl; rfl
#align category_theory.limits.wide_pullback_shape.subsingleton_hom CategoryTheory.Limits.WidePullbackShape.subsingleton_hom

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/WidePullbacks/Variant171c999252c105fc54c46302072cf0505b8960e4447e92db853c41f12ed8f507.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/WidePullbacks/Variant171c999252c105fc54c46302072cf0505b8960e4447e92db853c41f12ed8f507.lean#L95).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e09a5bc9377f3dce662e0c94da65e38e1541ec2e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
