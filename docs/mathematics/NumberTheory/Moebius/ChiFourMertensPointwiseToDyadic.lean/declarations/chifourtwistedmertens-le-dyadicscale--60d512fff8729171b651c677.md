# chiFourTwistedMertens_le_dyadicScale

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e48f607f-baa4-6827-5949-7dcb4c954fe4",
  "kind": "theorem",
  "lexical_name": "chiFourTwistedMertens_le_dyadicScale",
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
  "slug": "chifourtwistedmertens-le-dyadicscale--60d512fff8729171b651c677",
  "source": {
    "blob": "c24091ce15da2b587d9a7cb2343fdc8e9da8fcad",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 119,
    "line": 59,
    "path": "GRWTSK/NumberTheory/Moebius/ChiFourMertensPointwiseToDyadic.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:60d512fff8729171b651c677e8ca1b8bbdfb7ca88350c0819c0f0e2421e2a38d",
  "verification": {
    "reference": "docs/verification/NumberTheory/Moebius/ChiFourMertensPointwiseToDyadic.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e48f607f-baa4-6827-5949-7dcb4c954fe4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 59–119.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem chiFourTwistedMertens_le_dyadicScale
    {δ C : ℝ}
    (hδ : 0 < δ)
    (hC : 0 ≤ C)
    (hPoint :
      ∀ n : ℕ,
        ‖chiFourTwistedMertensPrefix n‖ ≤
          C * Real.sqrt (n : ℝ) *
            ((n : ℝ) ^ pointwiseMertensDyadicEpsilon δ))
    {j b : ℕ}
    (hb : b ∈ Finset.Ico (2 ^ j) (2 ^ (j + 1))) :
    ‖chiFourTwistedMertensPrefix b‖ ≤
      (C * pointwiseMertensDyadicConstantFactor δ) *
        dyadicMertensSquareRootEpsilonScale j δ := by
  have hbUpper : b < 2 ^ (j + 1) :=
    (Finset.mem_Ico.mp hb).2
  have hbpos : 0 < (b : ℝ) := by
    have hbLower := (Finset.mem_Ico.mp hb).1
    exact_mod_cast (lt_of_lt_of_le (by positivity : 0 < 2 ^ j) hbLower)
  have hUpper :
      (b : ℝ) ≤ 2 * (((2 ^ j : ℕ) : ℝ)) := by
    simpa using
      (cast_dyadicDescendant_le_upperModel
        (j := j) (b := b) (n := b) (t := 0)
        hbUpper (by simp))
  have hα :
      0 ≤ pointwiseMertensDyadicExponent δ :=
    (pointwiseMertensDyadicExponent_pos hδ).le
  calc
    ‖chiFourTwistedMertensPrefix b‖ ≤
        C * Real.sqrt (b : ℝ) *
          ((b : ℝ) ^ pointwiseMertensDyadicEpsilon δ) :=
      hPoint b
    _ = C * ((b : ℝ) ^ pointwiseMertensDyadicExponent δ) := by
      rw [mul_assoc, sqrt_mul_rpow_eq_totalExponent hbpos]
    _ ≤ C *
        ((2 * (((2 ^ j : ℕ) : ℝ))) ^
          pointwiseMertensDyadicExponent δ) := by
      apply mul_le_mul_of_nonneg_left _ hC
      exact Real.rpow_le_rpow (by positivity) hUpper hα
    _ = C *
        (pointwiseMertensDyadicConstantFactor δ *
          ((((2 ^ j : ℕ) : ℝ)) ^
            pointwiseMertensDyadicExponent δ)) := by
      have hgeom :=
        upperModel_rpow_eq_geometric
          j 0 hδ
      simp only [pow_zero, mul_one, Nat.cast_one, div_one] at hgeom
      rw [hgeom]
    _ ≤ C *
        (pointwiseMertensDyadicConstantFactor δ *
          dyadicMertensSquareRootEpsilonScale j δ) := by
      apply mul_le_mul_of_nonneg_left _ hC
      exact mul_le_mul_of_nonneg_left (dyadic_totalExponent_le_parentScale j hδ)
        (by unfold pointwiseMertensDyadicConstantFactor; positivity)
    _ = (C * pointwiseMertensDyadicConstantFactor δ) *
        dyadicMertensSquareRootEpsilonScale j δ := by
      ring

/-- The pointwise `chi_4` square-root-plus-epsilon envelope supplies the
existing dyadic `chi_4` square-root-energy proposition. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Moebius/ChiFourMertensPointwiseToDyadic.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Moebius/ChiFourMertensPointwiseToDyadic.lean#L59).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c24091ce15da2b587d9a7cb2343fdc8e9da8fcad` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
