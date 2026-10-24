# map₂_right_identity

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "933e6da7c6646321dd8de2185b8bc03b9574ada7",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 271,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/13/134901bf2f2086f319a20b6cfb923433994508d841984c4b7598a47da78d4163.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:db4eb55e-56ee-b21b-2c45-b54b8be83536",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:c60660b3-b58a-6b14-36e9-322d029b12b1",
  "kind": "theorem",
  "lexical_name": "map₂_right_identity",
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
  "slug": "map-right-identity--dc683b09899ce506f5b0b9cb",
  "source": {
    "blob": "933e6da7c6646321dd8de2185b8bc03b9574ada7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 274,
    "line": 271,
    "path": "GRWTSK/Topology/GeneralTopology/NAry/Variant134901bf2f2086f319a20b6cfb923433994508d841984c4b7598a47da78d4163.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:dc683b09899ce506f5b0b9cb1857a9826e5efbe37d3ecec8799aa5fdae6dc107",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/NAry/Variant134901bf2f2086f319a20b6cfb923433994508d841984c4b7598a47da78d4163.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c60660b3-b58a-6b14-36e9-322d029b12b1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 271–274.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem map₂_right_identity {f : α → β → α} {b : β} (h : ∀ a, f a b = a) (l : Filter α) :
    map₂ f l (pure b) = l := by rw [map₂_pure_right, funext h, map_id']

end Filter
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/NAry/Variant134901bf2f2086f319a20b6cfb923433994508d841984c4b7598a47da78d4163.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/NAry/Variant134901bf2f2086f319a20b6cfb923433994508d841984c4b7598a47da78d4163.lean#L271).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `933e6da7c6646321dd8de2185b8bc03b9574ada7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
