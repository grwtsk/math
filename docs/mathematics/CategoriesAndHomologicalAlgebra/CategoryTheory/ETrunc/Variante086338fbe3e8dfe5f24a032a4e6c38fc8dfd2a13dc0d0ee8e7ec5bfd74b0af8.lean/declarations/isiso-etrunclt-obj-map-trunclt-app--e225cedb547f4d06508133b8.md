# isIso_eTruncLT_obj_map_truncLTπ_app

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d9fb4d51-bfda-85d1-cb9d-15c6cb1849b2",
  "kind": "lemma",
  "lexical_name": "isIso_eTruncLT_obj_map_truncLTπ_app",
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
  "slug": "isiso-etrunclt-obj-map-trunclt-app--e225cedb547f4d06508133b8",
  "source": {
    "blob": "06173d73f2e9657a48107e9e793a1847325624cb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 330,
    "line": 317,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/ETrunc/Variante086338fbe3e8dfe5f24a032a4e6c38fc8dfd2a13dc0d0ee8e7ec5bfd74b0af8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e225cedb547f4d06508133b8cb294a7dfd76f4ca482abbf200fa7f04b87c5cf0",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/ETrunc/Variante086338fbe3e8dfe5f24a032a4e6c38fc8dfd2a13dc0d0ee8e7ec5bfd74b0af8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d9fb4d51-bfda-85d1-cb9d-15c6cb1849b2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 317–330.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma isIso_eTruncLT_obj_map_truncLTπ_app (a b : EInt) (h : a ≤ b) (X : C) :
    IsIso ((t.eTruncLT.obj a).map ((t.eTruncLTι b).app X)) := by
  induction a using WithBotTop.rec with
  | bot => exact ⟨0, IsZero.eq_of_src (by simp) _ _, IsZero.eq_of_src (by simp) _ _⟩
  | coe a =>
    induction b using WithBotTop.rec with
    | bot => simp at h
    | coe b =>
      exact t.isIso_truncLT_map_truncLTι_app a b (by simpa using h) X
    | top => dsimp; infer_instance
  | top =>
    obtain rfl : b = ⊤ := by simpa using h
    infer_instance

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/ETrunc/Variante086338fbe3e8dfe5f24a032a4e6c38fc8dfd2a13dc0d0ee8e7ec5bfd74b0af8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/ETrunc/Variante086338fbe3e8dfe5f24a032a4e6c38fc8dfd2a13dc0d0ee8e7ec5bfd74b0af8.lean#L317).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `06173d73f2e9657a48107e9e793a1847325624cb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
