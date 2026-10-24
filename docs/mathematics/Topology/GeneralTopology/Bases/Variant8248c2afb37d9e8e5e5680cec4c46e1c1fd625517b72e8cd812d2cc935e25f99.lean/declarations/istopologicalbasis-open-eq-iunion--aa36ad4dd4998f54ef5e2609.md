# IsTopologicalBasis.open_eq_iUnion

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "79932e5e520be2ae0c5be72c0139c6522e7f5bb2",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 188,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/82/8248c2afb37d9e8e5e5680cec4c46e1c1fd625517b72e8cd812d2cc935e25f99.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:e942c945-55ed-046a-c323-3e7faa8f1716",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:21a3415c-9c2f-44bb-2f74-068a33c6c041",
  "kind": "theorem",
  "lexical_name": "IsTopologicalBasis.open_eq_iUnion",
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
  "slug": "istopologicalbasis-open-eq-iunion--aa36ad4dd4998f54ef5e2609",
  "source": {
    "blob": "79932e5e520be2ae0c5be72c0139c6522e7f5bb2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 193,
    "line": 188,
    "path": "GRWTSK/Topology/GeneralTopology/Bases/Variant8248c2afb37d9e8e5e5680cec4c46e1c1fd625517b72e8cd812d2cc935e25f99.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:aa36ad4dd4998f54ef5e2609efc93e9786857cba454e9d3bb4acfe3238fa4065",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Bases/Variant8248c2afb37d9e8e5e5680cec4c46e1c1fd625517b72e8cd812d2cc935e25f99.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:21a3415c-9c2f-44bb-2f74-068a33c6c041`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 188–193.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem IsTopologicalBasis.open_eq_iUnion {B : Set (Set α)} (hB : IsTopologicalBasis B) {u : Set α}
    (ou : IsOpen u) : ∃ (β : Type u) (f : β → Set α), (u = ⋃ i, f i) ∧ ∀ i, f i ∈ B :=
  ⟨↥({ s ∈ B | s ⊆ u }), (↑), by
    rw [← sUnion_eq_iUnion]
    apply hB.open_eq_sUnion' ou, fun s => And.left s.2⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Bases/Variant8248c2afb37d9e8e5e5680cec4c46e1c1fd625517b72e8cd812d2cc935e25f99.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Bases/Variant8248c2afb37d9e8e5e5680cec4c46e1c1fd625517b72e8cd812d2cc935e25f99.lean#L188).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `79932e5e520be2ae0c5be72c0139c6522e7f5bb2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
