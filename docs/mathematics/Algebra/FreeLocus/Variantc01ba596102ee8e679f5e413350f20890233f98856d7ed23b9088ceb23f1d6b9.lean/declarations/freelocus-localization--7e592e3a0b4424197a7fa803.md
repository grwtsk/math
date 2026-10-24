# freeLocus_localization

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "09df796a546fd52a47915f38d9059c781eca5f41",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 101,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/c0/c01ba596102ee8e679f5e413350f20890233f98856d7ed23b9088ceb23f1d6b9.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:15396b68-8dfb-5dc3-610e-25fc11533410",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:b3819aa8-a756-ddea-a0c8-e9171df8c4fc",
  "kind": "lemma",
  "lexical_name": "freeLocus_localization",
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
  "slug": "freelocus-localization--7e592e3a0b4424197a7fa803",
  "source": {
    "blob": "09df796a546fd52a47915f38d9059c781eca5f41",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 151,
    "line": 101,
    "path": "GRWTSK/Algebra/FreeLocus/Variantc01ba596102ee8e679f5e413350f20890233f98856d7ed23b9088ceb23f1d6b9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7e592e3a0b4424197a7fa803b73821c644b2aeafa0751eb6ec5ccba3df7e96f6",
  "verification": {
    "reference": "docs/verification/Algebra/FreeLocus/Variantc01ba596102ee8e679f5e413350f20890233f98856d7ed23b9088ceb23f1d6b9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b3819aa8-a756-ddea-a0c8-e9171df8c4fc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 101–151.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma freeLocus_localization (S : Submonoid R) :
    freeLocus (Localization S) (LocalizedModule S M) =
      comap (algebraMap R _) ⁻¹' freeLocus R M := by
  ext p
  simp only [Set.mem_preimage]
  let p' := p.asIdeal.comap (algebraMap R _)
  have hp' : S ≤ p'.primeCompl := fun x hx H ↦
    p.isPrime.ne_top (Ideal.eq_top_of_isUnit_mem _ H (IsLocalization.map_units _ ⟨x, hx⟩))
  let Rₚ := Localization.AtPrime p'
  let Mₚ := LocalizedModule p'.primeCompl M
  letI : Algebra (Localization S) Rₚ :=
    IsLocalization.localizationAlgebraOfSubmonoidLe _ _ S p'.primeCompl hp'
  have : IsScalarTower R (Localization S) Rₚ :=
    IsLocalization.localization_isScalarTower_of_submonoid_le ..
  have : IsLocalization.AtPrime Rₚ p.asIdeal := by
    have := IsLocalization.isLocalization_of_submonoid_le (Localization S) Rₚ _ _ hp'
    apply IsLocalization.isLocalization_of_is_exists_mul_mem _
      (Submonoid.map (algebraMap R (Localization S)) p'.primeCompl)
    · rintro _ ⟨x, hx, rfl⟩; exact hx
    · rintro ⟨x, hx⟩
      obtain ⟨x, s, rfl⟩ := IsLocalization.mk'_surjective S x
      refine ⟨algebraMap _ _ s.1, x, fun H ↦ hx ?_, by simp⟩
      rw [IsLocalization.mk'_eq_mul_mk'_one]
      exact Ideal.mul_mem_right _ _ H
  letI : Module (Localization S) Mₚ := Module.compHom Mₚ (algebraMap _ Rₚ)
  have : IsScalarTower R (Localization S) Mₚ :=
    ⟨fun r r' m ↦ show algebraMap _ Rₚ (r • r') • m = _ by
      simp [p', Rₚ, Mₚ, Algebra.smul_def, ← IsScalarTower.algebraMap_apply, mul_smul]; rfl⟩
  have : IsScalarTower (Localization S) Rₚ Mₚ :=
    ⟨fun r r' m ↦ show _ = algebraMap _ Rₚ r • r' • m by rw [← mul_smul, ← Algebra.smul_def]⟩
  let l := (IsLocalizedModule.liftOfLE _ _ hp' (LocalizedModule.mkLinearMap S M)
    (LocalizedModule.mkLinearMap p'.primeCompl M)).extendScalarsOfIsLocalization S
    (Localization S)
  have : IsLocalizedModule p.asIdeal.primeCompl l := by
    have : IsLocalizedModule p'.primeCompl (l.restrictScalars R) :=
      inferInstanceAs (IsLocalizedModule p'.primeCompl
        (IsLocalizedModule.liftOfLE _ _ hp' (LocalizedModule.mkLinearMap S M)
        (LocalizedModule.mkLinearMap p'.primeCompl M)))
    have : IsLocalizedModule (Algebra.algebraMapSubmonoid (Localization S) p'.primeCompl) l :=
      IsLocalizedModule.of_restrictScalars p'.primeCompl ..
    apply IsLocalizedModule.of_exists_mul_mem
      (Algebra.algebraMapSubmonoid (Localization S) p'.primeCompl)
    · rintro _ ⟨x, hx, rfl⟩; exact hx
    · rintro ⟨x, hx⟩
      obtain ⟨x, s, rfl⟩ := IsLocalization.mk'_surjective S x
      refine ⟨algebraMap _ _ s.1, x, fun H ↦ hx ?_, by simp⟩
      rw [IsLocalization.mk'_eq_mul_mk'_one]
      exact Ideal.mul_mem_right _ _ H
  rw [mem_freeLocus_of_isLocalization (R := Localization S) p Rₚ Mₚ l]
  rfl

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/FreeLocus/Variantc01ba596102ee8e679f5e413350f20890233f98856d7ed23b9088ceb23f1d6b9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/FreeLocus/Variantc01ba596102ee8e679f5e413350f20890233f98856d7ed23b9088ceb23f1d6b9.lean#L101).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `09df796a546fd52a47915f38d9059c781eca5f41` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
