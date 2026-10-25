# mkDecEqEnum

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:add7f60f4f46d643b118626f0022ebeb396011d0a838f434b161a65c84b9c749",
  "kind": "def",
  "lexical_name": "mkDecEqEnum",
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
  "slug": "mkdeceqenum--f84b03703bf6fd930d9c7b2e",
  "source": {
    "blob": "bfde032e1a5f9fefe9fba42668d3d328e73cd18b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 287,
    "line": 272,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DecEq/Variant2d60c1d620142e69e91c916a62f9ac105bb0aae652c8ae5e6f86441d4ead1ff4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:f84b03703bf6fd930d9c7b2e89e911c9c82a44fa9707b5dd92786c0751900781",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DecEq/Variant2d60c1d620142e69e91c916a62f9ac105bb0aae652c8ae5e6f86441d4ead1ff4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:add7f60f4f46d643b118626f0022ebeb396011d0a838f434b161a65c84b9c749`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 272–287.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def mkDecEqEnum (declName : Name) : CommandElabM Unit := do
  let cmd ← liftTermElabM do
    mkEnumOfNat declName
    mkEnumOfNatThm declName
    let ofNatIdent  := mkIdent (Name.mkStr declName "ofNat")
    let auxThmIdent := mkIdent (Name.mkStr declName "ofNat_ctorIdx")
    `(instance : DecidableEq $(mkCIdent declName) :=
        fun x y =>
          if h : x.ctorIdx = y.ctorIdx then
            -- We use `rfl` in the following proof because the first script fails for unit-like datatypes due to etaStruct.
            isTrue (by first | have aux := congrArg $ofNatIdent h; rw [$auxThmIdent:ident, $auxThmIdent:ident] at aux; assumption | rfl)
          else
            isFalse fun h => by subst h; contradiction)
  trace[Elab.Deriving.decEq] "\n{cmd}"
  elabCommand cmd

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DecEq/Variant2d60c1d620142e69e91c916a62f9ac105bb0aae652c8ae5e6f86441d4ead1ff4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DecEq/Variant2d60c1d620142e69e91c916a62f9ac105bb0aae652c8ae5e6f86441d4ead1ff4.lean#L272).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bfde032e1a5f9fefe9fba42668d3d328e73cd18b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
