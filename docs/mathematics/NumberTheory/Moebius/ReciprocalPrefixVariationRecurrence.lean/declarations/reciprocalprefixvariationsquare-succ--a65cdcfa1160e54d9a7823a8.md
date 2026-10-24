# reciprocalPrefixVariationSquare_succ

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5f1a1d32-de45-16cf-f0a1-124cc6cc4c95",
  "kind": "theorem",
  "lexical_name": "reciprocalPrefixVariationSquare_succ",
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
  "slug": "reciprocalprefixvariationsquare-succ--a65cdcfa1160e54d9a7823a8",
  "source": {
    "blob": "9fee17d5e741fa828b16c265d8ae4d677eb6ebad",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 87,
    "line": 43,
    "path": "GRWTSK/NumberTheory/Moebius/ReciprocalPrefixVariationRecurrence.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a65cdcfa1160e54d9a7823a8924bfa7e1b3b0a32640b62abab4ddef4a2c36019",
  "verification": {
    "reference": "docs/verification/NumberTheory/Moebius/ReciprocalPrefixVariationRecurrence.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5f1a1d32-de45-16cf-f0a1-124cc6cc4c95`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 43–87.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem reciprocalPrefixVariationSquare_succ (n : ℕ) :
    reciprocalPrefixVariationSquare (n + 1) =
      reciprocalPrefixVariationSquare n +
        2 * (moebiusReal (n + 1) / (n + 1 : ℕ)) * pickupMertensPrefix n +
        moebiusReal (n + 1) ^ 2 / (n + 1 : ℕ) := by
  let a : ℝ := moebiusReal (n + 1) / (n + 1 : ℕ)
  have hprefix : pickupReciprocalPrefix (n + 1) =
      pickupReciprocalPrefix n + a := pickupReciprocalPrefix_succ n
  have hsum :
      (∑ k ∈ Finset.range n,
          (pickupReciprocalPrefix k - (pickupReciprocalPrefix n + a)) ^ 2) =
        (∑ k ∈ Finset.range n,
          (pickupReciprocalPrefix k - pickupReciprocalPrefix n) ^ 2) -
        2 * a * (∑ k ∈ Finset.range n,
          (pickupReciprocalPrefix k - pickupReciprocalPrefix n)) +
        (n : ℝ) * a ^ 2 := by
    calc
      _ = ∑ k ∈ Finset.range n,
          ((pickupReciprocalPrefix k - pickupReciprocalPrefix n) ^ 2 -
            2 * a * (pickupReciprocalPrefix k - pickupReciprocalPrefix n) +
            a ^ 2) := by
              apply Finset.sum_congr rfl
              intro k _hk
              ring
      _ = _ := by
        rw [Finset.sum_add_distrib, Finset.sum_sub_distrib, ← Finset.mul_sum]
        simp
  have hhistory :
      (∑ k ∈ Finset.range n,
        (pickupReciprocalPrefix k - pickupReciprocalPrefix n)) =
        -pickupMertensPrefix n := by
    rw [pickupMertensPrefix_eq_reciprocalPartialSummation,
      Finset.sum_sub_distrib]
    simp
  unfold reciprocalPrefixVariationSquare
  rw [Finset.sum_range_succ, hprefix, hsum, hhistory]
  change _ = _ + 2 * a * _ + moebiusReal (n + 1) ^ 2 / (n + 1 : ℕ)
  dsimp [a]
  have hne : (((n + 1 : ℕ) : ℝ)) ≠ 0 := by positivity
  norm_num [Nat.cast_add, Nat.cast_one]
  field_simp
  ring

/-- Telescoping the recurrence gives an exact correlation-plus-diagonal
decomposition. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Moebius/ReciprocalPrefixVariationRecurrence.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Moebius/ReciprocalPrefixVariationRecurrence.lean#L43).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9fee17d5e741fa828b16c265d8ae4d677eb6ebad` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
