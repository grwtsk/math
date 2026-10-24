# constantInfoJson

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:2cb3eebe670e0be2b7aa42dc1e4a45bb4fc65ede09dd19c8bf7580f89616a83a",
  "kind": "def",
  "lexical_name": "constantInfoJson",
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
  "slug": "constantinfojson--2b9b8c3d9ddd5d64fd86376a",
  "source": {
    "blob": "e1c14e0ed8d4faa652c4adde057726bbd6400fa5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 585,
    "line": 562,
    "path": "GRWTSK/Topology/GeneralTopology/Export/Variante316a00b571fbf0113d2ccccf93e3bfdf2bb743a7a3404630100da0908fc92b8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:2b9b8c3d9ddd5d64fd86376a33cdfa6357b527ada6c45d79fdfd3ae8cb335555",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Export/Variante316a00b571fbf0113d2ccccf93e3bfdf2bb743a7a3404630100da0908fc92b8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:2cb3eebe670e0be2b7aa42dc1e4a45bb4fc65ede09dd19c8bf7580f89616a83a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 562–585.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def constantInfoJson (info : ConstantInfo) : String :=
  let deps := constantDependencyNames info
  "{\"name\":" ++ jsonString info.name.toString ++
  ",\"kind\":" ++ jsonString (constantKind info) ++
  ",\"declarationKind\":" ++ jsonString (constantKind info) ++
  ",\"proofStatus\":" ++ jsonString (proofStatusForConstant info) ++
  ",\"axiomExternalStatus\":" ++ jsonString (axiomExternalStatus info) ++
  ",\"isTheorem\":" ++ jsonBool info.isTheorem ++
  ",\"proofBoundaryClass\":" ++ jsonString (declarationProofBoundaryClass info) ++
  ",\"isTheoremFacing\":" ++ jsonBool (declarationIsTheoremFacing info) ++
  ",\"mathematicalTheoremFacing\":" ++
    jsonBool (declarationIsMathematicalTheoremFacing info) ++
  ",\"implementationTheoremFacing\":" ++
    jsonBool (declarationIsImplementationTheoremFacing info) ++
  ",\"isAxiomOrExternal\":" ++ jsonBool info.isAxiom ++
  ",\"dependencies\":" ++ jsonStringArray deps ++
  ",\"surfaceDependencies\":" ++ jsonStringArray (surfaceDependencyNames deps) ++
  ",\"importedDependencyNames\":" ++ jsonStringArray (importedDependencyNames deps) ++
  ",\"theoremConeAuthority\":" ++ theoremConeAuthorityJson info deps ++
  ",\"annalsTheoremPage\":" ++ declarationAnnalsPageJson info deps ++
  ",\"sourceFile\":" ++ jsonString (sourceFileHintForDeclaration info.name.toString) ++
  ",\"sourceLine\":" ++ toString (sourceLineHintForDeclaration info.name.toString) ++
  ",\"type\":" ++ jsonString (toString info.type) ++ "}"

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Export/Variante316a00b571fbf0113d2ccccf93e3bfdf2bb743a7a3404630100da0908fc92b8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Export/Variante316a00b571fbf0113d2ccccf93e3bfdf2bb743a7a3404630100da0908fc92b8.lean#L562).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e1c14e0ed8d4faa652c4adde057726bbd6400fa5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
