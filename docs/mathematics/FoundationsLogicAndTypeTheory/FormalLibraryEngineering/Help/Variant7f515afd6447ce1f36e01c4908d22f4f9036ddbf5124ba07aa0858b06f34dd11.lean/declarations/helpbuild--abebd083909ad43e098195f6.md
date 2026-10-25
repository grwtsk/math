# helpBuild

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:4107cf6649e6281d3d97ef90dc50dc08dd434ba107a2cbf1a982dfb1c7c853d2",
  "kind": "def",
  "lexical_name": "helpBuild",
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
  "slug": "helpbuild--abebd083909ad43e098195f6",
  "source": {
    "blob": "0771b93d8ef6684289739644590faee450775272",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 168,
    "line": 114,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Help/Variant7f515afd6447ce1f36e01c4908d22f4f9036ddbf5124ba07aa0858b06f34dd11.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:abebd083909ad43e098195f6f6d06470f5ad24fbf663dc529e29f8c1270403a7",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Help/Variant7f515afd6447ce1f36e01c4908d22f4f9036ddbf5124ba07aa0858b06f34dd11.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:4107cf6649e6281d3d97ef90dc50dc08dd434ba107a2cbf1a982dfb1c7c853d2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 114–168.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def helpBuild :=
"Build targets

USAGE:
  lake build [<targets>...] [-o <mappings>]

A target is specified with a string of the form:

  [@[<package>]/][<target>|[+]<module>][:<facet>]

You can also use the source path of a module as a target. For example,

  lake build Foo/Bar.lean:o

will build the Lean module (within the workspace) whose source file is
`Foo/Bar.lean` and compile the generated C file into a native object file.

The `@` and `+` markers can be used to disambiguate packages and modules
from file paths or other kinds of targets (e.g., executables or libraries).

LIBRARY FACETS:         build the library's ...
  leanArts (default)    Lean artifacts (*.olean, *.ilean, *.c files)
  static                static artifact (*.a file)
  shared                shared artifact (*.so, *.dll, or *.dylib file)

MODULE FACETS:          build the module's ...
  deps                  dependencies (e.g., imports, shared libraries, etc.)
  leanArts (default)    Lean artifacts (*.olean, *.ilean, *.c files)
  olean                 OLean (binary blob of Lean data for importers)
  ilean                 ILean (binary blob of metadata for the Lean LSP server)
  c                     compiled C file
  bc                    compiled LLVM bitcode file
  c.o                   compiled object file (of its C file)
  bc.o                  compiled object file (of its LLVM bitcode file)
  o                     compiled object file (of its configured backend)
  dynlib                shared library (e.g., for `--load-dynlib`)

TARGET EXAMPLES:        build the ...
  a                     default facet(s) of target `a`
  @a                    default target(s) of package `a`
  +A                    default facet(s) of module `A`
  @/a                   default facet(s) of target `a` of the root package
  @a/b                  default facet(s) of target `b` of package `a`
  @a/+A:c               C file of module `A` of package `a`
  :foo                  facet `foo` of the root package

A bare `lake build` command will build the default target(s) of the root
package. Package dependencies are not updated during a build.

With the Lake cache enabled, the `-o` option will cause Lake to track the
input-to-outputs mappings of targets in the root package touched during the
build and write them to the specified file at the end of the build. These
mappings can then be used to upload build artifacts to a remote cache with
`lake cache put`."

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Help/Variant7f515afd6447ce1f36e01c4908d22f4f9036ddbf5124ba07aa0858b06f34dd11.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Help/Variant7f515afd6447ce1f36e01c4908d22f4f9036ddbf5124ba07aa0858b06f34dd11.lean#L114).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0771b93d8ef6684289739644590faee450775272` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
