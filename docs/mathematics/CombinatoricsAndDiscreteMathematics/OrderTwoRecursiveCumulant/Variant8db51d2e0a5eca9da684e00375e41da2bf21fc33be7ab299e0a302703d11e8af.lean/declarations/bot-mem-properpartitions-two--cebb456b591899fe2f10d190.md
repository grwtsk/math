# bot_mem_properPartitions_two

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:4ef45e90-b354-4117-32a3-8f0cefadb102",
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
  "slug": "bot-mem-properpartitions-two--cebb456b591899fe2f10d190",
  "source": {
    "blob": "93942fd4446f96b782d224e3aecb35862d6f3635",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 81,
    "line": 65,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderTwoRecursiveCumulant/Variant8db51d2e0a5eca9da684e00375e41da2bf21fc33be7ab299e0a302703d11e8af.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:cebb456b591899fe2f10d19058ccbbf5a97c01ac6cda2cf113cb94072382ebad",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/OrderTwoRecursiveCumulant/Variant8db51d2e0a5eca9da684e00375e41da2bf21fc33be7ab299e0a302703d11e8af.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4ef45e90-b354-4117-32a3-8f0cefadb102`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 65–81.

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

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/OrderTwoRecursiveCumulant/Variant8db51d2e0a5eca9da684e00375e41da2bf21fc33be7ab299e0a302703d11e8af.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/OrderTwoRecursiveCumulant/Variant8db51d2e0a5eca9da684e00375e41da2bf21fc33be7ab299e0a302703d11e8af.lean#L65).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `93942fd4446f96b782d224e3aecb35862d6f3635` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
