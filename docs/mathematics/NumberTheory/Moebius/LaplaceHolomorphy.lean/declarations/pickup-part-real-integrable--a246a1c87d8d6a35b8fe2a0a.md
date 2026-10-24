# pickup_part_real_integrable

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f70a5564-ba4c-a1d8-6f6f-c6b68ac0566c",
  "kind": "theorem",
  "lexical_name": "pickup_part_real_integrable",
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
  "slug": "pickup-part-real-integrable--a246a1c87d8d6a35b8fe2a0a",
  "source": {
    "blob": "e15369bb13a4de253e658c4fdd6e799c8a70dbaf",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 62,
    "line": 43,
    "path": "GRWTSK/NumberTheory/Moebius/LaplaceHolomorphy.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a246a1c87d8d6a35b8fe2a0a35b23afc033c69acfe3b62d32307025b2b140709",
  "verification": {
    "reference": "docs/verification/NumberTheory/Moebius/LaplaceHolomorphy.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f70a5564-ba4c-a1d8-6f6f-c6b68ac0566c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 43–62.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem pickup_part_real_integrable (hW : Continuous wholePickup)
    (hconv : ∀ σ : ℝ, 0 < σ →
      IntegrableOn (fun u ↦ Real.exp (-σ * u) * wholePickup u) (Ioi 0))
    {ε σ : ℝ} (hε : |ε| ≤ 1) (hσ : 0 < σ) :
    Integrable (fun u ↦ Real.exp (-σ * u)) (pickupPartMeasure ε) := by
  apply (integrable_withDensity_iff_integrable_smul
    (pickupPartDensity_continuous hW ε).measurable).mpr
  apply (hconv σ hσ).norm.mono'
  · exact ((NNReal.continuous_coe.comp (pickupPartDensity_continuous hW ε)).mul
      (Real.continuous_exp.comp (continuous_const.mul continuous_id))).aestronglyMeasurable
  · apply Eventually.of_forall
    intro u
    simp only [NNReal.smul_def, smul_eq_mul, norm_mul, Real.norm_eq_abs,
      abs_of_pos (Real.exp_pos _), abs_of_nonneg (NNReal.coe_nonneg _)]
    have hp : (pickupPartDensity ε u : ℝ) ≤ |wholePickup u| := by
      exact (Real.coe_toNNReal_le _).trans (by
        rw [abs_mul]
        exact mul_le_of_le_one_left (abs_nonneg _) hε)
    nlinarith [Real.exp_pos (-σ * u)]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Moebius/LaplaceHolomorphy.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Moebius/LaplaceHolomorphy.lean#L43).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e15369bb13a4de253e658c4fdd6e799c8a70dbaf` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
