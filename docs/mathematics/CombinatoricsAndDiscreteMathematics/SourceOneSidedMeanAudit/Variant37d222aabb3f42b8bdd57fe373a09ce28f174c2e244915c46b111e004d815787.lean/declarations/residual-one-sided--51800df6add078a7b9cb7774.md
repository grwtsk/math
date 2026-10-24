# residual_one_sided

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:7836e3e8-8624-27d3-16d3-afde5df8a049",
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
  "slug": "residual-one-sided--51800df6add078a7b9cb7774",
  "source": {
    "blob": "c56cd6b160f7af2b27d0606e10ab5eb45ee1cce7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 99,
    "line": 83,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/SourceOneSidedMeanAudit/Variant37d222aabb3f42b8bdd57fe373a09ce28f174c2e244915c46b111e004d815787.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:51800df6add078a7b9cb7774611c63e6f595384952cac7fa8314e348f4c0ee6c",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/SourceOneSidedMeanAudit/Variant37d222aabb3f42b8bdd57fe373a09ce28f174c2e244915c46b111e004d815787.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7836e3e8-8624-27d3-16d3-afde5df8a049`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 83–99.

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

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/SourceOneSidedMeanAudit/Variant37d222aabb3f42b8bdd57fe373a09ce28f174c2e244915c46b111e004d815787.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/SourceOneSidedMeanAudit/Variant37d222aabb3f42b8bdd57fe373a09ce28f174c2e244915c46b111e004d815787.lean#L83).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c56cd6b160f7af2b27d0606e10ab5eb45ee1cce7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
