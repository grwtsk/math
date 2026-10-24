# difference_primitive_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:54d968a2-db4b-90cc-1942-dbf671983466",
  "kind": "theorem",
  "lexical_name": "difference_primitive_eq",
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
  "slug": "difference-primitive-eq--a7494b11a952437e79125b4a",
  "source": {
    "blob": "c1de6a374a69f3c211369b1169e02f4337c4af3c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 143,
    "line": 126,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/RealThetaDerivative/Variantb5be67112dee5dd0600ad46777e6966146acea801119023dd91b1cbd028286df.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a7494b11a952437e79125b4aebb455587bb83eb0ab1c03955b06c926f2dad9eb",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/RealThetaDerivative/Variantb5be67112dee5dd0600ad46777e6966146acea801119023dd91b1cbd028286df.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:54d968a2-db4b-90cc-1942-dbf671983466`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 126–143.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem difference_primitive_eq (A s : ℝ) (hA : 1 ≤ A) :
    Real.exp (-s / 2) * (∫ t in (-2 * A)..s,
      Real.exp (t / 2) * correlationDifference A t) =
      sourceCorrelation explicitSecondDerivative A s - correlationPrimitive A s := by
  have hc := CorrelationRegularity.sourceCorrelation_contDiff A (by linarith : 0 < A)
  have hiC := primitive_integrand_intervalIntegrable A s hA
  have hiD : IntervalIntegrable (fun t : ℝ ↦ Real.exp (t / 2) *
      deriv (sourceCorrelation explicitSecondDerivative A) t) volume (-2 * A) s :=
    (((continuous_id.div_const 2).rexp).mul hc.continuous_deriv_one).intervalIntegrable _ _
  simp only [correlationDifference, mul_sub, ← mul_div_assoc]
  rw [intervalIntegral.integral_sub hiD (hiC.div_const 2),
    intervalIntegral.integral_div, mul_sub, ← mul_div_assoc,
    ← correlationPrimitive_derivative_eq A s hA,
    (correlationPrimitive_hasDerivAt A s hA).deriv]
  change sourceCorrelation explicitSecondDerivative A s - correlationPrimitive A s / 2 -
    correlationPrimitive A s / 2 = _
  ring

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/RealThetaDerivative/Variantb5be67112dee5dd0600ad46777e6966146acea801119023dd91b1cbd028286df.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/RealThetaDerivative/Variantb5be67112dee5dd0600ad46777e6966146acea801119023dd91b1cbd028286df.lean#L126).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c1de6a374a69f3c211369b1169e02f4337c4af3c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
