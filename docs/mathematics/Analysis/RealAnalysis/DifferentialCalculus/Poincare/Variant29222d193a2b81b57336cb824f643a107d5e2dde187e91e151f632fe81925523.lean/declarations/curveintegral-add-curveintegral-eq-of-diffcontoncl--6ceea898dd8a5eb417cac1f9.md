# curveIntegral_add_curveIntegral_eq_of_diffContOnCl

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "a87cb3a0d2a5d2dc3cc452a7319962a792d91dca",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 275,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/29/29222d193a2b81b57336cb824f643a107d5e2dde187e91e151f632fe81925523.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:8e8238a7-67e4-c34c-61c3-33ea3ea9a0b7",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:ccd52d7d-2b4e-3e71-568b-afa47f80819d",
  "kind": "theorem",
  "lexical_name": "curveIntegral_add_curveIntegral_eq_of_diffContOnCl",
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
  "slug": "curveintegral-add-curveintegral-eq-of-diffcontoncl--6ceea898dd8a5eb417cac1f9",
  "source": {
    "blob": "a87cb3a0d2a5d2dc3cc452a7319962a792d91dca",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 302,
    "line": 275,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Poincare/Variant29222d193a2b81b57336cb824f643a107d5e2dde187e91e151f632fe81925523.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6ceea898dd8a5eb417cac1f96737a5fa3059b2a0b67a670e98809a1fa2c07a97",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/Poincare/Variant29222d193a2b81b57336cb824f643a107d5e2dde187e91e151f632fe81925523.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ccd52d7d-2b4e-3e71-568b-afa47f80819d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 275–302.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem curveIntegral_add_curveIntegral_eq_of_diffContOnCl
    {ω : E → E →L[𝕜] F} (φ : (γ₁ : C(I, E)).Homotopy γ₂)
    (hφt : ∀ a ∈ Ioo 0 1, ∀ b ∈ Ioo 0 1, φ (a, b) ∈ t)
    (hω : DiffContOnCl ℝ ω t)
    (hdω_symm : ∀ x ∈ t, ∀ u ∈ tangentConeAt ℝ t x, ∀ v ∈ tangentConeAt ℝ t x,
      fderivWithin ℝ ω t x u v = fderivWithin ℝ ω t x v u)
    (hcontdiff : ContDiffOn ℝ 2
      (fun xy : ℝ × ℝ ↦ Set.IccExtend zero_le_one (φ.extend xy.1) xy.2) (Icc 0 1)) :
    ∫ᶜ x in γ₁, ω x + ∫ᶜ x in φ.evalAt 1, ω x = ∫ᶜ x in γ₂, ω x + ∫ᶜ x in φ.evalAt 0, ω x :=
  φ.curveIntegral_add_curveIntegral_eq_of_hasFDerivWithinAt
    hφt (fun t ht ↦ (hω.differentiableOn t ht).hasFDerivWithinAt) hω.continuousOn
    hdω_symm hcontdiff

end ContinuousMap.Homotopy

namespace Convex

variable [NormedSpace ℝ E] [NormedSpace ℝ F]
  {a b c : E} {s : Set E} {ω : E → E →L[𝕜] F} {dω : E → E →L[ℝ] E →L[𝕜] F}

set_option backward.defeqAttrib.useBackward true in
/-- If `ω` is a closed `1`-form on a convex set,
then `∫ᶜ x in Path.segment a b, ω x + ∫ᶜ x in Path.segment b c, ω x = ∫ᶜ x in Path.segment a c, ω x`
for all `a b c ∈ s`.

This is the key lemma used to establish that closed a `1`-form on  a convex set
has a primitive.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/Poincare/Variant29222d193a2b81b57336cb824f643a107d5e2dde187e91e151f632fe81925523.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Poincare/Variant29222d193a2b81b57336cb824f643a107d5e2dde187e91e151f632fe81925523.lean#L275).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a87cb3a0d2a5d2dc3cc452a7319962a792d91dca` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
