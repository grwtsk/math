# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Declarations.Variant1ab7b72354348e5d33a75aa3bc7c3c45f0d5179ee5112c77b0937a6d2c01b5ba

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `a38a0fb071250d258437a1675e302d46118c187c` · SHA-256 `c2c898cc9d2efededdbe0101bfb0563caeee31462e06cb36a1c5459bf29d3e3c`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

````lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.FromSource.Variant7c9d82c2abec0becd6186d0fc4632f0042b66edbd6c439e037819aef1667c9d8","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"7c9d82c2abec0becd6186d0fc4632f0042b66edbd6c439e037819aef1667c9d8","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.MathematicalTooling.SourceOrganization.SourceCorpus.FromSource.Variant7c9d82c2abec0becd6186d0fc4632f0042b66edbd6c439e037819aef1667c9d8","mathematical_subject":"MathematicalTooling.SourceOrganization","original_sha256":"7c9d82c2abec0becd6186d0fc4632f0042b66edbd6c439e037819aef1667c9d8","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal.publication/20261007/dependency-recovery-source/source/7c9d82c2abec0becd6186d0fc4632f0042b66edbd6c439e037819aef1667c9d8.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["delimiter_open_at_eof","interpolated_literals","uncompiled_organization"],"structural_qualification":"structural_issues_retained_uncompiled","transform_version":"1"}

namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.FromSource.Variant7c9d82c2abec0becd6186d0fc4632f0042b66edbd6c439e037819aef1667c9d8

# importGraph

A simple tool to create import graphs of lake packages.


## Requirements

For creating different output formats than `.dot` (for example to create a `.pdf` file), you should have [`graphviz`](https://graphviz.org/) installed.

## Usage

If you are using mathlib, the tool will already be available. If not, see installation notes below.

Once available in your project, you can create import graphs with

```bash
lake exe graph
```

A typical command is

```bash
lake exe graph --to MyModule my_graph.pdf
```
where `MyModule` follows the same module naming you would use to `import` it in lean. See `lake exe graph --help` for more options.

You can specify multiple sources and targets e.g. as
```bash
lake exe graph --from MyModule1,MyModule2 --to MyModule3,MyModule4 my_graph.pdf
```

### Troubleshoot

* make sure to `lake build` your project (or the specified `--to` module) before using `lake exe graph`!

### Json

To create a Json file, you can use `.xdot_json` as output type:

```bash
lake exe graph my_graph.xdot_json
```

### HTML

```
lake exe graph my_graph.html
```

creates a stand-alone HTML file visualising the import structure.

## Commands

There are a few commands implemented, which help you analysing the imports of a file. These are accessible by adding `import ImportGraph.Tools` to your lean file.

* `#redundant_imports`: lists any transitively redundant imports in the current module.
* `#min_imports`: attempts to construct a minimal set of imports for the declarations
  in the current file.
  (Must be run at the end of the file. Tactics and macros may result in incorrect output.)
* `#find_home decl`: suggests files higher up the import hierarchy to which `decl` could be moved.
* `#import_diff foo bar ...` computes the new transitive imports that are added to a given file when
  modules `foo, bar, ...` are added to the set of imports of the file.

## Source-File-Based Import Analysis

The `ImportGraph.Imports.FromSource` module provides functions for analyzing imports by parsing source files directly, without requiring a built environment. This is useful for scripts, linters, and tools that need to analyze imports quickly or on files that haven't been compiled yet.

### Functions

Add `import ImportGraph.Imports.FromSource` to your Lean script to access:

* `findImportsFromSource (path : System.FilePath) : IO (Array Name)`: Parse direct imports from a single file.
* `findTransitiveImportsFromSource (startPath : System.FilePath) (rootFilter : Option Name := none) : IO NameSet`: Compute the transitive closure of imports from source files.

### Example

```lean
import ImportGraph.Imports.FromSource

-- Get all transitive Mathlib imports from a file
#eval do
  let imports ← findTransitiveImportsFromSource "Mathlib/Algebra/Ring/Basic.lean" (some `Mathlib)
  IO.println s!"Transitive Mathlib imports: {imports.toArray.qsort Name.lt}"
```

## Other executables

`lake exe unused_transitive_imports m1 m2 ...`

For each specified module `m`, prints those `n` from the argument list which are imported, but transitively unused by `m`.

## Installation

The installation works exactly like for any [Lake package](https://reservoir.lean-lang.org/),
see [Lake docs](https://github.com/leanprover/lean4/tree/master/src/lake#supported-sources).

*This only relevant if your project does not already require `importGraph` through another lake package (e.g. mathlib). If it does, do not follow these instructions; instead just use the tool with `lake exe graph`!*

You can import this in any lean projects by the following line to your `lakefile.lean`:

```lean
require "leanprover-community" / "importGraph" @ git "main"
```

or, if you have a `lakefile.toml`, it would be

```toml
[[require]]
name = "importGraph"
source = "leanprover-community"
rev = "main"
```

Then, you might need to call `lake update -R importGraph` in your project.

## Contribution

Please open PRs/Issues if you have troubles or would like to contribute new features!

## Credits

The main tool has been extracted from [mathlib](https://github.com/leanprover-community/mathlib4),
originally written by Kim Morrison and other mathlib contributors.

The HTML visualisation has been incorporated from
[a project by Eric Wieser](https://github.com/eric-wieser/mathlib-import-graph).

### Maintainers

Primarily maintained by [Jon Eugster](https://leanprover.zulipchat.com/#narrow/dm/385895-Jon-Eugster), Kim Morrison, and the wider leanprover community.
````
