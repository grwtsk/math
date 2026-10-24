# levelOne_nonpos_wt_const

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "95f17b0968e1939fb5d33371f20ee2b289b72a9b",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 91,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/8c/8cf3396d28c9cdb394c60d3cf554789ba153a217c54e5f2ef21196741ee32542.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:48c61b91-a0d5-6125-fa81-fa7b0d361e7b",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:58626191-7316-08ee-4957-bfab7bedea9e",
  "kind": "theorem",
  "lexical_name": "levelOne_nonpos_wt_const",
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
  "slug": "levelone-nonpos-wt-const--12df74cd668a5006c1d29589",
  "source": {
    "blob": "95f17b0968e1939fb5d33371f20ee2b289b72a9b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 98,
    "line": 91,
    "path": "GRWTSK/NumberTheory/AutomorphicForms/ModularForms/Basic/Variant8cf3396d28c9cdb394c60d3cf554789ba153a217c54e5f2ef21196741ee32542.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:12df74cd668a5006c1d29589febb1238b59e15b39646ded8674804e30d1e0e77",
  "verification": {
    "reference": "docs/verification/NumberTheory/AutomorphicForms/ModularForms/Basic/Variant8cf3396d28c9cdb394c60d3cf554789ba153a217c54e5f2ef21196741ee32542.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:58626191-7316-08ee-4957-bfab7bedea9e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 91–98.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem levelOne_nonpos_wt_const (hk : k ≤ 0) (f : F) :
    f = Function.const ℍ (cuspFunction 1 f 0) := by
  ext z
  have hQ : 𝕢 1 z ∈ (Metric.ball 0 1) := by
    simpa using (norm_qParam_lt_iff zero_lt_one 0 z.1).mpr z.2
  simpa [← SlashInvariantFormClass.eq_cuspFunction f _ one_mem_strictPeriods_SL one_ne_zero]
    using cuspFunction_eqOn_const_of_nonpos_wt hk f hQ

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/NumberTheory/AutomorphicForms/ModularForms/Basic/Variant8cf3396d28c9cdb394c60d3cf554789ba153a217c54e5f2ef21196741ee32542.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AutomorphicForms/ModularForms/Basic/Variant8cf3396d28c9cdb394c60d3cf554789ba153a217c54e5f2ef21196741ee32542.lean#L91).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `95f17b0968e1939fb5d33371f20ee2b289b72a9b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
