# isIsoZeroEquiv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:d0cc1fd14ce48620336d770952111a291febadd7591d52edbd4b2fa8f19666a9",
  "kind": "def",
  "lexical_name": "isIsoZeroEquiv",
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
  "slug": "isisozeroequiv--ae03b44169a5b1f8fb809ec5",
  "source": {
    "blob": "c2539fbd7ad61c6ce766a31e2ca6b7fce6aa0bfe",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 389,
    "line": 377,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/ZeroMorphisms/Variant62f4a840372d8a6085c31f915ed3be8fb125514de4c1972f8d1ae0501df149c9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ae03b44169a5b1f8fb809ec53ba847471d833e701ee50a7f6d3f837044dfaac0",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/ZeroMorphisms/Variant62f4a840372d8a6085c31f915ed3be8fb125514de4c1972f8d1ae0501df149c9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:d0cc1fd14ce48620336d770952111a291febadd7591d52edbd4b2fa8f19666a9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 377–389.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def isIsoZeroEquiv (X Y : C) : IsIso (0 : X ⟶ Y) ≃ 𝟙 X = 0 ∧ 𝟙 Y = 0 where
  toFun := by
    intro i
    rw [← IsIso.hom_inv_id (0 : X ⟶ Y)]
    rw [← IsIso.inv_hom_id (0 : X ⟶ Y)]
    simp only [comp_zero, and_self, zero_comp]
  invFun h := ⟨⟨(0 : Y ⟶ X), by cat_disch⟩⟩
  left_inv := by cat_disch
  right_inv := by cat_disch

/-- A zero morphism `0 : X ⟶ X` is an isomorphism if and only if
the identity on `X` is zero.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/ZeroMorphisms/Variant62f4a840372d8a6085c31f915ed3be8fb125514de4c1972f8d1ae0501df149c9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/ZeroMorphisms/Variant62f4a840372d8a6085c31f915ed3be8fb125514de4c1972f8d1ae0501df149c9.lean#L377).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c2539fbd7ad61c6ce766a31e2ca6b7fce6aa0bfe` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
