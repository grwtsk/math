# foldl

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:59a8f7bebcee649e44858b098cd4a970aee52717305ec195351b70009e31f1ef",
  "kind": "def",
  "lexical_name": "foldl",
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
  "slug": "foldl--e1aba13f873ec4fa95e5aa34",
  "source": {
    "blob": "c241c1cbf1d61b29eca95918a03df6ef7b557248",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 352,
    "line": 334,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant684fdb2413309a9e15cd20b7a89ebb8213494bb5248cb4ad4f4a8c05bddb236a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:e1aba13f873ec4fa95e5aa34ca6c870680e325396bf07c45a89eb276ae598013",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant684fdb2413309a9e15cd20b7a89ebb8213494bb5248cb4ad4f4a8c05bddb236a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:59a8f7bebcee649e44858b098cd4a970aee52717305ec195351b70009e31f1ef`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 334–352.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def foldl {β : Type v} (f : β → UInt8 → β) (init : β) (as : ByteArray) (start := 0) (stop := as.size) : β :=
  Id.run <| as.foldlM (pure <| f · ·) init start stop

set_option doc.verso false -- Awaiting intra-module forward reference support
/--
Iterator over the bytes (`UInt8`) of a `ByteArray`.

Typically created by `arr.iter`, where `arr` is a `ByteArray`.

An iterator is *valid* if the position `i` is *valid* for the array `arr`, meaning `0 ≤ i ≤ arr.size`

Most operations on iterators return arbitrary values if the iterator is not valid. The functions in
the `ByteArray.Iterator` API should rule out the creation of invalid iterators, with two exceptions:

- `Iterator.next iter` is invalid if `iter` is already at the end of the array (`iter.atEnd` is
  `true`)
- `Iterator.forward iter n`/`Iterator.nextn iter n` is invalid if `n` is strictly greater than the
  number of remaining bytes.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant684fdb2413309a9e15cd20b7a89ebb8213494bb5248cb4ad4f4a8c05bddb236a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant684fdb2413309a9e15cd20b7a89ebb8213494bb5248cb4ad4f4a8c05bddb236a.lean#L334).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c241c1cbf1d61b29eca95918a03df6ef7b557248` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
