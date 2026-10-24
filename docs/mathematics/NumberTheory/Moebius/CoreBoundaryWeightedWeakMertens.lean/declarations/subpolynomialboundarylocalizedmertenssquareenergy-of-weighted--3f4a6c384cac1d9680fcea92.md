# subpolynomialBoundaryLocalizedMertensSquareEnergy_of_weighted

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:00a626cc-9d35-f55a-3229-2cc86bd79ce2",
  "kind": "theorem",
  "lexical_name": "subpolynomialBoundaryLocalizedMertensSquareEnergy_of_weighted",
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
  "slug": "subpolynomialboundarylocalizedmertenssquareenergy-of-weighted--3f4a6c384cac1d9680fcea92",
  "source": {
    "blob": "95ff9f421d528818a77cbdc7bb2a521169800453",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 172,
    "line": 130,
    "path": "GRWTSK/NumberTheory/Moebius/CoreBoundaryWeightedWeakMertens.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3f4a6c384cac1d9680fcea9215cd4a4acc71af82bf6e66bba11113a5d72fa00c",
  "verification": {
    "reference": "docs/verification/NumberTheory/Moebius/CoreBoundaryWeightedWeakMertens.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:00a626cc-9d35-f55a-3229-2cc86bd79ce2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 130–172.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem subpolynomialBoundaryLocalizedMertensSquareEnergy_of_weighted
    (hWeighted : DyadicWeightedWeakMertensBoundarySource) :
    SubpolynomialBoundaryLocalizedMertensSquareEnergy := by
  obtain ⟨C, hC, hWeighted⟩ := hWeighted
  intro δ hδ
  obtain ⟨A, hA, hlog⟩ :=
    nat_add_two_le_const_mul_dyadic_rpow hδ
  refine ⟨4 * C * A,
    mul_nonneg (mul_nonneg (by norm_num) hC) hA, ?_⟩
  intro j
  let X : ℝ := ((2 ^ j : ℕ) : ℝ)
  have hX : 0 ≤ X := by
    dsimp [X]
    positivity
  have hloc :=
    boundaryLocalizedMertensSquareEnergy_le_weighted j
  have hweight := hWeighted j
  have hendpoint :
      (((2 ^ (j + 1) : ℕ) : ℝ) ^ 2) =
        4 * X ^ 2 := by
    dsimp [X]
    rw [Nat.pow_succ]
    norm_num
    ring
  rw [hendpoint] at hloc
  calc
    boundaryLocalizedMertensSquareEnergy j ≤
      4 * X ^ 2 *
        boundaryLocalizedWeightedMertensSquareEnergy j := hloc
    _ ≤ 4 * X ^ 2 * (C * (j + 2 : ℝ)) := by
      exact mul_le_mul_of_nonneg_left hweight
        (mul_nonneg (by norm_num) (sq_nonneg X))
    _ ≤ 4 * X ^ 2 *
        (C * (A * (X ^ δ))) := by
      apply mul_le_mul_of_nonneg_left
      · exact mul_le_mul_of_nonneg_left (hlog j) hC
      · positivity
    _ = (4 * C * A) * X ^ 2 * X ^ δ := by ring
    _ = (4 * C * A) *
        (((2 ^ j : ℕ) : ℝ) ^ 2) *
          (((2 ^ j : ℕ) : ℝ) ^ δ) := by rfl

/-- Actual discrete weighted-to-localized adapter. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Moebius/CoreBoundaryWeightedWeakMertens.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Moebius/CoreBoundaryWeightedWeakMertens.lean#L130).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `95ff9f421d528818a77cbdc7bb2a521169800453` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
