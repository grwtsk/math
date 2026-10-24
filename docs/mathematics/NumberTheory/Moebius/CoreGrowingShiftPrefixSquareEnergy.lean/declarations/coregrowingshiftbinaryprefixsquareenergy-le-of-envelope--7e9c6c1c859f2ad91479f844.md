# coreGrowingShiftBinaryPrefixSquareEnergy_le_of_envelope

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2e604705-9189-e9bc-2266-38198f4d8328",
  "kind": "theorem",
  "lexical_name": "coreGrowingShiftBinaryPrefixSquareEnergy_le_of_envelope",
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
  "slug": "coregrowingshiftbinaryprefixsquareenergy-le-of-envelope--7e9c6c1c859f2ad91479f844",
  "source": {
    "blob": "f45803f1a1068b8817771de233c80a7f0846283d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 471,
    "line": 430,
    "path": "GRWTSK/NumberTheory/Moebius/CoreGrowingShiftPrefixSquareEnergy.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7e9c6c1c859f2ad91479f844faaba1c2268de9e33fc021857fba6bf7207eb9eb",
  "verification": {
    "reference": "docs/verification/NumberTheory/Moebius/CoreGrowingShiftPrefixSquareEnergy.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2e604705-9189-e9bc-2266-38198f4d8328`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 430–471.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem coreGrowingShiftBinaryPrefixSquareEnergy_le_of_envelope
    {j : ℕ} {U : ℝ}
    (henv : CoreGrowingShiftPrefixEnvelope j U) :
    coreGrowingShiftBinaryPrefixSquareEnergy j ≤
      ((coreLongDeepDepths j).card : ℝ) *
        (((2 ^ j : ℕ) : ℝ)) * U ^ 2 := by
  unfold coreGrowingShiftBinaryPrefixSquareEnergy
    coreGrowingShiftBinaryPrefixSquareDepth
  calc
    (∑ t ∈ coreLongDeepDepths j,
      ∑ k ∈ Finset.range (harmonicShiftCount j t),
        mertensTwoPointPrefix
          (harmonicShiftLower j t + k) (t + 1) ^ 2) ≤
      ∑ _t ∈ coreLongDeepDepths j,
        (((2 ^ j : ℕ) : ℝ)) * U ^ 2 := by
      apply Finset.sum_le_sum
      intro t ht
      calc
        (∑ k ∈ Finset.range (harmonicShiftCount j t),
          mertensTwoPointPrefix
            (harmonicShiftLower j t + k) (t + 1) ^ 2) ≤
          ∑ _k ∈ Finset.range (harmonicShiftCount j t),
            U ^ 2 := by
          apply Finset.sum_le_sum
          intro k hk
          have hp := henv.2 t ht k (Finset.mem_range.mp hk)
          have habs :
              |mertensTwoPointPrefix
                (harmonicShiftLower j t + k) (t + 1)| ≤ |U| := by
            simpa [abs_of_nonneg henv.1] using hp
          exact (sq_le_sq).2 habs
        _ = (harmonicShiftCount j t : ℝ) * U ^ 2 := by simp
        _ ≤ (((2 ^ j : ℕ) : ℝ)) * U ^ 2 := by
          apply mul_le_mul_of_nonneg_right
          · exact_mod_cast harmonicShiftCount_le_leftScale j t
          · positivity
    _ = ((coreLongDeepDepths j).card : ℝ) *
        (((2 ^ j : ℕ) : ℝ)) * U ^ 2 := by
      simp [mul_assoc]

/-- The preceding uniform all-prefix source is a sufficient source for the
averaged square energy.  No converse is asserted. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Moebius/CoreGrowingShiftPrefixSquareEnergy.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Moebius/CoreGrowingShiftPrefixSquareEnergy.lean#L430).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f45803f1a1068b8817771de233c80a7f0846283d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
