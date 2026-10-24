# isClosed_closedBall

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "d99d818b9341d847f444d21aa4b3df15153b1904",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 265,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/71/71bb9dfe9db1b9c9ddffb7d619979cea9db4d552c447f7fe62c1d7d2a2f87507.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:959b2511-41fd-59cb-5ac8-baab2c7b6a2b",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:fce8d615-8f7f-5b9b-8caa-f59e26511505",
  "kind": "theorem",
  "lexical_name": "isClosed_closedBall",
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
  "slug": "isclosed-closedball--50d1be9e85d4e83d5d6dfa18",
  "source": {
    "blob": "d99d818b9341d847f444d21aa4b3df15153b1904",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 275,
    "line": 265,
    "path": "GRWTSK/Topology/GeneralTopology/ValuationTopology/Variant71bb9dfe9db1b9c9ddffb7d619979cea9db4d552c447f7fe62c1d7d2a2f87507.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:50d1be9e85d4e83d5d6dfa18b80fbad550984c4df438b3f2146f67613a058c79",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/ValuationTopology/Variant71bb9dfe9db1b9c9ddffb7d619979cea9db4d552c447f7fe62c1d7d2a2f87507.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:fce8d615-8f7f-5b9b-8caa-f59e26511505`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 265–275.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isClosed_closedBall (r : ValueGroup₀ (.ofClass _i.v)) :
    IsClosed {x | v.restrict x ≤ r} := by
  rw [← isOpen_compl_iff, isOpen_iff_mem_nhds]
  intro x hx
  simp only [mem_compl_iff, mem_ofPred_eq, not_le] at hx
  rw [mem_nhds]
  have hx' : v.restrict x ≠ 0 := hx.ne_zero
  exact ⟨Units.mk0 _ hx', fun y hy hy' ↦ ne_of_lt hy <| map_sub_swap v.restrict x y ▸
      (Valuation.map_sub_eq_of_lt_left _ <| lt_of_le_of_lt hy' hx)⟩

/-- A closed ball centred at the origin in a valued ring is clopen. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/ValuationTopology/Variant71bb9dfe9db1b9c9ddffb7d619979cea9db4d552c447f7fe62c1d7d2a2f87507.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/ValuationTopology/Variant71bb9dfe9db1b9c9ddffb7d619979cea9db4d552c447f7fe62c1d7d2a2f87507.lean#L265).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d99d818b9341d847f444d21aa4b3df15153b1904` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
