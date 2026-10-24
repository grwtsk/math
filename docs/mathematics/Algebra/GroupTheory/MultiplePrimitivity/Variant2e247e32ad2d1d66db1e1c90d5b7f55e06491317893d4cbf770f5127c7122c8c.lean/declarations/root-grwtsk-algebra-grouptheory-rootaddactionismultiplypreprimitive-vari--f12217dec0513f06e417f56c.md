# _root_.GRWTSK.Algebra.GroupTheory.RootAddActionIsMultiplyPreprimitive.Variantcb3fdb58e7d05c3688514c4b2e0018e597756dc90095248378e09d775fe69201.AddAction.IsMultiplyPreprimitive

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:63f4fc37c97a832a43871d1911b10e295cdcbe8603551b874bae82e32480e931",
  "kind": "class",
  "lexical_name": "_root_.GRWTSK.Algebra.GroupTheory.RootAddActionIsMultiplyPreprimitive.Variantcb3fdb58e7d05c3688514c4b2e0018e597756dc90095248378e09d775fe69201.AddAction.IsMultiplyPreprimitive",
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
  "slug": "root-grwtsk-algebra-grouptheory-rootaddactionismultiplypreprimitive-vari--f12217dec0513f06e417f56c",
  "source": {
    "blob": "7c6d8cdec8221628505254ecf73d93f1dbf22864",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 106,
    "line": 93,
    "path": "GRWTSK/Algebra/GroupTheory/MultiplePrimitivity/Variant2e247e32ad2d1d66db1e1c90d5b7f55e06491317893d4cbf770f5127c7122c8c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:f12217dec0513f06e417f56c7c7f8210074ef96642d4b442bc974bdfb31c22c1",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/MultiplePrimitivity/Variant2e247e32ad2d1d66db1e1c90d5b7f55e06491317893d4cbf770f5127c7122c8c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `class` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:63f4fc37c97a832a43871d1911b10e295cdcbe8603551b874bae82e32480e931`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 93–106.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
class _root_.GRWTSK.Algebra.GroupTheory.RootAddActionIsMultiplyPreprimitive.Variantcb3fdb58e7d05c3688514c4b2e0018e597756dc90095248378e09d775fe69201.AddAction.IsMultiplyPreprimitive
    (M α : Type*) [AddGroup M] [AddAction M α] (n : ℕ) where
  /-- An `n`-preprimitive action is `n`-pretransitive. -/
  isMultiplyPretransitive (M α n) : AddAction.IsMultiplyPretransitive M α n
  /-- In an `n`-preprimitive action, the action of `fixingAddSubgroup M s`
  on `ofFixingAddSubgroup M s` is preprimitive, for all sets `s` such that `s.encard + 1 = n`. -/
  isPreprimitive_ofFixingAddSubgroup (M n) {s : Set α} (hs : s.encard + 1 = n) :
    AddAction.IsPreprimitive (fixingAddSubgroup M s) (SubAddAction.ofFixingAddSubgroup M s)

/-- A group action is `n`-multiply preprimitive if it is `n`-multiply
pretransitive and if, when `n ≥ 1`, for every set `s` of cardinality
`n - 1`, the action of `fixingSubgroup M s` on the complement of `s`
is preprimitive. -/
@[mk_iff, to_additive existing]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/MultiplePrimitivity/Variant2e247e32ad2d1d66db1e1c90d5b7f55e06491317893d4cbf770f5127c7122c8c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/MultiplePrimitivity/Variant2e247e32ad2d1d66db1e1c90d5b7f55e06491317893d4cbf770f5127c7122c8c.lean#L93).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7c6d8cdec8221628505254ecf73d93f1dbf22864` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
