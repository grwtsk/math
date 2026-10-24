# actual_gamma_upper

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:da20e39a-d21d-39bd-a182-219b913df3f8",
  "kind": "theorem",
  "lexical_name": "actual_gamma_upper",
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
  "slug": "actual-gamma-upper--78227e4061e01605cc952a21",
  "source": {
    "blob": "cce8fab434353ae2d0d7269a537a043f81bc8bd0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 161,
    "line": 151,
    "path": "GRWTSK/Analysis/HarmonicAnalysis/FourierAnalysis/FiveModeGammaUpper/Variant1fa799fe04b81d4eecd98fc0d73bc46331c6700f2111f6058eec1a19c7fdec68.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:78227e4061e01605cc952a2188953022d8ed587bad8c6dcb4fd81bc52ad1da8f",
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

Occurrence: `result:da20e39a-d21d-39bd-a182-219b913df3f8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 151–161.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actual_gamma_upper (A : ℝ) (hA : 1 ≤ A) :
    archimedeanValue explicitSecondDerivative A ≤ sourceA0 + 390/A^2 := by
  have he := FormalResearch.RiemannHypothesis.SourceDerivativeEnergy.actual_derivative_energy_upper hA
  have hp : 0 < A^2 := by positivity
  have hbudget : 18 * (∫ x : ℝ, (deriv (normalizedTest explicitSecondDerivative A) x)^2) ≤
      390/A^2 := by
    apply (le_div_iff₀ hp).2
    nlinarith
  linarith [actual_gamma_upper_by_energy A hA]

/-- Exact scale-dependent residual transport. The full matrix lower bound remains explicit. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/HarmonicAnalysis/FourierAnalysis/FiveModeGammaUpper/Variant1fa799fe04b81d4eecd98fc0d73bc46331c6700f2111f6058eec1a19c7fdec68.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/HarmonicAnalysis/FourierAnalysis/FiveModeGammaUpper/Variant1fa799fe04b81d4eecd98fc0d73bc46331c6700f2111f6058eec1a19c7fdec68.lean#L151).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cce8fab434353ae2d0d7269a537a043f81bc8bd0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
