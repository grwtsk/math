# checkToFieldDefEq?

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:8e8b1c3eac8b70fad72ba82acf1e0d004ed04fec45ce6bb8a1a40485a5a92f79",
  "kind": "def",
  "lexical_name": "checkToFieldDefEq?",
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
  "slug": "checktofielddefeq--0a08a058f675bd282d5a1a7a",
  "source": {
    "blob": "8a5d963c3243fe2f7dec54707fbc075223fd67bd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 145,
    "line": 136,
    "path": "GRWTSK/Algebra/StructId/Variant90debd5849c52e5751b8ed29beb82560f1b0b56761d8c0159e5ae3cba7f74f3e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:0a08a058f675bd282d5a1a7a8ce1f29bb48aced7fa27c10582925784b3b8332f",
  "verification": {
    "reference": "docs/verification/Algebra/StructId/Variant90debd5849c52e5751b8ed29beb82560f1b0b56761d8c0159e5ae3cba7f74f3e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:8e8b1c3eac8b70fad72ba82acf1e0d004ed04fec45ce6bb8a1a40485a5a92f79`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 136–145.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def checkToFieldDefEq? (leInst? parentInst? childInst? : Option Expr) (toFieldName : Name) (u : Level) (type : Expr) : GoalM (Option Expr) := do
  let some leInst := leInst? | return none
  let some parentInst := parentInst? | return none
  let some childInst := childInst? | return none
  let toField := mkApp3 (mkConst toFieldName [u]) type leInst childInst
  unless (← isDefEqD parentInst toField) do
    reportIssue! (← mkExpectedDefEqMsg parentInst toField)
    return none
  return some childInst

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/StructId/Variant90debd5849c52e5751b8ed29beb82560f1b0b56761d8c0159e5ae3cba7f74f3e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/StructId/Variant90debd5849c52e5751b8ed29beb82560f1b0b56761d8c0159e5ae3cba7f74f3e.lean#L136).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8a5d963c3243fe2f7dec54707fbc075223fd67bd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
