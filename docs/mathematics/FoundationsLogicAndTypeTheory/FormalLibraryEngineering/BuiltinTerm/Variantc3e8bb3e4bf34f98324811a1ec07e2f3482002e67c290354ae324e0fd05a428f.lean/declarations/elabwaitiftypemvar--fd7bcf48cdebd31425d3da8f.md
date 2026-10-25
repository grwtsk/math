# elabWaitIfTypeMVar

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:6b0efcb17ffee4f785e5609b312e0af7b6d9e68505cd72df14061288e8349a0d",
  "kind": "def",
  "lexical_name": "elabWaitIfTypeMVar",
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
  "slug": "elabwaitiftypemvar--fd7bcf48cdebd31425d3da8f",
  "source": {
    "blob": "42da4fd6c8b37be7552d26a5cbf6500ad6184e58",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 143,
    "line": 137,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BuiltinTerm/Variantc3e8bb3e4bf34f98324811a1ec07e2f3482002e67c290354ae324e0fd05a428f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:fd7bcf48cdebd31425d3da8fb6d9d87876a6bbd997391d8efe47ba5f6d1c3ab6",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BuiltinTerm/Variantc3e8bb3e4bf34f98324811a1ec07e2f3482002e67c290354ae324e0fd05a428f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:6b0efcb17ffee4f785e5609b312e0af7b6d9e68505cd72df14061288e8349a0d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 137–143.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[builtin_term_elab «waitIfTypeMVar»] def elabWaitIfTypeMVar : TermElab := fun stx expectedType? => do
  match stx with
  | `(wait_if_type_mvar% ? $n; $b) =>
    tryPostponeIfMVar (← inferType (← getMVarFromUserName n))
    elabTerm b expectedType?
  | _ => throwUnsupportedSyntax

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BuiltinTerm/Variantc3e8bb3e4bf34f98324811a1ec07e2f3482002e67c290354ae324e0fd05a428f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BuiltinTerm/Variantc3e8bb3e4bf34f98324811a1ec07e2f3482002e67c290354ae324e0fd05a428f.lean#L137).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `42da4fd6c8b37be7552d26a5cbf6500ad6184e58` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
