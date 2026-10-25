# doForDecl

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:989a620084a1e27fde907ad0068c0cce519c2034188c591a4c8df3277915d5b0",
  "kind": "def",
  "lexical_name": "doForDecl",
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
  "slug": "dofordecl--a9edb01636c3a097c4e3e1a6",
  "source": {
    "blob": "4a61c132dfce3da457769bcd744b64852bf64e77",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 193,
    "line": 185,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Do/Variantc5641b2bafee4b9a6e213cecc0b99825bec43002184c7cc46ae0c0b162335e96.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:a9edb01636c3a097c4e3e1a65ee9537a00990d4434d5783e426ca9786269d687",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Do/Variantc5641b2bafee4b9a6e213cecc0b99825bec43002184c7cc46ae0c0b162335e96.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:989a620084a1e27fde907ad0068c0cce519c2034188c591a4c8df3277915d5b0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 185–193.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def doForDecl := leading_parser
  optional (atomic (ident >> " : ")) >> termParser >> " in " >> withForbidden "do" termParser
/--
`for x in e do s` iterates over `e` assuming `e`'s type has an instance of the `ForIn` typeclass.
`break` and `continue` are supported inside `for` loops.
`for x in e, x2 in e2, ... do s` iterates over the given collections in parallel,
until at least one of them is exhausted.
The types of `e2` etc. must implement the `Std.ToStream` typeclass.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Do/Variantc5641b2bafee4b9a6e213cecc0b99825bec43002184c7cc46ae0c0b162335e96.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Do/Variantc5641b2bafee4b9a6e213cecc0b99825bec43002184c7cc46ae0c0b162335e96.lean#L185).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4a61c132dfce3da457769bcd744b64852bf64e77` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
