# OrderRingHom

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:9c8ed34e60262a1323e17a4fdd468380bf7dfbb6f038fd7e6e51009546eeaede",
  "kind": "structure",
  "lexical_name": "OrderRingHom",
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
  "slug": "orderringhom--162e4a687ba1dcc6e7b82bb0",
  "source": {
    "blob": "fb554df85979767d3a88b49903e38953d2a547c2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 73,
    "line": 49,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Ring/Variant0467f671d8ac5985623d652bee22267e882afc3cf0becf8ee6ea20effdbc167a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:162e4a687ba1dcc6e7b82bb047c51d2026e2565bd2c533e62eb42b307093a05f",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Ring/Variant0467f671d8ac5985623d652bee22267e882afc3cf0becf8ee6ea20effdbc167a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:9c8ed34e60262a1323e17a4fdd468380bf7dfbb6f038fd7e6e51009546eeaede`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 49–73.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure OrderRingHom (α β : Type*) [NonAssocSemiring α] [Preorder α] [NonAssocSemiring β]
  [Preorder β] extends α →+* β where
  /-- The proposition that the function preserves the order. -/
  monotone' : Monotone toFun

/-- Reinterpret an ordered ring homomorphism as a ring homomorphism. -/
add_decl_doc OrderRingHom.toRingHom

@[inherit_doc]
infixl:25 " →+*o " => OrderRingHom

/- Porting note: Needed to reorder instance arguments below:
`[Mul α] [Add α] [LE α] [Mul β] [Add β] [LE β]`
to
`[Mul α] [Mul β] [Add α] [Add β] [LE α] [LE β]`
otherwise the [refl] attribute on `OrderRingIso.refl` complains.
TODO: change back when `refl` attribute is fixed, github issue https://github.com/leanprover-community/mathlib4/issues/2505 -/

/-- `OrderRingIso α β`, denoted as `α ≃+*o β`,
is the type of order-preserving semiring isomorphisms between `α` and `β`.

When possible, instead of parametrizing results over `(f : OrderRingIso α β)`,
you should parametrize over `(F : Type*) [OrderRingIsoClass F α β] (f : F)`.

When you extend this structure, make sure to extend `OrderRingIsoClass`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Ring/Variant0467f671d8ac5985623d652bee22267e882afc3cf0becf8ee6ea20effdbc167a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Ring/Variant0467f671d8ac5985623d652bee22267e882afc3cf0becf8ee6ea20effdbc167a.lean#L49).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fb554df85979767d3a88b49903e38953d2a547c2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
