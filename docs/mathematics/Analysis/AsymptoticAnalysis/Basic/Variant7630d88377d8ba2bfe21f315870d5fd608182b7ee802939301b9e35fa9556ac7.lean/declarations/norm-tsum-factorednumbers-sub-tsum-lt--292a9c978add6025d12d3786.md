# norm_tsum_factoredNumbers_sub_tsum_lt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:9decfeb5-bdec-53ea-f575-6f2d2a6bebf7",
  "kind": "lemma",
  "lexical_name": "norm_tsum_factoredNumbers_sub_tsum_lt",
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
  "slug": "norm-tsum-factorednumbers-sub-tsum-lt--292a9c978add6025d12d3786",
  "source": {
    "blob": "88d824da1f06d504490ae01374c29e5d7f6ab473",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 144,
    "line": 129,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/Basic/Variant7630d88377d8ba2bfe21f315870d5fd608182b7ee802939301b9e35fa9556ac7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:292a9c978add6025d12d37869511f6fdbe79cca977bdbdce449254f7ba7aac17",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/Basic/Variant7630d88377d8ba2bfe21f315870d5fd608182b7ee802939301b9e35fa9556ac7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9decfeb5-bdec-53ea-f575-6f2d2a6bebf7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 129–144.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma norm_tsum_factoredNumbers_sub_tsum_lt (hsum : Summable f) (hf₀ : f 0 = 0) {ε : ℝ}
    (εpos : 0 < ε) :
    ∃ N : ℕ, ∀ s : Finset ℕ, primesBelow N ≤ s →
      ‖(∑' m : ℕ, f m) - ∑' m : factoredNumbers s, f m‖ < ε := by
  obtain ⟨N, hN⟩ :=
    summable_iff_nat_tsum_vanishing.mp hsum (Metric.ball 0 ε) <| Metric.ball_mem_nhds 0 εpos
  simp_rw [mem_ball_zero_iff] at hN
  refine ⟨N, fun s hs ↦ ?_⟩
  have := hN _ <| factoredNumbers_compl hs
  rwa [← hsum.tsum_subtype_add_tsum_subtype_compl (factoredNumbers s),
    add_sub_cancel_left, tsum_eq_tsum_diff_singleton (factoredNumbers s)ᶜ hf₀]

-- Versions of the three lemmas above for `smoothNumbers N`

include hf₁ hmul in
/-- We relate a finite product over primes to an infinite sum over smooth numbers. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/Basic/Variant7630d88377d8ba2bfe21f315870d5fd608182b7ee802939301b9e35fa9556ac7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/Basic/Variant7630d88377d8ba2bfe21f315870d5fd608182b7ee802939301b9e35fa9556ac7.lean#L129).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `88d824da1f06d504490ae01374c29e5d7f6ab473` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
