# MellinLogDerivativeSquare

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:80210d221e423ca6f503140da76099f90ccdf8431035a90506c27cba069bf59a",
  "kind": "structure",
  "lexical_name": "MellinLogDerivativeSquare",
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
  "slug": "mellinlogderivativesquare--e816558854b3c98d7021acf1",
  "source": {
    "blob": "4c75613d9189397b793a5c31e1a6a9ad7577ee22",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 121,
    "line": 94,
    "path": "GRWTSK/Analysis/MellinLogDerivative/Variant6a1c11f227bde90c67ac2dba9fc2c9b54bceaba1dce414bbdb98539da047cc21.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:e816558854b3c98d7021acf1fbe7335efaa8aa9b8806a873545f377176619035",
  "verification": {
    "reference": "docs/verification/Analysis/MellinLogDerivative/Variant6a1c11f227bde90c67ac2dba9fc2c9b54bceaba1dce414bbdb98539da047cc21.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:80210d221e423ca6f503140da76099f90ccdf8431035a90506c27cba069bf59a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 94–121.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure MellinLogDerivativeSquare
    {q : ℕ} [NeZero q] (χ : DirichletCharacter ℂ q) where
  mellin : ℂ → ℂ
  regularizedL : ℂ → ℂ

  mellin_eq_centeredIntegral :
    ∀ s, mellin s = centeredTwistedPsiMellin χ s

  regularizedL_differentiable : Differentiable ℂ regularizedL

  regularizedL_zero_iff_LFunction_zero :
    ∀ s : ℂ, 0 < s.re → s.re < 1 →
      (regularizedL s = 0 ↔ DirichletCharacter.LFunction χ s = 0)

  regularizedL_ne_zero_of_one_lt_re :
    ∀ s : ℂ, 1 < s.re → regularizedL s ≠ 0

  mellin_differentiableOn :
    CenteredTwistedPsiHalfPlusEpsilon χ →
      DifferentiableOn ℂ mellin criticalRightHalfPlane

  regularizedLogDerivativeIdentity :
    ∀ s : ℂ, 1 < s.re →
      mellin s + dirichletPrincipalIndicator χ =
        -deriv regularizedL s / regularizedL s

/-- Holomorphic ODE residual for the regularized `L`-function. -/
@[expose]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/MellinLogDerivative/Variant6a1c11f227bde90c67ac2dba9fc2c9b54bceaba1dce414bbdb98539da047cc21.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MellinLogDerivative/Variant6a1c11f227bde90c67ac2dba9fc2c9b54bceaba1dce414bbdb98539da047cc21.lean#L94).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4c75613d9189397b793a5c31e1a6a9ad7577ee22` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
