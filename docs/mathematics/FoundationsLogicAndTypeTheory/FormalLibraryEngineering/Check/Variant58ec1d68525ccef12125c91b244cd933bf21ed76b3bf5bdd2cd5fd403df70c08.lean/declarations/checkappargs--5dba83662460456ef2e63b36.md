# checkAppArgs

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:02a169122a5db315c29150f823eaab0e9c1aabba965f3b39bb1b2b87eb2aec8f",
  "kind": "def",
  "lexical_name": "checkAppArgs",
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
  "slug": "checkappargs--5dba83662460456ef2e63b36",
  "source": {
    "blob": "594588f2c370fa9cf8787b036204ed01307740a5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 136,
    "line": 114,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Check/Variant58ec1d68525ccef12125c91b244cd933bf21ed76b3bf5bdd2cd5fd403df70c08.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:5dba83662460456ef2e63b3652eea566c113484df903d79352d6ff99f788b044",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Check/Variant58ec1d68525ccef12125c91b244cd933bf21ed76b3bf5bdd2cd5fd403df70c08.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:02a169122a5db315c29150f823eaab0e9c1aabba965f3b39bb1b2b87eb2aec8f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 114–136.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def checkAppArgs (f : Expr) (args : Array (Arg .pure)) : CheckM Unit := do
  let mut fType ← inferType f
  let mut j := 0
  for h : i in *...args.size do
    let arg := args[i]
    if fType.isErased then
      return ()
    fType := fType.headBeta
    let (d, b) ←
      match fType with
      | .forallE _ d b _ => pure (d, b)
      | _ =>
        fType := instantiateRevRangeArgs fType j i args |>.headBeta
        match fType with
        | .forallE _ d b _ => j := i; pure (d, b)
        | _ => return ()
    let expectedType := instantiateRevRangeArgs d j i args
    if (← checkTypes) then
      let argType ← arg.inferType
      unless (← compatibleTypes argType expectedType) do
        throwError "type mismatch at LCNF application{indentExpr (mkAppN f (args.map Arg.toExpr))}\nargument {arg.toExpr} has type{indentExpr argType}\nbut is expected to have type{indentExpr expectedType}"
    fType := b

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Check/Variant58ec1d68525ccef12125c91b244cd933bf21ed76b3bf5bdd2cd5fd403df70c08.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Check/Variant58ec1d68525ccef12125c91b244cd933bf21ed76b3bf5bdd2cd5fd403df70c08.lean#L114).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `594588f2c370fa9cf8787b036204ed01307740a5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
