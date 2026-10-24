# isNormal_map

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:02c9ed79-03c4-c872-7750-6da48a83ff7e",
  "kind": "theorem",
  "lexical_name": "isNormal_map",
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
  "slug": "isnormal-map--eb1b9f8e5600edc4ee40e082",
  "source": {
    "blob": "00059bd0799693d4371d6a71f34d18149602e51d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 533,
    "line": 507,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Subgroupoid/Variant074f7825af878ae9f9e8b540f8826996d10ba064ac23d9aaefc7bceccf02aa08.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:eb1b9f8e5600edc4ee40e082ab7c818e3fafd58667e0d591cac3f32c6575f040",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Subgroupoid/Variant074f7825af878ae9f9e8b540f8826996d10ba064ac23d9aaefc7bceccf02aa08.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:02c9ed79-03c4-c872-7750-6da48a83ff7e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 507–533.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isNormal_map (hφ : Function.Injective φ.obj) (hφ' : im φ hφ = ⊤) (Sn : S.IsNormal) :
    (map φ hφ S).IsNormal :=
  { wide := fun d => by
      obtain ⟨c, rfl⟩ := obj_surjective_of_im_eq_top φ hφ hφ' d
      change Map.Arrows φ hφ S _ _ (𝟙 _); rw [← Functor.map_id]
      constructor; exact Sn.wide c
    conj := fun {d d'} g δ hδ => by
      rw [mem_map_iff] at hδ
      obtain ⟨c, c', γ, cd, cd', γS, hγ⟩ := hδ; subst_vars; cases hφ cd'
      have : d' ∈ (im φ hφ).objs := by rw [hφ']; apply mem_top_objs
      rw [mem_im_objs_iff] at this
      obtain ⟨c', rfl⟩ := this
      have : g ∈ (im φ hφ).arrows (φ.obj c) (φ.obj c') := by rw [hφ']; trivial
      rw [mem_im_iff] at this
      obtain ⟨b, b', f, hb, hb', _, hf⟩ := this; cases hφ hb; cases hφ hb'
      change Map.Arrows φ hφ S (φ.obj c') (φ.obj c') _
      simp only [eqToHom_refl, Category.comp_id, Category.id_comp, inv_eq_inv]
      suffices Map.Arrows φ hφ S (φ.obj c') (φ.obj c') (φ.map <| Groupoid.inv f ≫ γ ≫ f) by
        simp only [inv_eq_inv, Functor.map_comp, Functor.map_inv] at this; exact this
      constructor; apply Sn.conj f γS }

end Hom

section Thin

/-- A subgroupoid is thin (`CategoryTheory.Subgroupoid.IsThin`) if it has at most one arrow between
any two vertices. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Subgroupoid/Variant074f7825af878ae9f9e8b540f8826996d10ba064ac23d9aaefc7bceccf02aa08.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Subgroupoid/Variant074f7825af878ae9f9e8b540f8826996d10ba064ac23d9aaefc7bceccf02aa08.lean#L507).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `00059bd0799693d4371d6a71f34d18149602e51d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
