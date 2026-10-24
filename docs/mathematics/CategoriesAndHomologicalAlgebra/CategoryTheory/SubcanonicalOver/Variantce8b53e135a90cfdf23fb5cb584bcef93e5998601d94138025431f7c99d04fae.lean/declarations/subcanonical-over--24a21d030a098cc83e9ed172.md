# subcanonical_over

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:22184c256412e43df20ce1e432a883ef046c3de6a52e993b27cfea3a880e8399",
  "kind": "instance",
  "lexical_name": "subcanonical_over",
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
  "slug": "subcanonical-over--24a21d030a098cc83e9ed172",
  "source": {
    "blob": "fe037d534ad98fa27c3a937143e0a36f5b31c609",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 69,
    "line": 32,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/SubcanonicalOver/Variantce8b53e135a90cfdf23fb5cb584bcef93e5998601d94138025431f7c99d04fae.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:24a21d030a098cc83e9ed17203aa836aef45dc948a3ceaa61c5f7001c9cd8f71",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/SubcanonicalOver/Variantce8b53e135a90cfdf23fb5cb584bcef93e5998601d94138025431f7c99d04fae.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:22184c256412e43df20ce1e432a883ef046c3de6a52e993b27cfea3a880e8399`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 32–69.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance subcanonical_over (J : GrothendieckTopology C) [J.Subcanonical] (X : C) :
    (J.over X).Subcanonical := by
  refine .of_isSheaf_yoneda_obj _ fun E Z R hR t ht ↦ ?_
  obtain ⟨ι, T, g, rfl⟩ := R.exists_eq_ofArrows
  let hg : Presieve.Arrows.Compatible (CategoryTheory.yoneda.obj E.left)
      (fun i ↦ (g i).left) (fun i ↦ (t (g i) (Sieve.ofArrows_mk T g i)).left) :=
    fun i j Z gi gj hgij ↦ congr($(ht (Over.homMk (U := Over.mk (gi ≫ (T i).hom)) gi rfl)
      (Over.homMk (U := Over.mk (gi ≫ (T i).hom)) gj
      (by dsimp; rw [← Over.w (g i), reassoc_of% hgij, ← Over.w (g j)]))
      (Sieve.ofArrows_mk _ _ i) (Sieve.ofArrows_mk _ _ j) (by ext; exact hgij)).left)
  rw [J.mem_over_iff, Sieve.ofArrows, Sieve.overEquiv_generate,
    ← Sieve.arrows_generate_map_eq_functorPushforward, Sieve.generate_sieve,
    Presieve.map_ofArrows] at hR
  obtain ⟨a, ha, huniq⟩ := Subcanonical.isSheaf_of_isRepresentable
    (CategoryTheory.yoneda.obj E.left) _ hR _ hg.familyOfElements_compatible.sieveExtend
  refine ⟨?_, ?_, fun y hty ↦ ?_⟩
  · refine Over.homMk a ?_
    refine (Subcanonical.isSheaf_of_isRepresentable <| CategoryTheory.yoneda.obj X)
      (.ofArrows _ <| fun i ↦ (g i).left) hR |>.isSeparatedFor.ext ?_
    rintro W u ⟨V, v, _, ⟨i⟩, rfl⟩
    have := ha _ (Sieve.ofArrows_mk _ _ i)
    dsimp at this
    simp [reassoc_of% this, Presieve.extend_agrees hg.familyOfElements_compatible (.mk i)]
  · rintro W p ⟨V, v, _, ⟨i⟩, rfl⟩
    refine Over.OverMorphism.ext ?_
    have := ha (g i).left (Sieve.ofArrows_mk _ _ i)
    dsimp at this
    simp [Category.assoc, this, Presieve.extend_agrees hg.familyOfElements_compatible (.mk i),
      Presieve.FamilyOfElements.comp_of_compatible _ ht (Sieve.ofArrows_mk _ _ i)]
  · refine Over.OverMorphism.ext (huniq _ ?_)
    rintro W p ⟨V, v, _, ⟨i⟩, rfl⟩
    have := congr($(hty _ (Sieve.ofArrows_mk _ _ i)).left)
    dsimp at this
    simp [Presieve.FamilyOfElements.comp_of_compatible _
      hg.familyOfElements_compatible.sieveExtend (Sieve.ofArrows_mk _ _ i),
      Presieve.extend_agrees hg.familyOfElements_compatible (.mk i), this]

end CategoryTheory.GrothendieckTopology
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/SubcanonicalOver/Variantce8b53e135a90cfdf23fb5cb584bcef93e5998601d94138025431f7c99d04fae.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/SubcanonicalOver/Variantce8b53e135a90cfdf23fb5cb584bcef93e5998601d94138025431f7c99d04fae.lean#L32).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fe037d534ad98fa27c3a937143e0a36f5b31c609` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
