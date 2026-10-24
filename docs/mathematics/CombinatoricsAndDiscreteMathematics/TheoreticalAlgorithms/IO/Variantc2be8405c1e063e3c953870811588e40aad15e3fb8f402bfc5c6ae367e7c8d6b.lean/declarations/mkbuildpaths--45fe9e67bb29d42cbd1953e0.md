# mkBuildPaths

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:7e8e3d4f01a1ff6123a75e5c229b0778a93fceb1edd65016f4640786b5414ecf",
  "kind": "def",
  "lexical_name": "mkBuildPaths",
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
  "slug": "mkbuildpaths--45fe9e67bb29d42cbd1953e0",
  "source": {
    "blob": "18be54ec55b9e66b175d4537be5f6a1b7dab57ea",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 330,
    "line": 301,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/IO/Variantc2be8405c1e063e3c953870811588e40aad15e3fb8f402bfc5c6ae367e7c8d6b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:45fe9e67bb29d42cbd1953e05ada7a4e0805bfcdc7dce807a3469ed06dbf16fa",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/IO/Variantc2be8405c1e063e3c953870811588e40aad15e3fb8f402bfc5c6ae367e7c8d6b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:7e8e3d4f01a1ff6123a75e5c229b0778a93fceb1edd65016f4640786b5414ecf`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 301–330.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def mkBuildPaths (mod : Name) : CacheM <| List (FilePath × Bool) := do
  /-
  TODO: if `srcDir` or other custom lake layout options are set in the `lean_lib`,
  `packageSrcDir / LIBDIR` might be the wrong path!

  See [Lake documentation](https://github.com/leanprover/lean4/tree/master/src/lake#layout)
  for available options.

  If a dependency is added to mathlib which uses such a custom layout, `mkBuildPaths`
  needs to be adjusted!
  -/
  let sp := (← read).srcSearchPath
  let packageDir ← getSrcDir sp mod
  let path := (System.mkFilePath <| mod.components.map toString)
  if !(← (packageDir / ".lake").isDir) then
    IO.eprintln <| s!"Warning: {packageDir / ".lake"} seems not to exist, most likely `cache` \
      will not work as expected!"

  return [
    -- Note that `packCache` below requires that the `.trace` file is first in this list.
    (packageDir / LIBDIR / path.withExtension "trace", true),
    (packageDir / LIBDIR / path.withExtension "olean", true),
    (packageDir / LIBDIR / path.withExtension "olean.hash", true),
    (packageDir / LIBDIR / path.withExtension "ilean", true),
    (packageDir / LIBDIR / path.withExtension "ilean.hash", true),
    (packageDir / IRDIR  / path.withExtension "c", true),
    (packageDir / IRDIR  / path.withExtension "c.hash", true),
    (packageDir / LIBDIR / path.withExtension "extra", false)]

/-- Check that all required build files exist. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/IO/Variantc2be8405c1e063e3c953870811588e40aad15e3fb8f402bfc5c6ae367e7c8d6b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/IO/Variantc2be8405c1e063e3c953870811588e40aad15e3fb8f402bfc5c6ae367e7c8d6b.lean#L301).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `18be54ec55b9e66b175d4537be5f6a1b7dab57ea` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
