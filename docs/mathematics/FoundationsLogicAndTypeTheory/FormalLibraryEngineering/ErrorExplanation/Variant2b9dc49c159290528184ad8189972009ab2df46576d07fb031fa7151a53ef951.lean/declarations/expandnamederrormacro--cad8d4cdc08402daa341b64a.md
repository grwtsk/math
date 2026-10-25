# expandNamedErrorMacro

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:4d2df67a6b8c4007ed23f63835b82426cceaeeb778941cd54045e67cd44c8f30",
  "kind": "def",
  "lexical_name": "expandNamedErrorMacro",
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
  "slug": "expandnamederrormacro--cad8d4cdc08402daa341b64a",
  "source": {
    "blob": "117aba39b0b0c841d933dba4a74e86b43e161140",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 60,
    "line": 30,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ErrorExplanation/Variant2b9dc49c159290528184ad8189972009ab2df46576d07fb031fa7151a53ef951.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:cad8d4cdc08402daa341b64add71a4b75fb689ecf952f8519277773cb30948a3",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ErrorExplanation/Variant2b9dc49c159290528184ad8189972009ab2df46576d07fb031fa7151a53ef951.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:4d2df67a6b8c4007ed23f63835b82426cceaeeb778941cd54045e67cd44c8f30`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 30–60.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def expandNamedErrorMacro : Macro
  | `(throwNamedErrorMacro| throwNamedError $id:ident $msg:interpolatedStr) =>
    ``(Lean.throwNamedError $(quote id.getId) m! $msg)
  | `(throwNamedErrorMacro| throwNamedError $id $msg:term) =>
    ``(Lean.throwNamedError $(quote id.getId) $msg)
  | `(throwNamedErrorAtMacro| throwNamedErrorAt $ref $id $msg:interpolatedStr) =>
    ``(Lean.throwNamedErrorAt $ref $(quote id.getId) m! $msg)
  | `(throwNamedErrorAtMacro| throwNamedErrorAt $ref $id $msg:term) =>
    ``(Lean.throwNamedErrorAt $ref $(quote id.getId) $msg)
  | `(logNamedErrorMacro| logNamedError $id $msg:interpolatedStr) =>
    ``(Lean.logNamedError $(quote id.getId) m! $msg)
  | `(logNamedErrorMacro| logNamedError $id $msg:term) =>
    ``(Lean.logNamedError $(quote id.getId) $msg)
  | `(logNamedErrorAtMacro| logNamedErrorAt $ref $id $msg:interpolatedStr) =>
    ``(Lean.logNamedErrorAt $ref $(quote id.getId) m! $msg)
  | `(logNamedErrorAtMacro| logNamedErrorAt $ref $id $msg:term) =>
    ``(Lean.logNamedErrorAt $ref $(quote id.getId) $msg)
  | `(logNamedWarningMacro| logNamedWarning $id $msg:interpolatedStr) =>
    ``(Lean.logNamedWarning $(quote id.getId) m! $msg)
  | `(logNamedWarningMacro| logNamedWarning $id $msg:term) =>
    ``(Lean.logNamedWarning $(quote id.getId) $msg)
  | `(logNamedWarningAtMacro| logNamedWarningAt $ref $id $msg:interpolatedStr) =>
    ``(Lean.logNamedWarningAt $ref $(quote id.getId) m! $msg)
  | `(logNamedWarningAtMacro| logNamedWarningAt $ref $id $msg:term) =>
    ``(Lean.logNamedWarningAt $ref $(quote id.getId) $msg)
  | _ => Macro.throwUnsupported

/--
Maps macro syntax categories to a pair of the module containing the declaration on which the macro
depends and the name of that declaration.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ErrorExplanation/Variant2b9dc49c159290528184ad8189972009ab2df46576d07fb031fa7151a53ef951.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ErrorExplanation/Variant2b9dc49c159290528184ad8189972009ab2df46576d07fb031fa7151a53ef951.lean#L30).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `117aba39b0b0c841d933dba4a74e86b43e161140` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
