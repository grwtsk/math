# unusedHavesSuffices

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:64cbe7bab19b41d34c0a0c67bc5cdc2d94fe4a94f55d4d227ffdb75bb01f3c75",
  "kind": "def",
  "lexical_name": "unusedHavesSuffices",
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
  "slug": "unusedhavessuffices--a0d567919c9d069b15d294db",
  "source": {
    "blob": "240605315812c204b41e2f22b2718769634065dc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 218,
    "line": 193,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Misc/Variantf686cbdbcf8c266533eecaa7ba49ed4c5fdb1a7375352bf9e3029cfd255362bb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:a0d567919c9d069b15d294db182b16ce5582ca6874f6c941cad731bf1c07edf1",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Misc/Variantf686cbdbcf8c266533eecaa7ba49ed4c5fdb1a7375352bf9e3029cfd255362bb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:64cbe7bab19b41d34c0a0c67bc5cdc2d94fe4a94f55d4d227ffdb75bb01f3c75`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 193–218.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[env_linter] def unusedHavesSuffices : Linter where
  noErrorsFound := "No declarations have unused term mode have statements."
  errorsFound := "THE FOLLOWING DECLARATIONS HAVE INEFFECTUAL TERM MODE HAVE/SUFFICES BLOCKS. \
    In the case of `have` this is a term of the form `have h := foo, bar` where `bar` does not \
    refer to `foo`. Such statements have no effect on the generated proof, and can just be \
    replaced by `bar`, in addition to being ineffectual, they may make unnecessary assumptions \
    in proofs appear as if they are used. \
    For `suffices` this is a term of the form `suffices h : foo, proof_of_goal, proof_of_foo` \
    where `proof_of_goal` does not refer to `foo`. \
    Such statements have no effect on the generated proof, and can just be replaced by \
    `proof_of_goal`, in addition to being ineffectual, they may make unnecessary assumptions \
    in proofs appear as if they are used."
  test declName := do
    if ← isAutoDecl declName then return none
    let info ← getConstInfo declName
    let mut unused ← findUnusedHaves info.type
    if let some value := info.value? then
      unused := unused ++ (← findUnusedHaves value)
    unless unused.isEmpty do
      return some <| .joinSep unused.toList ", "
    return none

/--
A linter for checking if variables appearing on both sides of an iff are explicit. Ideally, such
variables should be implicit instead.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Misc/Variantf686cbdbcf8c266533eecaa7ba49ed4c5fdb1a7375352bf9e3029cfd255362bb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Misc/Variantf686cbdbcf8c266533eecaa7ba49ed4c5fdb1a7375352bf9e3029cfd255362bb.lean#L193).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `240605315812c204b41e2f22b2718769634065dc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
