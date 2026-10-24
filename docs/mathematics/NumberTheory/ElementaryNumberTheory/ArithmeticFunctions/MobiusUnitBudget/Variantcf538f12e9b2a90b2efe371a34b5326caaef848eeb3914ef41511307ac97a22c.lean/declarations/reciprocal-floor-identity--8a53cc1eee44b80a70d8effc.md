# reciprocal_floor_identity

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "de7173e7c8b853435086ec5d0ff5c015e0911db4",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 12,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/cf/cf538f12e9b2a90b2efe371a34b5326caaef848eeb3914ef41511307ac97a22c.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:827cbf51-04c4-2fda-7e81-57f4c5ccedf6",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:a3ed0ef1-acba-7fb2-06be-e63f1be7775d",
  "kind": "theorem",
  "lexical_name": "reciprocal_floor_identity",
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
  "slug": "reciprocal-floor-identity--8a53cc1eee44b80a70d8effc",
  "source": {
    "blob": "de7173e7c8b853435086ec5d0ff5c015e0911db4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 31,
    "line": 12,
    "path": "GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/MobiusUnitBudget/Variantcf538f12e9b2a90b2efe371a34b5326caaef848eeb3914ef41511307ac97a22c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8a53cc1eee44b80a70d8effc16d04e4acd90448d0d8c8438b6615e8df5af7df2",
  "verification": {
    "reference": "docs/verification/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/MobiusUnitBudget/Variantcf538f12e9b2a90b2efe371a34b5326caaef848eeb3914ef41511307ac97a22c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a3ed0ef1-acba-7fb2-06be-e63f1be7775d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 12–31.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem reciprocal_floor_identity (X : ℕ) (hX : 1 ≤ X) :
    (X : ℝ) * mobiusReciprocalSum X = 1 +
      ∑ d ∈ Icc 1 X, (ArithmeticFunction.moebius d : ℝ) * Int.fract ((X : ℝ) / d) := by
  have hf := floor_sum_divisors X (X : ℝ)
    (fun d => (ArithmeticFunction.moebius d : ℝ)) le_rfl
  simp only [Nat.floor_natCast, CoprimeCount.sum_moebius_divisors] at hf
  simp only [sum_ite_eq', mem_Icc, le_refl, hX, and_self, if_true] at hf
  have ht : (∑ d ∈ Icc 1 X, (ArithmeticFunction.moebius d : ℝ) *
      Int.fract ((X : ℝ) / d)) =
      (X : ℝ) * mobiusReciprocalSum X -
        ∑ d ∈ Icc 1 X, (ArithmeticFunction.moebius d : ℝ) * (⌊(X : ℝ) / d⌋₊ : ℝ) := by
    rw [mobiusReciprocalSum, mul_sum, ← sum_sub_distrib]
    apply sum_congr rfl
    intro d hd
    rw [Int.fract, ← natCast_floor_eq_intCast_floor
      (div_nonneg (Nat.cast_nonneg X) (Nat.cast_nonneg d))]
    ring
  linarith

/-- Exact Möbius cancellation bounds the actual reciprocal prefix by one, for every cutoff. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/MobiusUnitBudget/Variantcf538f12e9b2a90b2efe371a34b5326caaef848eeb3914ef41511307ac97a22c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/MobiusUnitBudget/Variantcf538f12e9b2a90b2efe371a34b5326caaef848eeb3914ef41511307ac97a22c.lean#L12).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `de7173e7c8b853435086ec5d0ff5c015e0911db4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
