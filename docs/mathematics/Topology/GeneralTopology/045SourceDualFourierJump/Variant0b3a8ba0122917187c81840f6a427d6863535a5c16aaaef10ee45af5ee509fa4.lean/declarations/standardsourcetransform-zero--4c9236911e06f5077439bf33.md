# standardSourceTransform_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0a4c01b1-cd18-85b4-494c-61c5c5626718",
  "kind": "theorem",
  "lexical_name": "standardSourceTransform_zero",
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
  "slug": "standardsourcetransform-zero--4c9236911e06f5077439bf33",
  "source": {
    "blob": "a293f5068463434f1f74e1482f8c1686ccac324a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 83,
    "line": 72,
    "path": "GRWTSK/Topology/GeneralTopology/045SourceDualFourierJump/Variant0b3a8ba0122917187c81840f6a427d6863535a5c16aaaef10ee45af5ee509fa4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4c9236911e06f5077439bf3359b58fc576830f59487efaf551acd5fec04bffb3",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/045SourceDualFourierJump/Variant0b3a8ba0122917187c81840f6a427d6863535a5c16aaaef10ee45af5ee509fa4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0a4c01b1-cd18-85b4-494c-61c5c5626718`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 72–83.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem standardSourceTransform_zero (A : ℝ) (hA : 1 ≤ A) :
    standardSourceTransform A 0 =
      ((-(Real.sqrt A * (256 / 315 : ℝ)) /
        (4 * Real.sqrt (sourceNormalization A)) : ℝ) : ℂ) := by
  have hq : 𝓕 (fun x : ℝ => (normalizedTest explicitSecondDerivative A x : ℂ)) 0 =
      (((∫ x : ℝ, normalizedTest explicitSecondDerivative A x) : ℝ) : ℂ) := by
    rw [Real.fourier_real_eq_integral_exp_smul]
    simpa using (integral_ofReal (𝕜 := ℂ) (μ := volume)
      (f := normalizedTest explicitSecondDerivative A))
  exact hq.trans (congrArg Complex.ofReal (normalizedTest_integral A hA))

/-- The source integral has not vanished: the sign multiplier creates a true jump. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/045SourceDualFourierJump/Variant0b3a8ba0122917187c81840f6a427d6863535a5c16aaaef10ee45af5ee509fa4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/045SourceDualFourierJump/Variant0b3a8ba0122917187c81840f6a427d6863535a5c16aaaef10ee45af5ee509fa4.lean#L72).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a293f5068463434f1f74e1482f8c1686ccac324a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
