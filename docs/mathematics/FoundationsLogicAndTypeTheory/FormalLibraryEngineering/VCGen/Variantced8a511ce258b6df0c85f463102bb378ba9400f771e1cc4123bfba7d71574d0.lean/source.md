# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.VCGen.Variantced8a511ce258b6df0c85f463102bb378ba9400f771e1cc4123bfba7d71574d0

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `e0e7fcac4b3bf8a77df657b09c6ca0c2b40fb26e` · SHA-256 `cafb33d96c130879231a2e391bb44a75c03b77447ed6187a56844e68ab2a2b60`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Reduce.Variant0a449ecbf7e675427d72cddddccea7a54f6f38794d08be29b144b6f00c6af7a5","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"0a449ecbf7e675427d72cddddccea7a54f6f38794d08be29b144b6f00c6af7a5","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.Reduce.Variant0a449ecbf7e675427d72cddddccea7a54f6f38794d08be29b144b6f00c6af7a5","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"0a449ecbf7e675427d72cddddccea7a54f6f38794d08be29b144b6f00c6af7a5","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Lean/Elab/Tactic/Do/Internal/VCGen.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2026 Lean FRO LLC. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Sebastian Graf
-/
module

prelude
public import Lean.Elab.Tactic.Do.Internal.VCGen.Reduce
public import Lean.Elab.Tactic.Do.Internal.VCGen.SpecDB
public import Lean.Elab.Tactic.Do.Internal.VCGen.RuleConstruction
public import Lean.Elab.Tactic.Do.Internal.VCGen.Context
public import Lean.Elab.Tactic.Do.Internal.VCGen.EPost
public import Lean.Elab.Tactic.Do.Internal.VCGen.Util
public import Lean.Elab.Tactic.Do.Internal.VCGen.RuleCache
public import Lean.Elab.Tactic.Do.Internal.VCGen.Entails
public import Lean.Elab.Tactic.Do.Internal.VCGen.Solve
public import Lean.Elab.Tactic.Do.Internal.VCGen.Driver
public import Lean.Elab.Tactic.Do.Internal.VCGen.Frontend

/-!
The `vcgen` tactic, split across the modules above.

- `VCGen.Reduce` — SymM head-redex reducer.
- `VCGen.SpecDB` — `SpecTheorem` instantiation, simp-side migration, and `findSpecs` lookup.
- `VCGen.RuleConstruction` — SymM rule constructors from spec/simp/split info.
- `VCGen.Context` — `VCGenM`, its `Context`/`State`, the bundle of pre-built rules.
- `VCGen.EPost` — exception-postcondition decomposition helpers.
- `VCGen.Util` — generic VCGenM helpers (`introsHygienic`, `simpGoalTelescope`, `solveTrivialConjuncts`).
- `VCGen.RuleCache` — VCGenM cache wrappers around the SymM rule constructors.
- `VCGen.Entails` — entailment-shaped goal decomposition (Triple unfolding, state/precondition intro, EPost and lattice steps).
- `VCGen.Solve` — the main `solve` step / `SolveResult`.
- `VCGen.Driver` — the worklist driver (`work`, `emitVC`, `main`, `Result`).
- `VCGen.Frontend` — the `vcgen` syntax + tactic elaborator + `mkSpecContext`.
-/

namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Reduce.Variant0a449ecbf7e675427d72cddddccea7a54f6f38794d08be29b144b6f00c6af7a5

```
