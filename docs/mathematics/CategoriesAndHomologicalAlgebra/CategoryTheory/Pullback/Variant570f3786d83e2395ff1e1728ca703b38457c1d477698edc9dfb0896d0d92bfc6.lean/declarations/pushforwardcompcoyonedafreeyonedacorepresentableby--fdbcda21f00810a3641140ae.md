# pushforwardCompCoyonedaFreeYonedaCorepresentableBy

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:34aa30c845d79a72238c7bf65d90b491a6d18b32f297173d0c61af135e6eb7c3",
  "kind": "def",
  "lexical_name": "pushforwardCompCoyonedaFreeYonedaCorepresentableBy",
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
  "slug": "pushforwardcompcoyonedafreeyonedacorepresentableby--fdbcda21f00810a3641140ae",
  "source": {
    "blob": "b34199475532f910a2f05cc064901aaf0dae639d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 84,
    "line": 73,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Pullback/Variant570f3786d83e2395ff1e1728ca703b38457c1d477698edc9dfb0896d0d92bfc6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:fdbcda21f00810a3641140ae56c07b2c63e5d007672dcbcf29d226a343d6b112",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Pullback/Variant570f3786d83e2395ff1e1728ca703b38457c1d477698edc9dfb0896d0d92bfc6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:34aa30c845d79a72238c7bf65d90b491a6d18b32f297173d0c61af135e6eb7c3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 73–84.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def pushforwardCompCoyonedaFreeYonedaCorepresentableBy (X : C) :
    (pushforward φ ⋙ coyoneda.obj (op ((free S).obj (yoneda.obj X)))).CorepresentableBy
      ((free R).obj (yoneda.obj (F.obj X))) where
  homEquiv {M} := (freeYonedaEquiv).trans
    (freeYonedaEquiv (M := (pushforward φ).obj M)).symm
  homEquiv_comp {M N} g f := freeYonedaEquiv.injective (by
    dsimp
    erw [Equiv.apply_symm_apply, freeYonedaEquiv_comp]
    conv_rhs => erw [freeYonedaEquiv_comp]
    erw [Equiv.apply_symm_apply]
    rfl)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Pullback/Variant570f3786d83e2395ff1e1728ca703b38457c1d477698edc9dfb0896d0d92bfc6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Pullback/Variant570f3786d83e2395ff1e1728ca703b38457c1d477698edc9dfb0896d0d92bfc6.lean#L73).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b34199475532f910a2f05cc064901aaf0dae639d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
