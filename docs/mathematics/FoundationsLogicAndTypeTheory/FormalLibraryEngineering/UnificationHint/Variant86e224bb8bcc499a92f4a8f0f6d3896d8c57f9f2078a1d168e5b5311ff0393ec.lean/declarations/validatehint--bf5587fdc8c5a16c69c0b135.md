# validateHint

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:bae18e2879156d6182e3f0c7731c874b94a7c208233a8c710d751b5ec0aab7de",
  "kind": "def",
  "lexical_name": "validateHint",
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
  "slug": "validatehint--bf5587fdc8c5a16c69c0b135",
  "source": {
    "blob": "b4a6bbf8add06a988a09c5f6b40b4c56a2728eb0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 75,
    "line": 69,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/UnificationHint/Variant86e224bb8bcc499a92f4a8f0f6d3896d8c57f9f2078a1d168e5b5311ff0393ec.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:bf5587fdc8c5a16c69c0b13590a774b9c8ef6b4da7d745cbb9b7efad0012e444",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/UnificationHint/Variant86e224bb8bcc499a92f4a8f0f6d3896d8c57f9f2078a1d168e5b5311ff0393ec.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:bae18e2879156d6182e3f0c7731c874b94a7c208233a8c710d751b5ec0aab7de`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 69–75.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private partial def validateHint (hint : UnificationHint) : MetaM Unit := do
  hint.constraints.forM fun c => do
    unless (← isDefEq c.lhs c.rhs) do
      throwError "invalid unification hint, failed to unify constraint left-hand-side{indentExpr c.lhs}\nwith right-hand-side{indentExpr c.rhs}"
  unless (← isDefEq hint.pattern.lhs hint.pattern.rhs) do
    throwError "invalid unification hint, failed to unify pattern left-hand-side{indentExpr hint.pattern.lhs}\nwith right-hand-side{indentExpr hint.pattern.rhs}"

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/UnificationHint/Variant86e224bb8bcc499a92f4a8f0f6d3896d8c57f9f2078a1d168e5b5311ff0393ec.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/UnificationHint/Variant86e224bb8bcc499a92f4a8f0f6d3896d8c57f9f2078a1d168e5b5311ff0393ec.lean#L69).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b4a6bbf8add06a988a09c5f6b40b4c56a2728eb0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
