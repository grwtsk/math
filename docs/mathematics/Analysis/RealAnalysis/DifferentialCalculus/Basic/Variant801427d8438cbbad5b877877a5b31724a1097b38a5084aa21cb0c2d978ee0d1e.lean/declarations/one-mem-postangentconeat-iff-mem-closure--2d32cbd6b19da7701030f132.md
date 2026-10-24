# one_mem_posTangentConeAt_iff_mem_closure

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "861372d13c35ad646b906742ccbc9bb12d841d6a",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 214,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/80/801427d8438cbbad5b877877a5b31724a1097b38a5084aa21cb0c2d978ee0d1e.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:94108b9f-50f8-4c6d-58f8-2c2557f6ec9a",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:fcf82b15-a80d-b569-444e-f062ad314c63",
  "kind": "lemma",
  "lexical_name": "one_mem_posTangentConeAt_iff_mem_closure",
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
  "slug": "one-mem-postangentconeat-iff-mem-closure--2d32cbd6b19da7701030f132",
  "source": {
    "blob": "861372d13c35ad646b906742ccbc9bb12d841d6a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 229,
    "line": 214,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Basic/Variant801427d8438cbbad5b877877a5b31724a1097b38a5084aa21cb0c2d978ee0d1e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2d32cbd6b19da7701030f1325bc533d16d0adabf7081280d03c85cb461d3018b",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/Basic/Variant801427d8438cbbad5b877877a5b31724a1097b38a5084aa21cb0c2d978ee0d1e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:fcf82b15-a80d-b569-444e-f062ad314c63`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 214–229.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma one_mem_posTangentConeAt_iff_mem_closure :
    1 ∈ posTangentConeAt s a ↔ a ∈ closure (Ioi a ∩ s) := by
  constructor
  · intro h
    rcases exists_fun_of_mem_tangentConeAt h with ⟨ι, l, hl, c, d, hd₀, hd, hcd⟩
    have : Tendsto (a + d ·) l (𝓝 a) := by
      simpa only [add_zero] using tendsto_const_nhds.add hd₀
    apply mem_closure_of_tendsto this
    filter_upwards [hcd.eventually_const_lt one_pos, hd] with n hcdn hdn
    refine ⟨?_, hdn⟩
    simpa using pos_of_mul_pos_right hcdn
  · intro h
    apply mem_posTangentConeAt_of_frequently_mem
    rw [mem_closure_iff_frequently, ← map_add_left_nhds_zero, frequently_map] at h
    simpa [nhdsWithin, frequently_inf_principal] using h

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/Basic/Variant801427d8438cbbad5b877877a5b31724a1097b38a5084aa21cb0c2d978ee0d1e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Basic/Variant801427d8438cbbad5b877877a5b31724a1097b38a5084aa21cb0c2d978ee0d1e.lean#L214).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `861372d13c35ad646b906742ccbc9bb12d841d6a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
