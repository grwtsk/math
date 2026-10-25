# mkInhabitantForAux?

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:baf1650a07f98423638a651a9df5bb090c41ac1e0cb2cf69b183bbf4f5fd5da2",
  "kind": "def",
  "lexical_name": "mkInhabitantForAux?",
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
  "slug": "mkinhabitantforaux--13719470128508feb3f19d2b",
  "source": {
    "blob": "7fa3388e1d158bcd47e5d268bbc9d89dd3cc652c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 57,
    "line": 43,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MkInhabitant/Variantd3fb8e182756708cc3547c57813cdc9d274013f7dcbecd73a7b1a99ebc873b98.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:13719470128508feb3f19d2b1fb85cd09b0623c961064b5375049ae4b8e4c098",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MkInhabitant/Variantd3fb8e182756708cc3547c57813cdc9d274013f7dcbecd73a7b1a99ebc873b98.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:baf1650a07f98423638a651a9df5bb090c41ac1e0cb2cf69b183bbf4f5fd5da2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 43–57.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private partial def mkInhabitantForAux? (xs insts : Array Expr) (type : Expr) (useOfNonempty : Bool) : MetaM (Option Expr) := withIncRecDepth do
  if let some val ← mkInhabitant? type useOfNonempty then
    mkLambdaFVars xs (← mkLetFVars (usedLetOnly := true) insts val)
  else
    let type ← whnfCore type
    if type.isForall then
      forallTelescope type fun xs' type' =>
        withInhabitedInstances xs' fun insts' =>
          mkInhabitantForAux? (xs ++ xs') (insts ++ insts') type' useOfNonempty
    else if let some type' ← unfoldDefinition? type then
      mkInhabitantForAux? xs insts type' useOfNonempty
    else
      return none

/- TODO: add a global IO.Ref to let users customize/extend this procedure -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MkInhabitant/Variantd3fb8e182756708cc3547c57813cdc9d274013f7dcbecd73a7b1a99ebc873b98.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MkInhabitant/Variantd3fb8e182756708cc3547c57813cdc9d274013f7dcbecd73a7b1a99ebc873b98.lean#L43).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7fa3388e1d158bcd47e5d268bbc9d89dd3cc652c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
