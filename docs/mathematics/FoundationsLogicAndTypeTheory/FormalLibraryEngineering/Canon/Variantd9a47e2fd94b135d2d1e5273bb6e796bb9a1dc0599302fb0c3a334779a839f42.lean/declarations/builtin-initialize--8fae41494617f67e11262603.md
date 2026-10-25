# Anonymous builtin_initialize

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:b40ad871a481012544e5f8dc9a04aa1aa482588ab578465510d3f8074c206292",
  "kind": "builtin_initialize",
  "lexical_name": null,
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
  "slug": "builtin-initialize--8fae41494617f67e11262603",
  "source": {
    "blob": "033d3fcb0c54c6a54745b3d4b3b3b199900abb5a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 85,
    "line": 20,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Canon/Variantd9a47e2fd94b135d2d1e5273bb6e796bb9a1dc0599302fb0c3a334779a839f42.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:8fae41494617f67e11262603ed04d4f35b9ccf63c78922f16a8456ebee4bb5fb",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Canon/Variantd9a47e2fd94b135d2d1e5273bb6e796bb9a1dc0599302fb0c3a334779a839f42.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `builtin_initialize` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:b40ad871a481012544e5f8dc9a04aa1aa482588ab578465510d3f8074c206292`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 20–85.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
builtin_initialize registerTraceClass `sym.debug.canon

/-!
# Type-directed canonicalizer

Canonicalizes expressions by normalizing types and instances. At the top level, it traverses
applications, foralls, lambdas, and let-bindings, classifying each argument as a type, instance,
implicit, or value using `shouldCanon`. Targeted reductions (projection, match/ite/cond, Nat
arithmetic) are applied to all positions; instances are re-synthesized.

**Note about types:** `grind` is not built for reasoning about types that are not propositions.
We assume that definitionally equal types will be structurally identical after we apply the
canonicalizer. We also erase most of the subsingleton markers occurring inside types.

## Reductions

It also normalizes expressions using the following reductions. We can view it as a cheap/custom `dsimp`.
We used to reduce only terms inside types, but it restricted important normalizations that were important
when, for example, a term had a forward dependency. That is, the term is not directly in a type, but
there is a type that depends on it.

- **Eta**: `fun x => f x` → `f`
- **Projection**: `⟨a, b⟩.1` → `a` (structure projections, not class projections)
- **Match/ite/cond**: reduced when discriminant is a constructor or literal
- **Nat arithmetic**: ground evaluation (`2 + 1` → `3`) and offset normalization
  (`n.succ + 1` → `n + 2`)

**Note**: Eta is applied only if the lambda is occurring inside of a type. For lambdas occurring
in non type positions, we want to leverage the support in `grind` for lambda-expressions.

## Instance canonicalization

Instances are re-synthesized via `synthInstance`. The instance type is first normalized
using the type-level reductions above, so that `OfNat (Fin (2+1)) 0` and `OfNat (Fin 3) 0`
produce the same canonical instance. Two special cases:

- **`Decidable` instances** (`Grind.nestedDecidable`): the proposition is recursively
  canonicalized, then the `Decidable` instance is re-synthesized. If resynthesis fails,
  the original instance is kept (users often provide these via `haveI`).
  A `checkDefEqInst` guard is required because structurally different `Decidable` instances
  are not necessarily definitionally equal.

- **Propositional instances** (`Grind.nestedProof`): the proposition is recursively
  canonicalized, then the proof is re-synthesized. If resynthesis fails, the original
  proof is kept. No definitional-equality check is needed thanks to proof irrelevance.

In both cases, resynthesis failure is silent — the original instance or proof is kept.
Ideally we would report an issue when resynthesis fails inside a type (where structural
agreement matters most), but in practice users provide non-synthesizable instances via `haveI`,
and these instances propagate into types through forward dependencies. Reporting failures
for such instances produces noise that obscures real issues.

## Two caches

The canonicalizer maintains separate caches for type-level and value-level contexts.
The same expression may canonicalize differently depending on whether it appears in a
type position (where reductions are applied) or a value position (where it is only traversed).
Caches are keyed by `Expr` (structural equality), not pointer equality, because
the canonicalizer runs before `shareCommon` and enters binders using locally nameless
representation.

## Future work

If needed we should add support for user-defined extensions.
-/

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Canon/Variantd9a47e2fd94b135d2d1e5273bb6e796bb9a1dc0599302fb0c3a334779a839f42.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Canon/Variantd9a47e2fd94b135d2d1e5273bb6e796bb9a1dc0599302fb0c3a334779a839f42.lean#L20).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `033d3fcb0c54c6a54745b3d4b3b3b199900abb5a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
