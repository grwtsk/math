# Dense.open_subset_closure_inter

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "8bfc6cc6c85396ab77a34b0725508d165b3903f4",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 318,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/ef/ef0e4d65986641366ffcc380a613f210207fee31e8640e1488a8cae41395383a.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:2ad61a04-2880-31f9-af8c-8df11681680a",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:016f59cd-3d3c-e49d-d1e5-5e0b98fdc338",
  "kind": "theorem",
  "lexical_name": "Dense.open_subset_closure_inter",
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
  "slug": "dense-open-subset-closure-inter--629e6c0adcbbb4d492c659ba",
  "source": {
    "blob": "8bfc6cc6c85396ab77a34b0725508d165b3903f4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 324,
    "line": 318,
    "path": "GRWTSK/Topology/GeneralTopology/Neighborhoods/Variantef0e4d65986641366ffcc380a613f210207fee31e8640e1488a8cae41395383a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:629e6c0adcbbb4d492c659ba9ba96a055913b6f58b28353eacb22f61c3b716cf",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Neighborhoods/Variantef0e4d65986641366ffcc380a613f210207fee31e8640e1488a8cae41395383a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:016f59cd-3d3c-e49d-d1e5-5e0b98fdc338`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 318–324.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Dense.open_subset_closure_inter (hs : Dense s) (ht : IsOpen t) :
    t ⊆ closure (t ∩ s) :=
  calc
    t = t ∩ closure s := by rw [hs.closure_eq, inter_univ]
    _ ⊆ closure (t ∩ s) := ht.inter_closure

/-- The intersection of an open dense set with a dense set is a dense set. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Neighborhoods/Variantef0e4d65986641366ffcc380a613f210207fee31e8640e1488a8cae41395383a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Neighborhoods/Variantef0e4d65986641366ffcc380a613f210207fee31e8640e1488a8cae41395383a.lean#L318).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8bfc6cc6c85396ab77a34b0725508d165b3903f4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
