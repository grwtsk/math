# Rii

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:e40358403170d300213aebf288421b1381917b6abdea3290f66f2b95b5ba6545",
  "kind": "structure",
  "lexical_name": "Rii",
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
  "slug": "rii--aa90fdd10f3690eb10ef4d4b",
  "source": {
    "blob": "9d74c9eb408a6f303655b1cd9f3a1f0af2eac346",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 197,
    "line": 152,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PRange/Variant471cd59627cf6b1e4b743f0375a3eb3f43ab5978ebb87b7b6fca6ec3e7c89f94.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:aa90fdd10f3690eb10ef4d4b6dad043147305fbd491db34d49443ba428a8bf13",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PRange/Variant471cd59627cf6b1e4b743f0375a3eb3f43ab5978ebb87b7b6fca6ec3e7c89f94.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:e40358403170d300213aebf288421b1381917b6abdea3290f66f2b95b5ba6545`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 152–197.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure Rii (α : Type u)
deriving DecidableEq

/-- `a...*` is the range of elements greater than or equal to {lit}`a`. See also {name}`Std.Rci`. -/
syntax:max (term "...*") : term
/-- `*...*` is the range that is unbounded in both directions. See also {lean}`Std.Rii`. -/
syntax:max ("*...*") : term
/-- `a<...*` is the range of elements greater than {lit}`a`. See also {lean}`Std.Roi`. -/
syntax:max (term "<...*") : term
/--
`a...<b` is the range of elements greater than or equal to {lit}`a` and less than {lit}`b`.
See also {lean}`Std.Rco`.
-/
syntax:max (term "...<" term) : term
/--
`a...b` is the range of elements greater than or equal to {lit}`a` and less than {lit}`b`.
See also {lean}`Std.Rco`.
-/
syntax:max (term "..." term) : term
/-- `*...<b` is the range of elements less than {lit}`b`. See also {lean}`Std.Rio`. -/
syntax:max ("*...<" term) : term
/-- `*...b` is the range of elements less than {lit}`b`. See also {lean}`Std.Rio`. -/
syntax:max ("*..." term) : term
/--
`a<...<b` is the range of elements greater than {lit}`a` and less than {lit}`b`.
See also {lean}`Std.Roo`.
-/
syntax:max (term "<...<" term) : term
/--
`a<...b` is the range of elements greater than {lit}`a` and less than {lit}`b`.
See also {lean}`Std.Roo`.
-/
syntax:max (term "<..." term) : term
/--
`a...=b` is the range of elements greater than or equal to {lit}`a` and less than or equal to
{lit}`b`. See also {lean}`Std.Rcc`.
-/
syntax:max (term "...=" term) : term
/-- `*...=b` is the range of elements less than or equal to {lit}`b`. See also {lean}`Std.Ric`. -/
syntax:max ("*...=" term) : term
/--
`a<...=b` is the range of elements greater than {lit}`a` and less than or equal to {lit}`b`.
See also {lean}`Std.Roc`.
-/
syntax:max (term "<...=" term) : term

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PRange/Variant471cd59627cf6b1e4b743f0375a3eb3f43ab5978ebb87b7b6fca6ec3e7c89f94.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PRange/Variant471cd59627cf6b1e4b743f0375a3eb3f43ab5978ebb87b7b6fca6ec3e7c89f94.lean#L152).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9d74c9eb408a6f303655b1cd9f3a1f0af2eac346` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
