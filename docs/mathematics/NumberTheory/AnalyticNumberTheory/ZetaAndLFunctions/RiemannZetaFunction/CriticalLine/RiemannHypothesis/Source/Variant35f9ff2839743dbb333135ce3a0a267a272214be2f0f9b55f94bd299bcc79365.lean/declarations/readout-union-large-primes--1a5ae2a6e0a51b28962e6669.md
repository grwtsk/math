# readout_union_large_primes

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:94a1e58d-8bb5-5f49-c76d-845793d86b7d",
  "kind": "theorem",
  "lexical_name": "readout_union_large_primes",
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
  "slug": "readout-union-large-primes--1a5ae2a6e0a51b28962e6669",
  "source": {
    "blob": "92a91db95a72b35e8d6e0e0396f6d238c16d5f71",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 81,
    "line": 50,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Source/Variant35f9ff2839743dbb333135ce3a0a267a272214be2f0f9b55f94bd299bcc79365.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1a5ae2a6e0a51b28962e6669077d40d03de3cd85f52b5b8da6ed4e058cb9c444",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Source/Variant35f9ff2839743dbb333135ce3a0a267a272214be2f0f9b55f94bd299bcc79365.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:94a1e58d-8bb5-5f49-c76d-845793d86b7d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 50–81.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem readout_union_large_primes (A : ℝ) (hA : 0 < A)
    (P L : Finset ℕ) (U N : ℕ)
    (hP : ∀ r ∈ P, r.Prime) (hL : ∀ r ∈ L, r.Prime)
    (hlarge : ∀ r ∈ L, U < r) (hdisj : Disjoint P L) :
    disclosedReadoutAt A hA U N (P ∪ L) - disclosedReadoutAt A hA U N P =
      ∑ p ∈ L, compensatedReadout (originalSourceL2 A hA) (Finset.Ioc U N)
        (freshMangoldtRow p) (disclosedBetaRow P U) 0 := by
  classical
  induction L using Finset.induction_on with
  | empty => simp
  | @insert p L hpL ih =>
    have hnot : p ∉ P := by
      intro hpP
      exact Finset.disjoint_left.mp hdisj hpP (Finset.mem_insert_self p L)
    have hD : Disjoint P L := hdisj.mono_right (Finset.subset_insert p L)
    have hLp : ∀ r ∈ L, r.Prime := fun r hr => hL r (Finset.mem_insert_of_mem hr)
    have hLg : ∀ r ∈ L, U < r := fun r hr => hlarge r (Finset.mem_insert_of_mem hr)
    have hPL : ∀ r ∈ P ∪ L, r.Prime := by
      intro r hr
      rcases Finset.mem_union.mp hr with hr | hr
      · exact hP r hr
      · exact hLp r hr
    have hpn : p ∉ P ∪ L := by simp [hnot, hpL]
    have hp : p.Prime := hL p (Finset.mem_insert_self p L)
    have hg : U < p := hlarge p (Finset.mem_insert_self p L)
    have hstep := disclosedReadout_large_prime_one_block A hA (P ∪ L) U N p hPL hp hpn hg
    rw [betaRow_union_large_primes P L U hP hLp hLg hD] at hstep
    have hold := ih hLp hLg hD
    rw [Finset.union_insert, Finset.sum_insert hpL]
    linarith only [hstep, hold]

/-- Complete finite coverage consumes the linear telescope on the unchanged actual readout. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Source/Variant35f9ff2839743dbb333135ce3a0a267a272214be2f0f9b55f94bd299bcc79365.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Source/Variant35f9ff2839743dbb333135ce3a0a267a272214be2f0f9b55f94bd299bcc79365.lean#L50).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `92a91db95a72b35e8d6e0e0396f6d238c16d5f71` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
