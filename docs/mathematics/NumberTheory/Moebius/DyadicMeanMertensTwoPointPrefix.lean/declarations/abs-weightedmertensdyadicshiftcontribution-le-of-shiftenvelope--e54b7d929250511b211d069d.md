# abs_weightedMertensDyadicShiftContribution_le_of_shiftEnvelope

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:db61ff49-abe7-98ab-0ad1-bce236692a72",
  "kind": "theorem",
  "lexical_name": "abs_weightedMertensDyadicShiftContribution_le_of_shiftEnvelope",
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
  "slug": "abs-weightedmertensdyadicshiftcontribution-le-of-shiftenvelope--e54b7d929250511b211d069d",
  "source": {
    "blob": "f8e744cbdb96b5038bb19c69ea1bfc2ab8e1fc53",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 196,
    "line": 147,
    "path": "GRWTSK/NumberTheory/Moebius/DyadicMeanMertensTwoPointPrefix.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e54b7d929250511b211d069d961d354e6cbe1c6ea8f7d507d0aa5b3d96750ca5",
  "verification": {
    "reference": "docs/verification/NumberTheory/Moebius/DyadicMeanMertensTwoPointPrefix.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:db61ff49-abe7-98ab-0ad1-bce236692a72`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 147–196.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem abs_weightedMertensDyadicShiftContribution_le_of_shiftEnvelope
    {j h : ℕ} {U : ℝ}
    (hh : 1 ≤ h) (hhY : h < 2 ^ (j + 1))
    (henv : MertensTwoPointShiftEnvelope j h U) :
    |weightedMertensDyadicShiftContribution j h| ≤
      2 * U * (((2 ^ (j + 1) : ℕ) : ℝ))⁻¹ := by
  let Y : ℕ := 2 ^ (j + 1)
  let N : ℕ := Y - h - 1
  let x : ℕ → ℝ := fun a =>
    moebiusReal (a + 1) * moebiusReal (a + 1 + h)
  let q : ℕ → ℝ := fun a =>
    dyadicMertensShiftWeight j (a + 1 + h)
  have hprefix : ∀ n : ℕ, n ≤ N →
      |∑ a ∈ Finset.range n, x a| ≤ U := by
    intro n hn
    simpa [mertensTwoPointPrefix, x, N, Y] using henv.2 n hn
  have hdrop : ∀ t : ℕ, t < N → 0 ≤ q t - q (t + 1) := by
    intro t ht
    dsimp [q]
    have hs := dyadicMertensShiftWeight_step_antitone
      (j := j) (b := t + 1 + h)
    simpa only [Nat.add_assoc, Nat.add_comm, Nat.add_left_comm] using sub_nonneg.mpr hs
  have hterminal : q N = 0 := by
    have hindex : N + 1 + h = Y := by
      dsimp [N, Y]
      omega
    dsimp [q]
    rw [hindex, show Y = 2 ^ (j + 1) by rfl,
      dyadicMertensShiftWeight_at_right]
  have hq0 : q 0 ≤ (((2 ^ (j + 1) : ℕ) : ℝ))⁻¹ := by
    dsimp [q]
    apply dyadicMertensShiftWeight_le_right_inv
    omega
  have hab := abs_weighted_sum_le_of_shift_prefix_bound
    x q N henv.1 hprefix hdrop hterminal
  rw [weightedMertensDyadicShiftContribution_eq_range hh hhY]
  change |2 * ∑ a ∈ Finset.range N, x a * q a| ≤
    2 * U * (((2 ^ (j + 1) : ℕ) : ℝ))⁻¹
  simp only [abs_mul, abs_of_pos (by norm_num : (0 : ℝ) < 2)]
  calc
    2 * |∑ a ∈ Finset.range N, x a * q a| ≤
        2 * (U * q 0) :=
      mul_le_mul_of_nonneg_left hab (by norm_num)
    _ ≤ 2 * (U * (((2 ^ (j + 1) : ℕ) : ℝ))⁻¹) := by
      apply mul_le_mul_of_nonneg_left
      · exact mul_le_mul_of_nonneg_left hq0 henv.1
      · norm_num
    _ = 2 * U * (((2 ^ (j + 1) : ℕ) : ℝ))⁻¹ := by ring

/-- The normalized mean of shift-wise envelopes pays the complete packet. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Moebius/DyadicMeanMertensTwoPointPrefix.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Moebius/DyadicMeanMertensTwoPointPrefix.lean#L147).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f8e744cbdb96b5038bb19c69ea1bfc2ab8e1fc53` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
