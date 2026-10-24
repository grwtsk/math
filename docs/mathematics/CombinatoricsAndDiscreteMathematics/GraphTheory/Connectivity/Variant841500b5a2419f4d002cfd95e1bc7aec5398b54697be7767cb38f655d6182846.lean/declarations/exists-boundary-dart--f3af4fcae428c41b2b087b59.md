# exists_boundary_dart

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "7c9710dc5db875997571fa39db2777af8844ca7e",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 1335,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/84/841500b5a2419f4d002cfd95e1bc7aec5398b54697be7767cb38f655d6182846.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:2ca84d82-9713-1fbd-7cd7-5f49c5c3f138",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:d813c218-d5fe-fb72-bffa-4991a41acab4",
  "kind": "theorem",
  "lexical_name": "exists_boundary_dart",
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
  "slug": "exists-boundary-dart--f3af4fcae428c41b2b087b59",
  "source": {
    "blob": "7c9710dc5db875997571fa39db2777af8844ca7e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1350,
    "line": 1335,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/Connectivity/Variant841500b5a2419f4d002cfd95e1bc7aec5398b54697be7767cb38f655d6182846.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f3af4fcae428c41b2b087b59927f3d3ffb0992a68a7783e3f04c4787ec123817",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/GraphTheory/Connectivity/Variant841500b5a2419f4d002cfd95e1bc7aec5398b54697be7767cb38f655d6182846.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d813c218-d5fe-fb72-bffa-4991a41acab4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1335–1350.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exists_boundary_dart {u v : V} (p : G.Walk u v) (S : Set V) (uS : u ∈ S) (vS : v ∉ S) :
    ∃ d : G.Dart, d ∈ p.darts ∧ d.fst ∈ S ∧ d.snd ∉ S := by
  induction' p with _ x y w a p' ih
  · cases vS uS
  · by_cases h : y ∈ S
    · obtain ⟨d, hd, hcd⟩ := ih h vS
      exact ⟨d, List.Mem.tail _ hd, hcd⟩
    · exact ⟨⟨(x, y), a⟩, List.Mem.head _, uS, h⟩
#align simple_graph.walk.exists_boundary_dart SimpleGraph.Walk.exists_boundary_dart

end Walk


/-! ### Type of paths -/

/-- The type for paths between two vertices. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/GraphTheory/Connectivity/Variant841500b5a2419f4d002cfd95e1bc7aec5398b54697be7767cb38f655d6182846.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/Connectivity/Variant841500b5a2419f4d002cfd95e1bc7aec5398b54697be7767cb38f655d6182846.lean#L1335).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7c9710dc5db875997571fa39db2777af8844ca7e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
