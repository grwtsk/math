# actual_readout_eq_small_base_add_large_prime_blocks

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d1feca3e-2728-19a8-da29-613aaa5e0984",
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
  "slug": "actual-readout-eq-small-base-add-large-prime-blocks--d8980485c38ca0a547defe0d",
  "source": {
    "blob": "023de6858c4f50d9c524931c0a0945e00b57bde8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 182,
    "line": 151,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceLargePrimeLinear/Variant347bd1a04d4400516f4c15c2a08c293d8d1509b8e7b263e2e2969fda455d12ae.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d8980485c38ca0a547defe0ddbbc309e918d25e149080c2739d29382f1f61d58",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceLargePrimeLinear/Variant347bd1a04d4400516f4c15c2a08c293d8d1509b8e7b263e2e2969fda455d12ae.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d1feca3e-2728-19a8-da29-613aaa5e0984`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 151–182.

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

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceLargePrimeLinear/Variant347bd1a04d4400516f4c15c2a08c293d8d1509b8e7b263e2e2969fda455d12ae.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceLargePrimeLinear/Variant347bd1a04d4400516f4c15c2a08c293d8d1509b8e7b263e2e2969fda455d12ae.lean#L151).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `023de6858c4f50d9c524931c0a0945e00b57bde8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
