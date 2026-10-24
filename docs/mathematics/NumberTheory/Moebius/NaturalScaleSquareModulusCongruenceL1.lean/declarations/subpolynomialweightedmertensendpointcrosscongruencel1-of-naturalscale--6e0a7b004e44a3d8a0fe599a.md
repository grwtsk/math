# subpolynomialWeightedMertensEndpointCrossCongruenceL1_of_naturalScale

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e32f8daf-493b-1b10-274a-af475b8a69a5",
  "kind": "theorem",
  "lexical_name": "subpolynomialWeightedMertensEndpointCrossCongruenceL1_of_naturalScale",
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
  "slug": "subpolynomialweightedmertensendpointcrosscongruencel1-of-naturalscale--6e0a7b004e44a3d8a0fe599a",
  "source": {
    "blob": "4917db8c9c95ada18c0c14f579fc4e21a7448eff",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 187,
    "line": 136,
    "path": "GRWTSK/NumberTheory/Moebius/NaturalScaleSquareModulusCongruenceL1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6e0a7b004e44a3d8a0fe599ab1ede62d6e371f9104f87c218057294a666f991d",
  "verification": {
    "reference": "docs/verification/NumberTheory/Moebius/NaturalScaleSquareModulusCongruenceL1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e32f8daf-493b-1b10-274a-af475b8a69a5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 136–187.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem subpolynomialWeightedMertensEndpointCrossCongruenceL1_of_naturalScale
    (hNat : DyadicNaturalScaleSquareModulusCongruenceL1) :
    SubpolynomialWeightedMertensEndpointCrossCongruenceL1 := by
  intro δ hδ
  obtain ⟨C, hC, hscale⟩ := hNat δ hδ
  refine ⟨8 * C, mul_nonneg (by norm_num) hC, ?_⟩
  intro j
  let X : ℝ := ((2 ^ j : ℕ) : ℝ)
  have hXpos : 0 < X := by
    dsimp [X]
    positivity
  have hdrop :
      (∑ b ∈ Finset.Ico (2 ^ j : ℕ) (2 ^ (j + 1)),
        ((b : ℝ)⁻¹ - (((b + 1 : ℕ) : ℝ))⁻¹)) ≤ X⁻¹ := by
    simpa [X] using sum_reciprocalEndpointDrop_dyadic_le j
  unfold weightedMertensEndpointCrossCongruenceL1Majorant
  calc
    8 * ∑ b ∈ Finset.Ico (2 ^ j : ℕ) (2 ^ (j + 1)),
        ((b : ℝ)⁻¹ - (((b + 1 : ℕ) : ℝ))⁻¹) *
          mertensEndpointCrossCongruenceL1Mass b ≤
      8 * ∑ b ∈ Finset.Ico (2 ^ j : ℕ) (2 ^ (j + 1)),
        ((b : ℝ)⁻¹ - (((b + 1 : ℕ) : ℝ))⁻¹) *
          (C * X * (X ^ δ)) := by
      apply mul_le_mul_of_nonneg_left ?_ (by norm_num)
      apply Finset.sum_le_sum
      intro b hb
      have hbI := Finset.mem_Ico.mp hb
      have hbpos : 0 < b := by
        have hpow : 0 < 2 ^ j := by positivity
        omega
      exact mul_le_mul_of_nonneg_left
        (by simpa [X] using hscale j b hb)
        (reciprocalEndpointDrop_nonneg hbpos)
    _ =
      8 *
        ((∑ b ∈ Finset.Ico (2 ^ j : ℕ) (2 ^ (j + 1)),
          ((b : ℝ)⁻¹ - (((b + 1 : ℕ) : ℝ))⁻¹)) *
          (C * X * (X ^ δ))) := by
      rw [Finset.sum_mul]
    _ ≤ 8 * (X⁻¹ * (C * X * (X ^ δ))) := by
      apply mul_le_mul_of_nonneg_left ?_ (by norm_num)
      exact mul_le_mul_of_nonneg_right hdrop
        (mul_nonneg
          (mul_nonneg hC hXpos.le)
          (by positivity))
    _ = (8 * C) * (X ^ δ) := by
      field_simp
    _ = (8 * C) * (((2 ^ j : ℕ) : ℝ) ^ δ) := by
      rfl

/-- The natural-scale aggregate supplier therefore also supplies the exact
signed congruence cross-collision interface. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Moebius/NaturalScaleSquareModulusCongruenceL1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Moebius/NaturalScaleSquareModulusCongruenceL1.lean#L136).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4917db8c9c95ada18c0c14f579fc4e21a7448eff` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
