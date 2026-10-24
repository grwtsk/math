# card_edgeFinset_induce_compl_singleton

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ef553b16-cca5-9285-87a9-1e6629657211",
  "kind": "theorem",
  "lexical_name": "card_edgeFinset_induce_compl_singleton",
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
  "slug": "card-edgefinset-induce-compl-singleton--3da985d14c1fab1bec7bd2d0",
  "source": {
    "blob": "6bd55eb40c7f1283bac1c17f9575203894140788",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 162,
    "line": 150,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/DeleteEdges/Variant6533432644c14de667a6cf131307b9a2148ff4f9fcea20d9f70c2e02c11a5704.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3da985d14c1fab1bec7bd2d0fc2903583f46c7f331ab271892f46cf591ae1893",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/DeleteEdges/Variant6533432644c14de667a6cf131307b9a2148ff4f9fcea20d9f70c2e02c11a5704.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ef553b16-cca5-9285-87a9-1e6629657211`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 150–162.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem card_edgeFinset_induce_compl_singleton (G : SimpleGraph V) [DecidableRel G.Adj] (x : V) :
    #(G.induce {x}ᶜ).edgeFinset = #(G.deleteIncidenceSet x).edgeFinset := by
  have h_notMem : x ∉ ({x}ᶜ : Set V) := Set.notMem_compl_iff.mpr (Set.mem_singleton x)
  simp_rw [Set.toFinset_card,
    ← G.induce_deleteIncidenceSet_of_notMem h_notMem, ← Set.toFinset_card]
  apply card_edgeFinset_induce_of_support_subset
  trans G.support \ {x}
  · exact support_deleteIncidenceSet_subset G x
  · rw [Set.compl_eq_univ_diff]
    exact Set.diff_subset_diff_left (Set.subset_univ G.support)

/-- The finite edge set of `G.deleteIncidenceSet x` is the finite edge set of the simple graph `G`
set difference the finite incidence set of the vertex `x`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/DeleteEdges/Variant6533432644c14de667a6cf131307b9a2148ff4f9fcea20d9f70c2e02c11a5704.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/DeleteEdges/Variant6533432644c14de667a6cf131307b9a2148ff4f9fcea20d9f70c2e02c11a5704.lean#L150).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6bd55eb40c7f1283bac1c17f9575203894140788` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
