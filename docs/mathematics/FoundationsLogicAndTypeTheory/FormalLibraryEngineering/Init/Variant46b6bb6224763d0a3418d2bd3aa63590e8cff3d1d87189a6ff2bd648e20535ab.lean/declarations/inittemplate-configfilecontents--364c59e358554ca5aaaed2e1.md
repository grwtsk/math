# InitTemplate.configFileContents

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:15d6933cc413adb53d5a56dbf24edef17bb824a8f7dc2125ccd3b2b3dace5596",
  "kind": "def",
  "lexical_name": "InitTemplate.configFileContents",
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
  "slug": "inittemplate-configfilecontents--364c59e358554ca5aaaed2e1",
  "source": {
    "blob": "8e0584dae352349bc1ab85edc95b8d3276334552",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 383,
    "line": 366,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Init/Variant46b6bb6224763d0a3418d2bd3aa63590e8cff3d1d87189a6ff2bd648e20535ab.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:364c59e358554ca5aaaed2e140114ee87ca3914413fa1ccec5c01e27a6ac2473",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Init/Variant46b6bb6224763d0a3418d2bd3aa63590e8cff3d1d87189a6ff2bd648e20535ab.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:15d6933cc413adb53d5a56dbf24edef17bb824a8f7dc2125ccd3b2b3dace5596`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 366–383.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def InitTemplate.configFileContents
  (tmp : InitTemplate) (lang : ConfigLang) (pkgName : Name) (root : Name)
  (leanVer? : Option LeanVer)
: String :=
  let pkgNameStr := dotlessName pkgName
  let mathRev := leanVer?.elim "master" (s!"v{·.toString}")
  match tmp, lang with
  | .std, .lean => stdLeanConfigFileContents pkgNameStr (escapeName! root) pkgNameStr.toLower
  | .std, .toml => stdTomlConfigFileContents pkgNameStr root.toString pkgNameStr.toLower
  | .lib, .lean => libLeanConfigFileContents pkgNameStr (escapeName! root)
  | .lib, .toml => libTomlConfigFileContents pkgNameStr root.toString
  | .exe, .lean => exeLeanConfigFileContents pkgNameStr pkgNameStr.toLower
  | .exe, .toml => exeTomlConfigFileContents pkgNameStr pkgNameStr.toLower
  | .mathLax, .lean => mathLaxLeanConfigFileContents pkgNameStr (escapeName! root) mathRev
  | .mathLax, .toml => mathLaxTomlConfigFileContents pkgNameStr root.toString mathRev
  | .math, .lean => mathLeanConfigFileContents pkgNameStr (escapeName! root) mathRev
  | .math, .toml => mathTomlConfigFileContents pkgNameStr root.toString mathRev

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Init/Variant46b6bb6224763d0a3418d2bd3aa63590e8cff3d1d87189a6ff2bd648e20535ab.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Init/Variant46b6bb6224763d0a3418d2bd3aa63590e8cff3d1d87189a6ff2bd648e20535ab.lean#L366).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8e0584dae352349bc1ab85edc95b8d3276334552` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
