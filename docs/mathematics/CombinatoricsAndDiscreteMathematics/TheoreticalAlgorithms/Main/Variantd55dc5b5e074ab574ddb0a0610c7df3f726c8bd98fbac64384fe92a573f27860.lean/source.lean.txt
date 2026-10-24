-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.RootFinding.Variantabe3ceab2b0fd5e2bd386f09f2daa2c782ddf3c7315369103ad5289feca5a169","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"abe3ceab2b0fd5e2bd386f09f2daa2c782ddf3c7315369103ad5289feca5a169","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.Algorithms.SourceCorpus.RootFinding.Variantabe3ceab2b0fd5e2bd386f09f2daa2c782ddf3c7315369103ad5289feca5a169","mathematical_subject":"Computation.Algorithms","original_sha256":"abe3ceab2b0fd5e2bd386f09f2daa2c782ddf3c7315369103ad5289feca5a169","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Head/Think_retired/target/think/external/PrimeNumberTheoremAnd/.lake/packages/leancert/LeanCert/Engine/RootFinding/Main.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2024 LeanCert Contributors. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: LeanCert Contributors
-/
import LeanCert.Engine.RootFinding.Basic
import LeanCert.Engine.RootFinding.Bisection
import LeanCert.Engine.RootFinding.Newton
import LeanCert.Engine.RootFinding.MVTBounds
import LeanCert.Engine.RootFinding.Contraction

/-!
# Root Finding: Main Module

This module re-exports all components of the root finding library.

## Module Structure

* `Basic.lean` - Core definitions (`RootStatus`, `excludesZero`, `signChange`, `checkRootStatus`)
  and basic correctness lemmas (`excludesZero_correct`, `signChange_correct`)

* `Bisection.lean` - Bisection algorithm (`bisectRootGo`, `bisectRoot`) and
  correctness theorems (`bisectRoot_hasRoot_correct`, `bisectRoot_noRoot_correct`)

* `Newton.lean` - Interval Newton method (`newtonStepTM`, `newtonStepSimple`,
  `newtonStep`, `newtonIntervalGo`, `newtonIntervalTM`) and core preservation
  theorems (`newton_preserves_root`, `newton_step_at_most_one_root`)

* `MVTBounds.lean` - Mean Value Theorem wrappers and quotient bound lemmas
  used for proving Newton contraction correctness

* `Contraction.lean` - Main contraction theorems (`newton_contraction_has_root`,
  `newton_contraction_unique_root`, `newtonIntervalGo_preserves_root`)

## Usage

For most applications, import this module to get access to all root finding
functionality:

```lean
import LeanCert.Engine.RootFinding.Main
```

Or import specific submodules as needed.

## Verification Status

**Fully Verified (no `sorry`):**
- All root finding theorems are now fully proved with no `sorry` statements
- Bisection: `bisectRoot_hasRoot_correct`, `bisectRoot_noRoot_correct`
- Newton: `newton_preserves_root`, `newton_step_at_most_one_root`,
  `newton_contraction_has_root`, `newton_contraction_unique_root`,
  `newtonIntervalGo_preserves_root`
- MVT wrapper lemmas and all contraction contradiction lemmas
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.RootFinding.Variantabe3ceab2b0fd5e2bd386f09f2daa2c782ddf3c7315369103ad5289feca5a169

namespace LeanCert.Engine

-- Re-export key types and definitions
open LeanCert.Core

-- Everything is already exported via the imports

end LeanCert.Engine
