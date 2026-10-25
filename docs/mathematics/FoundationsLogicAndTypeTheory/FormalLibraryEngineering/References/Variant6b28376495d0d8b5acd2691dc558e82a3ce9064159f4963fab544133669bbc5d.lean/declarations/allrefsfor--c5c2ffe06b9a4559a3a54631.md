# allRefsFor

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:7a1220fdfce40e9256eb2879da93ee00b0fd2f9effbd3fd54c4a135d177a0ac4",
  "kind": "def",
  "lexical_name": "allRefsFor",
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
  "slug": "allrefsfor--c5c2ffe06b9a4559a3a54631",
  "source": {
    "blob": "633baf65e182b269ae7d068ca67b5ef31f1e07ad",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 750,
    "line": 732,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/References/Variant6b28376495d0d8b5acd2691dc558e82a3ce9064159f4963fab544133669bbc5d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:c5c2ffe06b9a4559a3a546318de2dae3489c8b2c8113da80a5cfabf07ebd5ee8",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/References/Variant6b28376495d0d8b5acd2691dc558e82a3ce9064159f4963fab544133669bbc5d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:7a1220fdfce40e9256eb2879da93ee00b0fd2f9effbd3fd54c4a135d177a0ac4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 732–750.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def allRefsFor
    (self  : References)
    (ident : RefIdent)
    : Array (DocumentUri × Name × Lsp.RefInfo × Decls) := Id.run do
  let refsToCheck := match ident with
    | RefIdent.const .. => self.allRefs.toArray
    | RefIdent.fvar identModule .. =>
      let identModuleName := identModule.toName
      match self.getModuleRefs? identModuleName with
      | none => #[]
      | some (moduleUri, refs, decls) => #[(identModuleName, moduleUri, refs, decls)]
  let mut result := #[]
  for (module, moduleUri, refs, decls) in refsToCheck do
    let some info := refs.get? ident
      | continue
    result := result.push (moduleUri, module, info, decls)
  return result

/-- Yields all references in `module` at `pos`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/References/Variant6b28376495d0d8b5acd2691dc558e82a3ce9064159f4963fab544133669bbc5d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/References/Variant6b28376495d0d8b5acd2691dc558e82a3ce9064159f4963fab544133669bbc5d.lean#L732).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `633baf65e182b269ae7d068ca67b5ef31f1e07ad` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
