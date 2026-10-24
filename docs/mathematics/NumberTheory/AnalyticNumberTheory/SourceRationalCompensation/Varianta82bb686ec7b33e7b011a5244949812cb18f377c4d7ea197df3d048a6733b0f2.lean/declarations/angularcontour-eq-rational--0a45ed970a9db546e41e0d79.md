# angularContour_eq_rational

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b0f61741-7055-a898-8f48-44bd561207f3",
  "kind": "theorem",
  "lexical_name": "angularContour_eq_rational",
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
  "slug": "angularcontour-eq-rational--0a45ed970a9db546e41e0d79",
  "source": {
    "blob": "e8222c1fcb99e464ae1911d9dd9b0cd17141d0e3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 159,
    "line": 115,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/SourceRationalCompensation/Varianta82bb686ec7b33e7b011a5244949812cb18f377c4d7ea197df3d048a6733b0f2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0a45ed970a9db546e41e0d79dbc23c68a0b2e790730d8ef05937ff3d11ebfd42",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/SourceRationalCompensation/Varianta82bb686ec7b33e7b011a5244949812cb18f377c4d7ea197df3d048a6733b0f2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b0f61741-7055-a898-8f48-44bd561207f3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 115–159.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem angularContour_eq_rational (A : ℝ) (hA : 1 ≤ A) :
    angularContour A = (rationalBaseline A : ℂ) + rationalRemainderContour A := by
  have hH := nativeMellin_two_integrable A hA
  have hQ := native_rational_integrable A hA
  have hD := angularIntegrand_integrable A hA
  have hi : (∫ t : ℝ, rationalRemainderIntegrand A t) =
      (∫ t : ℝ, angularIntegrand A t) -
        (rightLineMajorant 2 - dirichletMoment 1 : ℝ) *
          (∫ t : ℝ, nativeMellinTransform A ((2 : ℂ) + Complex.I * (t : ℂ))) -
        (dirichletMoment 1 : ℂ) *
          (∫ t : ℝ, nativeMellinTransform A ((2 : ℂ) + Complex.I * (t : ℂ)) /
            (1 + Complex.I * (t : ℂ))) := by
    rw [rationalIntegrand_eq]
    dsimp only
    rw [integral_sub
      (f := fun t : ℝ ↦ angularIntegrand A t -
        ((rightLineMajorant 2 - dirichletMoment 1 : ℝ) : ℂ) *
          nativeMellinTransform A ((2 : ℂ) + Complex.I * (t : ℂ)))
      (g := fun t : ℝ ↦ (dirichletMoment 1 : ℂ) *
        (nativeMellinTransform A ((2 : ℂ) + Complex.I * (t : ℂ)) /
          (1 + Complex.I * (t : ℂ))))
      (hD.sub (hH.const_mul _)) (hQ.const_mul _),
      integral_sub hD (hH.const_mul _), integral_const_mul, integral_const_mul]
  unfold rationalRemainderContour angularContour rationalBaseline
  rw [hi]
  have hmass := nativeMellin_angular_mass A hA
  have hread := native_rational_readout_eq_continuousPoleHalf A hA
  simp only [Complex.ofReal_add, Complex.ofReal_sub, Complex.ofReal_mul]
  calc
    _ = ((rightLineMajorant 2 : ℂ) - (dirichletMoment 1 : ℂ)) *
        ((1 / (2 * Real.pi) : ℝ) *
          ∫ t : ℝ, nativeMellinTransform A ((2 : ℂ) + Complex.I * (t : ℂ))) +
        (dirichletMoment 1 : ℂ) *
          ((1 / (2 * Real.pi) : ℝ) *
            ∫ t : ℝ, nativeMellinTransform A ((2 : ℂ) + Complex.I * (t : ℂ)) /
              (1 + Complex.I * (t : ℂ))) +
        ((1 / (2 * Real.pi) : ℝ) *
          ((∫ t : ℝ, angularIntegrand A t) -
            ((rightLineMajorant 2 : ℂ) - (dirichletMoment 1 : ℂ)) *
              (∫ t : ℝ, nativeMellinTransform A ((2 : ℂ) + Complex.I * (t : ℂ))) -
            (dirichletMoment 1 : ℂ) *
              (∫ t : ℝ, nativeMellinTransform A ((2 : ℂ) + Complex.I * (t : ℂ)) /
                (1 + Complex.I * (t : ℂ))))) := by ring
    _ = _ := by rw [hmass, hread]; ring

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/AnalyticNumberTheory/SourceRationalCompensation/Varianta82bb686ec7b33e7b011a5244949812cb18f377c4d7ea197df3d048a6733b0f2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/SourceRationalCompensation/Varianta82bb686ec7b33e7b011a5244949812cb18f377c4d7ea197df3d048a6733b0f2.lean#L115).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e8222c1fcb99e464ae1911d9dd9b0cd17141d0e3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
