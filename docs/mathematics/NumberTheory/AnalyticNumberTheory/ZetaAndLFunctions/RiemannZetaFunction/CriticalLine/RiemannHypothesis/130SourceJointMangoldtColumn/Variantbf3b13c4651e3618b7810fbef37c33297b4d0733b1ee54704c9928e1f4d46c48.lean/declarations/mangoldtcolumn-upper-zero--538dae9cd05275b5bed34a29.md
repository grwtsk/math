# mangoldtColumn_upper_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "999731dae046c743e2224259714c6f91b8159fa2",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 29,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/bf/bf3b13c4651e3618b7810fbef37c33297b4d0733b1ee54704c9928e1f4d46c48.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:8f594910-58fa-0dc7-f9ec-86c62567a082",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:e06fbd04-cd11-4655-afac-d59f152e6a35",
  "kind": "theorem",
  "lexical_name": "mangoldtColumn_upper_zero",
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
  "slug": "mangoldtcolumn-upper-zero--538dae9cd05275b5bed34a29",
  "source": {
    "blob": "999731dae046c743e2224259714c6f91b8159fa2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 42,
    "line": 29,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/130SourceJointMangoldtColumn/Variantbf3b13c4651e3618b7810fbef37c33297b4d0733b1ee54704c9928e1f4d46c48.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:538dae9cd05275b5bed34a29bc5c13d39b94f279093403e595e318638e1e051e",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/130SourceJointMangoldtColumn/Variantbf3b13c4651e3618b7810fbef37c33297b4d0733b1ee54704c9928e1f4d46c48.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e06fbd04-cd11-4655-afac-d59f152e6a35`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 29–42.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem mangoldtColumn_upper_zero (A : ℝ) (hA : 1 ≤ A) :
    mangoldtColumn A (sourceKernelCutoff A) = 0 := by
  classical
  have hU := vaughanCutoff_pos A hA
  have hUN := vaughanCutoff_le_sourceKernelCutoff A hA
  have hN : 1 ≤ sourceKernelCutoff A := hU.trans hUN
  apply Finset.sum_eq_zero
  intro m hm
  have hmU := (Finset.mem_Ioc.mp hm).1
  have hm2 : 2 ≤ m := by omega
  have hcut : sourceKernelCutoff A < m * sourceKernelCutoff A := by nlinarith
  rw [sourcePlainWeight_zero_of_cutoff_lt A hA (m * sourceKernelCutoff A) hcut]
  exact mul_zero _

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/130SourceJointMangoldtColumn/Variantbf3b13c4651e3618b7810fbef37c33297b4d0733b1ee54704c9928e1f4d46c48.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/130SourceJointMangoldtColumn/Variantbf3b13c4651e3618b7810fbef37c33297b4d0733b1ee54704c9928e1f4d46c48.lean#L29).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `999731dae046c743e2224259714c6f91b8159fa2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
