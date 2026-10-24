# sum_trapezoidal_integral_adjacent_intervals

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:6922b1e2-f3c8-e047-d673-4dffbfec7f4e",
  "kind": "theorem",
  "lexical_name": "sum_trapezoidal_integral_adjacent_intervals",
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
  "slug": "sum-trapezoidal-integral-adjacent-intervals--09f07c2595224be24be74d53",
  "source": {
    "blob": "adf07a042f3966614958fb73239bd0b7eac37dbb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 105,
    "line": 95,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/TrapezoidalRule/Variant71a3d4864eed75de312ed2f7e75085d520ca9c2bbc1d34ff203a5c9186202a7e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:09f07c2595224be24be74d53bb401499f76b70a5fee0cf3921541851a5b8094a",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/TrapezoidalRule/Variant71a3d4864eed75de312ed2f7e75085d520ca9c2bbc1d34ff203a5c9186202a7e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6922b1e2-f3c8-e047-d673-4dffbfec7f4e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 95–105.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sum_trapezoidal_integral_adjacent_intervals {f : ℝ → ℝ} {N : ℕ} {a h : ℝ}
    (N_nonzero : 0 < N) : ∑ i ∈ range N, trapezoidal_integral f 1 (a + i * h) (a + (i + 1) * h)
      = trapezoidal_integral f N a (a + N * h) := by
  simp_rw [trapezoidal_integral_one, add_sub_add_left_eq_sub, ← sub_mul, trapezoidal_integral,
    add_sub_cancel_left, one_mul, ← mul_sum, ← mul_div, show N * (h / N) = h by field]
  rw [sum_add_distrib, ← Nat.sub_one_add_one_eq_of_pos N_nonzero, sum_range_succ', sum_range_succ,
    add_add_add_comm, ← sum_add_distrib, add_comm, Nat.sub_one_add_one_eq_of_pos N_nonzero]
  simp_rw [Nat.cast_sub N_nonzero, Nat.cast_add, Nat.cast_one, ← two_mul, ← mul_sum]
  ring_nf

/-- A simplified version of the previous theorem, for use in proofs by induction and the like. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/TrapezoidalRule/Variant71a3d4864eed75de312ed2f7e75085d520ca9c2bbc1d34ff203a5c9186202a7e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/TrapezoidalRule/Variant71a3d4864eed75de312ed2f7e75085d520ca9c2bbc1d34ff203a5c9186202a7e.lean#L95).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `adf07a042f3966614958fb73239bd0b7eac37dbb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
