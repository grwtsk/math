# actual_residual_scale_upper_of_matrix_lower

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:7c5c5bcc-e5d2-cf98-e76b-64842e713a4d",
  "kind": "theorem",
  "lexical_name": "actual_residual_scale_upper_of_matrix_lower",
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
  "slug": "actual-residual-scale-upper-of-matrix-lower--40a445cb61b6f95ae6b27a46",
  "source": {
    "blob": "cce8fab434353ae2d0d7269a537a043f81bc8bd0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 176,
    "line": 162,
    "path": "GRWTSK/Analysis/HarmonicAnalysis/FourierAnalysis/FiveModeGammaUpper/Variant1fa799fe04b81d4eecd98fc0d73bc46331c6700f2111f6058eec1a19c7fdec68.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:40a445cb61b6f95ae6b27a46b3db81e81da74b12c898e4091a6b3cc566c45be9",
  "verification": {
    "reference": "docs/verification/Analysis/HarmonicAnalysis/FourierAnalysis/FiveModeGammaUpper/Variant1fa799fe04b81d4eecd98fc0d73bc46331c6700f2111f6058eec1a19c7fdec68.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7c5c5bcc-e5d2-cf98-e76b-64842e713a4d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 162–176.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actual_residual_scale_upper_of_matrix_lower (A D : ℝ) (hA : 1 ≤ A)
    (hbound : -D ≤ dotProduct (alpha A) ((sourceMatrix A).mulVec (alpha A))) :
    EstimateMertensResidual.mertensResidual A ≤ sourceA0/2 + 195/A^2 + D/2 := by
  have hq := hbound
  rw [actual_source_matrix_dictionary A hA, sourceQuadraticValue] at hq
  have hres : EstimateMertensResidual.mertensResidual A =
      primePowerContribution explicitSecondDerivative A := by
    rw [EstimateMertensResidual.mertensResidual_eq_closedPrimeMoment A hA]
    exact (EstimatePrimeSmoothDefect.primePowerContribution_eq_closedPrimeMoment A hA).symm
  rw [hres]
  have hg := actual_gamma_upper A hA
  rw [show 390/A^2 = 2*(195/A^2) by ring] at hg
  linarith

/-- The independently proved actual digamma bound fixes the source constant's sign. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/HarmonicAnalysis/FourierAnalysis/FiveModeGammaUpper/Variant1fa799fe04b81d4eecd98fc0d73bc46331c6700f2111f6058eec1a19c7fdec68.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/HarmonicAnalysis/FourierAnalysis/FiveModeGammaUpper/Variant1fa799fe04b81d4eecd98fc0d73bc46331c6700f2111f6058eec1a19c7fdec68.lean#L162).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cce8fab434353ae2d0d7269a537a043f81bc8bd0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
