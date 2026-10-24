# zeroFree_rightHalfPlane_of_mellinHolomorphic

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d0b2b52f-9717-0f8d-a298-05a19caefbc7",
  "kind": "theorem",
  "lexical_name": "zeroFree_rightHalfPlane_of_mellinHolomorphic",
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
  "slug": "zerofree-righthalfplane-of-mellinholomorphic--2d1449430da556183bb51037",
  "source": {
    "blob": "e502a9084252a158def2399fc084d6ac35834148",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 727,
    "line": 677,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/MellinLogDerivative/Variantfb4c4ae4d7dbb0ab4698a5228ddf930189d0203e93c3901616d773a3a6f5ee3f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2d1449430da556183bb51037e4e98b441f28594a45fbb9350c555e8944b7bd65",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/MellinLogDerivative/Variantfb4c4ae4d7dbb0ab4698a5228ddf930189d0203e93c3901616d773a3a6f5ee3f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d0b2b52f-9717-0f8d-a298-05a19caefbc7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 677–727.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem zeroFree_rightHalfPlane_of_mellinHolomorphic
    {q : ℕ} [NeZero q]
    {χ : DirichletCharacter ℂ q}
    (_hPrimitive : DirichletCharacter.IsPrimitive χ)
    (square : MellinLogDerivativeSquare χ)
    (hBound : CenteredTwistedPsiHalfPlusEpsilon χ) :
    ∀ s : ℂ,
      (1 / 2 : ℝ) < s.re →
      s.re < 1 →
      DirichletCharacter.LFunction χ s ≠ 0 := by
  have hCoefficient : DifferentiableOn ℂ
      (fun z ↦ -(square.mellin z + dirichletPrincipalIndicator χ))
      criticalRightHalfPlane :=
    ((square.mellin_differentiableOn hBound).add (by fun_prop)).neg
  have hODE : ∀ z ∈ criticalRightHalfPlane,
      deriv (poleRemovedLFunction χ) z =
        -(square.mellin z + dirichletPrincipalIndicator χ) *
          poleRemovedLFunction χ z := by
    intro z hz
    have hResidual := square.residual_eq_zero hBound hz
    change deriv (poleRemovedLFunction χ) z +
      (square.mellin z + dirichletPrincipalIndicator χ) *
        poleRemovedLFunction χ z = 0 at hResidual
    calc
      deriv (poleRemovedLFunction χ) z =
          -((square.mellin z + dirichletPrincipalIndicator χ) *
            poleRemovedLFunction χ z) :=
        eq_neg_of_add_eq_zero_left hResidual
      _ = -(square.mellin z + dirichletPrincipalIndicator χ) *
          poleRemovedLFunction χ z := by ring
  have hAtTwo : poleRemovedLFunction χ (2 : ℂ) ≠ 0 :=
    poleRemovedLFunction_ne_zero_of_one_lt_re χ (by norm_num)
  have hNowhereZero := Surface.Core.Analysis.nowhereZero_of_deriv_eq_mul
    isOpen_criticalRightHalfPlane
    isPreconnected_criticalRightHalfPlane
    (poleRemovedLFunction χ)
    (fun z ↦ -(square.mellin z + dirichletPrincipalIndicator χ))
    (differentiable_poleRemovedLFunction χ).differentiableOn
    hCoefficient hODE (2 : ℂ) (by norm_num [criticalRightHalfPlane]) hAtTwo
  intro s hsHalf hsOne hLs
  have hsNeOne : s ≠ 1 := by
    intro h
    subst s
    norm_num at hsOne
  exact hNowhereZero s hsHalf
    ((poleRemovedLFunction_zero_iff_LFunction_zero χ hsNeOne).2 hLs)

/-- The half-plus-epsilon bound makes the canonical pole-removed
`L`-function nowhere zero on the full half-plane `re s > 1 / 2`.
Primitivity is not needed for this right-half-plane statement. -/
@[surface_novel, surface_published]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/MellinLogDerivative/Variantfb4c4ae4d7dbb0ab4698a5228ddf930189d0203e93c3901616d773a3a6f5ee3f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/MellinLogDerivative/Variantfb4c4ae4d7dbb0ab4698a5228ddf930189d0203e93c3901616d773a3a6f5ee3f.lean#L677).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e502a9084252a158def2399fc084d6ac35834148` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
