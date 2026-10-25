# Iter.toTreeSet

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:99a4854b07af06a3b7951327a27dd461acaa778cca1145b6d361732eae90a923",
  "kind": "def",
  "lexical_name": "Iter.toTreeSet",
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
  "slug": "iter-totreeset--7fb7fad08745fbfa972c0a46",
  "source": {
    "blob": "1e45bc9ec408b3b1f642571cbaef408022e7fc5b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 103,
    "line": 91,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Set/Variant7daa168fe78908b87893c85dd4c81827cf5fa8ac620bcdbcba938fa3d0e0802a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:7fb7fad08745fbfa972c0a46d270bbeb0f175f6272980a431aa96a003f34b27b",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Set/Variant7daa168fe78908b87893c85dd4c81827cf5fa8ac620bcdbcba938fa3d0e0802a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:99a4854b07af06a3b7951327a27dd461acaa778cca1145b6d361732eae90a923`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 91–103.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
public def Iter.toTreeSet {α β : Type w} [Iterator α Id β] [IteratorLoop α Id Id]
    (it : Iter (α := α) β) (cmp : β → β → Ordering := by exact compare) : TreeSet β cmp :=
  it.toIterM.toTreeSet cmp |>.run

set_option doc.verso true

/--
Traverses the given iterator and stores the emitted values in a {name}`TreeSet`.

This variant terminates after finitely many steps and requires a proof that the iterator is
finite. If such a proof is not available, consider using {name}`Iter.toTreeSet`.
-/
@[inline]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Set/Variant7daa168fe78908b87893c85dd4c81827cf5fa8ac620bcdbcba938fa3d0e0802a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Set/Variant7daa168fe78908b87893c85dd4c81827cf5fa8ac620bcdbcba938fa3d0e0802a.lean#L91).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1e45bc9ec408b3b1f642571cbaef408022e7fc5b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
