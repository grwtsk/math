# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Load.Variant6b220d083b32f5b96c20fd49a2d25f6dcc336720afb86c76bd0741440ccadf50

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `1889105da7f0ec5e54b0c9eed889cd97d7d9383b` · SHA-256 `d5e610b21fde55c51ce5132ebbe650de5399fb668e057161e8278d0c579edf28`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.EnvOfImports.Variantcd9b1a2955a65f9af089b310c5e01e1e4f2399aeb18d025124677a05d02476dd","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"cd9b1a2955a65f9af089b310c5e01e1e4f2399aeb18d025124677a05d02476dd","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.EnvOfImports.Variantcd9b1a2955a65f9af089b310c5e01e1e4f2399aeb18d025124677a05d02476dd","mathematical_subject":"Computation.DataStructures","original_sha256":"cd9b1a2955a65f9af089b310c5e01e1e4f2399aeb18d025124677a05d02476dd","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Head/Think_retired/target/think/external/PrimeNumberTheoremAnd/.lake/packages/LeanArchitect/Architect/Load.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Architect.Output



namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.EnvOfImports.Variantcd9b1a2955a65f9af089b310c5e01e1e4f2399aeb18d025124677a05d02476dd

namespace Architect

/-!
Loading the analysis result of a module.
-/

open Lean

/-- This is copied from `DocGen4.envOfImports`. -/
def envOfImports (imports : Array Name) : IO Environment := do
  -- needed for modules which use syntax registered with `initialize add_parser_alias ..`
  unsafe Lean.enableInitializersExecution
  importModules (imports.map (Import.mk · false true false)) Options.empty (leakEnv := true) (loadExts := true)

/-- This is copied from `DocGen4.load`, except for separate handling of `options`. -/
def runEnvOfImports (imports : Array Name) (options : Options) (x : CoreM α) : IO α := do
  initSearchPath (← findSysroot)
  let env ← envOfImports imports
  let config := {
    maxHeartbeats := 100000000,
    options := options
      |>.set `debug.skipKernelTC true
      |>.set `Elab.async false,
    fileName := default,
    fileMap := default,
  }

  Prod.fst <$> x.toIO config { env }

/-- Outputs the blueprint of a module. -/
def latexOutputOfImportModule (module : Name) (options : Options) : IO LatexOutput :=
  runEnvOfImports #[module] options (moduleToLatexOutput module)

/-- Outputs the JSON data for the blueprint of a module. -/
def jsonOfImportModule (module : Name) (options : Options) : IO Json :=
  runEnvOfImports #[module] options (moduleToJson module)

end Architect
```
