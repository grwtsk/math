# preimage_open_of_open

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "69dfbf31bf8126f40d1ff1dca8d0549a998ee2ce",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 442,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/f9/f975c5422f49d74e71917e8b5678d78be4731a164a28c7ad06f4072cbcfdb624.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:2daab808-2db9-75d1-90e5-655af053e447",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:5969bbcb-c44e-f1ba-057b-d011a9a12aab",
  "kind": "theorem",
  "lexical_name": "preimage_open_of_open",
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
  "slug": "preimage-open-of-open--0df88341088baf2e72ec9498",
  "source": {
    "blob": "69dfbf31bf8126f40d1ff1dca8d0549a998ee2ce",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 467,
    "line": 442,
    "path": "GRWTSK/Topology/GeneralTopology/LocalHomeomorph/Variantf975c5422f49d74e71917e8b5678d78be4731a164a28c7ad06f4072cbcfdb624.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0df88341088baf2e72ec94987d0ecac7c5a03176cc326e1244dbce06b75b0269",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/LocalHomeomorph/Variantf975c5422f49d74e71917e8b5678d78be4731a164a28c7ad06f4072cbcfdb624.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5969bbcb-c44e-f1ba-057b-d011a9a12aab`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 442–467.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem preimage_open_of_open {s : Set β} (hs : IsOpen s) : IsOpen (e.source ∩ e ⁻¹' s) :=
  e.continuousOn.preimage_open_of_open e.open_source hs
#align local_homeomorph.preimage_open_of_open LocalHomeomorph.preimage_open_of_open

/-!
### `LocalHomeomorph.IsImage` relation

We say that `t : Set β` is an image of `s : Set α` under a local homeomorphism `e` if any of the
following equivalent conditions hold:

* `e '' (e.source ∩ s) = e.target ∩ t`;
* `e.source ∩ e ⁻¹ t = e.source ∩ s`;
* `∀ x ∈ e.source, e x ∈ t ↔ x ∈ s` (this one is used in the definition).

This definition is a restatement of `LocalEquiv.IsImage` for local homeomorphisms. In this section
we transfer API about `LocalEquiv.IsImage` to local homeomorphisms and add a few
`LocalHomeomorph`-specific lemmas like `LocalHomeomorph.IsImage.closure`.
-/

/-- We say that `t : Set β` is an image of `s : Set α` under a local homeomorphism `e` if any of the
following equivalent conditions hold:

* `e '' (e.source ∩ s) = e.target ∩ t`;
* `e.source ∩ e ⁻¹ t = e.source ∩ s`;
* `∀ x ∈ e.source, e x ∈ t ↔ x ∈ s` (this one is used in the definition).
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/LocalHomeomorph/Variantf975c5422f49d74e71917e8b5678d78be4731a164a28c7ad06f4072cbcfdb624.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/LocalHomeomorph/Variantf975c5422f49d74e71917e8b5678d78be4731a164a28c7ad06f4072cbcfdb624.lean#L442).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `69dfbf31bf8126f40d1ff1dca8d0549a998ee2ce` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
