# summable_iterate_mul_iff_isQuasiregular

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "b033d8917bbd2c274f2bb55e6b07c46c9204db5b",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 331,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/28/281b0bb77fdc58f9c98d50cc626303bf30d7302c48d3ae8522d071ad07d40480.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:d2e2d491-1043-7ece-7740-58c2dec12d39",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:b62edf21-5eec-52e5-262a-97fcb293ca9a",
  "kind": "theorem",
  "lexical_name": "summable_iterate_mul_iff_isQuasiregular",
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
  "slug": "summable-iterate-mul-iff-isquasiregular--59d0ab1a2c47e1ad9240bb4e",
  "source": {
    "blob": "b033d8917bbd2c274f2bb55e6b07c46c9204db5b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 363,
    "line": 331,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/Normed/Variant281b0bb77fdc58f9c98d50cc626303bf30d7302c48d3ae8522d071ad07d40480.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:59d0ab1a2c47e1ad9240bb4eeda8f80d09660c3fc856e8dd0606dd2b23e41d66",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/Normed/Variant281b0bb77fdc58f9c98d50cc626303bf30d7302c48d3ae8522d071ad07d40480.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b62edf21-5eec-52e5-262a-97fcb293ca9a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 331–363.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem summable_iterate_mul_iff_isQuasiregular {x : R} (h : ‖x‖ < 1) :
    Summable ((· * x)^[·] x) ↔ IsQuasiregular (-x) := by
  rw [isQuasiregular_iff]
  refine ⟨fun h ↦ ?_, ?_⟩
  · refine ⟨∑' i : ℕ, (· * x)^[i] x, ?_, ?_⟩
    · simpa [← sub_eq_add_neg, sub_sub, sub_eq_zero] using h.add_self_mul_geom_series.symm
    · rw [mul_neg]
      convert sub_eq_zero.mpr h.add_geom_series_mul_self.symm
      abel
  · rintro ⟨s, hs, hs'⟩
    rw [neg_mul] at hs
    have hxy : x * s = s - x := by grind
    have hsum : Summable (‖(· * x)^[·] x‖) :=
      .of_nonneg_of_le (by intro; positivity) (norm_iterate_mul_le x) <| by
        simpa [pow_succ] using (summable_geometric_of_lt_one (norm_nonneg x) h).mul_right ‖x‖
    apply HasSum.summable (a := s)
    rw [hasSum_iff_tendsto_nat_of_summable_norm hsum, ← tendsto_sub_nhds_zero_iff]
    have key (n : ℕ) :
        (∑ i ∈ range (n + 1), (· * x)^[i] x) - s = x * ((∑ i ∈ range n, (· * x)^[i] x) - s) := by
      rw [sum_range_succ', mul_sub, hxy, mul_sum]
      simp only [iterate_mul_succ', iterate_zero_apply, sub_sub_eq_add_sub]
    suffices ∀ n : ℕ, ‖(∑ i ∈ range n, (· * x)^[i] x) - s‖ ≤ ‖x‖ ^ n * ‖s‖ from
      squeeze_zero_norm this <| by
        simpa using (tendsto_pow_atTop_nhds_zero_of_lt_one (norm_nonneg x) h).mul_const ‖s‖
    intro n
    induction n with
    | zero => simp
    | succ n ih =>
      rw [key n, pow_succ, mul_comm (‖x‖ ^ n), mul_assoc]
      exact (norm_mul_le _ _).trans (by gcongr)

/-- A non-unital normed ring `R` has summable geometric series if and only if every element of
in the open unit ball is quasiregular. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/Normed/Variant281b0bb77fdc58f9c98d50cc626303bf30d7302c48d3ae8522d071ad07d40480.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/Normed/Variant281b0bb77fdc58f9c98d50cc626303bf30d7302c48d3ae8522d071ad07d40480.lean#L331).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b033d8917bbd2c274f2bb55e6b07c46c9204db5b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
