# Iter.Total.first?

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:c495f4221c2a48bff41016860c77d123f7ed55ef79da92268b7c0650b8de7123",
  "kind": "def",
  "lexical_name": "Iter.Total.first?",
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
  "slug": "iter-total-first--eab3882a9b027ecbe0767b5d",
  "source": {
    "blob": "a30156922db4f4dee12afccd137cc10d47922601",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 684,
    "line": 667,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Loop/Variant334fd8452fabf0f25f424744d381e895383a6077b45d68a45e74afa64fa7be66.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:eab3882a9b027ecbe0767b5d0dff850cae7ee9da141bdbaf0097424729e3be47",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Loop/Variant334fd8452fabf0f25f424744d381e895383a6077b45d68a45e74afa64fa7be66.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:c495f4221c2a48bff41016860c77d123f7ed55ef79da92268b7c0650b8de7123`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 667–684.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def Iter.Total.first? {α β : Type w} [Iterator α Id β] [IteratorLoop α Id Id] [Productive α Id]
    (it : Iter.Total (α := α) β) : Option β :=
  it.it.first?

/--
Returns `true` if the iterator yields no values.

`O(|it|)` since the iterator may skip an unknown number of times before returning a result.
Short-circuits upon encountering the first result. Only the first element of `it` is examined.

If the iterator is not productive, this function might run forever. The variant
`it.ensureTermination.isEmpty` always terminates after finitely many steps.

Examples:
* `[].iter.isEmpty = true`
* `[1].iter.isEmpty = false`
-/
@[inline]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Loop/Variant334fd8452fabf0f25f424744d381e895383a6077b45d68a45e74afa64fa7be66.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Loop/Variant334fd8452fabf0f25f424744d381e895383a6077b45d68a45e74afa64fa7be66.lean#L667).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a30156922db4f4dee12afccd137cc10d47922601` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
