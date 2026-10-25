# coerceSimpleRecordingNames?

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:b0f8c3806e3bfebc0a31dbbded89bcce44189408826ca18d1cc35299c3dd817b",
  "kind": "def",
  "lexical_name": "coerceSimpleRecordingNames?",
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
  "slug": "coercesimplerecordingnames--a1a9a4a262da5651f846f950",
  "source": {
    "blob": "2590b7f7491eaae9ee6bfc15c31576b5a0fe4473",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 92,
    "line": 78,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Coe/Variant2641ac9fc8de7640d4e57fff5977cb72b3e2922ee91e69470d36adb4619359ff.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:a1a9a4a262da5651f846f95070348d0dcb8ee06b11e8a16677bdc439ea231dbc",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Coe/Variant2641ac9fc8de7640d4e57fff5977cb72b3e2922ee91e69470d36adb4619359ff.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:b0f8c3806e3bfebc0a31dbbded89bcce44189408826ca18d1cc35299c3dd817b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 78–92.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def coerceSimpleRecordingNames? (expr expectedType : Expr) : MetaM (LOption (Expr × List Name)) := do
  let eType ← inferType expr
  let u ← getLevel eType
  let v ← getLevel expectedType
  let coeTInstType := mkAppN (mkConst ``CoeT [u, v]) #[eType, expr, expectedType]
  match ← trySynthInstance coeTInstType with
  | .some inst =>
    let result ← expandCoe (mkAppN (mkConst ``CoeT.coe [u, v]) #[eType, expr, expectedType, inst])
    unless ← isDefEq (← inferType result.1) expectedType do
      throwError "Could not coerce{indentExpr expr}\nto{indentExpr expectedType}\ncoerced expression has wrong type:{indentExpr result.1}"
    return .some result
  | .undef => return .undef
  | .none => return .none

/-- Coerces `expr` to `expectedType` using `CoeT`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Coe/Variant2641ac9fc8de7640d4e57fff5977cb72b3e2922ee91e69470d36adb4619359ff.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Coe/Variant2641ac9fc8de7640d4e57fff5977cb72b3e2922ee91e69470d36adb4619359ff.lean#L78).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2590b7f7491eaae9ee6bfc15c31576b5a0fe4473` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
