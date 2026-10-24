# abs_weightedMertensDyadicShiftPacket_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f6967b15-fc0b-0662-c506-f5fb166d43e9",
  "kind": "theorem",
  "lexical_name": "abs_weightedMertensDyadicShiftPacket_le",
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
  "slug": "abs-weightedmertensdyadicshiftpacket-le--d3d157150d77d37f6eb23e9e",
  "source": {
    "blob": "e5fd3ccece0c98db8554674b457d37becd2870af",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 302,
    "line": 265,
    "path": "GRWTSK/NumberTheory/Moebius/DyadicUniformMertensTwoPointPrefix.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d3d157150d77d37f6eb23e9ed56edf5c9b10b8b0ed9fbaed362a549300d93053",
  "verification": {
    "reference": "docs/verification/NumberTheory/Moebius/DyadicUniformMertensTwoPointPrefix.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f6967b15-fc0b-0662-c506-f5fb166d43e9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 265–302.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem abs_weightedMertensDyadicShiftPacket_le
    {j : ℕ} {U : ℝ}
    (henv : DyadicMertensTwoPointEnvelope j U) :
    |weightedMertensDyadicShiftPacket j| ≤ 2 * U := by
  let Y : ℕ := 2 ^ (j + 1)
  have hY : 1 ≤ Y := Nat.one_le_pow (j + 1) 2 (by norm_num)
  have hcard : (Finset.Ico 1 Y).card = Y - 1 := by
    rw [Nat.card_Ico]
  unfold weightedMertensDyadicShiftPacket
  rw [show 2 ^ (j + 1) = Y by rfl]
  calc
    |∑ h ∈ Finset.Ico 1 Y,
        weightedMertensDyadicShiftContribution j h| ≤
      ∑ h ∈ Finset.Ico 1 Y,
        |weightedMertensDyadicShiftContribution j h| :=
      Finset.abs_sum_le_sum_abs _ _
    _ ≤ ∑ _h ∈ Finset.Ico 1 Y,
        2 * U * (Y : ℝ)⁻¹ := by
      apply Finset.sum_le_sum
      intro h hh
      exact abs_weightedMertensDyadicShiftContribution_le
        (Finset.mem_Ico.mp hh).1 (Finset.mem_Ico.mp hh).2 henv
    _ = (((Finset.Ico 1 Y).card : ℕ) : ℝ) *
        (2 * U * (Y : ℝ)⁻¹) := by
      simp only [Finset.sum_const, nsmul_eq_mul]
    _ = (((Y - 1 : ℕ) : ℝ)) *
        (2 * U * (Y : ℝ)⁻¹) := by rw [hcard]
    _ ≤ (Y : ℝ) * (2 * U * (Y : ℝ)⁻¹) := by
      apply mul_le_mul_of_nonneg_right
      · exact_mod_cast Nat.sub_le Y 1
      · exact mul_nonneg
          (mul_nonneg (by norm_num) henv.1)
          (inv_nonneg.mpr (Nat.cast_nonneg Y))
    _ = 2 * U := by
      field_simp [show (Y : ℝ) ≠ 0 by positivity]

/-- The stronger uniform finite Chowla premise supplies the exact packet
criterion. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Moebius/DyadicUniformMertensTwoPointPrefix.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Moebius/DyadicUniformMertensTwoPointPrefix.lean#L265).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e5fd3ccece0c98db8554674b457d37becd2870af` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
