# IsWellOrderContinuous.restriction_setIci

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:c823ae5c97a8d6348048009536d664d66e401e52eb26563eb57ba41afa6e5744",
  "kind": "instance",
  "lexical_name": "IsWellOrderContinuous.restriction_setIci",
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
  "slug": "iswellordercontinuous-restriction-setici--a8ed467347251f19edc7ac94",
  "source": {
    "blob": "8b8f176d10c8caadbefc8e9e6e87d29737f39ce9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 114,
    "line": 90,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/WellOrderContinuous/Variant1a82ffbbd2e49edd388ff510db68fabbe52e09c689242549aa18058e5871029f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:a8ed467347251f19edc7ac94c68e67269d2db05d7f58e17a72e24f10e287b658",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/WellOrderContinuous/Variant1a82ffbbd2e49edd388ff510db68fabbe52e09c689242549aa18058e5871029f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:c823ae5c97a8d6348048009536d664d66e401e52eb26563eb57ba41afa6e5744`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 90–114.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance IsWellOrderContinuous.restriction_setIci
    {J : Type w} [LinearOrder J]
    {F : J ⥤ C} [F.IsWellOrderContinuous] (j : J) :
    ((Subtype.mono_coe (Set.Ici j)).functor ⋙ F).IsWellOrderContinuous where
  nonempty_isColimit m hm := ⟨by
    let f : Set.Iio m → Set.Iio m.1 := fun ⟨⟨a, ha⟩, ha'⟩ ↦ ⟨a, ha'⟩
    have hf : Monotone f := fun _ _ h ↦ h
    have : hf.functor.Final := by
      rw [Monotone.final_functor_iff]
      rintro ⟨j', hj'⟩
      simp only [Set.mem_Iio] at hj'
      dsimp only [f]
      by_cases h : j' ≤ j
      · refine ⟨⟨⟨j, le_refl j⟩, ?_⟩, h⟩
        by_contra!
        simp only [Set.mem_Iio, not_lt] at this
        apply hm.1
        rintro ⟨k, hk⟩ hkm
        exact this.trans hk
      · simp only [not_le] at h
        exact ⟨⟨⟨j', h.le⟩, hj'⟩, by rfl⟩
    exact (Functor.Final.isColimitWhiskerEquiv (F := hf.functor) _).2
      (F.isColimitOfIsWellOrderContinuous m.1 (Set.Ici.isSuccLimit_coe m hm))⟩

end CategoryTheory.Functor
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/WellOrderContinuous/Variant1a82ffbbd2e49edd388ff510db68fabbe52e09c689242549aa18058e5871029f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/WellOrderContinuous/Variant1a82ffbbd2e49edd388ff510db68fabbe52e09c689242549aa18058e5871029f.lean#L90).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8b8f176d10c8caadbefc8e9e6e87d29737f39ce9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
