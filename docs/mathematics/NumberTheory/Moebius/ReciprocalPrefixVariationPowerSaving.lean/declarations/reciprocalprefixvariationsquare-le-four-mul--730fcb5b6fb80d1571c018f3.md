# reciprocalPrefixVariationSquare_le_four_mul

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e26d1003-c08b-d1bc-b68f-67c69c12da69",
  "kind": "theorem",
  "lexical_name": "reciprocalPrefixVariationSquare_le_four_mul",
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
  "slug": "reciprocalprefixvariationsquare-le-four-mul--730fcb5b6fb80d1571c018f3",
  "source": {
    "blob": "a33c8dc857f4ab2859f3830f9313611613d83604",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 56,
    "line": 33,
    "path": "GRWTSK/NumberTheory/Moebius/ReciprocalPrefixVariationPowerSaving.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:730fcb5b6fb80d1571c018f38d2af139c859c1b60bf58e3b94369637c9a0d3cf",
  "verification": {
    "reference": "docs/verification/NumberTheory/Moebius/ReciprocalPrefixVariationPowerSaving.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e26d1003-c08b-d1bc-b68f-67c69c12da69`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 33–56.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem reciprocalPrefixVariationSquare_le_four_mul (n : ℕ) :
    reciprocalPrefixVariationSquare n ≤ 4 * n := by
  unfold reciprocalPrefixVariationSquare
  calc
    (∑ k ∈ Finset.range n,
        (pickupReciprocalPrefix k - pickupReciprocalPrefix n) ^ 2) ≤
        ∑ _k ∈ Finset.range n, (4 : ℝ) := by
      apply Finset.sum_le_sum
      intro k _hk
      have habs :
          |pickupReciprocalPrefix k - pickupReciprocalPrefix n| ≤ 2 := by
        calc
          |pickupReciprocalPrefix k - pickupReciprocalPrefix n| ≤
              |pickupReciprocalPrefix k| + |pickupReciprocalPrefix n| :=
            abs_sub _ _
          _ ≤ 1 + 1 := add_le_add
            (pickupReciprocalPrefix_abs_le_one k)
            (pickupReciprocalPrefix_abs_le_one n)
          _ = 2 := by norm_num
      rw [← sq_abs]
      nlinarith [abs_nonneg (pickupReciprocalPrefix k - pickupReciprocalPrefix n)]
    _ = 4 * n := by simp [mul_comm]

/-- A positive power saving from the elementary linear variation scale. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Moebius/ReciprocalPrefixVariationPowerSaving.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Moebius/ReciprocalPrefixVariationPowerSaving.lean#L33).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a33c8dc857f4ab2859f3830f9313611613d83604` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
