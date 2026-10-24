# eTruncLTGELTSelfToGELT

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:d627350268b08fbf5618834f59321e58aec18fb2b2c0b25566e86e8227411fce",
  "kind": "def",
  "lexical_name": "eTruncLTGELTSelfToGELT",
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
  "slug": "etruncltgeltselftogelt--4d044bee3b7ca4b6596e58c9",
  "source": {
    "blob": "06173d73f2e9657a48107e9e793a1847325624cb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 462,
    "line": 457,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/ETrunc/Variante086338fbe3e8dfe5f24a032a4e6c38fc8dfd2a13dc0d0ee8e7ec5bfd74b0af8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:4d044bee3b7ca4b6596e58c9a98ac6cf8c0755c7036a913c412318182316326a",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/ETrunc/Variante086338fbe3e8dfe5f24a032a4e6c38fc8dfd2a13dc0d0ee8e7ec5bfd74b0af8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:d627350268b08fbf5618834f59321e58aec18fb2b2c0b25566e86e8227411fce`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 457–462.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def eTruncLTGELTSelfToGELT :
    t.eTruncLT.obj b ⋙ t.eTruncGE.obj a ⋙ t.eTruncLT.obj b ⟶
      t.eTruncLT.obj b ⋙ t.eTruncGE.obj a :=
  (Functor.associator _ _ _).inv ≫ Functor.whiskerLeft _ (t.eTruncLTι b) ≫
    (Functor.rightUnitor _).hom

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/ETrunc/Variante086338fbe3e8dfe5f24a032a4e6c38fc8dfd2a13dc0d0ee8e7ec5bfd74b0af8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/ETrunc/Variante086338fbe3e8dfe5f24a032a4e6c38fc8dfd2a13dc0d0ee8e7ec5bfd74b0af8.lean#L457).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `06173d73f2e9657a48107e9e793a1847325624cb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
