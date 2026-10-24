-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Types.Variantd91394506fdffebf5351778e73f38804c0d3eb421e6d00607036c44d81f2b3bb","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"d91394506fdffebf5351778e73f38804c0d3eb421e6d00607036c44d81f2b3bb","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.Types.Variantd91394506fdffebf5351778e73f38804c0d3eb421e6d00607036c44d81f2b3bb","mathematical_subject":"Computation.DataStructures","original_sha256":"d91394506fdffebf5351778e73f38804c0d3eb421e6d00607036c44d81f2b3bb","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Head/Think_retired/target/think/external/PrimeNumberTheoremAnd/.lake/packages/leancert/LeanCert/Tactic/IntervalAuto/Basic.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2024 LeanCert Contributors. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: LeanCert Contributors
-/
import LeanCert.Tactic.IntervalAuto.Types
import LeanCert.Tactic.IntervalAuto.Norm
import LeanCert.Tactic.IntervalAuto.Extract
import LeanCert.Tactic.IntervalAuto.Parse
import LeanCert.Tactic.IntervalAuto.Diagnostic
import LeanCert.Tactic.IntervalAuto.ProveCommon

/-!
# Interval Arithmetic Tactics - Infrastructure

This module provides infrastructure for the interval arithmetic tactics:
- `Types`: Core data structures
- `Norm`: Goal normalization
- `Extract`: Rational extraction
- `Parse`: Goal parsing
- `Diagnostic`: Error reporting
- `ProveCommon`: Shared utilities

The main tactics are in `LeanCert.Tactic.IntervalAuto`.
-/

namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Types.Variantd91394506fdffebf5351778e73f38804c0d3eb421e6d00607036c44d81f2b3bb

