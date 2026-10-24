# colimit.pre_post

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:266d9998-ea2f-05d5-40c2-f811fcc442d5",
  "kind": "theorem",
  "lexical_name": "colimit.pre_post",
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
  "slug": "colimit-pre-post--cc6cd5991eea9e1d618882d5",
  "source": {
    "blob": "c02b9fb180ef8d6b041e563b8e878c11a03d3a0a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1077,
    "line": 1063,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/HasLimits/Variantae30c35eb21a8cbc855a62691009e29e71130b9f34d02c49b9e9c779f14af2a8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:cc6cd5991eea9e1d618882d5823c39e513b866040b4952af645fd7b34fbb7953",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/HasLimits/Variantae30c35eb21a8cbc855a62691009e29e71130b9f34d02c49b9e9c779f14af2a8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:266d9998-ea2f-05d5-40c2-f811fcc442d5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1063–1077.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem colimit.pre_post {D : Type u'} [Category.{v'} D] (E : K ⥤ J) (F : J ⥤ C) (G : C ⥤ D)
    [HasColimit F] [HasColimit (E ⋙ F)] [HasColimit (F ⋙ G)] [h : HasColimit ((E ⋙ F) ⋙ G)] :
    -- G (colimit F) ⟶ G (colimit (E ⋙ F)) ⟶ colimit ((E ⋙ F) ⋙ G) vs
    -- G (colimit F) ⟶ colimit F ⋙ G ⟶ colimit (E ⋙ (F ⋙ G)) or
    haveI : HasColimit (E ⋙ F ⋙ G) := h
    colimit.post (E ⋙ F) G ≫ G.map (colimit.pre F E) =
      colimit.pre (F ⋙ G) E ≫ colimit.post F G := by
  ext j
  rw [← assoc, colimit.ι_post, ← G.map_comp, colimit.ι_pre, ← assoc]
  haveI : HasColimit (E ⋙ F ⋙ G) := h
  erw [colimit.ι_pre (F ⋙ G) E j, colimit.ι_post]
#align category_theory.limits.colimit.pre_post CategoryTheory.Limits.colimit.pre_post

open CategoryTheory.Equivalence

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/HasLimits/Variantae30c35eb21a8cbc855a62691009e29e71130b9f34d02c49b9e9c779f14af2a8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/HasLimits/Variantae30c35eb21a8cbc855a62691009e29e71130b9f34d02c49b9e9c779f14af2a8.lean#L1063).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c02b9fb180ef8d6b041e563b8e878c11a03d3a0a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
