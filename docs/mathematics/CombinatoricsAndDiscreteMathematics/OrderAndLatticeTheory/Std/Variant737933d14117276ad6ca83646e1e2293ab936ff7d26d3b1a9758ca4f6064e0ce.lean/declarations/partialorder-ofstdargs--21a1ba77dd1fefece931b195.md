# PartialOrder.OfStdArgs

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:c05d281c7c4e5a94692836de5264c063b6847bd721a6447845d6b1035d343cd5",
  "kind": "structure",
  "lexical_name": "PartialOrder.OfStdArgs",
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
  "slug": "partialorder-ofstdargs--21a1ba77dd1fefece931b195",
  "source": {
    "blob": "04b53b95d03eb7cb7c209d8f46012eb4a7ad691e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 136,
    "line": 113,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Std/Variant737933d14117276ad6ca83646e1e2293ab936ff7d26d3b1a9758ca4f6064e0ce.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:21a1ba77dd1fefece931b1954b7bc86f558ec2efcfd4e9a7889796fe367e97f8",
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

Occurrence: `declaration:c05d281c7c4e5a94692836de5264c063b6847bd721a6447845d6b1035d343cd5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 113–136.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure PartialOrder.OfStdArgs (α : Type*) extends toPreorderArgs : Preorder.OfStdArgs α where
  /-- ≤ forms a partial order. -/
  isPartialOrder :
      let := le
      Std.IsPartialOrder α := by
    extract_lets
    first
    | infer_instance
    | exact _root_.Std.IsLinearOrder.of_ord.toIsPartialOrder
    | fail "failed to infer `Std.IsPartialOrder` instance; \
            make sure you have an `Std.IsPartialOrder` instance \
            or `LawfulOrderOrd`, `LawfulEqOrd` and `TransOrd` instances"

/-- Create a `PartialOrder` from a type satisfying `Std.IsPartialOrder`.

If an `LE` instance exists, either an `Std.IsPartialOrder` instance must exist, or there must be an
`Ord` instance together with `Std.LawfulOrderOrd`, `Std.LawfulEqOrd`, and `Std.TransOrd` instances.

If no `LE` instance exists, it can be generated from `Ord`, `Std.LawfulEqOrd`, and `Std.TransOrd`
instances.

If an `LT` instance exists, an `Std.LawfulOrderLT` instance must exist also; otherwise, a suitable
`LT` instance will be generated. -/
@[expose, implicit_reducible]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Std/Variant737933d14117276ad6ca83646e1e2293ab936ff7d26d3b1a9758ca4f6064e0ce.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Std/Variant737933d14117276ad6ca83646e1e2293ab936ff7d26d3b1a9758ca4f6064e0ce.lean#L113).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `04b53b95d03eb7cb7c209d8f46012eb4a7ad691e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
