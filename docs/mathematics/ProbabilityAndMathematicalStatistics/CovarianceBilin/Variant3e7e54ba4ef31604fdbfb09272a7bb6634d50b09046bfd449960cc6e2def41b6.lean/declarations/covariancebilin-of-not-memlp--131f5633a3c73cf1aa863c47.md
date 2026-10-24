# covarianceBilin_of_not_memLp

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "e803c787792e7de9607898e2d7cc85a077cd78d4",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 223,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/3e/3e7e54ba4ef31604fdbfb09272a7bb6634d50b09046bfd449960cc6e2def41b6.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:0b3c4377-3e1f-4685-6caa-d64d5226a307",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:eac3c513-dae8-2f43-a624-12db325c2207",
  "kind": "lemma",
  "lexical_name": "covarianceBilin_of_not_memLp",
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
  "slug": "covariancebilin-of-not-memlp--131f5633a3c73cf1aa863c47",
  "source": {
    "blob": "e803c787792e7de9607898e2d7cc85a077cd78d4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 233,
    "line": 223,
    "path": "GRWTSK/ProbabilityAndMathematicalStatistics/CovarianceBilin/Variant3e7e54ba4ef31604fdbfb09272a7bb6634d50b09046bfd449960cc6e2def41b6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:131f5633a3c73cf1aa863c47f7a14dfbfb02a694058bfc2329455a9a04a388dd",
  "verification": {
    "reference": "docs/verification/ProbabilityAndMathematicalStatistics/CovarianceBilin/Variant3e7e54ba4ef31604fdbfb09272a7bb6634d50b09046bfd449960cc6e2def41b6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:eac3c513-dae8-2f43-a624-12db325c2207`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 223–233.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma covarianceBilin_of_not_memLp (h : ¬ MemLp id 2 μ) (L₁ L₂ : Dual ℝ E) :
    covarianceBilin μ L₁ L₂ = 0 := by
  rw [covarianceBilin, uncenteredCovarianceBilin_of_not_memLp]
  rw [(measurableEmbedding_subRight _).memLp_map_measure_iff]
  refine fun h_Lp ↦ h ?_
  have : (id : E → E) = fun x ↦ x - ∫ x, x ∂μ + ∫ x, x ∂μ := by ext; simp
  rw [this]
  exact h_Lp.add (memLp_const _)

variable [CompleteSpace E]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/ProbabilityAndMathematicalStatistics/CovarianceBilin/Variant3e7e54ba4ef31604fdbfb09272a7bb6634d50b09046bfd449960cc6e2def41b6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/ProbabilityAndMathematicalStatistics/CovarianceBilin/Variant3e7e54ba4ef31604fdbfb09272a7bb6634d50b09046bfd449960cc6e2def41b6.lean#L223).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e803c787792e7de9607898e2d7cc85a077cd78d4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
