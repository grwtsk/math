# depth_mapAtoms

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a6ab7a91-efae-e7d7-624b-d88629f371fa",
  "kind": "theorem",
  "lexical_name": "depth_mapAtoms",
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
  "slug": "depth-mapatoms--f7841b4b2f47e40e7d4cd4a0",
  "source": {
    "blob": "c06f1c0aca2874d241271af079fe9ce12b03b200",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 121,
    "line": 107,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Traversal/Variant7b24a9d58b846b5e779ca44e0b04af4c8cf97481114a3dd97c2a346f3cc30366.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f7841b4b2f47e40e7d4cd4a0eca40429ae8f62e2288aea787749b02badb1d74c",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Traversal/Variant7b24a9d58b846b5e779ca44e0b04af4c8cf97481114a3dd97c2a346f3cc30366.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a6ab7a91-efae-e7d7-624b-d88629f371fa`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 107–121.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[simp] theorem depth_mapAtoms (f : α → β) (p : Formula α) :
    depth (mapAtoms f p) = depth p := by
  induction p with
  | var a => rfl
  | falsum => rfl
  | truth => rfl
  | neg p ih => simp [depth, mapAtoms, ih]
  | conj p q ihp ihq => simp [depth, mapAtoms, ihp, ihq]
  | disj p q ihp ihq => simp [depth, mapAtoms, ihp, ihq]
  | impl p q ihp ihq => simp [depth, mapAtoms, ihp, ihq]
  | eqv p q ihp ihq => simp [depth, mapAtoms, ihp, ihq]

end Formula

end Boolean
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Traversal/Variant7b24a9d58b846b5e779ca44e0b04af4c8cf97481114a3dd97c2a346f3cc30366.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Traversal/Variant7b24a9d58b846b5e779ca44e0b04af4c8cf97481114a3dd97c2a346f3cc30366.lean#L107).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c06f1c0aca2874d241271af079fe9ce12b03b200` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
