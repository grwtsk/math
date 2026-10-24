# subsingleton_of_disjoint_isClopen

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1b4c284f-eadc-2cf1-3926-6450526a6037",
  "kind": "lemma",
  "lexical_name": "subsingleton_of_disjoint_isClopen",
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
  "slug": "subsingleton-of-disjoint-isclopen--add7e37f939deb33db7f6c19",
  "source": {
    "blob": "2b2f2955f5c4efc78bcb03ca8be607e7e431e698",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 165,
    "line": 150,
    "path": "GRWTSK/Topology/GeneralTopology/Clopen/Variant7be024d1556b9b71b37ae49287de8b1efd8c5da75e8012889cc86edae5b91abe.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:add7e37f939deb33db7f6c1964fa98a84d9d10db4652bf547f3ed18813112dba",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Clopen/Variant7be024d1556b9b71b37ae49287de8b1efd8c5da75e8012889cc86edae5b91abe.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1b4c284f-eadc-2cf1-3926-6450526a6037`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 150–165.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma subsingleton_of_disjoint_isClopen
    (h_clopen : ∀ i, IsClopen (s i)) :
    Subsingleton ι := by
  replace h_nonempty : ∀ i, s i ≠ ∅ := by intro i; rw [← nonempty_iff_ne_empty]; exact h_nonempty i
  rw [← not_nontrivial_iff_subsingleton]
  by_contra contra
  obtain ⟨i, j, h_ne⟩ := contra
  replace h_ne : s i ∩ s j = ∅ := by
    simpa only [← bot_eq_empty, eq_bot_iff, ← inf_eq_inter, ← disjoint_iff_inf_le] using h_disj h_ne
  rcases isClopen_iff.mp (h_clopen i) with hi | hi
  · exact h_nonempty i hi
  · rw [hi, univ_inter] at h_ne
    exact h_nonempty j h_ne

/-- In a preconnected space, any disjoint cover by non-empty open subsets has at most one
element. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Clopen/Variant7be024d1556b9b71b37ae49287de8b1efd8c5da75e8012889cc86edae5b91abe.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Clopen/Variant7be024d1556b9b71b37ae49287de8b1efd8c5da75e8012889cc86edae5b91abe.lean#L150).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2b2f2955f5c4efc78bcb03ca8be607e7e431e698` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
