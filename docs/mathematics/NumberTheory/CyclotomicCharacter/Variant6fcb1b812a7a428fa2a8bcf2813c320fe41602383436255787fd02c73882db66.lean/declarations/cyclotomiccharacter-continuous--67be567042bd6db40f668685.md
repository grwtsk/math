# cyclotomicCharacter.continuous

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:13365f45-e2b1-9d0a-d619-ab83e772a48d",
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
  "slug": "cyclotomiccharacter-continuous--67be567042bd6db40f668685",
  "source": {
    "blob": "e2e976f3a4535232f7e7d78fde690cbb7b692c2a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 373,
    "line": 344,
    "path": "GRWTSK/NumberTheory/CyclotomicCharacter/Variant6fcb1b812a7a428fa2a8bcf2813c320fe41602383436255787fd02c73882db66.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:67be567042bd6db40f6686852c06a47649ca5c27337a5c3a4f594b878a4a5d0b",
  "verification": {
    "reference": "docs/verification/NumberTheory/CyclotomicCharacter/Variant6fcb1b812a7a428fa2a8bcf2813c320fe41602383436255787fd02c73882db66.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:13365f45-e2b1-9d0a-d619-ab83e772a48d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 344–373.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma cyclotomicCharacter.continuous (p : ℕ) [Fact p.Prime]
    (K L : Type*) [Field K] [Field L] [Algebra K L] :
    Continuous ((cyclotomicCharacter L p).comp (MulSemiringAction.toRingAut Gal(L/K) L)) := by
  by_cases H : ∀ (i : ℕ), ∃ ζ : L, IsPrimitiveRoot ζ (p ^ i); swap
  · simp only [cyclotomicCharacter, cyclotomicCharacter.toFun, dite_eq_right H, MonoidHom.coe_comp]
    exact continuous_const (y := 1)
  have _ (i) : HasEnoughRootsOfUnity L (p ^ i) := ⟨H i, rootsOfUnity.isCyclic _ _⟩
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
    obtain ⟨i, hi, rfl⟩ := ((hζ k).isUnit_unit NeZero.out).eq_pow_of_mem_rootsOfUnity ht
    rw [ZMod.val_one'', pow_one]
    · exact hσ ⟨ζ k ^ i, pow_mem (mem_adjoin_simple_self K (ζ k)) _⟩
    · exact (one_lt_pow₀ ‹Fact p.Prime›.1.one_lt hk').ne'
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/CyclotomicCharacter/Variant6fcb1b812a7a428fa2a8bcf2813c320fe41602383436255787fd02c73882db66.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/CyclotomicCharacter/Variant6fcb1b812a7a428fa2a8bcf2813c320fe41602383436255787fd02c73882db66.lean#L344).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e2e976f3a4535232f7e7d78fde690cbb7b692c2a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
