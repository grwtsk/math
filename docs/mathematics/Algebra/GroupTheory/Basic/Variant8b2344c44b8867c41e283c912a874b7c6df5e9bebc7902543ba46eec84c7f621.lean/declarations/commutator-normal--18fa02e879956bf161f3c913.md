# commutator_normal

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:7632cb141ebdc4a05c919ae8c2e30e121cee8dae11b82144c7923b89ccd167c8",
  "kind": "instance",
  "lexical_name": "commutator_normal",
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
  "slug": "commutator-normal--18fa02e879956bf161f3c913",
  "source": {
    "blob": "cbecce5c2d20c99bc3ff753ac4d84b6e7d841052",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 246,
    "line": 235,
    "path": "GRWTSK/Algebra/GroupTheory/Basic/Variant8b2344c44b8867c41e283c912a874b7c6df5e9bebc7902543ba46eec84c7f621.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:18fa02e879956bf161f3c91380c4285ee4c7bf99142ff76a75f99f138cf479b6",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Basic/Variant8b2344c44b8867c41e283c912a874b7c6df5e9bebc7902543ba46eec84c7f621.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:7632cb141ebdc4a05c919ae8c2e30e121cee8dae11b82144c7923b89ccd167c8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 235–246.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance commutator_normal [h₁ : H₁.Normal] [h₂ : H₂.Normal] : Normal ⁅H₁, H₂⁆ := by
  let base : Set G := { x | ∃ g₁ ∈ H₁, ∃ g₂ ∈ H₂, ⁅g₁, g₂⁆ = x }
  change (closure base).Normal
  suffices h_base : base = Group.conjugatesOfSet base by
    rw [h_base]
    exact Subgroup.normalClosure_normal
  refine Set.Subset.antisymm Group.subset_conjugatesOfSet fun a h => ?_
  simp_rw [Group.mem_conjugatesOfSet_iff, isConj_iff] at h
  rcases h with ⟨b, ⟨c, hc, e, he, rfl⟩, d, rfl⟩
  exact ⟨_, h₁.conj_mem c hc d, _, h₂.conj_mem e he d, (conjugate_commutatorElement c e d).symm⟩

@[to_additive]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Basic/Variant8b2344c44b8867c41e283c912a874b7c6df5e9bebc7902543ba46eec84c7f621.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Basic/Variant8b2344c44b8867c41e283c912a874b7c6df5e9bebc7902543ba46eec84c7f621.lean#L235).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cbecce5c2d20c99bc3ff753ac4d84b6e7d841052` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
