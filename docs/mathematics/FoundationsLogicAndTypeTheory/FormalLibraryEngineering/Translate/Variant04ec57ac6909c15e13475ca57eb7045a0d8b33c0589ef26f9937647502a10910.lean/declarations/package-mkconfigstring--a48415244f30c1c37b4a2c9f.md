# Package.mkConfigString

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:3279d18a0cacb54ae149d2544f86aee07a01d181aab2799d7f6d1a1828f5971a",
  "kind": "def",
  "lexical_name": "Package.mkConfigString",
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
  "slug": "package-mkconfigstring--a48415244f30c1c37b4a2c9f",
  "source": {
    "blob": "de0c02b10f75159f05d4854ee961af44a009ecc1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 37,
    "line": 28,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Translate/Variant04ec57ac6909c15e13475ca57eb7045a0d8b33c0589ef26f9937647502a10910.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:a48415244f30c1c37b4a2c9f7ebd6b946e243b1529b785310457ccd28e7d5761",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Translate/Variant04ec57ac6909c15e13475ca57eb7045a0d8b33c0589ef26f9937647502a10910.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:3279d18a0cacb54ae149d2544f86aee07a01d181aab2799d7f6d1a1828f5971a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 28–37.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
public def Package.mkConfigString (pkg : Package) (lang : ConfigLang) : LogIO String := do
  match lang with
  | .toml => pure <| ppTable pkg.mkTomlConfig
  | .lean => do
    let env ← importModulesUsingCache #[`Lake] {} 1024
    let pp := ppModule <| descopeTSyntax <| pkg.mkLeanConfig
    match (← pp.toIO {fileName := "", fileMap := default} {env} |>.toBaseIO) with
    | .ok (fmt, _) => pure <| (toString fmt).trimAscii.copy ++ "\n"
    | .error ex =>
      error s!"(internal) failed to pretty print Lean configuration: {ex.toString}"
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Translate/Variant04ec57ac6909c15e13475ca57eb7045a0d8b33c0589ef26f9937647502a10910.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Translate/Variant04ec57ac6909c15e13475ca57eb7045a0d8b33c0589ef26f9937647502a10910.lean#L28).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `de0c02b10f75159f05d4854ee961af44a009ecc1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
