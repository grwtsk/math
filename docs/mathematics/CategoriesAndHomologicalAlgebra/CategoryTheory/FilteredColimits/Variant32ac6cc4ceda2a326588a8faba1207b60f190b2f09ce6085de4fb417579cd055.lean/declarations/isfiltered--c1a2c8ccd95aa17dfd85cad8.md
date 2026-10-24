# isFiltered

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "84bc8acad8947f5d85188b04ebac5052c17793fa",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 88,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/32/32ac6cc4ceda2a326588a8faba1207b60f190b2f09ce6085de4fb417579cd055.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:17648f0b-b98b-0c63-0f96-d8d9b1be4c01",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:bb6a9627-f82d-508b-55b8-7a6e7c6ccf17",
  "kind": "theorem",
  "lexical_name": "isFiltered",
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
  "slug": "isfiltered--c1a2c8ccd95aa17dfd85cad8",
  "source": {
    "blob": "84bc8acad8947f5d85188b04ebac5052c17793fa",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 137,
    "line": 88,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/FilteredColimits/Variant32ac6cc4ceda2a326588a8faba1207b60f190b2f09ce6085de4fb417579cd055.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c1a2c8ccd95aa17dfd85cad8c576ad463dd4bd954dd8b559cd05b227b9d53fb1",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/FilteredColimits/Variant32ac6cc4ceda2a326588a8faba1207b60f190b2f09ce6085de4fb417579cd055.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:bb6a9627-f82d-508b-55b8-7a6e7c6ccf17`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 88–137.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isFiltered [IsFiltered I] (hF : ∀ i, IsIndObject (F.obj i)) :
    IsFiltered (CostructuredArrow yoneda (colimit F)) := by
  -- It suffices to show that for any functor `G : J ⥤ CostructuredArrow yoneda (colimit F)` with
  -- `J` finite there is some `X` such that the set
  -- `lim Hom_{CostructuredArrow yoneda (colimit F)}(G·, X)` is nonempty.
  refine IsFiltered.iff_nonempty_limit.mpr (fun {J _ _} G => ?_)

  -- We begin by remarking that `lim Hom_{Over (colimit F)}(yG·, 𝟙 (colimit F))` is nonempty,
  -- simply because `𝟙 (colimit F)` is the terminal object. Here `y` is the functor
  -- `CostructuredArrow yoneda (colimit F) ⥤ Over (colimit F)` induced by `yoneda`.
  have h₁ : Nonempty (limit (G.op ⋙ (toOver _ _).op ⋙ yoneda.obj (Over.mk (𝟙 (colimit F))))) :=
    ⟨Types.Limit.mk _ (fun j => Over.mkIdTerminal.from _) (by simp)⟩

  -- `𝟙 (colimit F)` is the colimit of the diagram in `Over (colimit F)` given by the arrows of
  -- the form `Fi ⟶ colimit F`. Thus, pulling the colimit out of the hom functor and commuting
  -- the finite limit with the filtered colimit, we obtain
  -- `lim_j Hom_{Over (colimit F)}(yGj, 𝟙 (colimit F)) ≅`
  --   `colim_i lim_j Hom_{Over (colimit F)}(yGj, colimit.ι F i)`, and so we find `i` such that
  -- the limit is non-empty.
  obtain ⟨i, hi⟩ := exists_nonempty_limit_obj_of_isColimit F G _
    (colimit.isColimitToOver F) _ (Iso.refl _) h₁

  -- `F.obj i` is a small filtered colimit of representables, say of the functor `H : K ⥤ C`, so
  -- `𝟙 (F.obj i)` is the colimit of the arrows of the form `yHk ⟶ Fi` in `Over Fi`.
  -- Then `colimit.ι F i` is the colimit of the arrows of the form
  -- `H.obj F ⟶ F.obj i ⟶ colimit F` in `Over (colimit F)`.
  obtain ⟨⟨P⟩⟩ := hF i
  let hc : IsColimit ((Over.map (colimit.ι F i)).mapCocone P.cocone.toOver) :=
    isColimitOfPreserves (Over.map _) (Over.isColimitToOver P.coconeIsColimit)

  -- Again, we pull the colimit out of the hom functor and commute limit and colimit to obtain
  -- `lim_j Hom_{Over (colimit F)}(yGj, colimit.ι F i) ≅`
  --   `colim_k lim_j Hom_{Over (colimit F)}(yGj, yHk)`, and so we find `k` such that the limit
  -- is non-empty.
  obtain ⟨k, hk⟩ : ∃ k, Nonempty (limit (G.op ⋙ (toOver yoneda (colimit F)).op ⋙
      yoneda.obj ((toOver yoneda (colimit F)).obj <|
        (pre P.F yoneda (colimit F)).obj <| (map (colimit.ι F i)).obj <| mk _))) :=
    exists_nonempty_limit_obj_of_isColimit F G _ hc _ (Iso.refl _) hi

  have htO : (toOver yoneda (colimit F)).FullyFaithful := .ofFullyFaithful _
  -- Since the inclusion `y : CostructuredArrow yoneda (colimit F) ⥤ Over (colimit F)` is fully
  -- faithful, `lim_j Hom_{Over (colimit F)}(yGj, yHk) ≅`
  --   `lim_j Hom_{CostructuredArrow yoneda (colimit F)}(Gj, Hk)` and so `Hk` is the object we're
  -- looking for.
  let q := htO.homNatIsoMaxRight
  obtain ⟨t'⟩ := Nonempty.map (limMap (isoWhiskerLeft G.op (q _)).hom) hk
  exact ⟨_, ⟨((preservesLimitIso uliftFunctor.{u, v} _).inv t').down⟩⟩

end IndizationClosedUnderFilteredColimitsAux

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/FilteredColimits/Variant32ac6cc4ceda2a326588a8faba1207b60f190b2f09ce6085de4fb417579cd055.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/FilteredColimits/Variant32ac6cc4ceda2a326588a8faba1207b60f190b2f09ce6085de4fb417579cd055.lean#L88).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `84bc8acad8947f5d85188b04ebac5052c17793fa` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
