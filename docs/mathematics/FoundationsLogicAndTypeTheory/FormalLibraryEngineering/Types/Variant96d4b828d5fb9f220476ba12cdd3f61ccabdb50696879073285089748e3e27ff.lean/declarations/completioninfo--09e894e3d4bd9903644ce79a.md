# CompletionInfo

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:88f4166c17aac4cfe96e13c5781c635dd53b933ad397b487abc5fd60dcab16d8",
  "kind": "inductive",
  "lexical_name": "CompletionInfo",
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
  "slug": "completioninfo--09e894e3d4bd9903644ce79a",
  "source": {
    "blob": "ff0b1f85d6b211677b763aacdb13d569b6f62025",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 119,
    "line": 108,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Types/Variant96d4b828d5fb9f220476ba12cdd3f61ccabdb50696879073285089748e3e27ff.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:09e894e3d4bd9903644ce79ae08725ed89fba70095290d2c28e9ed9a9c35111d",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Types/Variant96d4b828d5fb9f220476ba12cdd3f61ccabdb50696879073285089748e3e27ff.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `inductive` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:88f4166c17aac4cfe96e13c5781c635dd53b933ad397b487abc5fd60dcab16d8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 108–119.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
inductive CompletionInfo where
  | dot (termInfo : TermInfo) (expectedType? : Option Expr)
  | id (stx : Syntax) (id : Name) (danglingDot : Bool) (lctx : LocalContext) (expectedType? : Option Expr)
  | dotId (stx : Syntax) (id : Name) (lctx : LocalContext) (expectedType? : Option Expr)
  | fieldId (stx : Syntax) (id : Option Name) (lctx : LocalContext) (structName : Name)
  | namespaceId (stx : Syntax)
  | option (stx : Syntax)
  | errorName (stx partialId : Syntax)
  | endSection (stx : Syntax) (id? : Option Name) (danglingDot : Bool) (scopeNames : List String)
  | tactic (stx : Syntax)

/-- Info for an option reference (e.g. in `set_option`). -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Types/Variant96d4b828d5fb9f220476ba12cdd3f61ccabdb50696879073285089748e3e27ff.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Types/Variant96d4b828d5fb9f220476ba12cdd3f61ccabdb50696879073285089748e3e27ff.lean#L108).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ff0b1f85d6b211677b763aacdb13d569b6f62025` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
