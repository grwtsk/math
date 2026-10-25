# mkInhabitantForAux?

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:6f7d8f0c62f43c456dd7514d61f96f61376de599e8d7f35dbbd59abeee0069f0",
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
  "slug": "mkinhabitantforaux--cd91fd08138eed77a864e0c7",
  "source": {
    "blob": "a994c53e9c587c591551771eb3cc7ad3ce79e30d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 65,
    "line": 51,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MkInhabitant/Variant6e54b3a437d1feb01f3b18c0e5847e6df21607be5568c5b13b0a9f00788abc37.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:cd91fd08138eed77a864e0c704d58306b4c323d8f2f9ab8ba4a7895219dde825",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MkInhabitant/Variant6e54b3a437d1feb01f3b18c0e5847e6df21607be5568c5b13b0a9f00788abc37.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:6f7d8f0c62f43c456dd7514d61f96f61376de599e8d7f35dbbd59abeee0069f0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 51–65.

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

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MkInhabitant/Variant6e54b3a437d1feb01f3b18c0e5847e6df21607be5568c5b13b0a9f00788abc37.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MkInhabitant/Variant6e54b3a437d1feb01f3b18c0e5847e6df21607be5568c5b13b0a9f00788abc37.lean#L51).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a994c53e9c587c591551771eb3cc7ad3ce79e30d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
