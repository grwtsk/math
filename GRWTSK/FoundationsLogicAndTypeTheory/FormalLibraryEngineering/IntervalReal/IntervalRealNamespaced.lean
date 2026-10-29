-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.IntervalRat.Variant336cc72b71249722ee1614a4a52b2002dbff9b0e8b3d36d6f85487726b3c54ec","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"336cc72b71249722ee1614a4a52b2002dbff9b0e8b3d36d6f85487726b3c54ec","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.IntervalRat.Variant336cc72b71249722ee1614a4a52b2002dbff9b0e8b3d36d6f85487726b3c54ec","mathematical_subject":"Foundations.Unclassified","original_sha256":"336cc72b71249722ee1614a4a52b2002dbff9b0e8b3d36d6f85487726b3c54ec","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Head/Think_retired/target/think/external/PrimeNumberTheoremAnd/.lake/packages/leancert/LeanCert/Core/IntervalReal.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2024 LeanCert Contributors. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: LeanCert Contributors
-/
import LeanCert.Core.IntervalRat.Basic
import LeanCert.Core.IntervalRat.Transcendental
import LeanCert.Core.IntervalRat.Taylor

/-!
# Rational Endpoint Intervals

This file defines `IntervalRat`, a concrete interval type with rational endpoints
suitable for computation. We prove the Fundamental Theorem of Interval Arithmetic
(FTIA) for each operation.

## Module Structure

* `IntervalRat.Basic` - Core types: `IntervalRat`, membership, basic operations
* `IntervalRat.Transcendental` - Noncomputable transcendental bounds (exp, log, sqrt, atanh)
* `IntervalRat.Taylor` - Computable Taylor series evaluators

## Main definitions

* `LeanCert.Core.IntervalRat` - Intervals with rational endpoints
* `LeanCert.Core.IntervalRat.toSet` - Semantic interpretation as a subset of ℝ
* Operations: `add`, `neg`, `sub`, `mul`, `inv`, `div`
* Computable: `expComputable`, `sinComputable`, `cosComputable`

## Main theorems

* `mem_add` - FTIA for addition
* `mem_neg` - FTIA for negation
* `mem_sub` - FTIA for subtraction
* `mem_mul` - FTIA for multiplication
* `mem_expComputable`, `mem_sinComputable`, `mem_cosComputable` - FTIA for computable functions

## Design notes

All operations maintain the invariant `lo ≤ hi`. Domain restrictions for partial
operations (like `inv`) are encoded via separate types or explicit hypotheses.
-/

namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.IntervalRat.Variant336cc72b71249722ee1614a4a52b2002dbff9b0e8b3d36d6f85487726b3c54ec

