# tendsto_lim

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "8ec96dfd5daccc6a2849b2c420e40e47a673714b",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 82,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/59/590db6b8bb0161a720c82f900e4981b4fc82c8a72ef0e2da353ae31dee163477.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:4b90d766-976d-b31f-87c5-c68635878946",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:9214d52e-a820-8fe4-378b-23d98093d8ed",
  "kind": "theorem",
  "lexical_name": "tendsto_lim",
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
  "slug": "tendsto-lim--e8511eb13267d8dbf2448a4b",
  "source": {
    "blob": "8ec96dfd5daccc6a2849b2c420e40e47a673714b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 94,
    "line": 82,
    "path": "GRWTSK/Topology/GeneralTopology/Subadditive/Variant590db6b8bb0161a720c82f900e4981b4fc82c8a72ef0e2da353ae31dee163477.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e8511eb13267d8dbf2448a4b632422b22e932054bef3fa4cf9a398a2e7b0367e",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Subadditive/Variant590db6b8bb0161a720c82f900e4981b4fc82c8a72ef0e2da353ae31dee163477.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9214d52e-a820-8fe4-378b-23d98093d8ed`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 82–94.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem tendsto_lim (hbdd : BddBelow (range fun n => u n / n)) :
    Tendsto (fun n => u n / n) atTop (𝓝 h.lim) := by
  refine tendsto_order.2 ⟨fun l hl => ?_, fun L hL => ?_⟩
  · refine eventually_atTop.2
      ⟨1, fun n hn => hl.trans_le (h.lim_le_div hbdd (zero_lt_one.trans_le hn).ne')⟩
  · obtain ⟨n, npos, hn⟩ : ∃ n : ℕ, 0 < n ∧ u n / n < L := by
      rw [Subadditive.lim] at hL
      rcases exists_lt_of_csInf_lt (by simp) hL with ⟨x, hx, xL⟩
      rcases (mem_image _ _ _).1 hx with ⟨n, hn, rfl⟩
      exact ⟨n, zero_lt_one.trans_le hn, xL⟩
    exact h.eventually_div_lt_of_div_lt npos.ne' hn

end Subadditive
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Subadditive/Variant590db6b8bb0161a720c82f900e4981b4fc82c8a72ef0e2da353ae31dee163477.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Subadditive/Variant590db6b8bb0161a720c82f900e4981b4fc82c8a72ef0e2da353ae31dee163477.lean#L82).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8ec96dfd5daccc6a2849b2c420e40e47a673714b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
