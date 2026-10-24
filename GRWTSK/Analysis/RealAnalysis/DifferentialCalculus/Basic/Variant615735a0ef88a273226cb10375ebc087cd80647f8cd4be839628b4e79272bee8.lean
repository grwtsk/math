-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.RealAnalysis.DifferentialCalculus
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.Core.Variant2ef2098817bd7cfb9150ae3ce86562d00ecaddc9c729f106a50ababfb3c27fc5","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"2ef2098817bd7cfb9150ae3ce86562d00ecaddc9c729f106a50ababfb3c27fc5","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.Calculus.SourceCorpus.Core.Variant2ef2098817bd7cfb9150ae3ce86562d00ecaddc9c729f106a50ababfb3c27fc5","mathematical_subject":"Analysis.Calculus","original_sha256":"2ef2098817bd7cfb9150ae3ce86562d00ecaddc9c729f106a50ababfb3c27fc5","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Head/Think_retired/target/think/external/PrimeNumberTheoremAnd/.lake/packages/leancert/LeanCert/Validity/Bounds/Basic.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2024 LeanCert Contributors. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: LeanCert Contributors
-/
import LeanCert.Validity.Bounds.Core
import LeanCert.Validity.Bounds.WithInv
import LeanCert.Validity.Bounds.Smart
import LeanCert.Validity.Bounds.Bridge

/-!
# Bounds Module Index

This module re-exports all components of the bounds verification infrastructure.

## Submodules

- `Core`: Basic boolean checkers and golden theorems for bound verification
- `WithInv`: Support for expressions with inverse-like operations (inv, log, atan, etc.)
- `Smart`: Monotonicity-aware bounds using derivative information
- `Bridge`: Set.Icc bridge theorems and subdivision combinators

## Usage

Import this module to get access to all bound verification functionality:

```lean
import LeanCert.Validity.Bounds.Basic
```
-/

namespace GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.Core.Variant2ef2098817bd7cfb9150ae3ce86562d00ecaddc9c729f106a50ababfb3c27fc5

