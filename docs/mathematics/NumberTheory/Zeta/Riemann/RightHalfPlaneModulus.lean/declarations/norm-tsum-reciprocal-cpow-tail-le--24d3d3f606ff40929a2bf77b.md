# norm_tsum_reciprocal_cpow_tail_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:525dadfd-43a0-2e19-7075-e15c232fbdd3",
  "kind": "theorem",
  "lexical_name": "norm_tsum_reciprocal_cpow_tail_le",
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
  "slug": "norm-tsum-reciprocal-cpow-tail-le--24d3d3f606ff40929a2bf77b",
  "source": {
    "blob": "b642c3ecd1f44223527afc00b57aec3324b06fc9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 61,
    "line": 42,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/RightHalfPlaneModulus.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:24d3d3f606ff40929a2bf77b7aa17802fb2e112954e60364c0da55580520595e",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/RightHalfPlaneModulus.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:525dadfd-43a0-2e19-7075-e15c232fbdd3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 42–61.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem norm_tsum_reciprocal_cpow_tail_le (s : ℂ) (hs : 2 ≤ s.re)
    (q : ℕ) (hq : 2 ≤ q) :
    ‖∑' k : ℕ, 1 / ((k : ℂ) + (q : ℂ)) ^ s‖ ≤ 1 / ((q : ℝ) - 1) := by
  have hsum := summable_shifted_reciprocal_cpow s (by linarith) q
  have hqR : (2 : ℝ) ≤ q := by exact_mod_cast hq
  apply le_of_tendsto hsum.hasSum.tendsto_sum_nat.norm
  apply Eventually.of_forall
  intro N
  calc
    _ ≤ ∑ k ∈ Finset.range N, ‖1 / ((k : ℂ) + (q : ℂ)) ^ s‖ := norm_sum_le _ _
    _ ≤ ∑ k ∈ Finset.range N, 1 / ((q : ℝ) + (k : ℝ)) ^ 2 := by
      apply Finset.sum_le_sum
      intro k hk
      have ht : (1 : ℝ) ≤ (q : ℝ) + (k : ℝ) := by
        linarith [Nat.cast_nonneg (α := ℝ) k]
      simpa only [Complex.ofReal_add, Complex.ofReal_natCast, add_comm] using
        norm_reciprocal_cpow_le_square ((q : ℝ) + (k : ℝ)) ht s hs
    _ ≤ _ := finite_square_tail_le_reciprocal (q : ℝ) (by linarith) N

/-- The leading term one and the n=2 term are both retained before estimating. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/RightHalfPlaneModulus.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/RightHalfPlaneModulus.lean#L42).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b642c3ecd1f44223527afc00b57aec3324b06fc9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
