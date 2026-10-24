# Path.reflect

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:702b0ab0a5bc3ed4500ac501ef1eff03e4d4de9c01099af4050178af8975f841",
  "kind": "def",
  "lexical_name": "Path.reflect",
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
  "slug": "path-reflect--9ab56c199b30786fd036966c",
  "source": {
    "blob": "d9c90518c751d6a0f06014b85467b1c350a5c164",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 455,
    "line": 441,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Imo2024Q5/Variant14c9228705a52a51838a951f9099b9c397e1dc5fb004e7ac1e7e4b56d8cdbc74.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:9ab56c199b30786fd036966cd82ce4b20c394e5eed735665b67bae955daba4de",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Imo2024Q5/Variant14c9228705a52a51838a951f9099b9c397e1dc5fb004e7ac1e7e4b56d8cdbc74.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:702b0ab0a5bc3ed4500ac501ef1eff03e4d4de9c01099af4050178af8975f841`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 441–455.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def Path.reflect (p : Path N) : Path N where
  cells := p.cells.map Cell.reflect
  nonempty := mt List.map_eq_nil_iff.1 p.nonempty
  head_first_row := by
    rw [List.head_map]
    exact p.head_first_row
  last_last_row := by
    rw [List.getLast_map]
    exact p.last_last_row
  valid_move_seq := by
    refine List.chain'_map_of_chain' _ ?_ p.valid_move_seq
    intro x y h
    simp_rw [Adjacent, Nat.dist, Cell.reflect, Fin.rev] at h ⊢
    omega

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Imo2024Q5/Variant14c9228705a52a51838a951f9099b9c397e1dc5fb004e7ac1e7e4b56d8cdbc74.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Imo2024Q5/Variant14c9228705a52a51838a951f9099b9c397e1dc5fb004e7ac1e7e4b56d8cdbc74.lean#L441).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d9c90518c751d6a0f06014b85467b1c350a5c164` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
