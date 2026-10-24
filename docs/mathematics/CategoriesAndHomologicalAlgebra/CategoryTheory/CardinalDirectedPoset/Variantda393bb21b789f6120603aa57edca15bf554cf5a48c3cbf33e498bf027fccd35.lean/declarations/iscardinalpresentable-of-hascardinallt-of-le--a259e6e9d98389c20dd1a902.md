# isCardinalPresentable_of_hasCardinalLT_of_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:385611f6-100d-e07d-5472-7008c0af4128",
  "kind": "lemma",
  "lexical_name": "isCardinalPresentable_of_hasCardinalLT_of_le",
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
  "slug": "iscardinalpresentable-of-hascardinallt-of-le--a259e6e9d98389c20dd1a902",
  "source": {
    "blob": "9271a28a5193daff0619366a7df4e4b9f878d1f5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 286,
    "line": 233,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/CardinalDirectedPoset/Variantda393bb21b789f6120603aa57edca15bf554cf5a48c3cbf33e498bf027fccd35.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a259e6e9d98389c20dd1a902319bf0f800c05ba21906b39b10f0051751b8d1a2",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/CardinalDirectedPoset/Variantda393bb21b789f6120603aa57edca15bf554cf5a48c3cbf33e498bf027fccd35.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:385611f6-100d-e07d-5472-7008c0af4128`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 233–286.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma isCardinalPresentable_of_hasCardinalLT_of_le (J : CardinalDirectedPoset κ)
    {κ' : Cardinal.{u}} [Fact κ'.IsRegular] (hJ : HasCardinalLT J.obj κ') (h : κ ≤ κ') :
    IsCardinalPresentable J κ' where
  preservesColimitOfShape A _ _ := ⟨fun {F} ↦ ⟨fun {c} hc ↦ ⟨by
  · have := isFiltered_of_isCardinalFiltered A κ'
    have := IsCardinalFiltered.of_le A h
    replace hc := isColimitOfPreserves (forget _) hc
    refine Types.FilteredColimit.isColimitOf' _ _ (fun f ↦ ?_) (fun j f g h ↦ ?_)
    · dsimp at f
      choose j g hg using fun (x : J.obj) ↦ Types.jointly_surjective_of_isColimit hc (f x)
      let m := IsCardinalFiltered.max j hJ
      let φ (x : J.obj) : (F.obj m).obj := F.map (IsCardinalFiltered.toMax j hJ x) (g x)
      have hφ (x : J.obj) : f x = c.ι.app _ (φ x) := by
        dsimp [φ]
        rw [← hg, ← ConcreteCategory.comp_apply, c.w]
        rfl
      refine ⟨m,
        ObjectProperty.homMk (PartOrdEmb.ofHom
          { toFun := φ
            inj' x y h := Hom.injective f (by simpa [hφ])
            map_rel_iff' {x y} := ?_ }), ?_⟩
      · simp [← Hom.le_iff_le f, hφ]
      · dsimp
        ext x
        trans c.ι.app (j x) (g x)
        · exact (hg x).symm
        · exact (ConcreteCategory.congr_hom (c.w (IsCardinalFiltered.toMax j hJ x)).symm (g x))
    · choose k a hk using fun (x : J.obj) ↦
        (Types.FilteredColimit.isColimit_eq_iff' hc _ _).1 (ConcreteCategory.congr_hom h x)
      dsimp at f g h k a hk ⊢
      obtain ⟨l, b, c, hl⟩ : ∃ (l : A) (c : j ⟶ l) (b : ∀ x, k x ⟶ l),
          ∀ x, a x ≫ b x = c := by
        let φ (x : J.obj) : j ⟶ IsCardinalFiltered.max k hJ :=
          a x ≫ IsCardinalFiltered.toMax k hJ x
        exact ⟨IsCardinalFiltered.coeq φ hJ,
          IsCardinalFiltered.toCoeq φ hJ,
          fun x ↦ IsCardinalFiltered.toMax k hJ x ≫ IsCardinalFiltered.coeqHom φ hJ,
          fun x ↦ by simpa [φ] using IsCardinalFiltered.coeq_condition φ hJ x⟩
      refine ⟨l, b, ?_⟩
      ext x
      simpa only [← hl x, Functor.map_comp, ObjectProperty.FullSubcategory.comp_hom,
        PartOrdEmb.hom_comp, RelEmbedding.coe_trans, Function.comp_apply]
          using! congr_arg _ (hk x)⟩⟩⟩

section

variable (J : CardinalDirectedPoset κ)

-- `@[nolint unusedArguments]` allows to setup some instances which uses
-- the fact that `κ'` is regular.
/-- Given `J : CardinalDirectedPoset κ` and a regular cardinal `κ'`,
this is the predicate on `Set J.withTop.obj` that is satisfied by
subsets that are of cardinality `< κ'` and contain `⊤`. -/
@[nolint unusedArguments]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/CardinalDirectedPoset/Variantda393bb21b789f6120603aa57edca15bf554cf5a48c3cbf33e498bf027fccd35.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/CardinalDirectedPoset/Variantda393bb21b789f6120603aa57edca15bf554cf5a48c3cbf33e498bf027fccd35.lean#L233).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9271a28a5193daff0619366a7df4e4b9f878d1f5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
