# concrete_dyadic_sevenEighths_ratio_forces_threeQuarters_target

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1b5c038d-3ef5-76d1-0f70-31c8bb8a17c6",
  "kind": "theorem",
  "lexical_name": "concrete_dyadic_sevenEighths_ratio_forces_threeQuarters_target",
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
  "slug": "concrete-dyadic-seveneighths-ratio-forces-threequarters-target--d65666fb97ed4fa166025073",
  "source": {
    "blob": "6789287b9f1cf29ee4400cc20eddf2b804180237",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 40,
    "line": 17,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/Checks/PinnedPrimeWeightEnvelopeCollapseControls.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d65666fb97ed4fa166025073f2166c3332955bbc2e97d105251dcf720d709ade",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/Checks/PinnedPrimeWeightEnvelopeCollapseControls.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1b5c038d-3ef5-76d1-0f70-31c8bb8a17c6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 17–40.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem concrete_dyadic_sevenEighths_ratio_forces_threeQuarters_target
    (j : ℕ)
    {C M δ v E : ℝ}
    (hC : 0 ≤ C)
    (hM : 0 ≤ M)
    (henvelope :
      ∀ u ∈
          Set.Icc (dyadicScale j : ℝ)
            (((2 * dyadicScale j : ℕ) : ℝ)),
        |thetaError u| + 1 ≤
          M * Real.rpow (dyadicScale j : ℝ)
            (((7 : ℝ) / 8) + δ))
    (hratio :
      pinnedPrimeWeightBertrandRatioRequirement
        (dyadicScale j) C v E) :
    pinnedPrimeWeightRemainingTarget v E ≤
      C * primeCoefficientL1Budget^2 * M^2 *
        Real.rpow (dyadicScale j : ℝ)
          (((3 : ℝ) / 4) + 2 * δ) :=
  pinnedPrimeWeightBertrandRatio_sevenEighthsEnvelope_to_threeQuartersTarget
    (dyadicScale_pos j) hC hM henvelope hratio

/-- The second concrete dyadic step has the corresponding half-line target
exponent. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/NumberTheory/Zeta/Riemann/Checks/PinnedPrimeWeightEnvelopeCollapseControls.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/Checks/PinnedPrimeWeightEnvelopeCollapseControls.lean#L17).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6789287b9f1cf29ee4400cc20eddf2b804180237` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
