# Package.resolveDriver

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:461e02599570b8f475b8b18172637c6a907c0e028c9bb0ddea4d63d2f12011b3",
  "kind": "def",
  "lexical_name": "Package.resolveDriver",
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
  "slug": "package-resolvedriver--1bf890fb5f2711ee9db1388e",
  "source": {
    "blob": "cb277d827816a66c0183491d3956818a61b6ccb0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 70,
    "line": 55,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Actions/Variant6bf40d09e59f84f1a213065e8e65794ed4735001e2d07d1656e8096914b2269b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:1bf890fb5f2711ee9db1388e31aeb1fb46e872a4c23d2d69c01cba0c95b019eb",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Actions/Variant6bf40d09e59f84f1a213065e8e65794ed4735001e2d07d1656e8096914b2269b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:461e02599570b8f475b8b18172637c6a907c0e028c9bb0ddea4d63d2f12011b3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 55–70.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
public def Package.resolveDriver
  (pkg : Package) (kind : String) (driver : String)
: LakeT IO (Package × String) := do
  if driver.isEmpty then
    error s!"{pkg.prettyName}: no {kind} driver configured"
  else
    match driver.split '/' |>.toStringList with
    | [driverPkg, driver] =>
      let some driverPkg ← findPackageByName? driverPkg.toName
        | error s!"{pkg.prettyName}: unknown {kind} driver package '{driverPkg}'"
      return (driverPkg, driver)
    | [driver] =>
      return (pkg, driver)
    | _ =>
      error s!"{pkg.prettyName}: invalid {kind} driver '{driver}' (too many '/')"

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Actions/Variant6bf40d09e59f84f1a213065e8e65794ed4735001e2d07d1656e8096914b2269b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Actions/Variant6bf40d09e59f84f1a213065e8e65794ed4735001e2d07d1656e8096914b2269b.lean#L55).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cb277d827816a66c0183491d3956818a61b6ccb0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
