# Integrable.tendsto_eLpNorm_condExp

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e0ede489-b929-9d0c-b6f3-a3353c58238b",
  "kind": "theorem",
  "lexical_name": "Integrable.tendsto_eLpNorm_condExp",
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
  "slug": "integrable-tendsto-elpnorm-condexp--0ca8f9c831ee2bd7ef4af12b",
  "source": {
    "blob": "8295d1cfe59f4494e9c7aa6de6909ed0d37ceae0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 444,
    "line": 430,
    "path": "GRWTSK/ProbabilityAndMathematicalStatistics/StochasticProcesses/Martingales/Convergence/Variant2f7aa39e68d9ac0b5abed9373a22478045cccb500e80a8c41b4fd09dcb7dc9c8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0ca8f9c831ee2bd7ef4af12b52800d574c5fe147b7307fe99b546866ea5dde17",
  "verification": {
    "reference": "docs/verification/ProbabilityAndMathematicalStatistics/StochasticProcesses/Martingales/Convergence/Variant2f7aa39e68d9ac0b5abed9373a22478045cccb500e80a8c41b4fd09dcb7dc9c8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e0ede489-b929-9d0c-b6f3-a3353c58238b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 430–444.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Integrable.tendsto_eLpNorm_condExp (hg : Integrable g μ)
    (hgmeas : StronglyMeasurable[⨆ n, ℱ n] g) :
    Tendsto (fun n => eLpNorm (μ[g|ℱ n] - g) 1 μ) atTop (𝓝 0) :=
  tendsto_Lp_finite_of_tendstoInMeasure le_rfl ENNReal.one_ne_top
    (fun n => (stronglyMeasurable_condExp.mono (ℱ.le n)).aestronglyMeasurable)
    (memLp_one_iff_integrable.2 hg) hg.uniformIntegrable_condExp_filtration.2.1
    (tendstoInMeasure_of_tendsto_ae
      (fun n => (stronglyMeasurable_condExp.mono (ℱ.le n)).aestronglyMeasurable)
      (hg.tendsto_ae_condExp hgmeas))

@[deprecated (since := "2025-01-21")]
alias Integrable.tendsto_eLpNorm_condexp := Integrable.tendsto_eLpNorm_condExp

/-- **Lévy's upward theorem**, almost everywhere version: given a function `g` and a filtration
`ℱ`, the sequence defined by `𝔼[g | ℱ n]` converges almost everywhere to `𝔼[g | ⨆ n, ℱ n]`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/ProbabilityAndMathematicalStatistics/StochasticProcesses/Martingales/Convergence/Variant2f7aa39e68d9ac0b5abed9373a22478045cccb500e80a8c41b4fd09dcb7dc9c8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/ProbabilityAndMathematicalStatistics/StochasticProcesses/Martingales/Convergence/Variant2f7aa39e68d9ac0b5abed9373a22478045cccb500e80a8c41b4fd09dcb7dc9c8.lean#L430).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8295d1cfe59f4494e9c7aa6de6909ed0d37ceae0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
