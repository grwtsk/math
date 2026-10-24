# LinearOrder.ofStd

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:03663034624bf8fb7b3e6bc954ce19117fc4ee13497ce1ec45dbd6f5cdf0e789",
  "kind": "def",
  "lexical_name": "LinearOrder.ofStd",
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
  "slug": "linearorder-ofstd--837d7b1405141c448a9ba373",
  "source": {
    "blob": "04b53b95d03eb7cb7c209d8f46012eb4a7ad691e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 289,
    "line": 257,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Std/Variant737933d14117276ad6ca83646e1e2293ab936ff7d26d3b1a9758ca4f6064e0ce.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:837d7b1405141c448a9ba3736d4dc13efeeb5112315a65b3cccb35a23a3d1a35",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Std/Variant737933d14117276ad6ca83646e1e2293ab936ff7d26d3b1a9758ca4f6064e0ce.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:03663034624bf8fb7b3e6bc954ce19117fc4ee13497ce1ec45dbd6f5cdf0e789`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 257–289.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def LinearOrder.ofStd (α : Type*) (args : OfStdArgs α := by exact {}) : LinearOrder α :=
  let := args.le
  let := args.lt
  have := args.lawfulOrderLT
  have := args.isLinearOrder
  let := args.decidableLE
  have := args.lawfulOrderLeftLeaningMin
  have := args.lawfulOrderLeftLeaningMax
  { toPartialOrder := .ofStd _ args.toPartialOrderArgs
    le_total := args.isLinearOrder.le_total
    toDecidableLE := args.decidableLE
    toDecidableEq := args.decidableEq
    toDecidableLT := args.decidableLT
    toMin := args.min
    toMax := args.max
    min_def _ _ := Std.min_eq_ite
    max_def a b := by
      rw [Std.max_eq_ite]
      split
      · split
        · exact Std.le_antisymm ‹_› ‹_›
        · rfl
      case _ h => rw [ite_eq_left (Std.le_of_lt (Std.not_le.mp h))]
    toOrd := args.ord
    compare_eq_compareOfLessAndEq a b := by
      let := args.ord
      have := args.lawfulOrderOrd
      rw [compareOfLessAndEq]
      split_ifs
      case _ => rwa [Std.compare_eq_lt]
      case _ => rwa [Std.compare_eq_iff_eq]
      case _ h h' =>
        exact Std.compare_eq_gt.mpr <| Std.lt_of_le_of_ne (Std.not_lt.mp h) (Ne.symm h') }
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Std/Variant737933d14117276ad6ca83646e1e2293ab936ff7d26d3b1a9758ca4f6064e0ce.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Std/Variant737933d14117276ad6ca83646e1e2293ab936ff7d26d3b1a9758ca4f6064e0ce.lean#L257).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `04b53b95d03eb7cb7c209d8f46012eb4a7ad691e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
