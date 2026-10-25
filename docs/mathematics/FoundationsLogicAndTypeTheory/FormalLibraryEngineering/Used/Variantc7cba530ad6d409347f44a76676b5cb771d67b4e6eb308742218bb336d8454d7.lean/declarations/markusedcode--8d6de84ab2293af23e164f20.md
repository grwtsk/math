# markUsedCode

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:52920c802931029ecb41ecb01b6c16698250957dc8afe1703c3b0999d2788076",
  "kind": "def",
  "lexical_name": "markUsedCode",
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
  "slug": "markusedcode--8d6de84ab2293af23e164f20",
  "source": {
    "blob": "f1b46f020d136dba44e75b446b055c91993d4318",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 65,
    "line": 54,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Used/Variantc7cba530ad6d409347f44a76676b5cb771d67b4e6eb308742218bb336d8454d7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:8d6de84ab2293af23e164f2069fef267611a9297783fc1efb855d53e2918ec88",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Used/Variantc7cba530ad6d409347f44a76676b5cb771d67b4e6eb308742218bb336d8454d7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:52920c802931029ecb41ecb01b6c16698250957dc8afe1703c3b0999d2788076`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 54–65.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
partial def markUsedCode (code : Code .pure) : SimpM Unit := do
  match code with
  | .let decl k => markUsedLetDecl decl; markUsedCode k
  | .jp decl k | .fun decl k => markUsedFunDecl decl; markUsedCode k
  | .return fvarId => markUsedFVar fvarId
  | .unreach .. => return ()
  | .jmp fvarId args => markUsedFVar fvarId; args.forM markUsedArg
  | .cases c => markUsedFVar c.discr; c.alts.forM fun alt => markUsedCode alt.getCode

/--
Mark all free variables occurring in `funDecl` as used.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Used/Variantc7cba530ad6d409347f44a76676b5cb771d67b4e6eb308742218bb336d8454d7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Used/Variantc7cba530ad6d409347f44a76676b5cb771d67b4e6eb308742218bb336d8454d7.lean#L54).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f1b46f020d136dba44e75b446b055c91993d4318` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
