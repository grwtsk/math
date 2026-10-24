# card_mul_pairEnergy_le_center_sum

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:44f342ed-13d6-3d65-5fae-1f72c905878e",
  "kind": "theorem",
  "lexical_name": "card_mul_pairEnergy_le_center_sum",
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
  "slug": "card-mul-pairenergy-le-center-sum--750c35e8077e17ef8569024a",
  "source": {
    "blob": "583fd11a240c53a599dae3f719b121d2544a8c04",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 104,
    "line": 73,
    "path": "GRWTSK/Analysis/Fourier/ZModConcentratedFrequencies.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:750c35e8077e17ef8569024a7a0c1a97b68a5c95600727adc998727c28a1a4b2",
  "verification": {
    "reference": "docs/verification/Analysis/HarmonicAnalysis/FourierAnalysis/ZModConcentratedFrequencies.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:44f342ed-13d6-3d65-5fae-1f72c905878e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 73–104.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem card_mul_pairEnergy_le_center_sum (S : Finset (ZMod p)) (hS : S.Nonempty)
    (χ center : ZMod p) :
    (S.card : ℝ) * pairEnergy S χ ≤
      4 * ∑ x ∈ S, modularDistance (χ * x - center) ^ 2 := by
  have hpoint (x y : ZMod p) : modularDistance (χ * (x - y)) ^ 2 ≤
      2 * modularDistance (χ * x - center) ^ 2 +
        2 * modularDistance (χ * y - center) ^ 2 := by
    have heq : χ * (x - y) = (χ * x - center) - (χ * y - center) := by ring
    rw [heq]
    exact modularDistance_sub_sq_le _ _
  have hsum : (∑ x ∈ S, ∑ y ∈ S, modularDistance (χ * (x - y)) ^ 2) ≤
      4 * (S.card : ℝ) * ∑ x ∈ S, modularDistance (χ * x - center) ^ 2 := by
    calc
      _ ≤ ∑ x ∈ S, ∑ y ∈ S,
          (2 * modularDistance (χ * x - center) ^ 2 +
            2 * modularDistance (χ * y - center) ^ 2) :=
        Finset.sum_le_sum fun x _ => Finset.sum_le_sum fun y _ => hpoint x y
      _ = _ := by
        simp only [Finset.sum_add_distrib, Finset.sum_const, nsmul_eq_mul]
        simp_rw [← Finset.mul_sum]
        ring
  have hc : (S.card : ℝ) ≠ 0 := by exact_mod_cast ne_of_gt hS.card_pos
  calc
    _ = (S.card : ℝ)⁻¹ * ∑ x ∈ S, ∑ y ∈ S,
        modularDistance (χ * (x - y)) ^ 2 := by unfold pairEnergy; field_simp
    _ ≤ (S.card : ℝ)⁻¹ *
        (4 * (S.card : ℝ) * ∑ x ∈ S, modularDistance (χ * x - center) ^ 2) :=
      mul_le_mul_of_nonneg_left hsum (by positivity)
    _ = _ := by field_simp

/-- The contribution inside the source radius `16 sqrt(t/m)` is at most
`256(t/m)|S|`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/HarmonicAnalysis/FourierAnalysis/ZModConcentratedFrequencies.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/Fourier/ZModConcentratedFrequencies.lean#L73).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `583fd11a240c53a599dae3f719b121d2544a8c04` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
