# ordinaryMertens_descendant_le_geometric

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c925f232-34f4-00f6-cc11-c7a5fbffd392",
  "kind": "theorem",
  "lexical_name": "ordinaryMertens_descendant_le_geometric",
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
  "slug": "ordinarymertens-descendant-le-geometric--1bbf3d7cc3d12eca94341796",
  "source": {
    "blob": "c733396529d16479328faf49cf014faa96699ad6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 259,
    "line": 197,
    "path": "GRWTSK/NumberTheory/Moebius/MertensPointwiseToDyadicGeometric.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1bbf3d7cc3d12eca94341796032307dc8ae99f2044be3425342081095916dde5",
  "verification": {
    "reference": "docs/verification/NumberTheory/Moebius/MertensPointwiseToDyadicGeometric.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c925f232-34f4-00f6-cc11-c7a5fbffd392`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 197–259.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem ordinaryMertens_descendant_le_geometric
    {δ C : ℝ} (hδ : 0 < δ) (hC : 0 ≤ C)
    (hPoint :
      ∀ n : ℕ,
        |ordinaryMertensPrefix n| ≤
          C * Real.sqrt (n : ℝ) *
            ((n : ℝ) ^ pointwiseMertensDyadicEpsilon δ))
    {j b n t : ℕ}
    (hb : b < 2 ^ (j + 1))
    (hn : n ≤ b / 2 ^ t) :
    |ordinaryMertensPrefix n| ≤
      (C * pointwiseMertensDyadicConstantFactor δ) *
        dyadicMertensSquareRootEpsilonScale j δ *
        pointwiseMertensDyadicRatio δ ^ t := by
  by_cases hn0 : n = 0
  · subst n
    simp only [ordinaryMertensPrefix, Finset.Icc_eq_empty_of_lt (by omega : (0 : ℕ) < 1),
      Finset.sum_empty, abs_zero]
    exact mul_nonneg (mul_nonneg
      (mul_nonneg hC (by unfold pointwiseMertensDyadicConstantFactor; positivity))
      (dyadicMertensSquareRootEpsilonScale_nonneg j δ))
      (pow_nonneg (pointwiseMertensDyadicRatio_nonneg δ) t)
  · have hnpos : 0 < (n : ℝ) := by
      exact_mod_cast (Nat.pos_of_ne_zero hn0)
    have hnUpper := cast_dyadicDescendant_le_upperModel hb hn
    have hα :
        0 ≤ pointwiseMertensDyadicExponent δ :=
      (pointwiseMertensDyadicExponent_pos hδ).le
    calc
      |ordinaryMertensPrefix n| ≤
          C * Real.sqrt (n : ℝ) *
            ((n : ℝ) ^ pointwiseMertensDyadicEpsilon δ) :=
        hPoint n
      _ = C *
          ((n : ℝ) ^ pointwiseMertensDyadicExponent δ) := by
        rw [mul_assoc, sqrt_mul_rpow_eq_totalExponent hnpos]
      _ ≤ C *
          ((((2 * (((2 ^ j : ℕ) : ℝ))) /
              (((2 ^ t : ℕ) : ℝ))) ^
                pointwiseMertensDyadicExponent δ)) := by
        apply mul_le_mul_of_nonneg_left _ hC
        exact Real.rpow_le_rpow (by positivity) hnUpper hα
      _ = C *
          (pointwiseMertensDyadicConstantFactor δ *
            ((((2 ^ j : ℕ) : ℝ)) ^
              pointwiseMertensDyadicExponent δ) *
            pointwiseMertensDyadicRatio δ ^ t) := by
        rw [upperModel_rpow_eq_geometric j t hδ]
      _ ≤ C *
          (pointwiseMertensDyadicConstantFactor δ *
            dyadicMertensSquareRootEpsilonScale j δ *
            pointwiseMertensDyadicRatio δ ^ t) := by
        apply mul_le_mul_of_nonneg_left _ hC
        apply mul_le_mul_of_nonneg_right _ (pow_nonneg (pointwiseMertensDyadicRatio_nonneg δ) t)
        exact mul_le_mul_of_nonneg_left (dyadic_totalExponent_le_parentScale j hδ)
          (by unfold pointwiseMertensDyadicConstantFactor; positivity)
      _ = (C * pointwiseMertensDyadicConstantFactor δ) *
          dyadicMertensSquareRootEpsilonScale j δ *
          pointwiseMertensDyadicRatio δ ^ t := by
        ring

/-- A standard pointwise square-root-plus-epsilon Mertens envelope constructs
one uniform dyadic geometric descendant envelope. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Moebius/MertensPointwiseToDyadicGeometric.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Moebius/MertensPointwiseToDyadicGeometric.lean#L197).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c733396529d16479328faf49cf014faa96699ad6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
