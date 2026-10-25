# Rii

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:fcc4c64e0552e65be64cd4fc096e4f5be3cad12f30918b363eeba7974196a3e1",
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
  "slug": "rii--a1d435eb3c3b7e9f82859cca",
  "source": {
    "blob": "6a0f7f742690f1a7fdce13c14cb01a4d3901106d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 189,
    "line": 144,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PRange/Variant8b02fdaf74aa8f9400d7d544c749c6b8ea83910f2c24ae185028b43c8550b4db.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:a1d435eb3c3b7e9f82859ccae65858402b8a1235b58c09c8ed86dd6befa4c513",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PRange/Variant8b02fdaf74aa8f9400d7d544c749c6b8ea83910f2c24ae185028b43c8550b4db.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:fcc4c64e0552e65be64cd4fc096e4f5be3cad12f30918b363eeba7974196a3e1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 144–189.

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

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PRange/Variant8b02fdaf74aa8f9400d7d544c749c6b8ea83910f2c24ae185028b43c8550b4db.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PRange/Variant8b02fdaf74aa8f9400d7d544c749c6b8ea83910f2c24ae185028b43c8550b4db.lean#L144).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6a0f7f742690f1a7fdce13c14cb01a4d3901106d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
