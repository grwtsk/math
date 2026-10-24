# residual_one_sided

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0e477bfb-5f56-1e12-dfe8-01ea576cef89",
  "kind": "theorem",
  "lexical_name": "residual_one_sided",
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
  "slug": "residual-one-sided--7e6ed4381c6a81649ca9ce00",
  "source": {
    "blob": "60948871e52f3ecdb0dbdd67933556ad09d7356f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 107,
    "line": 91,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/SourceOneSidedMeanAudit/Variant0a2bfa96593045b211b2c1b0a58cceea380b968e9a3f15dc95b370fa849d7736.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7e6ed4381c6a81649ca9ce00dd00491b2fd4c0215dbb08fe9eafc4ba1ce90150",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/SourceOneSidedMeanAudit/Variant0a2bfa96593045b211b2c1b0a58cceea380b968e9a3f15dc95b370fa849d7736.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0e477bfb-5f56-1e12-dfe8-01ea576cef89`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 91–107.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem residual_one_sided (A D Cp rho Elog Eplain : ℝ) (hA : 1 ≤ A)
    (hreadout : VaughanOperatorReview.covarianceOperatorValue A / 2 - independentMainTerm A ≤ D)
    (hproper : typeTwoDiagonal A - retainedPrimeDiagonal A ≤ rho)
    (hprime : retainedPrimeDiagonal A + diagonalMainCoefficient A * A -
      Real.log (vaughanCutoff A : ℝ) ≤ Cp)
    (hlog : shortLogSource A - shortLogMainTerm A
      (logLinearMain A samplingAlpha1 samplingAlpha2) ≤ Elog)
    (hplain : -Eplain ≤ shortPlainSource A - shortPlainMainTerm A
      (plainLinearMain A samplingAlpha0 samplingAlpha1)) :
    mertensResidual A ≤ D + Cp + rho + Elog + Eplain := by
  have hl := ledger_one_sided A samplingAlpha0 samplingAlpha1 samplingAlpha2
    Cp rho Elog Eplain hproper hprime hlog hplain
  change betaMainLedger A + independentMainTerm A ≤ _ at hl
  rw [actual_residual_decomposition A hA]
  linarith

/-- Existing prime source-main proof supplies its fixed Cp, preserving every real tail scale. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/SourceOneSidedMeanAudit/Variant0a2bfa96593045b211b2c1b0a58cceea380b968e9a3f15dc95b370fa849d7736.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/SourceOneSidedMeanAudit/Variant0a2bfa96593045b211b2c1b0a58cceea380b968e9a3f15dc95b370fa849d7736.lean#L91).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `60948871e52f3ecdb0dbdd67933556ad09d7356f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
