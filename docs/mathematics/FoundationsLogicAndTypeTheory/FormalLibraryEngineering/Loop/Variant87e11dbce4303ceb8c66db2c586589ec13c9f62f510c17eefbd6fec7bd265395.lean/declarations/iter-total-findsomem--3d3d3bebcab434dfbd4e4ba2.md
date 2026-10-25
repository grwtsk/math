# Iter.Total.findSomeM?

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:9a3addf5f4d286d10ae45372af38479f8b1f356af0bb4f63ae3d65ce6ac8fdaf",
  "kind": "def",
  "lexical_name": "Iter.Total.findSomeM?",
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
  "slug": "iter-total-findsomem--3d3d3bebcab434dfbd4e4ba2",
  "source": {
    "blob": "79d052fa3c8089a7a51b105e1c5da23912fb7684",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 443,
    "line": 423,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Loop/Variant87e11dbce4303ceb8c66db2c586589ec13c9f62f510c17eefbd6fec7bd265395.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:3d3d3bebcab434dfbd4e4ba2094b4dfd9dd684956caf8fe49fd39975a41af3dc",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Loop/Variant87e11dbce4303ceb8c66db2c586589ec13c9f62f510c17eefbd6fec7bd265395.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:9a3addf5f4d286d10ae45372af38479f8b1f356af0bb4f63ae3d65ce6ac8fdaf`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 423–443.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def Iter.Total.findSomeM? {α β : Type w} {γ : Type x} {m : Type x → Type w'} [Monad m]
    [Iterator α Id β] [IteratorLoop α Id m] [Finite α Id] (it : Iter.Total (α := α) β)
    (f : β → m (Option γ)) :
    m (Option γ) :=
  it.it.findSomeM? f

/--
Returns the first non-`none` result of applying `f` to each output of the iterator, in order.
Returns `none` if `f` returns `none` for all outputs.

`O(|it|)`. Short-circuits when `f` returns `some _`.The outputs of `it` are examined in order of
iteration.

If the iterator is not finite, this function might run forever. The variant
`it.ensureTermination.findSome?` always terminates after finitely many steps.

Examples:
 * `[7, 6, 5, 8, 1, 2, 6].iter.findSome? (fun x => if x < 5 then some (10 * x) else none) = some 10`
 * `[7, 6, 5, 8, 1, 2, 6].iter.findSome? (fun x => if x < 1 then some (10 * x) else none) = none`
-/
@[inline]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Loop/Variant87e11dbce4303ceb8c66db2c586589ec13c9f62f510c17eefbd6fec7bd265395.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Loop/Variant87e11dbce4303ceb8c66db2c586589ec13c9f62f510c17eefbd6fec7bd265395.lean#L423).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `79d052fa3c8089a7a51b105e1c5da23912fb7684` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
