# toPiLocalization_surjective_of_discreteTopology

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:eb2dfa52-53d7-2375-fb63-226f315c1483",
  "kind": "theorem",
  "lexical_name": "toPiLocalization_surjective_of_discreteTopology",
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
  "slug": "topilocalization-surjective-of-discretetopology--483e36ea4ca011f0bf916cb0",
  "source": {
    "blob": "3a11176296f7ba9ca555235e23b54d42f95b5146",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 762,
    "line": 735,
    "path": "GRWTSK/Topology/GeneralTopology/Topology/Variant678871c1bbb85c9cfff8ae15027c7e47e75d417daa4b0af6ceba04734bf8f154.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:483e36ea4ca011f0bf916cb07868c69f759be488b9840c69d186c9ce31ed1808",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Topology/Variant678871c1bbb85c9cfff8ae15027c7e47e75d417daa4b0af6ceba04734bf8f154.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:eb2dfa52-53d7-2375-fb63-226f315c1483`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 735–762.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem toPiLocalization_surjective_of_discreteTopology :
    Function.Surjective (toPiLocalization R) := fun x ↦ by
  have (p : PrimeSpectrum R) : ∃ f, (basicOpen f : Set _) = {p} :=
    have ⟨_, ⟨f, rfl⟩, hpf, hfp⟩ := isTopologicalBasis_basic_opens.isOpen_iff.mp
      (isOpen_discrete {p}) p rfl
    ⟨f, hfp.antisymm <| Set.singleton_subset_iff.mpr hpf⟩
  choose f hf using this
  let e := Equiv.ofInjective f fun p q eq ↦ Set.singleton_injective (hf p ▸ eq ▸ hf q)
  have loc a : IsLocalization.AtPrime (Localization.Away a.1) (e.symm a).1 :=
    (isLocalization_away_iff_atPrime_of_basicOpen_eq_singleton <| hf _).mp <| by
      simp_rw [e, Equiv.apply_ofInjective_symm]; infer_instance
  let algE a := IsLocalization.algEquiv (e.symm a).1.primeCompl
    (Localization.AtPrime (e.symm a).1) (Localization.Away a.1)
  have span_eq : Ideal.span (Set.range f) = ⊤ := iSup_basicOpen_eq_top_iff.mp <| top_unique
    fun p _ ↦ TopologicalSpace.Opens.mem_iSup.mpr ⟨p, (hf p).ge rfl⟩
  replace hf a : (basicOpen a.1 : Set _) = {e.symm a} := by
    simp_rw [e, ← hf, Equiv.apply_ofInjective_symm]
  obtain ⟨r, eq, -⟩ := Localization.existsUnique_algebraMap_eq_of_span_eq_top _ span_eq
    (fun a ↦ algE a (x _)) fun a b ↦ by
      obtain rfl | ne := eq_or_ne a b; · rfl
      have nil : IsNilpotent (a * b : R) := (basicOpen_eq_bot_iff _).mp <| by
        simp_rw [basicOpen_mul, SetLike.ext'_iff, TopologicalSpace.Opens.coe_inf, hf]
        exact bot_unique (fun _ ⟨ha, hb⟩ ↦ ne <| e.symm.injective (ha.symm.trans hb))
      apply (IsLocalization.subsingleton (M := .powers (a * b : R)) nil).elim
  refine ⟨r, funext fun I ↦ ?_⟩
  have := eq (e I)
  rwa [← AlgEquiv.symm_apply_eq, AlgEquiv.commutes, e.symm_apply_apply] at this

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Topology/Variant678871c1bbb85c9cfff8ae15027c7e47e75d417daa4b0af6ceba04734bf8f154.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Topology/Variant678871c1bbb85c9cfff8ae15027c7e47e75d417daa4b0af6ceba04734bf8f154.lean#L735).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3a11176296f7ba9ca555235e23b54d42f95b5146` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
