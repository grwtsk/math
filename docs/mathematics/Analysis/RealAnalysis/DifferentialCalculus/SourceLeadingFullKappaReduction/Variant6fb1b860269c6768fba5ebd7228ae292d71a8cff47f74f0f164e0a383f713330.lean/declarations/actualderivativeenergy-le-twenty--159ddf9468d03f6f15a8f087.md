# actualDerivativeEnergy_le_twenty

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0c1df225-8bd7-03e4-fd26-56e89bd2366b",
  "kind": "theorem",
  "lexical_name": "actualDerivativeEnergy_le_twenty",
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
  "slug": "actualderivativeenergy-le-twenty--159ddf9468d03f6f15a8f087",
  "source": {
    "blob": "f7da9ff38c347e360f5c7f0b933314e984a9600f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 86,
    "line": 70,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourceLeadingFullKappaReduction/Variant6fb1b860269c6768fba5ebd7228ae292d71a8cff47f74f0f164e0a383f713330.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:159ddf9468d03f6f15a8f087a25d94b92e6acadcf14ddbe983b98d01f23036e6",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/SourceLeadingFullKappaReduction/Variant6fb1b860269c6768fba5ebd7228ae292d71a8cff47f74f0f164e0a383f713330.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0c1df225-8bd7-03e4-fd26-56e89bd2366b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 70–86.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualDerivativeEnergy_le_twenty {A : ℝ} (hA : 91 ≤ A) :
    A ^ 2 * (∫ x : ℝ, (deriv (normalizedTest explicitSecondDerivative A) x) ^ 2) ≤ 20 := by
  have hp : 0 < A := by linarith
  rw [actual_derivative_energy_eq hp]
  let r := (A ^ 2)⁻¹
  have hr0 : 0 ≤ r := by positivity
  have hr1 : r ≤ 1 / 100 := by
    dsimp [r]
    rw [inv_eq_one_div]
    apply (div_le_div_iff₀ (by positivity : 0 < A ^ 2) (by norm_num : (0 : ℝ) < 100)).2
    nlinarith
  apply (div_le_iff₀ (normPolynomial_pos r hr0)).2
  have hr2 : r ^ 2 ≤ r / 100 := by nlinarith
  unfold derivativePolynomial normPolynomial
  nlinarith [sq_nonneg r]

/-- The actual curvature has coefficient twenty at all real separations for A>=91. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/SourceLeadingFullKappaReduction/Variant6fb1b860269c6768fba5ebd7228ae292d71a8cff47f74f0f164e0a383f713330.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourceLeadingFullKappaReduction/Variant6fb1b860269c6768fba5ebd7228ae292d71a8cff47f74f0f164e0a383f713330.lean#L70).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f7da9ff38c347e360f5c7f0b933314e984a9600f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
