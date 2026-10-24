# mkBuildPaths

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:aad4801a5b273eb5a686df608be10e35670b75253b21145b20651b2799e04d36",
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
  "slug": "mkbuildpaths--de594fa76b0c67f48a640e2c",
  "source": {
    "blob": "888035b399fe71628837ec9acb77cb6d5367dd65",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 355,
    "line": 316,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/IO/Variantb4a0c1385a46e82e71ad1f7c29cee1eb9a9007161a29720b910fd7a1bb5ce494.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:de594fa76b0c67f48a640e2cf3495e669587a0be30cfa8e6f4659fa484acf2cc",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/IO/Variantb4a0c1385a46e82e71ad1f7c29cee1eb9a9007161a29720b910fd7a1bb5ce494.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:aad4801a5b273eb5a686df608be10e35670b75253b21145b20651b2799e04d36`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 316–355.

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
    -- Note: the `.olean`, `.olean.server`, `.olean.private` files must be consecutive,
    -- and in this order. The corresponding `.hash` files can come afterwards, in any order.
    (packageDir / LIBDIR / path.withExtension "olean", true),
    (packageDir / LIBDIR / path.withExtension "olean.server", false),
    (packageDir / LIBDIR / path.withExtension "olean.private", false),
    (packageDir / LIBDIR / path.withExtension "olean.hash", true),
    (packageDir / LIBDIR / path.withExtension "olean.server.hash", false),
    (packageDir / LIBDIR / path.withExtension "olean.private.hash", false),
    (packageDir / LIBDIR / path.withExtension "ilean", true),
    (packageDir / LIBDIR / path.withExtension "ilean.hash", true),
    (packageDir / LIBDIR / path.withExtension "ir.sig", false),
    (packageDir / LIBDIR / path.withExtension "ir.sig.hash", false),
    (packageDir / LIBDIR / path.withExtension "ir", false),
    (packageDir / LIBDIR / path.withExtension "ir.hash", false),
    (packageDir / IRDIR  / path.withExtension "c", true),
    (packageDir / IRDIR  / path.withExtension "c.hash", true),
    (packageDir / LIBDIR / path.withExtension "extra", false)]

/-- Check that all required build files exist. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/IO/Variantb4a0c1385a46e82e71ad1f7c29cee1eb9a9007161a29720b910fd7a1bb5ce494.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/IO/Variantb4a0c1385a46e82e71ad1f7c29cee1eb9a9007161a29720b910fd7a1bb5ce494.lean#L316).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `888035b399fe71628837ec9acb77cb6d5367dd65` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
