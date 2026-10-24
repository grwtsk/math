# weightedMertensDyadicPairDiagonal_le_two

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a5a0f6ab-a8b3-f22c-41dc-6da6044093df",
  "kind": "theorem",
  "lexical_name": "weightedMertensDyadicPairDiagonal_le_two",
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
  "slug": "weightedmertensdyadicpairdiagonal-le-two--7017a7936a745839d728a1cb",
  "source": {
    "blob": "d5a566b331cac8a1b8d193f0ad39cde081191605",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 402,
    "line": 374,
    "path": "GRWTSK/NumberTheory/Moebius/DyadicMertensPairKernel.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7017a7936a745839d728a1cbfaefa5fb7e32f716a7918d5cbf1a6519506650cc",
  "verification": {
    "reference": "docs/verification/NumberTheory/Moebius/DyadicMertensPairKernel.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a5a0f6ab-a8b3-f22c-41dc-6da6044093df`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 374–402.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem weightedMertensDyadicPairDiagonal_le_two (j : ℕ) :
    weightedMertensDyadicPairDiagonal j ≤ 2 := by
  calc
    weightedMertensDyadicPairDiagonal j ≤
        ∑ _a ∈ Finset.Icc 1 (2 ^ (j + 1)),
          (((2 ^ j : ℕ) : ℝ))⁻¹ := by
      unfold weightedMertensDyadicPairDiagonal
      apply Finset.sum_le_sum
      intro a ha
      calc
        moebiusReal a ^ 2 * weightedMertensPairKernel j a a ≤
            1 * weightedMertensPairKernel j a a :=
          mul_le_mul_of_nonneg_right (moebiusReal_sq_le_one a)
            (weightedMertensPairKernel_nonneg j a a)
        _ ≤ 1 * (((2 ^ j : ℕ) : ℝ))⁻¹ :=
          mul_le_mul_of_nonneg_left
            (weightedMertensPairKernel_le_inv_left j a a) (by norm_num)
        _ = (((2 ^ j : ℕ) : ℝ))⁻¹ := one_mul _
    _ = (((2 ^ (j + 1) : ℕ) : ℝ)) *
          (((2 ^ j : ℕ) : ℝ))⁻¹ := by
      simp [Finset.card_Icc]
    _ = 2 := by
      rw [Nat.pow_succ]
      push_cast
      field_simp [show (((2 ^ j : ℕ) : ℝ)) ≠ 0 by positivity]
      ring

/-- The remaining source-specific arithmetic supplier: an upper bound on the
complete ordered signed off-diagonal at every subpolynomial exponent. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Moebius/DyadicMertensPairKernel.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Moebius/DyadicMertensPairKernel.lean#L374).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d5a566b331cac8a1b8d193f0ad39cde081191605` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
