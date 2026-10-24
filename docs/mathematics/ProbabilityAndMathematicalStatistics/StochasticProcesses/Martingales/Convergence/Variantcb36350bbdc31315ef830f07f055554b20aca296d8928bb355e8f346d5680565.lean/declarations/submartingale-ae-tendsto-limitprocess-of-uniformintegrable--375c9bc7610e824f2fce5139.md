# Submartingale.ae_tendsto_limitProcess_of_uniformIntegrable

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "eebd1fa6bca1141983c8ed822e9c77f36c54e6c3",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 331,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/cb/cb36350bbdc31315ef830f07f055554b20aca296d8928bb355e8f346d5680565.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:e0a981aa-d01f-9417-0905-93276677eb1d",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:f056359f-3411-a1e3-2f98-b48b7ea7f882",
  "kind": "theorem",
  "lexical_name": "Submartingale.ae_tendsto_limitProcess_of_uniformIntegrable",
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
  "slug": "submartingale-ae-tendsto-limitprocess-of-uniformintegrable--375c9bc7610e824f2fce5139",
  "source": {
    "blob": "eebd1fa6bca1141983c8ed822e9c77f36c54e6c3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 339,
    "line": 331,
    "path": "GRWTSK/ProbabilityAndMathematicalStatistics/StochasticProcesses/Martingales/Convergence/Variantcb36350bbdc31315ef830f07f055554b20aca296d8928bb355e8f346d5680565.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:375c9bc7610e824f2fce51395e1c315e38b03b5cf30ca1d200fd5c59ca90ef69",
  "verification": {
    "reference": "docs/verification/ProbabilityAndMathematicalStatistics/StochasticProcesses/Martingales/Convergence/Variantcb36350bbdc31315ef830f07f055554b20aca296d8928bb355e8f346d5680565.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f056359f-3411-a1e3-2f98-b48b7ea7f882`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 331–339.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Submartingale.ae_tendsto_limitProcess_of_uniformIntegrable (hf : Submartingale f ℱ μ)
    (hunif : UniformIntegrable f 1 μ) :
    ∀ᵐ ω ∂μ, Tendsto (fun n => f n ω) atTop (𝓝 (ℱ.limitProcess f μ ω)) :=
  let ⟨_, hR⟩ := hunif.2.2
  hf.ae_tendsto_limitProcess hR
#align measure_theory.submartingale.ae_tendsto_limit_process_of_uniform_integrable MeasureTheory.Submartingale.ae_tendsto_limitProcess_of_uniformIntegrable

/-- If a martingale `f` adapted to `ℱ` converges in L¹ to `g`, then for all `n`, `f n` is almost
everywhere equal to `𝔼[g | ℱ n]`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/ProbabilityAndMathematicalStatistics/StochasticProcesses/Martingales/Convergence/Variantcb36350bbdc31315ef830f07f055554b20aca296d8928bb355e8f346d5680565.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/ProbabilityAndMathematicalStatistics/StochasticProcesses/Martingales/Convergence/Variantcb36350bbdc31315ef830f07f055554b20aca296d8928bb355e8f346d5680565.lean#L331).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `eebd1fa6bca1141983c8ed822e9c77f36c54e6c3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
