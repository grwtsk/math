# Module.FinitePresentation.exists_lift_equiv_of_isLocalizedModule

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "8ae31d2f88080cb67c0b331e2525441c1752172b",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 526,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/1e/1e967f9e7f7e7529f5905db3fd4611cb8eb1573b09f9fc6ed34e33c1f753aba4.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:746ff0cb-d9be-d16e-e257-0231401bbf2d",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:7196dd01-f8c2-cf12-d9e8-5feef90d486f",
  "kind": "lemma",
  "lexical_name": "Module.FinitePresentation.exists_lift_equiv_of_isLocalizedModule",
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
  "slug": "module-finitepresentation-exists-lift-equiv-of-islocalizedmodule--03abbc309a2103968e9c980c",
  "source": {
    "blob": "8ae31d2f88080cb67c0b331e2525441c1752172b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 567,
    "line": 526,
    "path": "GRWTSK/Algebra/LinearAlgebra/FinitePresentation/Variant1e967f9e7f7e7529f5905db3fd4611cb8eb1573b09f9fc6ed34e33c1f753aba4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:03abbc309a2103968e9c980ce1b5b726d2b4fdccba584474b993df80ba69ca2e",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/FinitePresentation/Variant1e967f9e7f7e7529f5905db3fd4611cb8eb1573b09f9fc6ed34e33c1f753aba4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7196dd01-f8c2-cf12-d9e8-5feef90d486f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 526–567.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma Module.FinitePresentation.exists_lift_equiv_of_isLocalizedModule
    [Module.FinitePresentation R M] [Module.FinitePresentation R N]
    (l : M' ≃ₗ[R] N') :
    ∃ (r : R) (hr : r ∈ S)
      (l' : LocalizedModule.Away r M ≃ₗ[Localization (.powers r)]
        LocalizedModule.Away r N),
      (LocalizedModule.lift (.powers r) g fun s ↦ map_units g ⟨s.1, SetLike.le_def.mp
        (Submonoid.powers_le.mpr hr) s.2⟩) ∘ₗ l'.toLinearMap =
        l ∘ₗ (LocalizedModule.lift (.powers r) f fun s ↦ map_units f ⟨s.1, SetLike.le_def.mp
        (Submonoid.powers_le.mpr hr) s.2⟩) := by
  obtain ⟨l', s, H⟩ := Module.FinitePresentation.exists_lift_of_isLocalizedModule S g (l ∘ₗ f)
  have : Function.Bijective (IsLocalizedModule.map S f g l') := by
    have : IsLocalizedModule.map S f g l' = (s • LinearMap.id) ∘ₗ l := by
      apply IsLocalizedModule.ext S f (IsLocalizedModule.map_units g)
      apply LinearMap.ext fun x ↦ ?_
      simp only [LinearMap.coe_comp, Function.comp_apply, IsLocalizedModule.map_apply]
      rw [← LinearMap.comp_apply, H]
      simp
    rw [this]
    exact ((Module.End.isUnit_iff _).mp (IsLocalizedModule.map_units g s)).comp l.bijective
  obtain ⟨r, hr, hr'⟩ := exists_bijective_map_powers S f g _ this
  let rs : Submonoid R := (.powers <| r * s)
  let Rᵣₛ := Localization rs
  have hsu : IsUnit (algebraMap R Rᵣₛ s) := isUnit_of_dvd_unit
      (hu := IsLocalization.map_units (M := rs) Rᵣₛ ⟨_, Submonoid.mem_powers _⟩)
      (map_dvd (algebraMap R Rᵣₛ) ⟨r, mul_comm _ _⟩)
  have : Function.Bijective ((hsu.unit⁻¹).1 • LocalizedModule.map rs l') :=
    ((Module.End.isUnit_iff _).mp ((hsu.unit⁻¹).isUnit.map (algebraMap _ (End Rᵣₛ
      (LocalizedModule rs N))))).comp (hr' (r * s) (dvd_mul_right _ _))
  refine ⟨r * s, mul_mem hr s.2, LinearEquiv.ofBijective _ this, ?_⟩
  apply IsLocalizedModule.ext rs (LocalizedModule.mkLinearMap rs M) fun x ↦ map_units g
    ⟨x.1, SetLike.le_def.mp (Submonoid.powers_le.mpr (mul_mem hr s.2)) x.2⟩
  ext x
  apply ((Module.End.isUnit_iff _).mp (IsLocalizedModule.map_units g s)).1
  have : ∀ x, g (l' x) = s.1 • (l (f x)) := LinearMap.congr_fun H
  simp only [rs, LinearMap.coe_comp, LinearMap.coe_restrictScalars, LinearEquiv.coe_coe,
    Function.comp_apply, LocalizedModule.mkLinearMap_apply, LinearEquiv.ofBijective_apply,
    LinearMap.smul_apply, LocalizedModule.map_mk, algebraMap_end_apply]
  rw [← map_smul, ← smul_assoc, Algebra.smul_def s.1, hsu.mul_val_inv, one_smul]
  simp only [LocalizedModule.lift_mk, OneMemClass.coe_one, map_one, IsUnit.unit_one,
    inv_one, Units.val_one, Module.End.one_apply, this]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/FinitePresentation/Variant1e967f9e7f7e7529f5905db3fd4611cb8eb1573b09f9fc6ed34e33c1f753aba4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/FinitePresentation/Variant1e967f9e7f7e7529f5905db3fd4611cb8eb1573b09f9fc6ed34e33c1f753aba4.lean#L526).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8ae31d2f88080cb67c0b331e2525441c1752172b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
