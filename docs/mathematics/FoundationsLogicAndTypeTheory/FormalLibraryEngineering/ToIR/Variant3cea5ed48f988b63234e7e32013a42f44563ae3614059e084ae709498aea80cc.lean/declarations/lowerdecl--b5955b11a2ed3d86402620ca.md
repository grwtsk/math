# lowerDecl

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:4d3edb7b692b8f5687d3dd67de85438ffc3ecbb38aab9bd92394ed3ac9a29560",
  "kind": "def",
  "lexical_name": "lowerDecl",
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
  "slug": "lowerdecl--b5955b11a2ed3d86402620ca",
  "source": {
    "blob": "1e21a078b0b89de1a086dadd1695a1ae83ad3c4d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 205,
    "line": 188,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToIR/Variant3cea5ed48f988b63234e7e32013a42f44563ae3614059e084ae709498aea80cc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:b5955b11a2ed3d86402620ca32319f6a75be9a856c4742ed48937a84ed7701e4",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToIR/Variant3cea5ed48f988b63234e7e32013a42f44563ae3614059e084ae709498aea80cc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:4d3edb7b692b8f5687d3dd67de85438ffc3ecbb38aab9bd92394ed3ac9a29560`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 188–205.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def lowerDecl (d : LCNF.Decl .impure) : M (Option Decl) := do
  let params ← d.params.mapM lowerParam
  let resultType := toIRType d.type
  match d.value with
  | .code code =>
    let body ← lowerCode code
    pure <| some <| .fdecl d.name params resultType body {}
  | .extern externAttrData =>
    if externAttrData.entries.isEmpty then
      -- TODO: This matches the behavior of the old compiler, but we should
      -- find a better way to handle this.
      addDecl (mkDummyExternDecl d.name params resultType)
      pure <| none
    else
      pure <| some <| .extern d.name params resultType externAttrData

end ToIR

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToIR/Variant3cea5ed48f988b63234e7e32013a42f44563ae3614059e084ae709498aea80cc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToIR/Variant3cea5ed48f988b63234e7e32013a42f44563ae3614059e084ae709498aea80cc.lean#L188).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1e21a078b0b89de1a086dadd1695a1ae83ad3c4d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
