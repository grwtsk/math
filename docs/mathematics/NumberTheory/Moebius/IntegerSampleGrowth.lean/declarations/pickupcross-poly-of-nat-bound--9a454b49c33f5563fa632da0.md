# pickupCross_poly_of_nat_bound

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:4ea5d225-4e5a-b90e-8369-f6cf55df7bcb",
  "kind": "theorem",
  "lexical_name": "pickupCross_poly_of_nat_bound",
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
  "slug": "pickupcross-poly-of-nat-bound--9a454b49c33f5563fa632da0",
  "source": {
    "blob": "9c8a93db12ec865d297703ba36ef37743e1ef4f1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 93,
    "line": 67,
    "path": "GRWTSK/NumberTheory/Moebius/IntegerSampleGrowth.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9a454b49c33f5563fa632da03c4b97ab8af7b49a1ec6e643bc2555c452fbb7de",
  "verification": {
    "reference": "docs/verification/NumberTheory/Moebius/IntegerSampleGrowth.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4ea5d225-4e5a-b90e-8369-f6cf55df7bcb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 67–93.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem pickupCross_poly_of_nat_bound {C r : ℝ} (hC : 0 ≤ C) (hr : 0 ≤ r)
    (hb : ∀ n : ℕ, pickupCross n ≤ C * (1 + (n : ℝ)) ^ r) :
    ∀ T : ℝ, 0 ≤ T →
      pickupCross T ≤ (C * (2 : ℝ) ^ r + 2) * (1 + T) ^ max r 2 := by
  intro T hT
  have hc : 1 + (⌈T⌉₊ : ℝ) ≤ 2 * (1 + T) := by
    have hn := (Nat.ceil_lt_add_one hT).le
    linarith
  have hp : (1 + (⌈T⌉₊ : ℝ)) ^ r ≤ (2 : ℝ) ^ r * (1 + T) ^ r := by
    simpa only [Real.mul_rpow (by norm_num : (0 : ℝ) ≤ 2) (by linarith : (0 : ℝ) ≤ 1 + T)] using
      Real.rpow_le_rpow (by positivity : (0 : ℝ) ≤ 1 + (⌈T⌉₊ : ℝ)) hc hr
  have hbase : 1 ≤ 1 + T := by linarith
  have hpr := Real.rpow_le_rpow_of_exponent_le hbase (le_max_left r (2 : ℝ))
  have hp2 := Real.rpow_le_rpow_of_exponent_le hbase (le_max_right r (2 : ℝ))
  rw [Real.rpow_two] at hp2
  calc
    pickupCross T ≤ pickupCross ⌈T⌉₊ + 2 * (1 + T) ^ 2 :=
      pickupCross_le_next_sample hT
    _ ≤ C * ((2 : ℝ) ^ r * (1 + T) ^ r) + 2 * (1 + T) ^ 2 :=
      add_le_add ((hb _).trans (mul_le_mul_of_nonneg_left hp hC)) le_rfl
    _ ≤ (C * (2 : ℝ) ^ r) * (1 + T) ^ max r 2 + 2 * (1 + T) ^ max r 2 := by
      apply add_le_add
      · simpa only [mul_assoc] using
          mul_le_mul_of_nonneg_left hpr (by positivity : 0 ≤ C * (2 : ℝ) ^ r)
      · exact mul_le_mul_of_nonneg_left hp2 (by norm_num)
    _ = _ := by ring

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Moebius/IntegerSampleGrowth.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Moebius/IntegerSampleGrowth.lean#L67).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9c8a93db12ec865d297703ba36ef37743e1ef4f1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
