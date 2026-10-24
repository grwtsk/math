# FreeAddMagma.repr

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:8ebaaa28059dbf4e51245e854f00aad4ee6851e16604ae77b6097c8c62f546fc",
  "kind": "def",
  "lexical_name": "FreeAddMagma.repr",
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
  "slug": "freeaddmagma-repr--9105bb6545897c6d5ec691a2",
  "source": {
    "blob": "b2a13915f78f8882b3966a8c5420705631bbc435",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 294,
    "line": 288,
    "path": "GRWTSK/Algebra/Free/Variant64529d0d301ef638c385da9584dd71911a16cc97867e239395e8682f3611a777.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:9105bb6545897c6d5ec691a25f74531f43e54f2a2f1f0c40a1181a0b101f6e11",
  "verification": {
    "reference": "docs/verification/Algebra/Free/Variant64529d0d301ef638c385da9584dd71911a16cc97867e239395e8682f3611a777.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:8ebaaa28059dbf4e51245e854f00aad4ee6851e16604ae77b6097c8c62f546fc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 288–294.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
protected def FreeAddMagma.repr {α : Type u} [Repr α] : FreeAddMagma α → Lean.Format
  | FreeAddMagma.of x => repr x
  | x + y => "( " ++ x.repr ++ " + " ++ y.repr ++ " )"

attribute [to_additive existing] FreeMagma.repr

@[to_additive]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Free/Variant64529d0d301ef638c385da9584dd71911a16cc97867e239395e8682f3611a777.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Free/Variant64529d0d301ef638c385da9584dd71911a16cc97867e239395e8682f3611a777.lean#L288).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b2a13915f78f8882b3966a8c5420705631bbc435` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
