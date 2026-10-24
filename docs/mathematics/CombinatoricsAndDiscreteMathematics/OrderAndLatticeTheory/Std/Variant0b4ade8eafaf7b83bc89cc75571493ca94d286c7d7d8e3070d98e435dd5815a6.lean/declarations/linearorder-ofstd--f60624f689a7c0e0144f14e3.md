# LinearOrder.ofStd

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:2e39d2d057a849ee6952dc60094c9b07b040d9c13495f357197616e4c3f47ca6",
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
  "slug": "linearorder-ofstd--f60624f689a7c0e0144f14e3",
  "source": {
    "blob": "f947c853257c7d28122cd4fdb96f797cf5e3b4bb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 297,
    "line": 265,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Std/Variant0b4ade8eafaf7b83bc89cc75571493ca94d286c7d7d8e3070d98e435dd5815a6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:f60624f689a7c0e0144f14e3c0afa9aca17d86610822368612de214790c1567a",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Std/Variant0b4ade8eafaf7b83bc89cc75571493ca94d286c7d7d8e3070d98e435dd5815a6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:2e39d2d057a849ee6952dc60094c9b07b040d9c13495f357197616e4c3f47ca6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 265–297.

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

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Std/Variant0b4ade8eafaf7b83bc89cc75571493ca94d286c7d7d8e3070d98e435dd5815a6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Std/Variant0b4ade8eafaf7b83bc89cc75571493ca94d286c7d7d8e3070d98e435dd5815a6.lean#L265).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f947c853257c7d28122cd4fdb96f797cf5e3b4bb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
