# leftSum_error

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:7e9e776c-e3e0-3509-e3a0-0de888bbc650",
  "kind": "theorem",
  "lexical_name": "leftSum_error",
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
  "slug": "leftsum-error--59bcdfec118d487686ea124b",
  "source": {
    "blob": "34afcf9d49fd8d20e0defcbd73953708d44fe06a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 134,
    "line": 111,
    "path": "GRWTSK/Analysis/Complex/IntervalMellinQuadrature.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:59bcdfec118d487686ea124ba0068801b64deef44abc61731ebef7c05bdb0005",
  "verification": {
    "reference": "docs/verification/Analysis/ComplexAnalysis/IntervalMellinQuadrature.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7e9e776c-e3e0-3509-e3a0-0de888bbc650`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 111–134.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem leftSum_error (x : ℕ → ℝ) (N : ℕ) (hx : Monotone x)
    (ha : 1 < x 0) {β : ℝ} {z : ℂ} (hz : z.re ≤ β) :
    ‖kernel (x 0) (x N) z - leftSum x N z‖ ≤ partitionError x N β z := by
  calc
    _ = ‖∑ i ∈ Finset.range N,
        (kernel (x i) (x (i + 1)) z - (x (i + 1) - x i) • density z (x i))‖ := by
      rw [kernel_eq_partition x N hx ha z, leftSum, Finset.sum_sub_distrib]
    _ ≤ ∑ i ∈ Finset.range N,
        ‖kernel (x i) (x (i + 1)) z - (x (i + 1) - x i) • density z (x i)‖ :=
      norm_sum_le _ _
    _ ≤ ∑ i ∈ Finset.range N,
        spatialSlopeBound (x 0) (x N) β z * (x (i + 1) - x i) ^ 2 / 2 := by
      apply Finset.sum_le_sum
      intro i hi
      exact left_cell_error ha (hx (Nat.zero_le i)) (hx (Nat.le_succ i))
        (hx (Nat.succ_le_of_lt (Finset.mem_range.mp hi))) hz
    _ = _ := by
      simp only [partitionError, Finset.mul_sum]
      apply Finset.sum_congr rfl
      intro i _
      ring

/-- Node-value enclosures do not replace discretization error. Positive cell lengths
are retained, so signed weights cannot cancel the rounding allowance. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/ComplexAnalysis/IntervalMellinQuadrature.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/Complex/IntervalMellinQuadrature.lean#L111).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `34afcf9d49fd8d20e0defcbd73953708d44fe06a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
