# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:85f00e64f21a49b2878244b4886b12b7cebc4ef7f4a8e866dc334b2f5315476b",
  "kind": "instance",
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
  "slug": "instance--a9f8702cbd129e659211af5c",
  "source": {
    "blob": "c8b29f559a3be0a469e4963bd24f62fc7c044162",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 84,
    "line": 47,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant49d221efd24db57acd9d64d1bd8002f92d056a16a38f7e19fd2a6778ae0e506a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:a9f8702cbd129e659211af5c57c20069c3652dfa4368912a0255710f1bfc4462",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant49d221efd24db57acd9d64d1bd8002f92d056a16a38f7e19fd2a6778ae0e506a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:85f00e64f21a49b2878244b4886b12b7cebc4ef7f4a8e866dc334b2f5315476b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 47–84.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance : ToString JoinPointId := ⟨fun a => "block_" ++ toString a.idx⟩

/-- Low Level IR types. Most are self explanatory.

   - `usize` represents the C++ `size_t` Type. We have it here
      because it is 32-bit in 32-bit machines, and 64-bit in 64-bit machines,
      and we want the C++ backend for our Compiler to generate platform independent code.

   - `erased` for Lean types, propositions and proofs.

   - `object` a pointer to a value in the heap.

   - `tagged` a tagged pointer (i.e., the least significant bit is 1) storing a scalar value.

   - `tobject` an `object` or a `tagged` pointer

   - `void` is used to identify uses of the state token from `BaseIO` which do no longer need
     to be passed around etc. at this point in the pipeline.

   - `struct` and `union` are used to return small values (e.g., `Option`, `Prod`, `Except`)
      on the stack.

Remark: the RC operations for `tobject` are slightly more expensive because we
first need to test whether the `tobject` is really a pointer or not.

Remark: the Lean runtime assumes that sizeof(void*) == sizeof(sizeT).
Lean cannot be compiled on old platforms where this is not True.

Since values of type `struct` and `union` are only used to return values,
We assume they must be used/consumed "linearly". We use the term "linear" here
to mean "exactly once" in each execution. That is, given `x : S`, where `S` is a struct,
then one of the following must hold in each (execution) branch.
1- `x` occurs only at a single `ret x` instruction. That is, it is being consumed by being returned.
2- `x` occurs only at a single `ctor`. That is, it is being "consumed" by being stored into another `struct/union`.
3- We extract (aka project) every single field of `x` exactly once. That is, we are consuming `x` by consuming each
   of one of its components. Minor refinement: we don't need to consume scalar fields or struct/union
   fields that do not contain object fields.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant49d221efd24db57acd9d64d1bd8002f92d056a16a38f7e19fd2a6778ae0e506a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant49d221efd24db57acd9d64d1bd8002f92d056a16a38f7e19fd2a6778ae0e506a.lean#L47).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c8b29f559a3be0a469e4963bd24f62fc7c044162` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
