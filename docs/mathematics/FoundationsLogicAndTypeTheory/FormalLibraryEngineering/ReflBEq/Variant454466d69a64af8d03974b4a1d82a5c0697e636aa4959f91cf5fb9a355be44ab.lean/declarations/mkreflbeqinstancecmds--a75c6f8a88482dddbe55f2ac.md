# mkReflBEqInstanceCmds

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:c541d52c92a08e599759d54f085a8d5561a78d0b83bf57df4aa7ba04fb66f26c",
  "kind": "def",
  "lexical_name": "mkReflBEqInstanceCmds",
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
  "slug": "mkreflbeqinstancecmds--a75c6f8a88482dddbe55f2ac",
  "source": {
    "blob": "2bc4e5004b410ac0eed88fa876a4b94b064fee24",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 39,
    "line": 19,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ReflBEq/Variant454466d69a64af8d03974b4a1d82a5c0697e636aa4959f91cf5fb9a355be44ab.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:a75c6f8a88482dddbe55f2ac5c617386a7c401923d7bbffa566927f52277b27c",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ReflBEq/Variant454466d69a64af8d03974b4a1d82a5c0697e636aa4959f91cf5fb9a355be44ab.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:c541d52c92a08e599759d54f085a8d5561a78d0b83bf57df4aa7ba04fb66f26c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 19–39.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def mkReflBEqInstanceCmds (declName : Name) : TermElabM (Array Syntax) := do
  let indVal ← getConstInfoInduct declName
  if indVal.all.length > 1 then
    throwError "Deriving `ReflBEq` for mutual inductives is not supported"
  if indVal.isNested then
    throwError "Deriving `ReflBEq` for nested inductives is not supported"

  let argNames     ← mkInductArgNames indVal
  let binders      ← mkImplicitBinders argNames
  let binders      := binders ++ (← mkInstImplicitBinders ``BEq indVal argNames)
  let binders      := binders ++ (← mkInstImplicitBinders ``ReflBEq indVal argNames)
  let indType      ← mkInductiveApp indVal argNames
  let type         ← `($(mkCIdent ``ReflBEq) $indType)
  let instCmd ← `( instance $binders:implicitBinder* : $type where
    rfl := by deriving_ReflEq_tactic)
  let cmds := #[instCmd]
  trace[Elab.Deriving.reflBEq] "\n{cmds}"
  return cmds

open Command

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ReflBEq/Variant454466d69a64af8d03974b4a1d82a5c0697e636aa4959f91cf5fb9a355be44ab.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ReflBEq/Variant454466d69a64af8d03974b4a1d82a5c0697e636aa4959f91cf5fb9a355be44ab.lean#L19).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2bc4e5004b410ac0eed88fa876a4b94b064fee24` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
