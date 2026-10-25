# LeanInstall.get

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:e0611b3796ec3fe2eda12e10ae6212e4287b4c09537a0a8272bfa70ed7b130d8",
  "kind": "def",
  "lexical_name": "LeanInstall.get",
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
  "slug": "leaninstall-get--ba57725baecbb26e87a78c55",
  "source": {
    "blob": "3c7edde02ea196e47aae32845c1ff9985008a2da",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 326,
    "line": 272,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/InstallPath/Variantfc5bc3094122fb0384c01cb4d70bf0bd0e84744ec340affadf04b09c88088277.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ba57725baecbb26e87a78c55aa8f59c74018bfd509bca6504d14c370899903f8",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/InstallPath/Variantfc5bc3094122fb0384c01cb4d70bf0bd0e84744ec340affadf04b09c88088277.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:e0611b3796ec3fe2eda12e10ae6212e4287b4c09537a0a8272bfa70ed7b130d8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 272–326.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
public def LeanInstall.get (sysroot : FilePath) (collocated : Bool := false) : BaseIO LeanInstall := do
  let githash ← do
    if collocated then
      pure Lean.githash
    else
      -- Remark: This is expensive (at least on Windows), so try to avoid it.
      getGithash
  let ar ← findAr
  setCc {sysroot, githash, ar}
where
  getGithash := do
    EIO.catchExceptions (h := fun _ => pure "") do
      let out ← IO.Process.output {
        cmd := leanExe sysroot |>.toString,
        args := #["--githash"]
      }
      return out.stdout.trimAscii.copy
  findAr := do
    if let some ar ← IO.getEnv "LEAN_AR" then
      return FilePath.mk ar
    else
      let ar := leanArExe sysroot
      if (← ar.pathExists) then
        return ar
      else if let some ar ← IO.getEnv "AR" then
        return ar
      else
        return "ar"
  setCc i := do
    if let some cc ← IO.getEnv "LEAN_CC" then
      return withCustomCc i cc
    else
      let cc := leanCcExe sysroot
      if (← cc.pathExists) then
        return withInternalCc i cc
      else if let some cc ← IO.getEnv "CC" then
        return withCustomCc i cc
      else
        return withCustomCc i "cc"
  @[inline] withCustomCc (i : LeanInstall) cc :=
    {i with cc}
  withInternalCc (i : LeanInstall) cc :=
    let ccLinkFlags := getInternalLinkerFlags sysroot
    {i with
      cc, customCc := false
      ccFlags := i.cFlags ++ getInternalCFlags sysroot
      ccLinkStaticFlags := ccLinkFlags ++ i.linkStaticFlags
      ccLinkSharedFlags := ccLinkFlags ++ i.linkSharedFlags
    }

/--
Attempt to detect the installation of the given `lean` command
by calling `findLeanSysroot?`. See `LeanInstall.get` for how it assumes the
Lean install is organized.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/InstallPath/Variantfc5bc3094122fb0384c01cb4d70bf0bd0e84744ec340affadf04b09c88088277.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/InstallPath/Variantfc5bc3094122fb0384c01cb4d70bf0bd0e84744ec340affadf04b09c88088277.lean#L272).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3c7edde02ea196e47aae32845c1ff9985008a2da` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
