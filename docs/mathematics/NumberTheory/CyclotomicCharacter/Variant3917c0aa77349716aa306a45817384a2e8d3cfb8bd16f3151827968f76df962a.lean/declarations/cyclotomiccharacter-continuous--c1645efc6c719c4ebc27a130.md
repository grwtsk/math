# cyclotomicCharacter.continuous

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "54ea476741d5a3beee9d20d12c30433e4ebc3040",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 332,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/39/3917c0aa77349716aa306a45817384a2e8d3cfb8bd16f3151827968f76df962a.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:a8699354-99f6-683e-e398-c988e4b2bc12",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:87fdc1d6-90a2-f9f5-3791-0db6b3f1d2da",
  "kind": "lemma",
  "lexical_name": "cyclotomicCharacter.continuous",
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
  "slug": "cyclotomiccharacter-continuous--c1645efc6c719c4ebc27a130",
  "source": {
    "blob": "54ea476741d5a3beee9d20d12c30433e4ebc3040",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 416,
    "line": 332,
    "path": "GRWTSK/NumberTheory/CyclotomicCharacter/Variant3917c0aa77349716aa306a45817384a2e8d3cfb8bd16f3151827968f76df962a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c1645efc6c719c4ebc27a130b2987a2e4d9b496f5fef0e69fe0da170a0ab5c30",
  "verification": {
    "reference": "docs/verification/NumberTheory/CyclotomicCharacter/Variant3917c0aa77349716aa306a45817384a2e8d3cfb8bd16f3151827968f76df962a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:87fdc1d6-90a2-f9f5-3791-0db6b3f1d2da`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 332–416.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma cyclotomicCharacter.continuous (p : ℕ) [Fact p.Prime]
    (K L : Type*) [Field K] [Field L] [Algebra K L] :
    Continuous ((cyclotomicCharacter L p).comp (MulSemiringAction.toRingAut (L ≃ₐ[K] L) L)) := by
  by_cases H : ∀ (i : ℕ), ∃ ζ : L, IsPrimitiveRoot ζ (p ^ i); swap
  · simp only [cyclotomicCharacter, cyclotomicCharacter.toFun, dif_neg H, MonoidHom.coe_comp]
    exact continuous_const (y := 1)
  haveI (i) : HasEnoughRootsOfUnity L (p ^ i) := ⟨H i, rootsOfUnity.isCyclic _ _⟩
  choose ζ hζ using H
  refine Continuous.of_coeHom_comp ?_
  apply continuous_of_continuousAt_one
  rw [ContinuousAt, map_one, (galGroupBasis K L).nhds_one_hasBasis.tendsto_iff
    (Metric.nhds_basis_ball (α := ℤ_[p]) (x := 1))]
  intro ε hε
  obtain ⟨k, hk', hk⟩ : ∃ k : ℕ, k ≠ 0 ∧ p ^ (-k : ℤ) < ε := by
    obtain ⟨k, hk⟩ := PadicInt.exists_pow_neg_lt p hε
    exact ⟨k + 1, by simp, lt_of_le_of_lt (by gcongr <;> simp [‹Fact p.Prime›.1.one_le]) hk⟩
  refine ⟨_, ⟨_, ⟨(K⟮ζ k⟯), adjoin.finiteDimensional ?_, rfl⟩, rfl⟩, ?_⟩
  · exact ((hζ k).isIntegral (Nat.pos_of_neZero _)).tower_top
  · intro σ hσ
    refine lt_of_le_of_lt ?_ hk
    dsimp
    rw [dist_eq_norm, PadicInt.norm_le_pow_iff_mem_span_pow, ← PadicInt.ker_toZModPow,
      RingHom.mem_ker, map_sub, map_one, cyclotomicCharacter.toZModPow,
      sub_eq_zero, eq_comm]
    apply modularCyclotomicCharacter.unique
    intro t ht
    obtain ⟨i, hi, rfl⟩ := ((hζ k).isUnit_unit (Nat.pos_of_neZero _)).eq_pow_of_mem_rootsOfUnity ht
    rw [ZMod.val_one'', pow_one]
    · exact hσ ⟨ζ k ^ i, pow_mem (mem_adjoin_simple_self K (ζ k)) _⟩
    · exact (one_lt_pow₀ ‹Fact p.Prime›.1.one_lt hk').ne'

@[deprecated (since := "2025-05-02")]
alias ModularCyclotomicCharacter.aux := modularCyclotomicCharacter.aux
@[deprecated (since := "2025-05-02")]
alias ModularCyclotomicCharacter.aux_spec := modularCyclotomicCharacter.aux_spec
@[deprecated (since := "2025-05-02")]
alias ModularCyclotomicCharacter.pow_dvd_aux_pow_sub_aux_pow :=
  modularCyclotomicCharacter.pow_dvd_aux_pow_sub_aux_pow
@[deprecated (since := "2025-05-02")]
alias ModularCyclotomicCharacter.toFun := modularCyclotomicCharacter.toFun
@[deprecated (since := "2025-05-02")]
alias ModularCyclotomicCharacter.toFun_spec := modularCyclotomicCharacter.toFun_spec
@[deprecated (since := "2025-05-02")]
alias ModularCyclotomicCharacter.toFun_spec' := modularCyclotomicCharacter.toFun_spec'
@[deprecated (since := "2025-05-02")]
alias ModularCyclotomicCharacter.toFun_spec'' := modularCyclotomicCharacter.toFun_spec''
@[deprecated (since := "2025-05-02")]
alias ModularCyclotomicCharacter.toFun_unique := modularCyclotomicCharacter.toFun_unique
@[deprecated (since := "2025-05-02")]
alias ModularCyclotomicCharacter.toFun_unique' := modularCyclotomicCharacter.toFun_unique'
@[deprecated (since := "2025-05-02")]
alias ModularCyclotomicCharacter.id := modularCyclotomicCharacter.id
@[deprecated (since := "2025-05-02")]
alias ModularCyclotomicCharacter.comp := modularCyclotomicCharacter.comp
@[deprecated (since := "2025-05-02")]
alias ModularCyclotomicCharacter' := modularCyclotomicCharacter'
@[deprecated (since := "2025-05-02")]
alias ModularCyclotomicCharacter'.spec' := modularCyclotomicCharacter'.spec'
@[deprecated (since := "2025-05-02")]
alias ModularCyclotomicCharacter'.unique' := modularCyclotomicCharacter'.unique'
@[deprecated (since := "2025-05-02")]
alias ModularCyclotomicCharacter := modularCyclotomicCharacter
@[deprecated (since := "2025-05-02")]
alias ModularCyclotomicCharacter.spec := modularCyclotomicCharacter.spec
@[deprecated (since := "2025-05-02")]
alias ModularCyclotomicCharacter.unique := modularCyclotomicCharacter.unique
@[deprecated (since := "2025-05-02")]
alias IsPrimitiveRoot.autToPow_eq_ModularCyclotomicCharacter :=
  IsPrimitiveRoot.autToPow_eq_modularCyclotomicCharacter
@[deprecated (since := "2025-05-02")]
alias CyclotomicCharacter.toFun := cyclotomicCharacter.toFun
@[deprecated (since := "2025-05-02")]
alias CyclotomicCharacter.toFun_apply := cyclotomicCharacter.toFun_apply
@[deprecated (since := "2025-05-02")]
alias CyclotomicCharacter.toZModPow_toFun := cyclotomicCharacter.toZModPow_toFun
@[deprecated (since := "2025-05-02")]
alias CyclotomicCharacter.toFun_spec := cyclotomicCharacter.toFun_spec
@[deprecated (since := "2025-05-02")]
alias CyclotomicCharacter := cyclotomicCharacter
@[deprecated (since := "2025-05-02")]
alias CyclotomicCharacter.spec := cyclotomicCharacter.spec
@[deprecated (since := "2025-05-02")]
alias CyclotomicCharacter.toZModPow := cyclotomicCharacter.toZModPow
@[deprecated (since := "2025-05-02")]
alias CyclotomicCharacter.continuous := cyclotomicCharacter.continuous
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/CyclotomicCharacter/Variant3917c0aa77349716aa306a45817384a2e8d3cfb8bd16f3151827968f76df962a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/CyclotomicCharacter/Variant3917c0aa77349716aa306a45817384a2e8d3cfb8bd16f3151827968f76df962a.lean#L332).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `54ea476741d5a3beee9d20d12c30433e4ebc3040` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
