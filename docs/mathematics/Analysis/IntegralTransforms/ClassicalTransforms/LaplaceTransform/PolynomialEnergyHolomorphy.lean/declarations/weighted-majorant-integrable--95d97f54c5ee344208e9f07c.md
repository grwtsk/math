# weighted_majorant_integrable

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "b13f477235c1eaaf98659cadaab90ca581a499fc",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 111,
      "path": "GRWTSK/Analysis/LaplaceTransform/PolynomialEnergyHolomorphy.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:5d48461b-be5b-9139-a9e9-b3c3669edf59",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:4c9586d8-c8ae-64c9-8649-28edf92bb5ef",
  "kind": "theorem",
  "lexical_name": "weighted_majorant_integrable",
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
  "slug": "weighted-majorant-integrable--95d97f54c5ee344208e9f07c",
  "source": {
    "blob": "b13f477235c1eaaf98659cadaab90ca581a499fc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 129,
    "line": 111,
    "path": "GRWTSK/Analysis/LaplaceTransform/PolynomialEnergyHolomorphy.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:95d97f54c5ee344208e9f07ca88bc0e1b6109206a04886b045e3a09d0a893a27",
  "verification": {
    "reference": "docs/verification/Analysis/IntegralTransforms/ClassicalTransforms/LaplaceTransform/PolynomialEnergyHolomorphy.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4c9586d8-c8ae-64c9-8649-28edf92bb5ef`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 111–129.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem weighted_majorant_integrable (w : ℝ → ℝ) (hw : Continuous w)
    {C q σ : ℝ} (hC : 0 ≤ C) (hσ : 0 < σ) (hgrowth : L2Growth w C q) :
    IntegrableOn (fun u => Real.exp (-σ * u) * (1 + w u ^ 2)) (Ioi 0) := by
  have hunit : ∀ n : ℕ, IntegrableOn (fun u => Real.exp (-σ * u) * (1 + w u ^ 2))
      (Icc (n : ℝ) ((n : ℝ) + 1)) := by
    intro n
    exact ((continuous_const.mul continuous_id).rexp.mul
      (continuous_const.add (hw.pow 2))).integrableOn_Icc
  have hs := (summable_unit_majorant hC hσ).of_nonneg_of_le
    (fun n => integral_nonneg (fun u => norm_nonneg _))
    (weighted_unit_integral_bound w hw hσ hgrowth)
  have hu := integrableOn_iUnion_of_summable_integral_norm hunit hs
  apply hu.mono_set
  intro u hu0
  refine mem_iUnion.mpr ⟨⌊u⌋₊, ?_⟩
  exact ⟨Nat.floor_le hu0.le, (Nat.lt_floor_add_one u).le⟩


/-- Positive part is used only after the signed source has been assembled. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/IntegralTransforms/ClassicalTransforms/LaplaceTransform/PolynomialEnergyHolomorphy.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/LaplaceTransform/PolynomialEnergyHolomorphy.lean#L111).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b13f477235c1eaaf98659cadaab90ca581a499fc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
