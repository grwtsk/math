# surjectivity

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b84a60dd-3300-5f25-a21e-91a1c487b78b",
  "kind": "lemma",
  "lexical_name": "surjectivity",
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
  "slug": "surjectivity--d62a18b9b2fa1298d69e70c1",
  "source": {
    "blob": "2b60e8a5d0a1c226846e01b4091ed21d2ab16f5e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 240,
    "line": 220,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/ColimCoyoneda/Variant462b8f24e9ed88160dfa5c1642f6b445be44ffb17655175baca19a842dfa95b4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d62a18b9b2fa1298d69e70c13424bf2101032e58e219677d7d95398942df151b",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/ColimCoyoneda/Variant462b8f24e9ed88160dfa5c1642f6b445be44ffb17655175baca19a842dfa95b4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b84a60dd-3300-5f25-a21e-91a1c487b78b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 220–240.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma surjectivity [∀ (j j' : J) (φ : j ⟶ j'), Mono (Y.map φ)]
    {κ : Cardinal.{w}} [hκ : Fact κ.IsRegular] [IsCardinalFiltered J κ]
    (hXκ : HasCardinalLT (Subobject X) κ) (z : X ⟶ c.pt) :
    ∃ (j₀ : J) (y : X ⟶ Y.obj j₀), z = y ≫ c.ι.app j₀ := by
  have := isFiltered_of_isCardinalFiltered J κ
  have := hc.mono_ι_app_of_isFiltered
  have := NatTrans.mono_of_mono_app c.ι
  obtain ⟨j, _⟩ := exists_isIso_of_functor_from_monoOver (F z) hXκ _
    (colimit.isColimit _) (f z) (hf z) (epi_f hc z)
  refine ⟨j, inv ((F z).obj j).obj.hom ≫ (pullback.fst c.ι _).app j, ?_⟩
  dsimp
  rw [Category.assoc, IsIso.eq_inv_comp, ← NatTrans.comp_app, pullback.condition,
    NatTrans.comp_app, Functor.const_map_app]

end IsPresentable

open IsPresentable in
/-- If `X` is an object in a Grothendieck abelian category, then
the functor `coyoneda.obj (op X)` commutes with colimits corresponding
to diagrams of monomorphisms indexed by `κ`-filtered categories
for a big enough regular cardinal `κ`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/ColimCoyoneda/Variant462b8f24e9ed88160dfa5c1642f6b445be44ffb17655175baca19a842dfa95b4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/ColimCoyoneda/Variant462b8f24e9ed88160dfa5c1642f6b445be44ffb17655175baca19a842dfa95b4.lean#L220).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2b60e8a5d0a1c226846e01b4091ed21d2ab16f5e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
