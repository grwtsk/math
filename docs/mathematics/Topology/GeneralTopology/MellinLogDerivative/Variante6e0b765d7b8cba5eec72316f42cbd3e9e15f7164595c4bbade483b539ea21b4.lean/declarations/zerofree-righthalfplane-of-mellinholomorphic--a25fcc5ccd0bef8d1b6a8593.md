# zeroFree_rightHalfPlane_of_mellinHolomorphic

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "aee4db9d5dc1a073a8f211e2e884c6244cfae951",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 170,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/e6/e6e0b765d7b8cba5eec72316f42cbd3e9e15f7164595c4bbade483b539ea21b4.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:0dc6b82f-31e3-4d24-ba4c-cbb46b739325",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:a66e9559-bfb5-e14f-68a4-33de0023929d",
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
  "slug": "zerofree-righthalfplane-of-mellinholomorphic--a25fcc5ccd0bef8d1b6a8593",
  "source": {
    "blob": "aee4db9d5dc1a073a8f211e2e884c6244cfae951",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 219,
    "line": 170,
    "path": "GRWTSK/Topology/GeneralTopology/MellinLogDerivative/Variante6e0b765d7b8cba5eec72316f42cbd3e9e15f7164595c4bbade483b539ea21b4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a25fcc5ccd0bef8d1b6a85938ffba2f107eb981462a23293d2dcf046bc8672ee",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/MellinLogDerivative/Variante6e0b765d7b8cba5eec72316f42cbd3e9e15f7164595c4bbade483b539ea21b4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a66e9559-bfb5-e14f-68a4-33de0023929d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 170–219.

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

end

end Surface.Core.DirichletGRH
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/MellinLogDerivative/Variante6e0b765d7b8cba5eec72316f42cbd3e9e15f7164595c4bbade483b539ea21b4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/MellinLogDerivative/Variante6e0b765d7b8cba5eec72316f42cbd3e9e15f7164595c4bbade483b539ea21b4.lean#L170).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `aee4db9d5dc1a073a8f211e2e884c6244cfae951` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
