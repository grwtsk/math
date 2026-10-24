# capacity_increment_square_closed

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "724caadee0714acf22b86826bdb499c4b541bebd",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 13,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/0b/0b99bf9dfd5f611542ba6ec4da727417306f7b31f543f142aae9bef7f004c7a2.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:db4982a4-a5df-e443-d1d3-5ec3d533ba5e",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:d3a3c815-5801-7797-b5bf-5d43fb7a5938",
  "kind": "theorem",
  "lexical_name": "capacity_increment_square_closed",
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
  "slug": "capacity-increment-square-closed--7e60469caff920cc69661d92",
  "source": {
    "blob": "724caadee0714acf22b86826bdb499c4b541bebd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 33,
    "line": 13,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/BoundaryCochain/Variant0b99bf9dfd5f611542ba6ec4da727417306f7b31f543f142aae9bef7f004c7a2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7e60469caff920cc69661d925f6737b3608c1a32c93b3c965d22e016fdf3861b",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/BoundaryCochain/Variant0b99bf9dfd5f611542ba6ec4da727417306f7b31f543f142aae9bef7f004c7a2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d3a3c815-5801-7797-b5bf-5d43fb7a5938`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 13–33.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem capacity_increment_square_closed
    {Prime : Type u}
    {Coordinate : Type v}
    [DecidableEq Prime]
    (capacity : PositiveCapacity Prime Coordinate)
    (cut : Finset Prime)
    (first second : Prime) :
    capacity.increment cut first +
        capacity.increment (insert first cut) second =
      capacity.increment cut second +
        capacity.increment (insert second cut) first := by
  funext coordinate
  have terminal_cuts_equal :
      insert second (insert first cut) =
        insert first (insert second cut) := by
    ext prime
    simp [or_left_comm]
  simp only [PositiveCapacity.increment, Pi.add_apply, Pi.sub_apply]
  rw [terminal_cuts_equal]
  ring

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/BoundaryCochain/Variant0b99bf9dfd5f611542ba6ec4da727417306f7b31f543f142aae9bef7f004c7a2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/BoundaryCochain/Variant0b99bf9dfd5f611542ba6ec4da727417306f7b31f543f142aae9bef7f004c7a2.lean#L13).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `724caadee0714acf22b86826bdb499c4b541bebd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
