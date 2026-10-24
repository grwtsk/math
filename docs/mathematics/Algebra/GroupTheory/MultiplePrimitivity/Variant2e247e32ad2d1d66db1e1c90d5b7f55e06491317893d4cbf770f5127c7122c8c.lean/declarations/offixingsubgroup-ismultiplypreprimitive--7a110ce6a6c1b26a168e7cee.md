# ofFixingSubgroup.isMultiplyPreprimitive

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:89e91487-1a11-c1d9-cc97-067bf966d0e4",
  "kind": "theorem",
  "lexical_name": "ofFixingSubgroup.isMultiplyPreprimitive",
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
  "slug": "offixingsubgroup-ismultiplypreprimitive--7a110ce6a6c1b26a168e7cee",
  "source": {
    "blob": "7c6d8cdec8221628505254ecf73d93f1dbf22864",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 238,
    "line": 218,
    "path": "GRWTSK/Algebra/GroupTheory/MultiplePrimitivity/Variant2e247e32ad2d1d66db1e1c90d5b7f55e06491317893d4cbf770f5127c7122c8c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7a110ce6a6c1b26a168e7cee00bb1c1feef82af637c2646a7f57b7b58c25ebb0",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/MultiplePrimitivity/Variant2e247e32ad2d1d66db1e1c90d5b7f55e06491317893d4cbf770f5127c7122c8c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:89e91487-1a11-c1d9-cc97-067bf966d0e4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 218–238.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem ofFixingSubgroup.isMultiplyPreprimitive
    {m n : ℕ} [IsMultiplyPreprimitive M α n] {s : Set α} [Finite s] (hs : s.ncard + m = n) :
    IsMultiplyPreprimitive (fixingSubgroup M s) (SubMulAction.ofFixingSubgroup M s) m where
  isMultiplyPretransitive := by
    apply ofFixingSubgroup.isMultiplyPretransitive _ s hs
  isPreprimitive_ofFixingSubgroup {t} ht := by
    let t' : Set α := Subtype.val '' t
    have htt' : t = Subtype.val ⁻¹' t' :=
      (Set.preimage_image_eq _ Subtype.coe_injective).symm
    rw [htt']
    suffices IsPreprimitive (fixingSubgroup M (s ∪ t')) (ofFixingSubgroup M (s ∪ t')) by
      apply IsPreprimitive.of_surjective map_ofFixingSubgroupUnion_bijective.surjective
    apply IsMultiplyPreprimitive.isPreprimitive_ofFixingSubgroup _ n
    rw [Set.encard_union_eq _]
    · rw [Subtype.coe_injective.encard_image, add_assoc, ht,
        ← hs, Nat.cast_add, Set.Finite.cast_ncard_eq]
      exact Set.toFinite s
    · apply disjoint_val_image

/-- `n.succ`-pretransitivity implies `n`-preprimitivity. -/
@[to_additive /-- `n.succ`-pretransitivity implies `n`-preprimitivity. -/]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/MultiplePrimitivity/Variant2e247e32ad2d1d66db1e1c90d5b7f55e06491317893d4cbf770f5127c7122c8c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/MultiplePrimitivity/Variant2e247e32ad2d1d66db1e1c90d5b7f55e06491317893d4cbf770f5127c7122c8c.lean#L218).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7c6d8cdec8221628505254ecf73d93f1dbf22864` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
