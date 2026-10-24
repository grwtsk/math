# hasSum_expSeries_of_smul_comm

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "2850b28be829e8cc59b5dd2a634415e8f6e91752",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 82,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/df/dfa7ab21060efe11d6356f1f64b49f7d056d91b99d1d95d53a798dd45201d065.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:e91bbb82-020c-9f2a-d244-fb8f381df3a0",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:a043335a-5a3c-b214-a5b9-25e1fba5e6be",
  "kind": "theorem",
  "lexical_name": "hasSum_expSeries_of_smul_comm",
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
  "slug": "hassum-expseries-of-smul-comm--9a0838714aea98655bac6122",
  "source": {
    "blob": "2850b28be829e8cc59b5dd2a634415e8f6e91752",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 108,
    "line": 82,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/TrivSqZeroExt/Variantdfa7ab21060efe11d6356f1f64b49f7d056d91b99d1d95d53a798dd45201d065.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9a0838714aea98655bac6122cb85df81901dd764557ee0cd171f163f06f216c1",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/TrivSqZeroExt/Variantdfa7ab21060efe11d6356f1f64b49f7d056d91b99d1d95d53a798dd45201d065.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a043335a-5a3c-b214-a5b9-25e1fba5e6be`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 82–108.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem hasSum_expSeries_of_smul_comm [Field 𝕜] [CharZero 𝕜] [Ring R] [AddCommGroup M] [Algebra 𝕜 R]
    [Module R M] [Module Rᵐᵒᵖ M] [SMulCommClass R Rᵐᵒᵖ M] [Module 𝕜 M] [IsScalarTower 𝕜 R M]
    [IsScalarTower 𝕜 Rᵐᵒᵖ M] [TopologicalRing R] [TopologicalAddGroup M] [ContinuousSMul R M]
    [ContinuousSMul Rᵐᵒᵖ M] (x : tsze R M) (hx : MulOpposite.op x.fst • x.snd = x.fst • x.snd)
    {e : R} (h : HasSum (fun n => expSeries 𝕜 R n fun _ => x.fst) e) :
    HasSum (fun n => expSeries 𝕜 (tsze R M) n fun _ => x) (inl e + inr (e • x.snd)) := by
  simpa only [inl_fst_add_inr_snd_eq] using
    (hasSum_inl _ <| hasSum_fst_expSeries 𝕜 x h).add
      (hasSum_inr _ <| hasSum_snd_expSeries_of_smul_comm 𝕜 x hx h)
#align triv_sq_zero_ext.has_sum_exp_series_of_smul_comm TrivSqZeroExt.hasSum_expSeries_of_smul_comm

end Topology

section NormedRing

variable [IsROrC 𝕜] [NormedRing R] [AddCommGroup M]

variable [NormedAlgebra 𝕜 R] [Module R M] [Module Rᵐᵒᵖ M] [SMulCommClass R Rᵐᵒᵖ M]

variable [Module 𝕜 M] [IsScalarTower 𝕜 R M] [IsScalarTower 𝕜 Rᵐᵒᵖ M]

variable [TopologicalSpace M] [TopologicalRing R]

variable [TopologicalAddGroup M] [ContinuousSMul R M] [ContinuousSMul Rᵐᵒᵖ M]

variable [CompleteSpace R] [T2Space R] [T2Space M]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/TrivSqZeroExt/Variantdfa7ab21060efe11d6356f1f64b49f7d056d91b99d1d95d53a798dd45201d065.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/TrivSqZeroExt/Variantdfa7ab21060efe11d6356f1f64b49f7d056d91b99d1d95d53a798dd45201d065.lean#L82).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2850b28be829e8cc59b5dd2a634415e8f6e91752` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
