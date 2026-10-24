# essentiallySmall_of_localizationAway

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e24cf892-32b7-eead-7078-a2c5e83330cb",
  "kind": "lemma",
  "lexical_name": "essentiallySmall_of_localizationAway",
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
  "slug": "essentiallysmall-of-localizationaway--58d413adf3433830fda50133",
  "source": {
    "blob": "962a7652f2becc06b215301a00224783701f39be",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 67,
    "line": 46,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Small/Variantc0399f615c672f848d63503d44053c151f4d63abac3438babd3776c222d60e61.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:58d413adf3433830fda50133e4f13af4e32488f667754dcc99c4c0c6f79655f5",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Small/Variantc0399f615c672f848d63503d44053c151f4d63abac3438babd3776c222d60e61.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e24cf892-32b7-eead-7078-a2c5e83330cb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 46–67.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma essentiallySmall_of_localizationAway [ObjectProperty.EssentiallySmall.{u} Q]
    (hPQ : ∀ S, P S → ∃ s : Set S, Ideal.span s = ⊤ ∧ ∀ f ∈ s, Q ↧(Localization.Away f)) :
    ObjectProperty.EssentiallySmall.{u} P := by
  obtain ⟨Q', _, hQ'Q, hQQ'⟩ := ObjectProperty.EssentiallySmall.exists_small_le Q
  let f (S : Σ (n : ℕ) (R : Fin n → Subtype Q'), Subring (Π i, (R i).1)) : CommRingCat := ↧S.2.2
  refine ⟨.ofObj f, inferInstance, fun S hS ↦ ?_⟩
  obtain ⟨s, hs, H⟩ := hPQ S hS
  wlog hs' : s.Finite generalizing s
  · obtain ⟨s', hs's, hs'⟩ := (Ideal.span_eq_top_iff_finite _).mp hs
    exact this s' hs' (fun f hf ↦ H f (hs's hf)) s'.finite_toSet
  choose S' hS' e using fun (f : s) ↦ hQQ' _ (H _ f.2)
  let φ : S →+* Π i, S' (hs'.equivFin.symm i) :=
    ((RingEquiv.piCongrRight fun i ↦ (e i).some.commRingCatIsoToRingEquiv).trans
      (RingEquiv.piCongrLeft (S' ·) hs'.equivFin.symm).symm).toRingHom.comp (algebraMap _ _)
  have hφ : Function.Injective φ := by
    dsimp only [RingHom.coe_comp, φ]
    refine (RingEquiv.injective _).comp (Localization.algebraMap_injective_of_span_eq_top _ hs)
  refine ⟨_, ⟨Nat.card s, (fun f ↦ ⟨S' f, hS' f⟩) ∘ hs'.equivFin.symm, φ.range⟩, ⟨?_⟩⟩
  exact (RingEquiv.ofBijective φ.rangeRestrict
    ⟨φ.injective_codRestrict.mpr hφ, φ.rangeRestrict_surjective⟩).toCommRingCatIso

end CommRingCat
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Small/Variantc0399f615c672f848d63503d44053c151f4d63abac3438babd3776c222d60e61.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Small/Variantc0399f615c672f848d63503d44053c151f4d63abac3438babd3776c222d60e61.lean#L46).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `962a7652f2becc06b215301a00224783701f39be` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
