# getCtorArgsNamesAndTypes

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:8417ca72788b9cbc944746805f2e4eea728a1b7c4f84312f9ab96cf22ec01fbb",
  "kind": "def",
  "lexical_name": "getCtorArgsNamesAndTypes",
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
  "slug": "getctorargsnamesandtypes--c0816e0a2b6f3cd2498e9897",
  "source": {
    "blob": "463aa70935651665d60b3a9fc74a3dc790dd03da",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 77,
    "line": 62,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DeriveShrinkable/Variant8549157113d9a7a313ff826686c4400746be95eeba2c3ea4627f8ec74b11d939.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:c0816e0a2b6f3cd2498e9897f6f361d92cb9151c802bc693eb59174edde75766",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DeriveShrinkable/Variant8549157113d9a7a313ff826686c4400746be95eeba2c3ea4627f8ec74b11d939.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:8417ca72788b9cbc944746805f2e4eea728a1b7c4f84312f9ab96cf22ec01fbb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 62–77.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def getCtorArgsNamesAndTypes (indVal : InductiveVal) (ctorName : Name) :
    MetaM (Array (Name × Expr)) := do
  let ctorInfo ← getConstInfoCtor ctorName
  forallTelescopeReducing ctorInfo.type fun args _ => do
    let mut result := #[]
    for h : i in 0...args.size do
      if i < indVal.numParams then continue
      let arg := args[i]
      let argType ← arg.fvarId!.getType
      let argName ← Core.mkFreshUserName `a
      result := result.push (argName, argType)
    return result

open TSyntax.Compat in
/-- Builds a `Header` with only implicit + instance binders (no explicit target binder).
    Adapted from `Plausible.mkHeaderWithOnlyImplicitBinders`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DeriveShrinkable/Variant8549157113d9a7a313ff826686c4400746be95eeba2c3ea4627f8ec74b11d939.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DeriveShrinkable/Variant8549157113d9a7a313ff826686c4400746be95eeba2c3ea4627f8ec74b11d939.lean#L62).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `463aa70935651665d60b3a9fc74a3dc790dd03da` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
