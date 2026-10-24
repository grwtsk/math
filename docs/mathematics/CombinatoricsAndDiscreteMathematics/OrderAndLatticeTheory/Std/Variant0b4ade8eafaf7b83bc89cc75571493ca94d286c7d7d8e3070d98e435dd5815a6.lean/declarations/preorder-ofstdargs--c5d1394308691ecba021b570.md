# Preorder.OfStdArgs

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:d1e94887ae9139c87c0690165d247ae593ad6137ee497cb36dcc1553d35dc527",
  "kind": "structure",
  "lexical_name": "Preorder.OfStdArgs",
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
  "slug": "preorder-ofstdargs--c5d1394308691ecba021b570",
  "source": {
    "blob": "f947c853257c7d28122cd4fdb96f797cf5e3b4bb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 112,
    "line": 65,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Std/Variant0b4ade8eafaf7b83bc89cc75571493ca94d286c7d7d8e3070d98e435dd5815a6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:c5d1394308691ecba021b570d9ddea25253c499b16c7ee9d27dbf18bee1cb992",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Std/Variant0b4ade8eafaf7b83bc89cc75571493ca94d286c7d7d8e3070d98e435dd5815a6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:d1e94887ae9139c87c0690165d247ae593ad6137ee497cb36dcc1553d35dc527`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 65–112.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure Preorder.OfStdArgs (α : Type*) where
  /-- The `LE` instance of the order. -/
  le : LE α := by
    first
    | infer_instance
    | exact LE.ofOrd _
    | fail "failed to infer `LE` instance; \
            make sure you have an `LE` or `Ord` instance"
  /-- The `LT` instance of the order. -/
  lt :
      let := le
      LT α := by
    extract_lets
    first
    | infer_instance
    | exact ⟨fun a b ↦ a ≤ b ∧ ¬b ≤ a⟩
  /-- `a < b` is equivalent to `a ≤ b ∧ ¬b ≤ a`. -/
  lawfulOrderLT :
      let := le; let := lt
      Std.LawfulOrderLT α := by
    extract_lets
    first
    /- Try the case where `LT` is synthesized from `LE` first so the error message points to the
    lack of an instance and not the lack of a definitional equality. -/
    | exact ⟨fun _ _ ↦ _root_.Iff.rfl⟩
    | infer_instance
  /-- ≤ forms a preorder. -/
  isPreorder :
      let := le
      Std.IsPreorder α := by
    extract_lets
    first
    | infer_instance
    | exact _root_.Std.IsLinearPreorder.of_ord.toIsPreorder
    | fail "failed to infer `Std.IsPreorder` instance; \
            make sure you have an `Std.IsPreorder` instance \
            or `Std.LawfulOrderOrd` and `Std.TransOrd` instances"

/-- Create a `Preorder` from a type satisfying `Std.IsPreorder`.

If an `LE` instance exists, either an `Std.IsPreorder` instance must exist, or there must be an
`Ord` instance together with `Std.LawfulOrderOrd` and `Std.TransOrd` instances.

If no `LE` instance exists, it can be generated from `Ord` and `Std.TransOrd` instances.

If an `LT` instance exists, an `Std.LawfulOrderLT` instance must exist also; otherwise, a suitable
`LT` instance will be generated. -/
@[expose, implicit_reducible]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Std/Variant0b4ade8eafaf7b83bc89cc75571493ca94d286c7d7d8e3070d98e435dd5815a6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Std/Variant0b4ade8eafaf7b83bc89cc75571493ca94d286c7d7d8e3070d98e435dd5815a6.lean#L65).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f947c853257c7d28122cd4fdb96f797cf5e3b4bb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
