# actual_readout_eq_small_base_add_large_prime_blocks

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:bb04f9e7-fa58-a511-1845-d7ed9e8bd522",
  "kind": "theorem",
  "lexical_name": "actual_readout_eq_small_base_add_large_prime_blocks",
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
  "slug": "actual-readout-eq-small-base-add-large-prime-blocks--fef0087be35ae6946c9aa26b",
  "source": {
    "blob": "fb7bf85228fc00eb97898ecdc2822b97629ae790",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 174,
    "line": 143,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceLargePrimeLinear/Variantf7ce687b71563cb550b183c0c8fcb7fb91624d63349f379d42023365a5b53bd2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fef0087be35ae6946c9aa26bf4a0497f98068bcc0ed82469c62eb5b840e23b5f",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceLargePrimeLinear/Variantf7ce687b71563cb550b183c0c8fcb7fb91624d63349f379d42023365a5b53bd2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:bb04f9e7-fa58-a511-1845-d7ed9e8bd522`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 143–174.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actual_readout_eq_small_base_add_large_prime_blocks
    (A : ℝ) (hA : 0 < A) (U N : ℕ) (hU : 1 ≤ U) :
    readoutAt A hA U N =
      disclosedReadoutAt A hA U N ((Finset.range (U + 1)).filter Nat.Prime) +
      ∑ p ∈ (Finset.Ioc U N).filter Nat.Prime,
        compensatedReadout (originalSourceL2 A hA) (Finset.Ioc U N)
          (freshMangoldtRow p) (centeredCoefficient U) 0 := by
  classical
  let P := (Finset.range (U + 1)).filter Nat.Prime
  let L := (Finset.Ioc U N).filter Nat.Prime
  have hP : ∀ r ∈ P, r.Prime := fun r hr => (Finset.mem_filter.mp hr).2
  have hL : ∀ r ∈ L, r.Prime := fun r hr => (Finset.mem_filter.mp hr).2
  have hlarge : ∀ r ∈ L, U < r :=
    fun r hr => (Finset.mem_Ioc.mp (Finset.mem_filter.mp hr).1).1
  have hdisj : Disjoint P L := by
    apply Finset.disjoint_left.mpr
    intro r hrP hrL
    have h1 := Finset.mem_range.mp (Finset.mem_filter.mp hrP).1
    have h2 := (Finset.mem_Ioc.mp (Finset.mem_filter.mp hrL).1).1
    omega
  have hcover : ∀ r, r.Prime → r ≤ max U N → r ∈ P ∪ L := by
    intro r hr hR
    by_cases hRU : r ≤ U
    · apply Finset.mem_union_left
      exact Finset.mem_filter.mpr ⟨Finset.mem_range.mpr (by omega), hr⟩
    · apply Finset.mem_union_right
      exact Finset.mem_filter.mpr ⟨Finset.mem_Ioc.mpr ⟨by omega, by omega⟩, hr⟩
  have hs := actual_readout_large_prime_sum_actual_beta A hA P L U N
    hP hL hlarge hdisj hcover hU
  change readoutAt A hA U N = disclosedReadoutAt A hA U N P + _
  linarith only [hs]
end RH16LargePrimeLinear
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceLargePrimeLinear/Variantf7ce687b71563cb550b183c0c8fcb7fb91624d63349f379d42023365a5b53bd2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceLargePrimeLinear/Variantf7ce687b71563cb550b183c0c8fcb7fb91624d63349f379d42023365a5b53bd2.lean#L143).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fb7bf85228fc00eb97898ecdc2822b97629ae790` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
