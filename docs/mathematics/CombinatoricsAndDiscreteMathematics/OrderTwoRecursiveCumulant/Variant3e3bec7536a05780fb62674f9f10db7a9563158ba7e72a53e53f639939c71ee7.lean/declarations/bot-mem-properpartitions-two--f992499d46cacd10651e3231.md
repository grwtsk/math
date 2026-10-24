# bot_mem_properPartitions_two

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "46437bd641abecc541dbbf52300387f18f345310",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 57,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/3e/3e3bec7536a05780fb62674f9f10db7a9563158ba7e72a53e53f639939c71ee7.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:27e580c1-a29e-ce40-dbe1-b5ace965d9b3",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:03132a76-f331-dc5c-938e-037bb3b89adb",
  "kind": "theorem",
  "lexical_name": "bot_mem_properPartitions_two",
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
  "slug": "bot-mem-properpartitions-two--f992499d46cacd10651e3231",
  "source": {
    "blob": "46437bd641abecc541dbbf52300387f18f345310",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 73,
    "line": 57,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderTwoRecursiveCumulant/Variant3e3bec7536a05780fb62674f9f10db7a9563158ba7e72a53e53f639939c71ee7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f992499d46cacd10651e32316fe51691e9f75f7b20b7ae1a7000ce1f8c693626",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/OrderTwoRecursiveCumulant/Variant3e3bec7536a05780fb62674f9f10db7a9563158ba7e72a53e53f639939c71ee7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:03132a76-f331-dc5c-938e-037bb3b89adb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 57–73.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem bot_mem_properPartitions_two :
    (⊥ : DirectionPartition 2) ∈
      properPartitions 2 (Nat.succ_pos 1) := by
  rw [properPartitions, Finset.mem_erase]
  constructor
  · intro hEq
    have hparts := congrArg Finpartition.parts hEq
    have hcard := congrArg Finset.card hparts
    rw [Finpartition.card_bot,
      oneBlockPartition_parts,
      Finset.card_singleton,
      Finset.card_univ,
      Fintype.card_fin] at hcard
    exact (by decide : (2 : ℕ) ≠ 1) hcard
  · exact Finset.mem_univ _

/-- There is exactly one proper partition at order two. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/OrderTwoRecursiveCumulant/Variant3e3bec7536a05780fb62674f9f10db7a9563158ba7e72a53e53f639939c71ee7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/OrderTwoRecursiveCumulant/Variant3e3bec7536a05780fb62674f9f10db7a9563158ba7e72a53e53f639939c71ee7.lean#L57).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `46437bd641abecc541dbbf52300387f18f345310` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
