# getCtorArgsNamesAndTypes

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:37a6949d6a28b1093a905eeac006e78a5913ab672d12c877a36acd822b22c72e",
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
  "slug": "getctorargsnamesandtypes--f99234b8e3caaba091bb7552",
  "source": {
    "blob": "324a8ef9f79136c8d56d6d96a3170ba570dc9038",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 69,
    "line": 54,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DeriveShrinkable/Variantefcf29f8893aa63ee38889fedb87634e072a08fc0ca7144a3405306093d6d400.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:f99234b8e3caaba091bb7552a5ebca352e8fedca6fea25ed8c15e9658d3f2a85",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DeriveShrinkable/Variantefcf29f8893aa63ee38889fedb87634e072a08fc0ca7144a3405306093d6d400.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:37a6949d6a28b1093a905eeac006e78a5913ab672d12c877a36acd822b22c72e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 54–69.

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

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DeriveShrinkable/Variantefcf29f8893aa63ee38889fedb87634e072a08fc0ca7144a3405306093d6d400.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DeriveShrinkable/Variantefcf29f8893aa63ee38889fedb87634e072a08fc0ca7144a3405306093d6d400.lean#L54).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `324a8ef9f79136c8d56d6d96a3170ba570dc9038` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
