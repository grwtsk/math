# outOfBounds_eq_default

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f76698f7-b515-23eb-be70-8d2e62c139ef",
  "kind": "theorem",
  "lexical_name": "outOfBounds_eq_default",
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
  "slug": "outofbounds-eq-default--8968efcd712b9f16bdefae92",
  "source": {
    "blob": "04f45038c25445f879c92680ac4e945ee15b6616",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 76,
    "line": 28,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/GetElem/Variant5bc3f2ac75c2ae4a327117f9fa51b5465e63771485e181b59c69e15531170621.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8968efcd712b9f16bdefae92c14cc286065fdfb9d0f9a3b5b8f88d17100d65a9",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/GetElem/Variant5bc3f2ac75c2ae4a327117f9fa51b5465e63771485e181b59c69e15531170621.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f76698f7-b515-23eb-be70-8d2e62c139ef`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 28–76.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem outOfBounds_eq_default [Inhabited α] : (outOfBounds : α) = default := rfl

/--
The classes `GetElem` and `GetElem?` implement lookup notation,
specifically `xs[i]`, `xs[i]?`, `xs[i]!`, and `xs[i]'p`.

Both classes are indexed by types `coll`, `idx`, and `elem` which are
the collection, the index, and the element types.
A single collection may support lookups with multiple index
types. The relation `valid` determines when the index is guaranteed to be
valid; lookups of valid indices are guaranteed not to fail.

For example, an instance for arrays looks like
`GetElem (Array α) Nat α (fun xs i => i < xs.size)`. In other words, given an
array `xs` and a natural number `i`, `xs[i]` will return an `α` when `valid xs i`
holds, which is true when `i` is less than the size of the array. `Array`
additionally supports indexing with `USize` instead of `Nat`.
In either case, because the bounds are checked at compile time,
no runtime check is required.

Given `xs[i]` with `xs : coll` and `i : idx`, Lean looks for an instance of
`GetElem coll idx elem valid` and uses this to infer the type of the return
value `elem` and side condition `valid` required to ensure `xs[i]` yields
a valid value of type `elem`. The tactic `get_elem_tactic` is
invoked to prove validity automatically. The `xs[i]'p` notation uses the
proof `p` to satisfy the validity condition.
If the proof `p` is long, it is often easier to place the
proof in the context using `have`, because `get_elem_tactic` tries
`assumption`.


The proof side-condition `valid xs i` is automatically dispatched by the
`get_elem_tactic` tactic; this tactic can be extended by adding more clauses to
`get_elem_tactic_extensible` using `macro_rules`.

`xs[i]?` and `xs[i]!` do not impose a proof obligation; the former returns
an `Option elem`, with `none` signalling that the value isn't present, and
the latter returns `elem` but panics if the value isn't there, returning
`default : elem` based on the `Inhabited elem` instance.
These are provided by the `GetElem?` class, for which there is a default instance
generated from a `GetElem` class as long as `valid xs i` is always decidable.

Important instances include:
  * `arr[i] : α` where `arr : Array α` and `i : Nat` or `i : USize`: does array
    indexing with no runtime bounds check and a proof side goal `i < arr.size`.
  * `l[i] : α` where `l : List α` and `i : Nat`: index into a list, with proof
    side goal `i < l.length`.

-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/GetElem/Variant5bc3f2ac75c2ae4a327117f9fa51b5465e63771485e181b59c69e15531170621.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/GetElem/Variant5bc3f2ac75c2ae4a327117f9fa51b5465e63771485e181b59c69e15531170621.lean#L28).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `04f45038c25445f879c92680ac4e945ee15b6616` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
