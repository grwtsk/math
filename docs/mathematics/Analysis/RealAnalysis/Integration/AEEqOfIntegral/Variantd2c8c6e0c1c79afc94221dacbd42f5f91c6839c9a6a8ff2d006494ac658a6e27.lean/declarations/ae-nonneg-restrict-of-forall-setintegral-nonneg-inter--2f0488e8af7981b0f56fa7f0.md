# ae_nonneg_restrict_of_forall_setIntegral_nonneg_inter

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0ab8877b-e18d-c78a-d82b-573fc4e8106a",
  "kind": "theorem",
  "lexical_name": "ae_nonneg_restrict_of_forall_setIntegral_nonneg_inter",
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
  "slug": "ae-nonneg-restrict-of-forall-setintegral-nonneg-inter--2f0488e8af7981b0f56fa7f0",
  "source": {
    "blob": "352a809775bab07bec7285bf6aa5d2ba94917432",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 171,
    "line": 163,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/AEEqOfIntegral/Variantd2c8c6e0c1c79afc94221dacbd42f5f91c6839c9a6a8ff2d006494ac658a6e27.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2f0488e8af7981b0f56fa7f0bba0b40dd2be304425e70dca8eef25f6dc9caec3",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/AEEqOfIntegral/Variantd2c8c6e0c1c79afc94221dacbd42f5f91c6839c9a6a8ff2d006494ac658a6e27.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0ab8877b-e18d-c78a-d82b-573fc4e8106a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 163–171.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem ae_nonneg_restrict_of_forall_setIntegral_nonneg_inter {f : α → ℝ} {t : Set α}
    (hf : IntegrableOn f t μ)
    (hf_zero : ∀ s, MeasurableSet s → μ (s ∩ t) < ∞ → 0 ≤ ∫ x in s ∩ t, f x ∂μ) :
    0 ≤ᵐ[μ.restrict t] f := by
  refine ae_nonneg_of_forall_setIntegral_nonneg hf fun s hs h's => ?_
  simp_rw [Measure.restrict_restrict hs]
  apply hf_zero s hs
  rwa [Measure.restrict_apply hs] at h's

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/AEEqOfIntegral/Variantd2c8c6e0c1c79afc94221dacbd42f5f91c6839c9a6a8ff2d006494ac658a6e27.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/AEEqOfIntegral/Variantd2c8c6e0c1c79afc94221dacbd42f5f91c6839c9a6a8ff2d006494ac658a6e27.lean#L163).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `352a809775bab07bec7285bf6aa5d2ba94917432` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
