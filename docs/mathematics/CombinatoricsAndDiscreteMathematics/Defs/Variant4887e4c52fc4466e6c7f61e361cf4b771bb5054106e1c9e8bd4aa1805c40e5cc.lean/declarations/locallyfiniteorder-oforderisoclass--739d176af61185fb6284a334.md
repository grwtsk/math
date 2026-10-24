# LocallyFiniteOrder.ofOrderIsoClass

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:e376cf566db364c91ce7230e1173f5a613782e90f6116cc1a23e753963031083",
  "kind": "abbrev",
  "lexical_name": "LocallyFiniteOrder.ofOrderIsoClass",
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
  "slug": "locallyfiniteorder-oforderisoclass--739d176af61185fb6284a334",
  "source": {
    "blob": "9c82a71432b7919bb33f2899f9140dfbd0dd6330",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1344,
    "line": 1331,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Defs/Variant4887e4c52fc4466e6c7f61e361cf4b771bb5054106e1c9e8bd4aa1805c40e5cc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:739d176af61185fb6284a334049b5ec1f546e1692fb8a0328800a2b8a266030e",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Defs/Variant4887e4c52fc4466e6c7f61e361cf4b771bb5054106e1c9e8bd4aa1805c40e5cc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `abbrev` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:e376cf566db364c91ce7230e1173f5a613782e90f6116cc1a23e753963031083`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1331–1344.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
abbrev LocallyFiniteOrder.ofOrderIsoClass {F M N : Type*} [Preorder M] [Preorder N]
    [EquivLike F M N] [OrderIsoClass F M N] (f : F) [LocallyFiniteOrder N] :
    LocallyFiniteOrder M where
  finsetIcc x y := (finsetIcc (f x) (f y)).map ⟨EquivLike.inv f, (EquivLike.right_inv f).injective⟩
  finsetIco x y := (finsetIco (f x) (f y)).map ⟨EquivLike.inv f, (EquivLike.right_inv f).injective⟩
  finsetIoc x y := (finsetIoc (f x) (f y)).map ⟨EquivLike.inv f, (EquivLike.right_inv f).injective⟩
  finsetIoo x y := (finsetIoo (f x) (f y)).map ⟨EquivLike.inv f, (EquivLike.right_inv f).injective⟩
  finset_mem_Icc := by simp [finset_mem_Icc, EquivLike.inv_apply_eq_iff_eq_apply]
  finset_mem_Ico := by
    simp [finset_mem_Ico, EquivLike.inv_apply_eq_iff_eq_apply, map_lt_map_iff]
  finset_mem_Ioc := by
    simp [finset_mem_Ioc, EquivLike.inv_apply_eq_iff_eq_apply, map_lt_map_iff]
  finset_mem_Ioo := by
    simp [finset_mem_Ioo, EquivLike.inv_apply_eq_iff_eq_apply, map_lt_map_iff]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Defs/Variant4887e4c52fc4466e6c7f61e361cf4b771bb5054106e1c9e8bd4aa1805c40e5cc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Defs/Variant4887e4c52fc4466e6c7f61e361cf4b771bb5054106e1c9e8bd4aa1805c40e5cc.lean#L1331).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9c82a71432b7919bb33f2899f9140dfbd0dd6330` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
