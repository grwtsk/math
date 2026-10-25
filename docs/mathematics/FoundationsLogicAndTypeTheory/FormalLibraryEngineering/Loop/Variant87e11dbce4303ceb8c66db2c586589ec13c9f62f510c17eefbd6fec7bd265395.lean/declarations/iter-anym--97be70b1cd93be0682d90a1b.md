# Iter.anyM

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:b395bbfda153d694c0f79f38fb998e0f4ba7187aea02b3264ec231c028b0eabd",
  "kind": "def",
  "lexical_name": "Iter.anyM",
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
  "slug": "iter-anym--97be70b1cd93be0682d90a1b",
  "source": {
    "blob": "79d052fa3c8089a7a51b105e1c5da23912fb7684",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 223,
    "line": 203,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Loop/Variant87e11dbce4303ceb8c66db2c586589ec13c9f62f510c17eefbd6fec7bd265395.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:97be70b1cd93be0682d90a1b6a7ca72e2558b12db5d7d34dffa8c7159feb0dfd",
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

Occurrence: `declaration:b395bbfda153d694c0f79f38fb998e0f4ba7187aea02b3264ec231c028b0eabd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 203–223.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def Iter.anyM {α β : Type w} {m : Type → Type w'} [Monad m]
    [Iterator α Id β] [IteratorLoop α Id m]
    (p : β → m Bool) (it : Iter (α := α) β) : m Bool :=
  ForIn.forIn it false (fun x _ => do
    if ← p x then
      return .done true
    else
      return .yield false)

set_option doc.verso true in
/--
Returns {lean}`true` if the monadic predicate {name}`p` returns {lean}`true` for
any element emitted by the iterator {name}`it`.

{lit}`O(|xs|)`. Short-circuits upon encountering the first match. The elements in {name}`it` are
examined in order of iteration.

This variant terminates after finitely many steps and requires a proof that the iterator is
finite. If such a proof is not available, consider using {name}`Iter.anyM`.
-/
@[always_inline, inline]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Loop/Variant87e11dbce4303ceb8c66db2c586589ec13c9f62f510c17eefbd6fec7bd265395.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Loop/Variant87e11dbce4303ceb8c66db2c586589ec13c9f62f510c17eefbd6fec7bd265395.lean#L203).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `79d052fa3c8089a7a51b105e1c5da23912fb7684` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
