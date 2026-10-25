# defsWithUnderscore

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a89f4fc3572d1e3b3c01b656d85195928c8a3041fe5506db7f1c7e52cc8a57ce",
  "kind": "def",
  "lexical_name": "defsWithUnderscore",
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
  "slug": "defswithunderscore--1ba309ed3dcb0f0adb3a8a44",
  "source": {
    "blob": "0093c73271085f8587850897b36b318fd63250e7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 585,
    "line": 561,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Style/Variantbc4cb26f8d0d038225f892dcd8dd81c4d04b5acd607db6bedd9f65c24ae6fd9d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:1ba309ed3dcb0f0adb3a8a445b9c2b47ab9acc0563e1caec40839e8979919340",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Style/Variantbc4cb26f8d0d038225f892dcd8dd81c4d04b5acd607db6bedd9f65c24ae6fd9d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:a89f4fc3572d1e3b3c01b656d85195928c8a3041fe5506db7f1c7e52cc8a57ce`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 561–585.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[env_linter] public def defsWithUnderscore : Batteries.Tactic.Lint.Linter where
  noErrorsFound := "no definitions with an underscore in their name found."
  errorsFound := "FOUND definitions with an underscore in their name."
  test declName := do
    unless ((← getEnv).find? declName).get!.isDefinition &&
        -- TODO: lint private definitions with underscores for readability.
        !(← isPrivateOrAutoDecl declName) do
      return none
    -- We also exclude simprocs: these should be named like normal lemmas.
    -- check if their type is `Lean.Meta.Simp.Simproc`.
    if ((← getEnv).find? declName).get!.type.isConstOf `Lean.Meta.Simp.Simproc then return none
    if isBadNameWithUnderscore declName then
      return m!"The definition `{.ofConstName declName true}` contains an underscore. \
        This almost surely violates mathlib's naming convention; \
        use lowerCamelCase or UpperCamelCase instead."
    else return none

end Style.nameCheck

/-! ### The "openClassical" linter -/

/-- The "openClassical" linter emits a warning on `open Classical` statements which are not
scoped to a single declaration. A non-scoped `open Classical` can hide that some theorem statements
would be better stated with explicit decidability statements.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Style/Variantbc4cb26f8d0d038225f892dcd8dd81c4d04b5acd607db6bedd9f65c24ae6fd9d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Style/Variantbc4cb26f8d0d038225f892dcd8dd81c4d04b5acd607db6bedd9f65c24ae6fd9d.lean#L561).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0093c73271085f8587850897b36b318fd63250e7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
