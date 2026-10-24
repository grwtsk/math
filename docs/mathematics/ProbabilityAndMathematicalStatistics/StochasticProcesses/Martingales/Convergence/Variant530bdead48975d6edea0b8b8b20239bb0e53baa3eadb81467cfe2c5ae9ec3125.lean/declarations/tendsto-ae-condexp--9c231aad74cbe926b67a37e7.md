# tendsto_ae_condExp

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:58c596de-b862-f464-5825-d3a23ee91325",
  "kind": "theorem",
  "lexical_name": "tendsto_ae_condExp",
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
  "slug": "tendsto-ae-condexp--9c231aad74cbe926b67a37e7",
  "source": {
    "blob": "238d5ecb63710a9b1c7893e86411c34b930ad73c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 448,
    "line": 436,
    "path": "GRWTSK/ProbabilityAndMathematicalStatistics/StochasticProcesses/Martingales/Convergence/Variant530bdead48975d6edea0b8b8b20239bb0e53baa3eadb81467cfe2c5ae9ec3125.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9c231aad74cbe926b67a37e7b85195938447f976f838efc67a85cbcea98cf65d",
  "verification": {
    "reference": "docs/verification/ProbabilityAndMathematicalStatistics/StochasticProcesses/Martingales/Convergence/Variant530bdead48975d6edea0b8b8b20239bb0e53baa3eadb81467cfe2c5ae9ec3125.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:58c596de-b862-f464-5825-d3a23ee91325`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 436–448.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem tendsto_ae_condExp (g : Ω → ℝ) :
    ∀ᵐ x ∂μ, Tendsto (fun n => (μ[g | ℱ n]) x) atTop (𝓝 ((μ[g | ⨆ n, ℱ n]) x)) := by
  have ht : ∀ᵐ x ∂μ, Tendsto (fun n => (μ[μ[g | ⨆ n, ℱ n] | ℱ n]) x)
      atTop (𝓝 ((μ[g | ⨆ n, ℱ n]) x)) :=
    integrable_condExp.tendsto_ae_condExp stronglyMeasurable_condExp
  have heq : ∀ n, ∀ᵐ x ∂μ, (μ[μ[g | ⨆ n, ℱ n] | ℱ n]) x = (μ[g | ℱ n]) x := fun n =>
    condExp_condExp_of_le (le_iSup _ n) (iSup_le fun n => ℱ.le n)
  rw [← ae_all_iff] at heq
  filter_upwards [heq, ht] with x hxeq hxt
  exact hxt.congr hxeq

/-- **Lévy's upward theorem**, L¹ version: given a function `g` and a filtration `ℱ`, the
sequence defined by `𝔼[g | ℱ n]` converges in L¹ to `𝔼[g | ⨆ n, ℱ n]`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/ProbabilityAndMathematicalStatistics/StochasticProcesses/Martingales/Convergence/Variant530bdead48975d6edea0b8b8b20239bb0e53baa3eadb81467cfe2c5ae9ec3125.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/ProbabilityAndMathematicalStatistics/StochasticProcesses/Martingales/Convergence/Variant530bdead48975d6edea0b8b8b20239bb0e53baa3eadb81467cfe2c5ae9ec3125.lean#L436).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `238d5ecb63710a9b1c7893e86411c34b930ad73c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
