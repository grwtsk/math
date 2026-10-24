# concrete_dyadic_ratio_forces_error_plus_quadratic_majorant

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b4022479-819a-af2e-28d9-f98641a15ab6",
  "kind": "theorem",
  "lexical_name": "concrete_dyadic_ratio_forces_error_plus_quadratic_majorant",
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
  "slug": "concrete-dyadic-ratio-forces-error-plus-quadratic-majorant--21e61d0db647c0c684c6ca2e",
  "source": {
    "blob": "6789287b9f1cf29ee4400cc20eddf2b804180237",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 85,
    "line": 65,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/Checks/PinnedPrimeWeightEnvelopeCollapseControls.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:21e61d0db647c0c684c6ca2e68f72012db45c1eff7ba3c134177bc43b4ba98bb",
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

Occurrence: `result:b4022479-819a-af2e-28d9-f98641a15ab6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 65–85.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem concrete_dyadic_ratio_forces_error_plus_quadratic_majorant
    (j : ℕ)
    {C B v E : ℝ}
    (hC : 0 ≤ C)
    (hB : 0 ≤ B)
    (henvelope :
      ∀ u ∈
          Set.Icc (dyadicScale j : ℝ)
            (((2 * dyadicScale j : ℕ) : ℝ)),
        |thetaError u| + 1 ≤ B)
    (hratio :
      pinnedPrimeWeightBertrandRatioRequirement
        (dyadicScale j) C v E) :
    |thetaError v| + 1 ≤
      E + pinnedPrimeWeightEnvelopeQuadraticMajorant
        (dyadicScale j) C B :=
  pinnedPrimeWeightBertrandRatio_to_target_le_error_add_envelopeQuadraticMajorant
    (dyadicScale_pos j) hC hB henvelope hratio

/-- The result of this packet is a consequence of a ratio certificate, not a
construction of one. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/NumberTheory/Zeta/Riemann/Checks/PinnedPrimeWeightEnvelopeCollapseControls.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/Checks/PinnedPrimeWeightEnvelopeCollapseControls.lean#L65).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6789287b9f1cf29ee4400cc20eddf2b804180237` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
