# angularHead_eq_rational_masses

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ffdefe0b-fc94-deeb-01a2-1b85fda8e02c",
  "kind": "theorem",
  "lexical_name": "angularHead_eq_rational_masses",
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
  "slug": "angularhead-eq-rational-masses--e82fd3b148f1b5f677d13862",
  "source": {
    "blob": "f19a1af4341bb3b113e433f85590f71b4685d6ae",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 89,
    "line": 48,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceRationalFiniteHead/Variantcd024c19a33fb7e3ac7d6260675742bd7e28e5686b038ab049d10282b542e519.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e82fd3b148f1b5f677d13862023c59a83b7b92ebb8cd5214b6c409df80e14a22",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceRationalFiniteHead/Variantcd024c19a33fb7e3ac7d6260675742bd7e28e5686b038ab049d10282b542e519.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ffdefe0b-fc94-deeb-01a2-1b85fda8e02c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 48–89.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem angularHead_eq_rational_masses (A T : ℝ) (hA : 1 ≤ A) :
    angularHead A T =
      (rightLineMajorant 2 - dirichletMoment 1 : ℝ) * nativeHeadMass A T +
        (dirichletMoment 1 : ℂ) * rationalKernelHeadMass A T + rationalRemainderHead A T := by
  have hD := (angularIntegrand_integrable A hA).integrableOn (s := Icc (-T) T)
  have hH := (SourceNativeReadout.nativeMellin_two_integrable A hA).integrableOn
    (s := Icc (-T) T)
  have hQ := (native_rational_integrable A hA).integrableOn (s := Icc (-T) T)
  have hf : rationalRemainderIntegrand A = fun t : ℝ ↦ angularIntegrand A t -
      ((rightLineMajorant 2 - dirichletMoment 1 : ℝ) : ℂ) *
        nativeMellinTransform A ((2 : ℂ) + Complex.I * (t : ℂ)) -
      (dirichletMoment 1 : ℂ) *
        (nativeMellinTransform A ((2 : ℂ) + Complex.I * (t : ℂ)) /
          (1 + Complex.I * (t : ℂ))) := by
    funext t
    unfold rationalRemainderIntegrand rationalRemainderMultiplier rationalCompensator
      angularIntegrand
    ring
  have hi : (∫ t : ℝ in Icc (-T) T, rationalRemainderIntegrand A t) =
      (∫ t : ℝ in Icc (-T) T, angularIntegrand A t) -
        ((rightLineMajorant 2 - dirichletMoment 1 : ℝ) : ℂ) *
          (∫ t : ℝ in Icc (-T) T,
            nativeMellinTransform A ((2 : ℂ) + Complex.I * (t : ℂ))) -
        (dirichletMoment 1 : ℂ) *
          (∫ t : ℝ in Icc (-T) T,
            nativeMellinTransform A ((2 : ℂ) + Complex.I * (t : ℂ)) /
              (1 + Complex.I * (t : ℂ))) := by
    rw [hf]
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
  unfold angularHead rationalRemainderHead nativeHeadMass rationalKernelHeadMass
  rw [hi]
  ring

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceRationalFiniteHead/Variantcd024c19a33fb7e3ac7d6260675742bd7e28e5686b038ab049d10282b542e519.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceRationalFiniteHead/Variantcd024c19a33fb7e3ac7d6260675742bd7e28e5686b038ab049d10282b542e519.lean#L48).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f19a1af4341bb3b113e433f85590f71b4685d6ae` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
