# Iter.Partial.findSome?

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:35eb4adbccc358175d4dd56bf8449b8efd10b0c8fb1e1303e90c530a1a387bb5",
  "kind": "def",
  "lexical_name": "Iter.Partial.findSome?",
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
  "slug": "iter-partial-findsome--7b894cc3fb0a7ff4ffcefc2a",
  "source": {
    "blob": "79d052fa3c8089a7a51b105e1c5da23912fb7684",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 482,
    "line": 463,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Loop/Variant87e11dbce4303ceb8c66db2c586589ec13c9f62f510c17eefbd6fec7bd265395.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:7b894cc3fb0a7ff4ffcefc2ac436b2c2faf73eedc6f1874a4e39aa68df49a43e",
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

Occurrence: `declaration:35eb4adbccc358175d4dd56bf8449b8efd10b0c8fb1e1303e90c530a1a387bb5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 463–482.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def Iter.Partial.findSome? {α β : Type w} {γ : Type x} [Iterator α Id β]
    [IteratorLoop α Id Id] (it : Iter.Partial (α := α) β) (f : β → Option γ) :
    Option γ :=
  it.it.findSome? f

/--
Returns the first non-`none` result of applying `f` to each output of the iterator, in order.
Returns `none` if `f` returns `none` for all outputs.

`O(|it|)`. Short-circuits when `f` returns `some _`.The outputs of `it` are examined in order of
iteration.

This variant terminates after finitely many steps and requires a proof that the iterator is
finite. If such a proof is not available, consider using `Iter.findSome?`.

Examples:
 * `[7, 6, 5, 8, 1, 2, 6].iter.ensureTermination.findSome? (fun x => if x < 5 then some (10 * x) else none) = some 10`
 * `[7, 6, 5, 8, 1, 2, 6].iter.ensureTermination.findSome? (fun x => if x < 1 then some (10 * x) else none) = none`
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

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Loop/Variant87e11dbce4303ceb8c66db2c586589ec13c9f62f510c17eefbd6fec7bd265395.lean#L463).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `79d052fa3c8089a7a51b105e1c5da23912fb7684` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
