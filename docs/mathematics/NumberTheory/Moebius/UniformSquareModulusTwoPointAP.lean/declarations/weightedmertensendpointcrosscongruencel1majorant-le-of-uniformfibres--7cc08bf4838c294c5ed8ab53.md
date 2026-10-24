# weightedMertensEndpointCrossCongruenceL1Majorant_le_of_uniformFibres

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8b12a423-3559-5137-7c6b-e7a026a2efdb",
  "kind": "theorem",
  "lexical_name": "weightedMertensEndpointCrossCongruenceL1Majorant_le_of_uniformFibres",
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
  "slug": "weightedmertensendpointcrosscongruencel1majorant-le-of-uniformfibres--7cc08bf4838c294c5ed8ab53",
  "source": {
    "blob": "6be4921ccdbad5fa82182c6c553580b9bba7dbb3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 168,
    "line": 108,
    "path": "GRWTSK/NumberTheory/Moebius/UniformSquareModulusTwoPointAP.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7cc08bf4838c294c5ed8ab5348d652db4ed56401cb3864f438d5e8dd2dd8003d",
  "verification": {
    "reference": "docs/verification/NumberTheory/Moebius/UniformSquareModulusTwoPointAP.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8b12a423-3559-5137-7c6b-e7a026a2efdb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 108–168.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem weightedMertensEndpointCrossCongruenceL1Majorant_le_of_uniformFibres
    {j : ℕ} {B : ℝ} (hB : 0 ≤ B)
    (hFibre :
      ∀ b d : ℕ,
        b ∈ Finset.Ico (2 ^ j) (2 ^ (j + 1)) →
        d ∈ Finset.Ico 1 b →
        |mertensEndpointCrossCongruenceFibre b d| ≤ B) :
    weightedMertensEndpointCrossCongruenceL1Majorant j ≤ 8 * B := by
  unfold weightedMertensEndpointCrossCongruenceL1Majorant
  let X : ℕ := 2 ^ j
  let Y : ℕ := 2 ^ (j + 1)
  have hXpos : 0 < X := by
    dsimp [X]
    positivity
  have hXRpos : 0 < (X : ℝ) := by exact_mod_cast hXpos
  calc
    8 * ∑ b ∈ Finset.Ico X Y,
        ((b : ℝ)⁻¹ - (((b + 1 : ℕ) : ℝ))⁻¹) *
          mertensEndpointCrossCongruenceL1Mass b ≤
      8 * ∑ b ∈ Finset.Ico X Y,
        ((X : ℝ)⁻¹ * B) := by
          apply mul_le_mul_of_nonneg_left ?_ (by norm_num)
          apply Finset.sum_le_sum
          intro b hb
          have hb' :
              b ∈ Finset.Ico (2 ^ j) (2 ^ (j + 1)) := by
            simpa [X, Y] using hb
          have hbI := Finset.mem_Ico.mp hb'
          have hbpos : 0 < b := by omega
          have hdrop :
              0 ≤ (b : ℝ)⁻¹ - (((b + 1 : ℕ) : ℝ))⁻¹ :=
            reciprocalEndpointDrop_nonneg hbpos
          have hL1 :
              mertensEndpointCrossCongruenceL1Mass b ≤ (b : ℝ) * B :=
            mertensEndpointCrossCongruenceL1Mass_le_endpoint_mul hB
              (fun d hd => hFibre b d hb' hd)
          calc
            ((b : ℝ)⁻¹ - (((b + 1 : ℕ) : ℝ))⁻¹) *
                mertensEndpointCrossCongruenceL1Mass b ≤
              ((b : ℝ)⁻¹ - (((b + 1 : ℕ) : ℝ))⁻¹) *
                ((b : ℝ) * B) :=
                  mul_le_mul_of_nonneg_left hL1 hdrop
            _ =
              ((((b : ℝ)⁻¹ - (((b + 1 : ℕ) : ℝ))⁻¹) *
                (b : ℝ)) * B) := by ring
            _ ≤ (X : ℝ)⁻¹ * B := by
              apply mul_le_mul_of_nonneg_right ?_ hB
              simpa [X] using
                reciprocalEndpointDrop_mul_endpoint_le_dyadicLeftInv hb'
    _ = 8 * (((Finset.Ico X Y).card : ℝ) * ((X : ℝ)⁻¹ * B)) := by
      simp [nsmul_eq_mul]
    _ = 8 * B := by
      have hcard :
          (Finset.Ico X Y).card = X := by
        simpa [X, Y] using card_dyadicEndpointIco j
      rw [hcard]
      have hX0 : (X : ℝ) ≠ 0 := ne_of_gt hXRpos
      field_simp

/-- The uniform square-modulus AP supplier discharges the weighted congruence
L1 supplier. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Moebius/UniformSquareModulusTwoPointAP.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Moebius/UniformSquareModulusTwoPointAP.lean#L108).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6be4921ccdbad5fa82182c6c553580b9bba7dbb3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
