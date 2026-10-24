# ContDiffAt.contDiffAt_norm_of_smul

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "fabdde33a4bfdfa755fe64690b04827ced6e3a01",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 73,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/91/91718d24875640257e02dafc4d519b778d16b909268ec1b0cd216e7baacd1a66.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:49867729-a94b-108d-f0a9-a69695fe9e0d",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:0f98c901-3c00-e435-7115-af68bc94e0a8",
  "kind": "theorem",
  "lexical_name": "ContDiffAt.contDiffAt_norm_of_smul",
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
  "slug": "contdiffat-contdiffat-norm-of-smul--442cd774290043d65dc918ef",
  "source": {
    "blob": "fabdde33a4bfdfa755fe64690b04827ced6e3a01",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 88,
    "line": 73,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Norm/Variant91718d24875640257e02dafc4d519b778d16b909268ec1b0cd216e7baacd1a66.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:442cd774290043d65dc918efad26391782a3ad9ab62a9413e0f00b07dd36e9cb",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/Norm/Variant91718d24875640257e02dafc4d519b778d16b909268ec1b0cd216e7baacd1a66.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0f98c901-3c00-e435-7115-af68bc94e0a8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 73–88.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem ContDiffAt.contDiffAt_norm_of_smul (h : ContDiffAt ℝ n (‖·‖) (t • x)) :
    ContDiffAt ℝ n (‖·‖) x := by
  rcases eq_bot_or_bot_lt n with rfl | hn
  · apply contDiffAt_zero.2
    exact ⟨univ, univ_mem, continuous_norm.continuousOn⟩
  replace hn : 1 ≤ n := ENat.add_one_natCast_le_withTop_of_lt hn
  obtain rfl | ht := eq_or_ne t 0
  · by_cases hE : Nontrivial E
    · rw [zero_smul] at h
      exact (mt (ContDiffAt.differentiableAt · (mod_cast hn)))
        (not_differentiableAt_norm_zero E) h |>.elim
    · rw [not_nontrivial_iff_subsingleton] at hE
      rw [eq_const_of_subsingleton (‖·‖) 0]
      exact contDiffAt_const
  · exact contDiffAt_norm_smul_iff ht |>.2 h

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/Norm/Variant91718d24875640257e02dafc4d519b778d16b909268ec1b0cd216e7baacd1a66.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Norm/Variant91718d24875640257e02dafc4d519b778d16b909268ec1b0cd216e7baacd1a66.lean#L73).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fabdde33a4bfdfa755fe64690b04827ced6e3a01` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
