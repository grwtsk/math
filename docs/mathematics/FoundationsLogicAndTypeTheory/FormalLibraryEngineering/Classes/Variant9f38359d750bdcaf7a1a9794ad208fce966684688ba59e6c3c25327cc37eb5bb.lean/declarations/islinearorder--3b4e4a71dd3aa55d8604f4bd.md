# IsLinearOrder

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:94c4c66d15aefe6fd2ebf4632a65bb7019de4efc9c53c8e7280f6b499910c423",
  "kind": "class",
  "lexical_name": "IsLinearOrder",
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
  "slug": "islinearorder--3b4e4a71dd3aa55d8604f4bd",
  "source": {
    "blob": "2de289f53415ef8f8bd53fb80d9e52a3e02bd257",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 101,
    "line": 87,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Classes/Variant9f38359d750bdcaf7a1a9794ad208fce966684688ba59e6c3c25327cc37eb5bb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:3b4e4a71dd3aa55d8604f4bd03fbc3c4b9607effc8008c3ccdceeb1e30d8b6a9",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Classes/Variant9f38359d750bdcaf7a1a9794ad208fce966684688ba59e6c3c25327cc37eb5bb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `class` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:94c4c66d15aefe6fd2ebf4632a65bb7019de4efc9c53c8e7280f6b499910c423`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 87–101.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
public class IsLinearOrder (α : Type u) [LE α] extends IsPartialOrder α, IsLinearPreorder α

section LT

/--
This typeclass states that the synthesized `LT α` instance is compatible with the `LE α`
instance. This means that `LT.lt a b` holds if and only if `a` is less or equal to `b` according
to the `LE α` instance, but `b` is not less or equal to `a`.

`LawfulOrderLT α` automatically entails that `LT α` is asymmetric: `a < b` and `b < a` can never
be true simultaneously.

`LT α` does not uniquely determine the `LE α`: There can be only one compatible order data
instance that is total, but there can be others that are not total.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Classes/Variant9f38359d750bdcaf7a1a9794ad208fce966684688ba59e6c3c25327cc37eb5bb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Classes/Variant9f38359d750bdcaf7a1a9794ad208fce966684688ba59e6c3c25327cc37eb5bb.lean#L87).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2de289f53415ef8f8bd53fb80d9e52a3e02bd257` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
