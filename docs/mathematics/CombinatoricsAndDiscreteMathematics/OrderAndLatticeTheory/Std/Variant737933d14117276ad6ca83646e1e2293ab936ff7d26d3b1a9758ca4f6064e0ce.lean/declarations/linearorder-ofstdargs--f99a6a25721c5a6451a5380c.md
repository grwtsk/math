# LinearOrder.OfStdArgs

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:f3dff0840e2a65c4651885893edd65ce4a758cfdd1cde64d375a893b287f2f9f",
  "kind": "structure",
  "lexical_name": "LinearOrder.OfStdArgs",
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
  "slug": "linearorder-ofstdargs--f99a6a25721c5a6451a5380c",
  "source": {
    "blob": "04b53b95d03eb7cb7c209d8f46012eb4a7ad691e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 256,
    "line": 156,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Std/Variant737933d14117276ad6ca83646e1e2293ab936ff7d26d3b1a9758ca4f6064e0ce.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:f99a6a25721c5a6451a5380cf934dd1ab37302b58fd85379cbf370fdbb0af1bb",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Std/Variant737933d14117276ad6ca83646e1e2293ab936ff7d26d3b1a9758ca4f6064e0ce.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:f3dff0840e2a65c4651885893edd65ce4a758cfdd1cde64d375a893b287f2f9f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 156–256.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure LinearOrder.OfStdArgs (α : Type*) extends
    toPartialOrderArgs : PartialOrder.OfStdArgs α where
  /-- ≤ forms a linear order. -/
  isLinearOrder :
      let := le
      Std.IsLinearOrder α := by
    extract_lets
    first
    | infer_instance
    | exact _root_.Std.IsLinearOrder.of_ord
    | fail "failed to infer `Std.IsLinearOrder` instance; \
            make sure you have an `Std.IsLinearOrder` instance \
            or `LawfulOrderOrd`, `LawfulEqOrd` and `TransOrd` instances"
  /-- ≤ is decidable. -/
  decidableLE : DecidableLE α := by
    first
    | infer_instance
    | exact _root_.DecidableLE.ofOrd _
    | fail "failed to infer `DecidableLE` instance; \
            make sure you have a `DecidableLE` instance \
            or a `LawfulOrderOrd` instance"
  /-- = is decidable. This can always be automatically derived from `decidableLE`. -/
  decidableEq :
      let := toPartialOrderArgs; let := decidableLE
      DecidableEq α := by
    extract_lets _ toPartialOrderArgs
    first
    | infer_instance
    | exact @_root_.decidableEqOfDecidableLE _ (.ofStd _ toPartialOrderArgs) _
  /-- < is decidable. This can always be automatically derived from `decidableLE`. -/
  decidableLT :
      let := toPreorderArgs; let := decidableLE
      DecidableLT α := by
    extract_lets _ toPreorderArgs
    first
    | infer_instance
    | exact @_root_.decidableLTOfDecidableLE _ (.ofStd _ toPreorderArgs) _
  /-- The `Min` instance of the order. This can always be automatically derived. -/
  min :
      let := le; let := decidableLE
      Min α := by
    extract_lets
    first
    | infer_instance
    | exact _root_.Min.leftLeaningOfLE _
  /-- The `Max` instance of the order. This can always be automatically derived. -/
  max :
      let := le; let := decidableLE
      Max α := by
    extract_lets
    first
    | infer_instance
    | exact _root_.Max.leftLeaningOfLE _
  /-- `min a b` is equivalent to `if a ≤ b then a else b`. -/
  lawfulOrderLeftLeaningMin : Std.LawfulOrderLeftLeaningMin α := by infer_instance
  /-- `max a b` is equivalent to `if b ≤ a then a else b`. -/
  lawfulOrderLeftLeaningMax : Std.LawfulOrderLeftLeaningMax α := by infer_instance
  /-- The `Ord` instance of the order. This can always be automatically derived. -/
  ord :
      let := lt; let := decidableEq; let := decidableLT
      Ord α := by
    extract_lets
    first
    | infer_instance
    | exact ⟨fun a b ↦ _root_.compareOfLessAndEq a b⟩
  /-- `Ord` is compatible with ≤. -/
  lawfulOrderOrd :
      let := le; let := lt; let := lawfulOrderLT; let := isLinearOrder
      let := decidableEq; let := decidableLT
      Std.LawfulOrderOrd α := by
    extract_lets
    first
    /- Try the case where `Ord` is synthesized from `compareOfLessAndEq` first so the error message
    points to the lack of an instance and not the lack of a definitional equality. -/
    | exact _root_.Std.LawfulOrderCmp.compareOfLessAndEq _
    | infer_instance

/-- Create a `LinearOrder` from a type satisfying `Std.IsLinearOrder`.

If an `LE` instance exists, either an `Std.IsLinearOrder` instance must exist, or there must be an
`Ord` instance together with `Std.LawfulOrderOrd`, `Std.LawfulEqOrd`, and `Std.TransOrd` instances.

If no `LE` instance exists, it can be generated from `Ord`, `Std.LawfulEqOrd`, and `Std.TransOrd`
instances.

If an `LT` instance exists, an `Std.LawfulOrderLT` instance must exist also; otherwise, a suitable
`LT` instance will be generated.

If a `DecidableLE` instance exists, it will be used. Otherwise, it can be generated from an `Ord`
instance.

If `DecidableEq` and `DecidableLT` instances exist, they will be used. Otherwise, they will be
generated from the `DecidableLE` instance.

If `Min` and `Max` instances exist, they will be used, in which case the user must provide
`Std.LawfulOrderLeftLeaningMin` or `Std.LawfulOrderLeftLeaningMax` respectively. Otherwise, they
will be generated.

If an `Ord` instance exists, it will be used, in which case the user must provide an
`Std.LawfulOrderOrd` instance. Otherwise, it will be generated. -/
@[expose, implicit_reducible]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Std/Variant737933d14117276ad6ca83646e1e2293ab936ff7d26d3b1a9758ca4f6064e0ce.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Std/Variant737933d14117276ad6ca83646e1e2293ab936ff7d26d3b1a9758ca4f6064e0ce.lean#L156).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `04b53b95d03eb7cb7c209d8f46012eb4a7ad691e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
