# Integrable.ae_eq_of_forall_setIntegral_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:6cac2cf9-939d-0253-6b00-1288a4779597",
  "kind": "theorem",
  "lexical_name": "Integrable.ae_eq_of_forall_setIntegral_eq",
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
  "slug": "integrable-ae-eq-of-forall-setintegral-eq--eda65d7d11c4129843422110",
  "source": {
    "blob": "352a809775bab07bec7285bf6aa5d2ba94917432",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 389,
    "line": 375,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/AEEqOfIntegral/Variantd2c8c6e0c1c79afc94221dacbd42f5f91c6839c9a6a8ff2d006494ac658a6e27.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:eda65d7d11c4129843422110c2553490aecb60144102e7ba791055bd95bc7a09",
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

Occurrence: `result:6cac2cf9-939d-0253-6b00-1288a4779597`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 375–389.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Integrable.ae_eq_of_forall_setIntegral_eq (f g : α → E) (hf : Integrable f μ)
    (hg : Integrable g μ)
    (hfg : ∀ s : Set α, MeasurableSet s → μ s < ∞ → ∫ x in s, f x ∂μ = ∫ x in s, g x ∂μ) :
    f =ᵐ[μ] g := by
  rw [← sub_ae_eq_zero]
  have hfg' : ∀ s : Set α, MeasurableSet s → μ s < ∞ → (∫ x in s, (f - g) x ∂μ) = 0 := by
    intro s hs hμs
    rw [integral_sub' hf.integrableOn hg.integrableOn]
    exact sub_eq_zero.mpr (hfg s hs hμs)
  exact Integrable.ae_eq_zero_of_forall_setIntegral_eq_zero (hf.sub hg) hfg'

variable {β : Type*} [TopologicalSpace β] [MeasurableSpace β] [BorelSpace β]

/-- If an integrable function has zero integral on all closed sets, then it is zero
almost everywhere. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/AEEqOfIntegral/Variantd2c8c6e0c1c79afc94221dacbd42f5f91c6839c9a6a8ff2d006494ac658a6e27.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/AEEqOfIntegral/Variantd2c8c6e0c1c79afc94221dacbd42f5f91c6839c9a6a8ff2d006494ac658a6e27.lean#L375).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `352a809775bab07bec7285bf6aa5d2ba94917432` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
