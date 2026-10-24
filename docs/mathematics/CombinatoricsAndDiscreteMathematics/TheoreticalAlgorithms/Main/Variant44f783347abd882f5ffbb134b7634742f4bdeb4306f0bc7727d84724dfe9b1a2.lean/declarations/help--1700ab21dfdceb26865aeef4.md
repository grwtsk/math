# help

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:98c7d75d84f0fe1309659701cf08f062752d599a8498f77bd5f3217669088635",
  "kind": "def",
  "lexical_name": "help",
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
  "slug": "help--1700ab21dfdceb26865aeef4",
  "source": {
    "blob": "f6bca7cb16a489e51a22a4ad54ed3b5fab328eeb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 59,
    "line": 17,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Main/Variant44f783347abd882f5ffbb134b7634742f4bdeb4306f0bc7727d84724dfe9b1a2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:1700ab21dfdceb26865aeef47655a77ee108e5437cf27901208b3e40f5e14934",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Main/Variant44f783347abd882f5ffbb134b7634742f4bdeb4306f0bc7727d84724dfe9b1a2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:98c7d75d84f0fe1309659701cf08f062752d599a8498f77bd5f3217669088635`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 17–59.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def help : String := "Mathlib4 caching CLI
Usage: cache [COMMAND]

Commands:
  # No privilege required
  get  [ARGS]   Download linked files missing on the local cache and decompress
  get! [ARGS]   Download all linked files and decompress
  get- [ARGS]   Download linked files missing to the local cache, but do not decompress
  pack          Compress non-compressed build files into the local cache
  pack!         Compress build files into the local cache (no skipping)
  unpack        Decompress linked already downloaded files
  unpack!       Decompress linked already downloaded files (no skipping)
  clean         Delete non-linked files
  clean!        Delete everything on the local cache
  lookup [ARGS] Show information about cache files for the given lean files

  # Privilege required
  put          Run 'mk' then upload linked files missing on the server
  put!         Run 'mk' then upload all linked files
  put-unpacked 'put' only files not already 'pack'ed; intended for CI use
  commit       Write a commit on the server
  commit!      Overwrite a commit on the server
  collect      TODO

* Linked files refer to local cache files with corresponding Lean sources
* Commands ending with '!' should be used manually, when hot-fixes are needed

# The arguments for 'get', 'get!', 'get-' and 'lookup'

'get', 'get!', 'get-' and 'lookup' can process a list of module names or file names.

'get [ARGS]' will only get the cache for the specified Lean files and all files imported by one.

Valid arguments are:

* Module names like 'Mathlib.Init'
* File names like 'Mathlib/Init.lean'
* Folder names like 'Mathlib/Data/' (find all Lean files inside `Mathlib/Data/`)
* With bash's automatic glob expansion one can also write things like
  'Mathlib/**/Order/*.lean'.
"

/-- Commands which (potentially) call `curl` for downloading files -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Main/Variant44f783347abd882f5ffbb134b7634742f4bdeb4306f0bc7727d84724dfe9b1a2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Main/Variant44f783347abd882f5ffbb134b7634742f4bdeb4306f0bc7727d84724dfe9b1a2.lean#L17).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f6bca7cb16a489e51a22a4ad54ed3b5fab328eeb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
