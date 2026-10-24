# ofPermHomFun_apply_mem_support_cycle_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "91440cef8726265c304ec4e9f42971178fa1cbfb",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 295,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/98/9893b2978e3fec833021685d3921e88185f6a7be4e620fe78c29c08b942b8ab7.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:93902461-860e-39a9-b343-40969b01227b",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:2d32d906-f1fd-1d36-ea18-184a3e726b97",
  "kind": "theorem",
  "lexical_name": "ofPermHomFun_apply_mem_support_cycle_iff",
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
  "slug": "ofpermhomfun-apply-mem-support-cycle-iff--f1204c17fa38d9d256749531",
  "source": {
    "blob": "91440cef8726265c304ec4e9f42971178fa1cbfb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 320,
    "line": 295,
    "path": "GRWTSK/Algebra/GroupTheory/Centralizer/Variant9893b2978e3fec833021685d3921e88185f6a7be4e620fe78c29c08b942b8ab7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f1204c17fa38d9d256749531f8c1a0678533a0a0d86d67a338f9df62627f4872",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Centralizer/Variant9893b2978e3fec833021685d3921e88185f6a7be4e620fe78c29c08b942b8ab7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2d32d906-f1fd-1d36-ea18-184a3e726b97`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 295–320.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem ofPermHomFun_apply_mem_support_cycle_iff {x : α} {c : g.cycleFactorsFinset} :
    ofPermHomFun a τ x ∈ ((τ : Perm g.cycleFactorsFinset) c : Perm α).support ↔
      x ∈ c.val.support := by
  rcases mem_fixedPoints_or_exists_zpow_eq a x with (hx | ⟨d, hd, m, hm⟩)
  · simp only [ofPermHomFun_apply_of_mem_fixedPoints a τ hx]
    suffices ∀ (d : g.cycleFactorsFinset), x ∉ (d : Perm α).support by
      simp only [this]
    intro d hx'
    rw [Function.mem_fixedPoints_iff, ← notMem_support] at hx
    apply hx
    exact mem_cycleFactorsFinset_support_le d.prop hx'
  · rw [ofPermHomFun_apply_of_cycleOf_mem a τ hd hm] --
    rw [zpow_apply_mem_support_of_mem_cycleFactorsFinset_iff]
    by_cases h : c = d
    · simp only [h, hd, mem_support_self]
    · have H : Disjoint c.val d.val :=
        cycleFactorsFinset_pairwise_disjoint g c.prop d.prop (Subtype.coe_ne_coe.mpr h)
      have H' : Disjoint ((τ : Perm g.cycleFactorsFinset) c : Perm α)
        ((τ : Perm g.cycleFactorsFinset) d : Perm α) :=
        cycleFactorsFinset_pairwise_disjoint g ((τ : Perm g.cycleFactorsFinset) c).prop
          ((τ : Perm g.cycleFactorsFinset) d).prop (by
          intro h'; apply h
          simpa only [Subtype.coe_inj, EmbeddingLike.apply_eq_iff_eq] using h')
      rw [disjoint_iff_disjoint_support, Finset.disjoint_right] at H H'
      simp only [H hd, H' (mem_support_self a _)]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Centralizer/Variant9893b2978e3fec833021685d3921e88185f6a7be4e620fe78c29c08b942b8ab7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Centralizer/Variant9893b2978e3fec833021685d3921e88185f6a7be4e620fe78c29c08b942b8ab7.lean#L295).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `91440cef8726265c304ec4e9f42971178fa1cbfb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
