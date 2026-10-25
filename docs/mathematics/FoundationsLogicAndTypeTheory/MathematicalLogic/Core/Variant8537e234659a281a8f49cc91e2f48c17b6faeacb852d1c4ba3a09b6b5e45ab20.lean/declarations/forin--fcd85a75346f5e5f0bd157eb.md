# ForIn'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:1a78718a73547f40cbef43d7868c8533eca65039bc098ab8a5acd7b0d0127823",
  "kind": "class",
  "lexical_name": "ForIn'",
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
  "slug": "forin--fcd85a75346f5e5f0bd157eb",
  "source": {
    "blob": "c00f44d589c186526ee811958ab745a2b1078de6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 432,
    "line": 399,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Core/Variant8537e234659a281a8f49cc91e2f48c17b6faeacb852d1c4ba3a09b6b5e45ab20.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:fcd85a75346f5e5f0bd157ebc2319e39192fea9addbc81fb4fd21b526c41caf8",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Core/Variant8537e234659a281a8f49cc91e2f48c17b6faeacb852d1c4ba3a09b6b5e45ab20.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `class` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:1a78718a73547f40cbef43d7868c8533eca65039bc098ab8a5acd7b0d0127823`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 399–432.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
class ForIn' (m : Type u₁ → Type u₂) (ρ : Type u) (α : outParam (Type v)) (d : outParam (Membership α ρ)) where
  /--
  Monadically iterates over the contents of a collection `xs`, with a local state `b` and the
  possibility of early termination. At each iteration, the body of the loop is provided with a proof
  that the current element is in the collection.

  Because a `do` block supports local mutable bindings along with `return`, and `break`, the monadic
  action passed to `ForIn'.forIn'` takes a starting state in addition to the current element of the
  collection with its membership proof. The action returns an updated state together with an
  indication of whether iteration should continue or terminate. If the action returns
  `ForInStep.done`, then `ForIn'.forIn'` should stop iteration and return the updated state. If the
  action returns `ForInStep.yield`, then `ForIn'.forIn'` should continue iterating if there are
  further elements, passing the updated state to the action.

  More information about the translation of `for` loops into `ForIn'.forIn'` is available in [the
  Lean reference manual](lean-manual://section/monad-iteration-syntax).
  -/
  forIn' {β} (x : ρ) (b : β) (f : (a : α) → a ∈ x → β → m (ForInStep β)) : m β

export ForIn' (forIn')

/--
Auxiliary type used to compile `do` notation. It is used when compiling a do block
nested inside a combinator like `tryCatch`. It encodes the possible ways the
block can exit:
* `pure (a : α) s` means that the block exited normally with return value `a`.
* `return (b : β) s` means that the block exited via a `return b` early-exit command.
* `break s` means that `break` was called, meaning that we should exit
  from the containing loop.
* `continue s` means that `continue` was called, meaning that we should continue
  to the next iteration of the containing loop.

All cases return a value `s : σ` which bundles all the mutable variables of the do-block.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Core/Variant8537e234659a281a8f49cc91e2f48c17b6faeacb852d1c4ba3a09b6b5e45ab20.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Core/Variant8537e234659a281a8f49cc91e2f48c17b6faeacb852d1c4ba3a09b6b5e45ab20.lean#L399).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c00f44d589c186526ee811958ab745a2b1078de6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
