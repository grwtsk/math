# Iter.take

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:bcc007b204a5a24573c2def5785fe16fc35dd7d3671d0804e7f19b8e43461969",
  "kind": "def",
  "lexical_name": "Iter.take",
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
  "slug": "iter-take--bad81baae2cda08950e7835c",
  "source": {
    "blob": "f28a0c2b9a1083312b7c46c16906f1787200645f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 66,
    "line": 40,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Take/Variant0eb875608fcc4f1d13bd7f1530180b2c7e8f37d3e002499cae8a904d4e5b5504.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:bad81baae2cda08950e7835c9c0ab6c968c71444e09a2c9cc7b342002943267a",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Take/Variant0eb875608fcc4f1d13bd7f1530180b2c7e8f37d3e002499cae8a904d4e5b5504.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:bcc007b204a5a24573c2def5785fe16fc35dd7d3671d0804e7f19b8e43461969`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 40–66.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

````lean
def Iter.take {α : Type w} {β : Type w} [Iterator α Id β] (n : Nat) (it : Iter (α := α) β) :
    Iter (α := Take α Id) β :=
  it.toIterM.take n |>.toIter

/--
This combinator is only useful for advanced use cases.

Given a finite iterator `it`, returns an iterator that behaves exactly like `it` but is of the same
type as `it.take n`.

**Marble diagram:**

```text
it          ---a----b---c--d-e--⊥
it.toTake   ---a----b---c--d-e--⊥
```

**Termination properties:**

* `Finite` instance: always
* `Productive` instance: always

**Performance:**

This combinator incurs an additional O(1) cost with each output of `it`.
-/
@[always_inline, inline]
````

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Take/Variant0eb875608fcc4f1d13bd7f1530180b2c7e8f37d3e002499cae8a904d4e5b5504.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Take/Variant0eb875608fcc4f1d13bd7f1530180b2c7e8f37d3e002499cae8a904d4e5b5504.lean#L40).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f28a0c2b9a1083312b7c46c16906f1787200645f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
