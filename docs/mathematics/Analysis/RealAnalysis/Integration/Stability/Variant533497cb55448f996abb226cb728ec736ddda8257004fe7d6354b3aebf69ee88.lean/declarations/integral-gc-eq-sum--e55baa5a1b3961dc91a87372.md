# integral_gC_eq_sum

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "6d3ece8d57d60fa3ab47657e589d10dc8d18d12e",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 81,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/53/533497cb55448f996abb226cb728ec736ddda8257004fe7d6354b3aebf69ee88.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:f6c24499-dbbc-e9d1-424c-b063b05c446e",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:89716cc9-6bcb-b56c-cfe7-72b6210cfec3",
  "kind": "lemma",
  "lexical_name": "integral_gC_eq_sum",
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
  "slug": "integral-gc-eq-sum--e55baa5a1b3961dc91a87372",
  "source": {
    "blob": "6d3ece8d57d60fa3ab47657e589d10dc8d18d12e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 97,
    "line": 81,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/Stability/Variant533497cb55448f996abb226cb728ec736ddda8257004fe7d6354b3aebf69ee88.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e55baa5a1b3961dc91a87372ddc0ef0b79a5cf8a80e72936ef2bfab17edcb586",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/Stability/Variant533497cb55448f996abb226cb728ec736ddda8257004fe7d6354b3aebf69ee88.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:89716cc9-6bcb-b56c-cfe7-72b6210cfec3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 81–97.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma integral_gC_eq_sum (hN : 0 < N) {r g : ℝ → ℝ}
    (hr : ∀ x ∈ Icc (0:ℝ) 1, HasDerivAt r (g x) x) (hg : ContinuousOn g (Icc (0:ℝ) 1)) :
    ∫ x in (0:ℝ)..1, g x * Cstep s N x = ∑ m ∈ Finset.range N, Csum s m * (r ((m+1:ℝ)/N) - r ((m:ℝ)/N)) := by
  have hNr : (0 : ℝ) < N := by exact_mod_cast hN
  have key := intervalIntegral.sum_integral_adjacent_intervals (μ := volume)
    (f := fun x => g x * Cstep s N x) (a := fun m : ℕ => (m:ℝ)/N) (n := N)
    (fun k hk => by
      simpa [Nat.cast_succ] using intervalIntegrable_gC_cell (s := s) hN hk (hg.mono (cell_subset hN hk)))
  simp only [Nat.cast_zero, zero_div] at key
  rw [div_self hNr.ne'] at key
  rw [← key]
  refine Finset.sum_congr rfl fun m hm => ?_
  have hm' := Finset.mem_range.mp hm
  simpa [Nat.cast_succ] using
    integral_cell (s := s) hN hm' (fun x hx => hr x (cell_subset hN hm' hx)) (hg.mono (cell_subset hN hm'))

/-- Abel summation: Σ_{m<N} C_m (r_{m+1} − r_m) = C_N r(1) − Σ_{j=1}^{N} s_j r(j/N). -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/Stability/Variant533497cb55448f996abb226cb728ec736ddda8257004fe7d6354b3aebf69ee88.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/Stability/Variant533497cb55448f996abb226cb728ec736ddda8257004fe7d6354b3aebf69ee88.lean#L81).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6d3ece8d57d60fa3ab47657e589d10dc8d18d12e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
