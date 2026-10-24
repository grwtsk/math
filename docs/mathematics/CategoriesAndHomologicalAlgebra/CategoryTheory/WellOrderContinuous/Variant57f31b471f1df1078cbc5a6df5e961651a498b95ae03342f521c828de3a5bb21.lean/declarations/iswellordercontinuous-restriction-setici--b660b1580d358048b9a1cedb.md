# IsWellOrderContinuous.restriction_setIci

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:015920412522dc0f5b5a84bc5f1eb2ad4ab70f4ab82b3aacd8b9cb5fce70b07a",
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
  "slug": "iswellordercontinuous-restriction-setici--b660b1580d358048b9a1cedb",
  "source": {
    "blob": "74075510de60828609d168ccf6fb97b3ca3def52",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 106,
    "line": 82,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/WellOrderContinuous/Variant57f31b471f1df1078cbc5a6df5e961651a498b95ae03342f521c828de3a5bb21.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:b660b1580d358048b9a1cedb2aa8d9192b11e9dfa7e5d40dd2e831864031db9f",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/WellOrderContinuous/Variant57f31b471f1df1078cbc5a6df5e961651a498b95ae03342f521c828de3a5bb21.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:015920412522dc0f5b5a84bc5f1eb2ad4ab70f4ab82b3aacd8b9cb5fce70b07a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 82–106.

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

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/WellOrderContinuous/Variant57f31b471f1df1078cbc5a6df5e961651a498b95ae03342f521c828de3a5bb21.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/WellOrderContinuous/Variant57f31b471f1df1078cbc5a6df5e961651a498b95ae03342f521c828de3a5bb21.lean#L82).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `74075510de60828609d168ccf6fb97b3ca3def52` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
