# reduceProjStruct?

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:53cd8a9304df8ac86c4d6cbce48fbb0d094dc63c6ceabb70f8c059088475612e",
  "kind": "def",
  "lexical_name": "reduceProjStruct?",
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
  "slug": "reduceprojstruct--ba9d315a0c6388398f8e6394",
  "source": {
    "blob": "d9b846f3b675413135d44a3b549fd1463d5e0368",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 431,
    "line": 410,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variante8ae588394ae67bc187204f0e7a9e7a89f333ace150096d65e5badc1b9702486.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ba9d315a0c6388398f8e63942c76e6943f5e3ce6deaa8350191b1a28f47b70b2",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variante8ae588394ae67bc187204f0e7a9e7a89f333ace150096d65e5badc1b9702486.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:53cd8a9304df8ac86c4d6cbce48fbb0d094dc63c6ceabb70f8c059088475612e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 410–431.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def reduceProjStruct? (e : Expr) : MetaM (Option Expr) := do
  let .const cname _ := e.getAppFn | return none
  let some pinfo ← getProjectionFnInfo? cname | return none
  let args := e.getAppArgs
  if ha : args.size = pinfo.numParams + 1 then
    -- The last argument of a projection is the structure.
    let sarg := args[pinfo.numParams]'(ha ▸ pinfo.numParams.lt_succ_self)
    -- Check that the structure is a constructor expression.
    unless sarg.getAppFn.isConstOf pinfo.ctorName do
      return none
    let sfields := sarg.getAppArgs
    -- The ith projection extracts the ith field of the constructor
    let sidx := pinfo.numParams + pinfo.i
    if hs : sidx < sfields.size then
      return some (sfields[sidx]'hs)
    else
      throwError m!"ill-formed expression, {cname} is the {pinfo.i + 1}-th projection function \
        but {sarg} does not have enough arguments"
  else
    return none

/-- Returns true if `e` contains a name `n` where `p n` is true. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variante8ae588394ae67bc187204f0e7a9e7a89f333ace150096d65e5badc1b9702486.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variante8ae588394ae67bc187204f0e7a9e7a89f333ace150096d65e5badc1b9702486.lean#L410).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d9b846f3b675413135d44a3b549fd1463d5e0368` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
