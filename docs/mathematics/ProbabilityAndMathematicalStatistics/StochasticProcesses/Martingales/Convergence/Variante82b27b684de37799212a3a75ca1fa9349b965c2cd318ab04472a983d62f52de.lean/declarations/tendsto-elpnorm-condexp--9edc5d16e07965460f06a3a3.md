# tendsto_eLpNorm_condExp

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "4754369339d1a1dc535fdaf21135d6da908a609a",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 441,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/e8/e82b27b684de37799212a3a75ca1fa9349b965c2cd318ab04472a983d62f52de.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:23f393da-13a8-bdd9-b5b0-eabbf88ac836",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:aad6b394-ea31-de9e-1ec6-570c0373aa1f",
  "kind": "theorem",
  "lexical_name": "tendsto_eLpNorm_condExp",
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
  "slug": "tendsto-elpnorm-condexp--9edc5d16e07965460f06a3a3",
  "source": {
    "blob": "4754369339d1a1dc535fdaf21135d6da908a609a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 454,
    "line": 441,
    "path": "GRWTSK/ProbabilityAndMathematicalStatistics/StochasticProcesses/Martingales/Convergence/Variante82b27b684de37799212a3a75ca1fa9349b965c2cd318ab04472a983d62f52de.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9edc5d16e07965460f06a3a3a28deb6821216756df9205b2807ec106f66d5c4f",
  "verification": {
    "reference": "docs/verification/ProbabilityAndMathematicalStatistics/StochasticProcesses/Martingales/Convergence/Variante82b27b684de37799212a3a75ca1fa9349b965c2cd318ab04472a983d62f52de.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:aad6b394-ea31-de9e-1ec6-570c0373aa1f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 441–454.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem tendsto_eLpNorm_condExp (g : Ω → ℝ) :
    Tendsto (fun n => eLpNorm (μ[g | ℱ n] - μ[g | ⨆ n, ℱ n]) 1 μ) atTop (𝓝 0) := by
  have ht : Tendsto (fun n => eLpNorm (μ[μ[g | ⨆ n, ℱ n] | ℱ n] - μ[g | ⨆ n, ℱ n]) 1 μ)
      atTop (𝓝 0) :=
    integrable_condExp.tendsto_eLpNorm_condExp stronglyMeasurable_condExp
  have heq : ∀ n, ∀ᵐ x ∂μ, (μ[μ[g | ⨆ n, ℱ n] | ℱ n]) x = (μ[g | ℱ n]) x := fun n =>
    condExp_condExp_of_le (le_iSup _ n) (iSup_le fun n => ℱ.le n)
  refine ht.congr fun n => eLpNorm_congr_ae ?_
  filter_upwards [heq n] with x hxeq
  simp only [hxeq, Pi.sub_apply]

end L1Convergence

end MeasureTheory
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/ProbabilityAndMathematicalStatistics/StochasticProcesses/Martingales/Convergence/Variante82b27b684de37799212a3a75ca1fa9349b965c2cd318ab04472a983d62f52de.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/ProbabilityAndMathematicalStatistics/StochasticProcesses/Martingales/Convergence/Variante82b27b684de37799212a3a75ca1fa9349b965c2cd318ab04472a983d62f52de.lean#L441).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4754369339d1a1dc535fdaf21135d6da908a609a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
