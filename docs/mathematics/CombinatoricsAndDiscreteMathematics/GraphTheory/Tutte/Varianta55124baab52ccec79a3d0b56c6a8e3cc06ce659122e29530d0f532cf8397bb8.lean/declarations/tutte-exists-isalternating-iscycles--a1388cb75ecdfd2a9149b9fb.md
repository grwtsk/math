# tutte_exists_isAlternating_isCycles

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b8fef9e1-5ace-9c54-ce34-65c384ea7678",
  "kind": "lemma",
  "lexical_name": "tutte_exists_isAlternating_isCycles",
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
  "slug": "tutte-exists-isalternating-iscycles--a1388cb75ecdfd2a9149b9fb",
  "source": {
    "blob": "dde6a14ab51ee1b8aa624c9ddf0278ee57b829db",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 64,
    "line": 46,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/Tutte/Varianta55124baab52ccec79a3d0b56c6a8e3cc06ce659122e29530d0f532cf8397bb8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a1388cb75ecdfd2a9149b9fb0bf14cbe4de883c19984b3ed0d3286ce824124ea",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/GraphTheory/Tutte/Varianta55124baab52ccec79a3d0b56c6a8e3cc06ce659122e29530d0f532cf8397bb8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b8fef9e1-5ace-9c54-ce34-65c384ea7678`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 46–64.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private lemma tutte_exists_isAlternating_isCycles {x b a c : V} {M : Subgraph (G ⊔ edge a c)}
    (p : G'.Walk a x) (hp : p.IsPath) (hcalt : G'.IsAlternating M.spanningCoe)
    (hM2nadj : ¬M.Adj x a) (hpac : p.toSubgraph.Adj a c) (hnpxb : ¬p.toSubgraph.Adj x b)
    (hM2ac : M.Adj a c) (hgadj : G.Adj x a) (hnxc : x ≠ c) (hnab : a ≠ b)
    (hle : p.toSubgraph.spanningCoe ≤ G ⊔ edge a c)
    (aux : (c' : V) → c' ≠ a → p.toSubgraph.Adj c' x → M.Adj c' x) :
    ∃ G', G'.IsAlternating M.spanningCoe ∧ G'.IsCycles ∧
      ¬ G'.Adj x b ∧ G'.Adj a c ∧ G' ≤ G ⊔ edge a c := by
  refine ⟨p.toSubgraph.spanningCoe ⊔ edge x a, (hcalt.spanningCoe p.toSubgraph).sup_edge (by simpa)
    (fun u' hu'x hadj ↦ ?_) aux, ?_, ?_, by aesop, sup_le_iff.mpr ⟨hle, fun v w hvw ↦ ?_⟩⟩
  · simpa [← hp.snd_of_toSubgraph_adj hadj, hp.snd_of_toSubgraph_adj hpac]
  · refine hp.isCycles_spanningCoe_toSubgraph_sup_edge hgadj.ne.symm fun hadj ↦ ?_
    rw [← Walk.mem_edges_toSubgraph, Subgraph.mem_edgeSet] at hadj
    simp [← hp.snd_of_toSubgraph_adj hadj.symm, hp.snd_of_toSubgraph_adj hpac] at hnxc
  · simp +contextual [hnpxb, edge_adj, hnab.symm]
  · simpa [edge_adj, adj_congr_of_sym2 _ ((adj_edge _ _).mp hvw).1.symm] using .inl hgadj

variable [Finite V]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/GraphTheory/Tutte/Varianta55124baab52ccec79a3d0b56c6a8e3cc06ce659122e29530d0f532cf8397bb8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/Tutte/Varianta55124baab52ccec79a3d0b56c6a8e3cc06ce659122e29530d0f532cf8397bb8.lean#L46).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `dde6a14ab51ee1b8aa624c9ddf0278ee57b829db` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
