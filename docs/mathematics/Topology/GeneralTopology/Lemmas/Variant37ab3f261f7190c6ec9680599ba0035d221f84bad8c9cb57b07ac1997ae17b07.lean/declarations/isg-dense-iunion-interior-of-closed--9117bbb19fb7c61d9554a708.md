# IsGδ.dense_iUnion_interior_of_closed

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "926a6354ec0f24fe9b2d653840ab1eba471305fb",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 115,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/37/37ab3f261f7190c6ec9680599ba0035d221f84bad8c9cb57b07ac1997ae17b07.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:9bffd521-9fd1-5770-f150-7f71a31eb7f2",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:f570c23d-dd6c-1203-e4dd-b167ec33d178",
  "kind": "theorem",
  "lexical_name": "IsGδ.dense_iUnion_interior_of_closed",
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
  "slug": "isg-dense-iunion-interior-of-closed--9117bbb19fb7c61d9554a708",
  "source": {
    "blob": "926a6354ec0f24fe9b2d653840ab1eba471305fb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 131,
    "line": 115,
    "path": "GRWTSK/Topology/GeneralTopology/Lemmas/Variant37ab3f261f7190c6ec9680599ba0035d221f84bad8c9cb57b07ac1997ae17b07.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9117bbb19fb7c61d9554a708ce2649538d9594a5593cad47f33b05ef3b82cdef",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Lemmas/Variant37ab3f261f7190c6ec9680599ba0035d221f84bad8c9cb57b07ac1997ae17b07.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f570c23d-dd6c-1203-e4dd-b167ec33d178`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 115–131.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem IsGδ.dense_iUnion_interior_of_closed [Countable ι] {s : Set X} (hs : IsGδ s) (hd : Dense s)
    {f : ι → Set X} (hc : ∀ i, IsClosed (f i)) (hU : s ⊆ ⋃ i, f i) :
    Dense (⋃ i, interior (f i)) := by
  let g i := (frontier (f i))ᶜ
  have hgo : ∀ i, IsOpen (g i) := fun i => isClosed_frontier.isOpen_compl
  have hgd : Dense (⋂ i, g i) := by
    refine dense_iInter_of_isOpen hgo fun i x => ?_
    rw [closure_compl, interior_frontier (hc _)]
    exact id
  refine (hd.inter_of_Gδ hs (.iInter_of_isOpen fun i => (hgo i)) hgd).mono ?_
  rintro x ⟨hxs, hxg⟩
  rw [mem_iInter] at hxg
  rcases mem_iUnion.1 (hU hxs) with ⟨i, hi⟩
  exact mem_iUnion.2 ⟨i, self_diff_frontier (f i) ▸ ⟨hi, hxg _⟩⟩

/-- If a countable family of closed sets cover a dense `Gδ` set, then the union of their interiors
is dense. Formulated here with a union over a countable set in any type. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Lemmas/Variant37ab3f261f7190c6ec9680599ba0035d221f84bad8c9cb57b07ac1997ae17b07.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Lemmas/Variant37ab3f261f7190c6ec9680599ba0035d221f84bad8c9cb57b07ac1997ae17b07.lean#L115).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `926a6354ec0f24fe9b2d653840ab1eba471305fb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
