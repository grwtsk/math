# IsOrderBornology.cobounded_le_atBot_sup_atTop

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "0789f5caa20de55d3f19f778095d69631e4cd8d2",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 131,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/84/847a439b81b65d32cff40d0c60e6a01128afcf9d5d4fe22f57ab13741f79234d.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:aa8718ea-400c-9022-6e11-85da1c0885ce",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:19dd3886-5462-4a56-7ce9-a6e5b88a0cfa",
  "kind": "lemma",
  "lexical_name": "IsOrderBornology.cobounded_le_atBot_sup_atTop",
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
  "slug": "isorderbornology-cobounded-le-atbot-sup-attop--0e1a8770449a4c4e02c4d32c",
  "source": {
    "blob": "0789f5caa20de55d3f19f778095d69631e4cd8d2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 141,
    "line": 131,
    "path": "GRWTSK/Topology/GeneralTopology/Bornology/Variant847a439b81b65d32cff40d0c60e6a01128afcf9d5d4fe22f57ab13741f79234d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0e1a8770449a4c4e02c4d32ccd24577ee937d40d861bdd013ece2ce6106518bb",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Bornology/Variant847a439b81b65d32cff40d0c60e6a01128afcf9d5d4fe22f57ab13741f79234d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:19dd3886-5462-4a56-7ce9-a6e5b88a0cfa`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 131–141.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma IsOrderBornology.cobounded_le_atBot_sup_atTop : cobounded α ≤ .atBot ⊔ .atTop := by
  have := Nonempty.of_isOrderBornology α
  intro s
  rw [Filter.mem_sup, Filter.atTop_basis.mem_iff, Filter.atBot_basis.mem_iff,
    ← compl_compl s, ← isBounded_def, isBounded_iff_bddBelow_bddAbove, compl_compl s]
  intro ⟨⟨b, _, hb⟩, ⟨a, _, ha⟩⟩
  refine ⟨⟨b, fun x hx ↦ ?_⟩, ⟨a, fun x hx ↦ ?_⟩⟩ <;> by_contra! hx'
  · exact hx (hb hx'.le)
  · exact hx (ha hx'.le)

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Bornology/Variant847a439b81b65d32cff40d0c60e6a01128afcf9d5d4fe22f57ab13741f79234d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Bornology/Variant847a439b81b65d32cff40d0c60e6a01128afcf9d5d4fe22f57ab13741f79234d.lean#L131).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0789f5caa20de55d3f19f778095d69631e4cd8d2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
