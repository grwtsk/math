# connected_induce_union

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c452c2cc-845b-d76c-7019-d8d182c1c449",
  "kind": "lemma",
  "lexical_name": "connected_induce_union",
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
  "slug": "connected-induce-union--3980ff4f7ded8739c7505fe0",
  "source": {
    "blob": "6adfd918a29f0dfe270ed00c87365521ef60669d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 610,
    "line": 596,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/Subgraph/Variant4ee6ab7cd9484d807d33982443db5a27830729c28e437a18cc4fe20e6a4d5756.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3980ff4f7ded8739c7505fe01b5265d7d29d171f309fe0411f06fa59500e442a",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/GraphTheory/Subgraph/Variant4ee6ab7cd9484d807d33982443db5a27830729c28e437a18cc4fe20e6a4d5756.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c452c2cc-845b-d76c-7019-d8d182c1c449`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 596–610.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma connected_induce_union {v w : V} {s t : Set V}
    (sconn : (G.induce s).Preconnected) (tconn : (G.induce t).Preconnected)
    (hv : v ∈ s) (hw : w ∈ t) (ha : G.Adj v w) :
    (G.induce (s ∪ t)).Connected := by
  rw [connected_induce_iff]
  rw [preconnected_induce_iff] at sconn tconn
  apply (Subgraph.connected_induce_top_sup sconn tconn hv hw ha).mono
  · simp only [sup_le_iff, Subgraph.le_induce_union_left,
      Subgraph.le_induce_union_right, and_true, ← Subgraph.subgraphOfAdj_eq_induce ha]
    apply subgraphOfAdj_le_of_adj
    simp [hv, hw, ha]
  · simp only [Subgraph.verts_sup, Subgraph.induce_verts]
    rw [Set.union_assoc]
    simp [Set.insert_subset_iff, Set.singleton_subset_iff, hv, hw]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/GraphTheory/Subgraph/Variant4ee6ab7cd9484d807d33982443db5a27830729c28e437a18cc4fe20e6a4d5756.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/Subgraph/Variant4ee6ab7cd9484d807d33982443db5a27830729c28e437a18cc4fe20e6a4d5756.lean#L596).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6adfd918a29f0dfe270ed00c87365521ef60669d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
