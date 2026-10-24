# liftAux_map

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "40637bfe56ffef83f620b50a8f018b54fffb3897",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 189,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/a4/a45fda5825cd3cc0ec65278939d91ea37e3aab4ea382efcbdbe7cb4a16345ded.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:de1e15d4-5bf9-bf38-bf30-0f9a9ed3111d",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:fdf054f3-d896-481b-5a93-b116a7167f2b",
  "kind": "lemma",
  "lexical_name": "liftAux_map",
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
  "slug": "liftaux-map--13420bcf2b14d1719a6e6ad3",
  "source": {
    "blob": "40637bfe56ffef83f620b50a8f018b54fffb3897",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 208,
    "line": 189,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/CoverLifting/Varianta45fda5825cd3cc0ec65278939d91ea37e3aab4ea382efcbdbe7cb4a16345ded.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:13420bcf2b14d1719a6e6ad3a570f75d2bf3d95754ff9e2bff95c4ea588b8168",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/CoverLifting/Varianta45fda5825cd3cc0ec65278939d91ea37e3aab4ea382efcbdbe7cb4a16345ded.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:fdf054f3-d896-481b-5a93-b116a7167f2b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 189–208.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma liftAux_map {Y : C} (f : G.obj Y ⟶ X) {W : C} (g : W ⟶ Y) (i : S.Arrow)
    (h : G.obj W ⟶ i.Y) (w : h ≫ i.f = G.map g ≫ f) :
    liftAux hF α s f ≫ F.map g.op = s.ι i ≫ R.map h.op ≫ α.app _ :=
  (Multifork.IsLimit.fac
    (hF.isLimitMultifork ⟨_, G.cover_lift J K (K.pullback_stable f S.2)⟩) _ _
      ⟨W, g, by simpa only [Sieve.functorPullback_apply, functorPullback_mem,
        Sieve.pullback_apply, ← w] using S.1.downward_closed i.hf h⟩).trans (by
        dsimp
        simp only [← Category.assoc]
        congr 1
        let r : S.Relation :=
          { fst.f := G.map g ≫ f
            fst.hf := by simpa only [← w] using S.1.downward_closed i.hf h
            snd := i
            r.g₁ := 𝟙 _
            r.g₂ := h
            r.w := by simpa using w.symm
            .. }
        simpa [r] using s.condition r)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/CoverLifting/Varianta45fda5825cd3cc0ec65278939d91ea37e3aab4ea382efcbdbe7cb4a16345ded.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/CoverLifting/Varianta45fda5825cd3cc0ec65278939d91ea37e3aab4ea382efcbdbe7cb4a16345ded.lean#L189).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `40637bfe56ffef83f620b50a8f018b54fffb3897` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
