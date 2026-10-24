# hasProjectiveDimensionLE_iff_forall_maximalSpectrum

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "01688ee0487242add10374a25649a77c6ed5c73d",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 82,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/e7/e723d387ed6e52cc46b7faef74ffcc6883942c6313bb75860fab2a1bbe7d2786.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:3608408f-22e3-a26e-75c9-e3b08af6bf6e",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:756f07a6-26f8-10d8-f7c5-90bf322fd77d",
  "kind": "lemma",
  "lexical_name": "hasProjectiveDimensionLE_iff_forall_maximalSpectrum",
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
  "slug": "hasprojectivedimensionle-iff-forall-maximalspectrum--86e3620eb4e579e9ea684b4a",
  "source": {
    "blob": "01688ee0487242add10374a25649a77c6ed5c73d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 119,
    "line": 82,
    "path": "GRWTSK/Algebra/LinearAlgebra/ProjectiveDimension/Variante723d387ed6e52cc46b7faef74ffcc6883942c6313bb75860fab2a1bbe7d2786.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:86e3620eb4e579e9ea684b4a85989f647a66874bbe690f4b7b0f11b179cd3251",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/ProjectiveDimension/Variante723d387ed6e52cc46b7faef74ffcc6883942c6313bb75860fab2a1bbe7d2786.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:756f07a6-26f8-10d8-f7c5-90bf322fd77d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 82–119.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma hasProjectiveDimensionLE_iff_forall_maximalSpectrum (n : ℕ) [Small.{v} R]
    [IsNoetherianRing R] (M : ModuleCat.{v} R) [Module.Finite R M] : HasProjectiveDimensionLE M n ↔
    ∀ (m : MaximalSpectrum R), HasProjectiveDimensionLE (M.localizedModule m.1.primeCompl) n := by
  induction n generalizing M with
  | zero =>
    simp only [HasProjectiveDimensionLE, zero_add, ← projective_iff_hasProjectiveDimensionLT_one]
    refine ⟨fun h p ↦ ?_, fun h ↦ ?_⟩
    · let : Small.{v} (Localization p.asIdeal.primeCompl) :=
        small_of_surjective Localization.mkHom_surjective
      rw [← IsProjective.iff_projective]
      exact Module.projective_of_isLocalizedModule p.1.primeCompl
        (M.localizedModuleMkLinearMap p.1.primeCompl)
    · rw [← IsProjective.iff_projective]
      have : Module.FinitePresentation R M := Module.finitePresentation_of_finite R M
      apply Module.projective_of_localization_maximal (fun p hp ↦ ?_)
      have : Module.Projective (Localization.AtPrime p) (M.localizedModule p.primeCompl) := by
        let : Small.{v} (Localization.AtPrime p) :=
          small_of_surjective Localization.mkHom_surjective
        simpa [IsProjective.iff_projective] using h ⟨p, hp⟩
      exact Module.Projective.of_equiv (LinearEquiv.extendScalarsOfIsLocalization p.primeCompl
        (Localization.AtPrime p) (IsLocalizedModule.linearEquiv p.primeCompl
        (M.localizedModuleMkLinearMap p.primeCompl)
        (LocalizedModule.mkLinearMap p.primeCompl M)))
  | succ n ih =>
    rcases Module.exists_finite_presentation R M with ⟨P, _, _, _, _, f, surjf⟩
    let S := f.shortComplexKer
    have S_exact := LinearMap.shortExact_shortComplexKer surjf
    have proj := ModuleCat.projective_of_categoryTheory_projective S.X₂
    let Sp (p : MaximalSpectrum R) := S.map (ModuleCat.localizedModuleFunctor p.1.primeCompl)
    have Sp_exact (p : MaximalSpectrum R) : (Sp p).ShortExact :=
      S_exact.map_of_exact (ModuleCat.localizedModuleFunctor p.asIdeal.primeCompl)
    specialize ih ↧(LinearMap.ker f)
    have projp (p : MaximalSpectrum R) : Projective (Sp p).X₂ :=
      (ModuleCat.localizedModuleFunctor.{v} p.1.primeCompl).projective_obj_of_projective proj
    simp only [HasProjectiveDimensionLE] at ih ⊢
    rw [S_exact.hasProjectiveDimensionLT_X₃_iff n proj, ih]
    exact (forall_congr' (fun p ↦ (Sp_exact p).hasProjectiveDimensionLT_X₃_iff n (projp p))).symm

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/ProjectiveDimension/Variante723d387ed6e52cc46b7faef74ffcc6883942c6313bb75860fab2a1bbe7d2786.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/ProjectiveDimension/Variante723d387ed6e52cc46b7faef74ffcc6883942c6313bb75860fab2a1bbe7d2786.lean#L82).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `01688ee0487242add10374a25649a77c6ed5c73d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
