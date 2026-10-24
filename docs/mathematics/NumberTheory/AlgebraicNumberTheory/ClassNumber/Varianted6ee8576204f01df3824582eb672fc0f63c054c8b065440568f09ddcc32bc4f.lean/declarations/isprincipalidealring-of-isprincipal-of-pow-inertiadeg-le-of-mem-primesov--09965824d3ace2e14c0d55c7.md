# isPrincipalIdealRing_of_isPrincipal_of_pow_inertiaDeg_le_of_mem_primesOver_of_mem_Icc

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d4d50ff8-d93a-965a-3fe7-194978e1877a",
  "kind": "theorem",
  "lexical_name": "isPrincipalIdealRing_of_isPrincipal_of_pow_inertiaDeg_le_of_mem_primesOver_of_mem_Icc",
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
  "slug": "isprincipalidealring-of-isprincipal-of-pow-inertiadeg-le-of-mem-primesov--09965824d3ace2e14c0d55c7",
  "source": {
    "blob": "43e996299010e5a798bcaa8df6bffa60c3b3a8a3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 165,
    "line": 138,
    "path": "GRWTSK/NumberTheory/AlgebraicNumberTheory/ClassNumber/Varianted6ee8576204f01df3824582eb672fc0f63c054c8b065440568f09ddcc32bc4f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:09965824d3ace2e14c0d55c7af90ab6b5dc717e5835ed0aa5da549398e9cac3c",
  "verification": {
    "reference": "docs/verification/NumberTheory/AlgebraicNumberTheory/ClassNumber/Varianted6ee8576204f01df3824582eb672fc0f63c054c8b065440568f09ddcc32bc4f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d4d50ff8-d93a-965a-3fe7-194978e1877a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 138–165.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isPrincipalIdealRing_of_isPrincipal_of_pow_inertiaDeg_le_of_mem_primesOver_of_mem_Icc
    (h : ∀ p ∈ Finset.Icc 1 ⌊(M K)⌋₊, p.Prime → ∀ (P : Ideal (𝓞 K)),
      P ∈ primesOver (span {(p : ℤ)}) (𝓞 K) → p ^ ((span ({↑p} : Set ℤ)).inertiaDeg P) ≤ ⌊(M K)⌋₊ →
      Submodule.IsPrincipal P) : IsPrincipalIdealRing (𝓞 K) := by
  refine isPrincipalIdealRing_of_isPrincipal_of_norm_le_of_isPrime <|
    fun ⟨P, HP⟩ hP hPN ↦ ?_
  obtain ⟨p, hp⟩ := IsPrincipalIdealRing.principal <| under ℤ P
  have hp0 : p ≠ 0 := fun h ↦ nonZeroDivisors.coe_ne_zero ⟨P, HP⟩ <|
    eq_bot_of_comap_eq_bot (R := ℤ) <| by simpa only [hp, submodule_span_eq, span_singleton_eq_bot]
  have hpprime := (span_singleton_prime hp0).mp
  simp only [← submodule_span_eq, ← hp] at hpprime
  have hlies : P.LiesOver (span {p}) := by
    rcases abs_choice p with h | h <;>
    simpa [h, span_singleton_neg p, ← submodule_span_eq, ← hp] using over_under P
  have hspan : span {↑p.natAbs} = span {p} := by
    rcases abs_choice p with h | h <;> simp [h]
  have hple : p.natAbs ^ (span {(p.natAbs : ℤ)}).inertiaDeg P ≤ ⌊(M K)⌋₊ := by
    refine le_floor ?_
    simpa only [hspan, ← cast_pow, ← absNorm_eq_pow_inertiaDeg P (hpprime (hP.under _))] using hPN
  have hpabsprime := Int.prime_iff_natAbs_prime.mp (hpprime (hP.under _))
  refine h _ ?_ hpabsprime _ ⟨hP, ?_⟩ hple
  · suffices 0 < (span {(p.natAbs : ℤ)}).inertiaDeg P by
      exact Finset.mem_Icc.mpr ⟨hpabsprime.one_le, le_trans (le_pow this) hple⟩
    have := (isPrime_of_prime (prime_span_singleton_iff.mpr <|
      hpprime (hP.under _))).isMaximal <| by simp [((hpprime (hP.under _))).ne_zero]
    exact hspan ▸ inertiaDeg_pos ..
  · exact hspan ▸ hlies

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/AlgebraicNumberTheory/ClassNumber/Varianted6ee8576204f01df3824582eb672fc0f63c054c8b065440568f09ddcc32bc4f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AlgebraicNumberTheory/ClassNumber/Varianted6ee8576204f01df3824582eb672fc0f63c054c8b065440568f09ddcc32bc4f.lean#L138).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `43e996299010e5a798bcaa8df6bffa60c3b3a8a3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
