# exists_finite_cover_balls_of_isCompact_closure

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1a66a69c-0dc8-5aa6-9917-8f3c34e9ebb2",
  "kind": "lemma",
  "lexical_name": "exists_finite_cover_balls_of_isCompact_closure",
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
  "slug": "exists-finite-cover-balls-of-iscompact-closure--d3ecaedc4f4808912a12a2d7",
  "source": {
    "blob": "2f2f519ce058863da937de627e501864f1a3664e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 289,
    "line": 280,
    "path": "GRWTSK/Topology/MetricTopology/Basic/Variant8067bc89d7e62c447e2a31a09327361777fc5619bfabb95746278dc65cd161dd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d3ecaedc4f4808912a12a2d7489cd50ca83a5c71ebce1d09b3194bbb7bc96f4a",
  "verification": {
    "reference": "docs/verification/Topology/MetricTopology/Basic/Variant8067bc89d7e62c447e2a31a09327361777fc5619bfabb95746278dc65cd161dd.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1a66a69c-0dc8-5aa6-9917-8f3c34e9ebb2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 280–289.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma exists_finite_cover_balls_of_isCompact_closure (hs : IsCompact (closure s)) (hε : 0 < ε) :
    ∃ t ⊆ s, t.Finite ∧ s ⊆ ⋃ x ∈ t, ball x ε := by
  obtain ⟨t, hst⟩ := hs.elim_finite_subcover (fun x : s ↦ ball x ε) (fun _ ↦ isOpen_ball) fun x hx ↦
    let ⟨y, hy, hxy⟩ := Metric.mem_closure_iff.1 hx _ hε; mem_iUnion.2 ⟨⟨y, hy⟩, hxy⟩
  refine ⟨t.map ⟨Subtype.val, Subtype.val_injective⟩, by simp, Finset.finite_toSet _, ?_⟩
  simpa using subset_closure.trans hst

end Compact

/-- If a map is continuous on a separable set `s`, then the image of `s` is also separable. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/Basic/Variant8067bc89d7e62c447e2a31a09327361777fc5619bfabb95746278dc65cd161dd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/Basic/Variant8067bc89d7e62c447e2a31a09327361777fc5619bfabb95746278dc65cd161dd.lean#L280).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2f2f519ce058863da937de627e501864f1a3664e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
