# Iterators.Types.StepSizeIterator

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:26dfa703c26ab96e5b8e321bdf0f90f4c8bd49242a842f35dfb15a60e1c86bfe",
  "kind": "structure",
  "lexical_name": "Iterators.Types.StepSizeIterator",
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
  "slug": "iterators-types-stepsizeiterator--d3b61c89335648ddeed7792e",
  "source": {
    "blob": "440d1cbd839953f6b0b0db331cda018a2216a4d4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 52,
    "line": 23,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/StepSize/Variant6e0fe1d98de5437d28de61eed953209d224bea09bc3c6541b581d0fad66e00c4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:d3b61c89335648ddeed7792e7c221b1d9e94f9dd94fba8b12e8f2152899513ad",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/StepSize/Variant6e0fe1d98de5437d28de61eed953209d224bea09bc3c6541b581d0fad66e00c4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:26dfa703c26ab96e5b8e321bdf0f90f4c8bd49242a842f35dfb15a60e1c86bfe`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 23–52.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

````lean
structure Iterators.Types.StepSizeIterator (α : Type w) (m : Type w → Type w') (β : Type w) where
  nextIdx : Nat
  n : Nat
  inner : IterM (α := α) m β

/--
Produces an iterator that emits one value of `it`, then drops `n - 1` elements, then emits another
value, and so on. In other words, it emits every `n`-th value of `it`, starting with the first one.

If `n = 0`, the iterator behaves like for `n = 1`: It emits all values of `it`.


**Marble diagram:**

```
it               ---1----2----3---4----5
it.stepSize 2    ---1---------3--------5
```

**Availability:**

This operation is currently only available for iterators implementing `IteratorAccess`,
such as `PRange.iter` range iterators.

**Termination properties:**

* `Finite` instance: only if the base iterator `it` is finite
* `Productive` instance: always
-/
@[always_inline, inline]
````

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/StepSize/Variant6e0fe1d98de5437d28de61eed953209d224bea09bc3c6541b581d0fad66e00c4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/StepSize/Variant6e0fe1d98de5437d28de61eed953209d224bea09bc3c6541b581d0fad66e00c4.lean#L23).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `440d1cbd839953f6b0b0db331cda018a2216a4d4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
