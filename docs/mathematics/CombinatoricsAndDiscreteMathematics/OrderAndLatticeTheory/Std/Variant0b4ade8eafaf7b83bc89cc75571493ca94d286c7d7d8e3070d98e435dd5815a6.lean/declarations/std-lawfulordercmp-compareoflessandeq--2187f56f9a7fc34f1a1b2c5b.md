# Std.LawfulOrderCmp.compareOfLessAndEq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c574c673-fb13-8a6c-60af-5716d895f7e9",
  "kind": "theorem",
  "lexical_name": "Std.LawfulOrderCmp.compareOfLessAndEq",
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
  "slug": "std-lawfulordercmp-compareoflessandeq--2187f56f9a7fc34f1a1b2c5b",
  "source": {
    "blob": "f947c853257c7d28122cd4fdb96f797cf5e3b4bb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 163,
    "line": 152,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Std/Variant0b4ade8eafaf7b83bc89cc75571493ca94d286c7d7d8e3070d98e435dd5815a6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2187f56f9a7fc34f1a1b2c5ba8dfe823878ab320da6bd2d3fb45189a586e147a",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Std/Variant0b4ade8eafaf7b83bc89cc75571493ca94d286c7d7d8e3070d98e435dd5815a6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c574c673-fb13-8a6c-60af-5716d895f7e9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 152–163.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Std.LawfulOrderCmp.compareOfLessAndEq (α : Type*)
    [LE α] [LT α] [LawfulOrderLT α] [IsLinearOrder α] [DecidableEq α] [DecidableLT α] :
    LawfulOrderCmp (fun a b : α ↦ compareOfLessAndEq a b) :=
  let : Ord α := ⟨fun a b : α ↦ _root_.compareOfLessAndEq a b⟩
  { isLE_compare _ _ :=
      have : DecidableLE α := fun _ _ ↦ Classical.propDecidable _
      isLE_compareOfLessAndEq Std.le_antisymm Std.not_le (fun _ _ ↦ Std.le_total)
    isGE_compare _ _ :=
      have : DecidableLE α := fun _ _ ↦ Classical.propDecidable _
      isGE_compareOfLessAndEq Std.le_antisymm Std.not_le (fun _ _ ↦ Std.le_total) }

/-- Arguments for `LinearOrder.ofStd`; see that function for details. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Std/Variant0b4ade8eafaf7b83bc89cc75571493ca94d286c7d7d8e3070d98e435dd5815a6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Std/Variant0b4ade8eafaf7b83bc89cc75571493ca94d286c7d7d8e3070d98e435dd5815a6.lean#L152).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f947c853257c7d28122cd4fdb96f797cf5e3b4bb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
