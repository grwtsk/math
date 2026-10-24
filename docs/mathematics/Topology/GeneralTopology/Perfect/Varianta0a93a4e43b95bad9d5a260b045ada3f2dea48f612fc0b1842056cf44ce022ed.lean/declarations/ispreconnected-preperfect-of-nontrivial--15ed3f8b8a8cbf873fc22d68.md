# IsPreconnected.preperfect_of_nontrivial

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "418558263984922713fc09516ef04cf7ad42b9e7",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 171,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/a0/a0a93a4e43b95bad9d5a260b045ada3f2dea48f612fc0b1842056cf44ce022ed.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:4e93ee2c-734f-1bd6-d0d2-037b8906cd77",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:2c522b6f-39bc-3fc8-4a84-d6b929aab158",
  "kind": "lemma",
  "lexical_name": "IsPreconnected.preperfect_of_nontrivial",
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
  "slug": "ispreconnected-preperfect-of-nontrivial--15ed3f8b8a8cbf873fc22d68",
  "source": {
    "blob": "418558263984922713fc09516ef04cf7ad42b9e7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 196,
    "line": 171,
    "path": "GRWTSK/Topology/GeneralTopology/Perfect/Varianta0a93a4e43b95bad9d5a260b045ada3f2dea48f612fc0b1842056cf44ce022ed.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:15ed3f8b8a8cbf873fc22d68cbe0a65240432ddb9fa30b032e6a3628fdb5fea2",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Perfect/Varianta0a93a4e43b95bad9d5a260b045ada3f2dea48f612fc0b1842056cf44ce022ed.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2c522b6f-39bc-3fc8-4a84-d6b929aab158`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 171–196.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma IsPreconnected.preperfect_of_nontrivial [T1Space α] {U : Set α} (hu : U.Nontrivial)
    (h : IsPreconnected U) : Preperfect U := by
  intro x hx
  rw [isPreconnected_closed_iff] at h
  specialize h {x} (closure (U \ {x})) isClosed_singleton isClosed_closure ?_ ?_ ?_
  · trans {x} ∪ (U \ {x})
    · simp
    apply Set.union_subset_union_right
    exact subset_closure
  · exact Set.inter_singleton_nonempty.mpr hx
  · obtain ⟨y, hy⟩ := Set.Nontrivial.exists_ne hu x
    use y
    simp only [Set.mem_inter_iff, hy, true_and]
    apply subset_closure
    simp [hy]
  · apply Set.Nonempty.right at h
    rw [Set.singleton_inter_nonempty, mem_closure_iff_clusterPt,
      ← accPt_principal_iff_clusterPt] at h
    exact h

end Preperfect

section Kernel

/-- The **Cantor-Bendixson Theorem**: Any closed subset of a second countable space
can be written as the union of a countable set and a perfect set. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Perfect/Varianta0a93a4e43b95bad9d5a260b045ada3f2dea48f612fc0b1842056cf44ce022ed.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Perfect/Varianta0a93a4e43b95bad9d5a260b045ada3f2dea48f612fc0b1842056cf44ce022ed.lean#L171).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `418558263984922713fc09516ef04cf7ad42b9e7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
