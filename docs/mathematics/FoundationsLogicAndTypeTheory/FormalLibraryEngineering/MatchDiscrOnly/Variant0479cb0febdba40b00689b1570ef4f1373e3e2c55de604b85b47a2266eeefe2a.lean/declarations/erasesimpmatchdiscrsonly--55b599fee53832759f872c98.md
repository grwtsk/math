# eraseSimpMatchDiscrsOnly

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:451510014dae79d4743b9cfa1a4b9b35b7c18f89661c6456d2141628b690905c",
  "kind": "def",
  "lexical_name": "eraseSimpMatchDiscrsOnly",
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
  "slug": "erasesimpmatchdiscrsonly--55b599fee53832759f872c98",
  "source": {
    "blob": "9a934787fe1436518f1fe7f075f352b6e153ec85",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 63,
    "line": 48,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MatchDiscrOnly/Variant0479cb0febdba40b00689b1570ef4f1373e3e2c55de604b85b47a2266eeefe2a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:55b599fee53832759f872c9821eda10d394226d00f5185127feae15f1997fdba",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MatchDiscrOnly/Variant0479cb0febdba40b00689b1570ef4f1373e3e2c55de604b85b47a2266eeefe2a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:451510014dae79d4743b9cfa1a4b9b35b7c18f89661c6456d2141628b690905c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 48–63.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def eraseSimpMatchDiscrsOnly (e : Expr) : MetaM Simp.Result := do
  if e.find? isSimpMatchDiscrsOnly |>.isNone then
    return { expr := e }
  else
    let pre (e : Expr) := do
      let_expr Grind.simpMatchDiscrsOnly _ a := e | return .continue e
      return .continue a
    let e' ← Core.transform e (pre := pre)
    /-
    `grind` uses the `.reducible` transparency setting, and `Grind.simpMatchDiscrsOnly` is not
    reducible. Thus, `e` and `e'` are not definitionally equal in this setting, and we must
    add a hint.
    -/
    return { expr := e', proof? := mkExpectedPropHint (← mkEqRefl e') (← mkEq e e') }

end Lean.Meta.Grind
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MatchDiscrOnly/Variant0479cb0febdba40b00689b1570ef4f1373e3e2c55de604b85b47a2266eeefe2a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MatchDiscrOnly/Variant0479cb0febdba40b00689b1570ef4f1373e3e2c55de604b85b47a2266eeefe2a.lean#L48).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9a934787fe1436518f1fe7f075f352b6e153ec85` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
