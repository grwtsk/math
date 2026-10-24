# Continuous.isBounded_range_iff_isBigO

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "35691fb6b0cfc497a73e0fc1594d745b32029b7c",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 234,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/0c/0c1948ecd3fea448142a2504d7ae05e8958da3eec898c2daddac762fc3e84509.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:2e6eb698-3be4-0b49-d6f4-44da93e96442",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:e1695300-3e0b-88d4-7ae7-70b76bcf3d25",
  "kind": "theorem",
  "lexical_name": "Continuous.isBounded_range_iff_isBigO",
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
  "slug": "continuous-isbounded-range-iff-isbigo--d1f5c09e427a2dfc44fd4f94",
  "source": {
    "blob": "35691fb6b0cfc497a73e0fc1594d745b32029b7c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 259,
    "line": 234,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/SpecificAsymptotics/Variant0c1948ecd3fea448142a2504d7ae05e8958da3eec898c2daddac762fc3e84509.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d1f5c09e427a2dfc44fd4f945fcaa97a66804764e9c52755d05f76a8adf0080d",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/SpecificAsymptotics/Variant0c1948ecd3fea448142a2504d7ae05e8958da3eec898c2daddac762fc3e84509.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e1695300-3e0b-88d4-7ae7-70b76bcf3d25`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 234–259.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Continuous.isBounded_range_iff_isBigO {f : D → E} (hf : Continuous f) :
    IsBounded (range f) ↔ f =O[cocompact D] (1 : D → ℝ) := by
  constructor <;> intro h
  · rw [isBounded_iff_forall_norm_le] at h
    obtain ⟨c, hc⟩ := h
    simp only [Set.mem_range, forall_exists_index, forall_apply_eq_imp_iff] at hc
    rw [isBigO_iff]
    use c
    apply Eventually.of_forall
    simpa using hc
  · simp_rw [isBigO_iff, Filter.Eventually, Filter.mem_cocompact] at h
    simp only [Pi.one_apply, norm_one, mul_one] at h
    obtain ⟨c, t, hcompact, h⟩ := h
    rw [← Set.image_union_image_compl_eq_range (s := t)]
    apply IsBounded.union
    · apply (IsCompact.image hcompact hf).isBounded
    · rw [isBounded_iff_forall_norm_le]
      refine ⟨c, fun x hx ↦ ?_⟩
      rw [Set.mem_image] at hx
      obtain ⟨y, hy, rfl⟩ := hx
      simpa using mem_of_mem_of_subset hy h

/--
A continuous function `f` on an unbounded linear order with compact intervals has bounded range if
and only if it is `O(1)` at both `atTop` and `atBot`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/SpecificAsymptotics/Variant0c1948ecd3fea448142a2504d7ae05e8958da3eec898c2daddac762fc3e84509.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/SpecificAsymptotics/Variant0c1948ecd3fea448142a2504d7ae05e8958da3eec898c2daddac762fc3e84509.lean#L234).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `35691fb6b0cfc497a73e0fc1594d745b32029b7c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
