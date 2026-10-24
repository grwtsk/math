# isPrincipalIdealRing_of_isPrincipal_of_pow_le_of_mem_primesOver_of_mem_Icc

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "7126a0bb75215cbb9044f7c7aefcca794e543f81",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 144,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/43/43379a45a522ec04015d65d2fec023067c1b62c0e15315c5b54c7340b6c61ce6.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:b60db62b-c81a-f153-fab7-0abf55dcc774",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:9db90ebb-f5ad-e34f-cacd-4a1b2ff87359",
  "kind": "theorem",
  "lexical_name": "isPrincipalIdealRing_of_isPrincipal_of_pow_le_of_mem_primesOver_of_mem_Icc",
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
  "slug": "isprincipalidealring-of-isprincipal-of-pow-le-of-mem-primesover-of-mem-i--7ce7075786ba0105419c724c",
  "source": {
    "blob": "7126a0bb75215cbb9044f7c7aefcca794e543f81",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 182,
    "line": 144,
    "path": "GRWTSK/NumberTheory/AlgebraicNumberTheory/ClassNumber/Variant43379a45a522ec04015d65d2fec023067c1b62c0e15315c5b54c7340b6c61ce6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7ce7075786ba0105419c724ca4b9f6202cbdca56f8f4350fe4b787aba18ce146",
  "verification": {
    "reference": "docs/verification/NumberTheory/AlgebraicNumberTheory/ClassNumber/Variant43379a45a522ec04015d65d2fec023067c1b62c0e15315c5b54c7340b6c61ce6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9db90ebb-f5ad-e34f-cacd-4a1b2ff87359`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 144–182.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isPrincipalIdealRing_of_isPrincipal_of_pow_le_of_mem_primesOver_of_mem_Icc
    (h : ∀ p ∈ Finset.Icc 1 ⌊(M K)⌋₊, p.Prime → ∀ (P : Ideal (𝓞 K)),
      P ∈ primesOver (span {(p : ℤ)}) (𝓞 K) → p ^ P.inertiaDeg ℤ ≤ ⌊(M K)⌋₊ →
      Submodule.IsPrincipal P) : IsPrincipalIdealRing (𝓞 K) := by
  refine isPrincipalIdealRing_of_isPrincipal_of_norm_le_of_isPrime <|
    fun ⟨P, HP⟩ hP hPN ↦ ?_
  obtain ⟨p, hp⟩ := IsPrincipalIdealRing.principal <| under ℤ P
  have hp0 : p ≠ 0 := fun h ↦ nonZeroDivisors.coe_ne_zero ⟨P, HP⟩ <|
    eq_bot_of_under_eq_bot (R := ℤ) <| by simpa only [hp, submodule_span_eq, span_singleton_eq_bot]
  have hpprime := (span_singleton_prime hp0).mp
  simp only [← submodule_span_eq, ← hp] at hpprime
  have hlies : P.LiesOver (span {p}) := by
    rcases abs_choice p with h | h <;>
    simpa [h, span_singleton_neg p, ← submodule_span_eq, ← hp] using over_under P
  have hspan : span {↑p.natAbs} = span {p} := by
    rcases abs_choice p with h | h <;> simp [h]
  have hple : p.natAbs ^ P.inertiaDeg ℤ ≤ ⌊(M K)⌋₊ := by
    refine le_floor ?_
    have : P.IsMaximal := hP.isMaximal (by simpa using HP.2)
    have : (span {p}).IsMaximal := (hpprime (.under ℤ P)).isMaximal_span_singleton
    simpa only [hspan, ← cast_pow, ← natAbs_pow_inertiaDeg p P] using hPN
  have hpabsprime := Int.prime_iff_natAbs_prime.mp (hpprime (hP.under _))
  refine h _ ?_ hpabsprime _ ⟨hP, ?_⟩ hple
  · suffices 0 < P.inertiaDeg ℤ by
      exact Finset.mem_Icc.mpr ⟨hpabsprime.one_le, le_trans (le_pow this) hple⟩
    have := (isPrime_of_prime (prime_span_singleton_iff.mpr <|
      hpprime (hP.under _))).isMaximal <| by simp [((hpprime (hP.under _))).ne_zero]
    exact inertiaDeg_pos ..
  · exact hspan ▸ hlies

/-- Let `K` be a number field such that `K/ℚ` is Galois and let `M K` be the Minkowski bound of `K`.
To show that `𝓞 K` is a PID it is enough to show that, for all (natural) primes
`p ∈ Finset.Icc 1 ⌊(M K)⌋₊`, there is an ideal `P` above `p` such that
either `⌊(M K)⌋₊ < p ^ (span ({p}).inertiaDeg P)` or `P` is principal. This is the standard
technique to prove that `𝓞 K` is principal in the Galois case, see [marcus1977number], discussion
after Theorem 37.

The way this theorem should be used is to first compute `⌊(M K)⌋₊` and then to use `fin_cases`
to deal with the finite number of primes `p` in the interval. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/AlgebraicNumberTheory/ClassNumber/Variant43379a45a522ec04015d65d2fec023067c1b62c0e15315c5b54c7340b6c61ce6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AlgebraicNumberTheory/ClassNumber/Variant43379a45a522ec04015d65d2fec023067c1b62c0e15315c5b54c7340b6c61ce6.lean#L144).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7126a0bb75215cbb9044f7c7aefcca794e543f81` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
