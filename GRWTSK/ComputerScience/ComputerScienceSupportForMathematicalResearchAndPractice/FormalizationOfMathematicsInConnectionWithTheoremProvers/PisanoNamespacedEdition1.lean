-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Pisano.Variant7cff2afb3c301c6894c6e0111e5767b7028a8e21919157789ded98b7081a5681","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"7cff2afb3c301c6894c6e0111e5767b7028a8e21919157789ded98b7081a5681","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.Pisano.Variant7cff2afb3c301c6894c6e0111e5767b7028a8e21919157789ded98b7081a5681","mathematical_subject":"Foundations.Unclassified","original_sha256":"7cff2afb3c301c6894c6e0111e5767b7028a8e21919157789ded98b7081a5681","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Head/Think_retired/target/think/external/PrimeNumberTheoremAnd/.lake/packages/leancert/LeanCert/Test/Pisano.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2025 LeanCert contributors. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
-/
import LeanCert.Engine.Pisano

/-! # Pisano Period Tests

Verify known Pisano periods and fixed points via `native_decide` and `#eval`. -/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Pisano.Variant7cff2afb3c301c6894c6e0111e5767b7028a8e21919157789ded98b7081a5681

open LeanCert.Engine.Pisano

/-! ### Known Fibonacci Pisano periods π(p) -/

-- π(2) = 3, π(3) = 8, π(5) = 20, π(7) = 16, π(11) = 10, π(13) = 28
#eval findPisanoPeriod 1 (-1) 2   -- expect 3
#eval findPisanoPeriod 1 (-1) 3   -- expect 8
#eval findPisanoPeriod 1 (-1) 5   -- expect 20
#eval findPisanoPeriod 1 (-1) 7   -- expect 16
#eval findPisanoPeriod 1 (-1) 11  -- expect 10
#eval findPisanoPeriod 1 (-1) 13  -- expect 28

/-! ### Pell Pisano periods -/

-- Pell: U_n(2, -1)
#eval findPisanoPeriod 2 (-1) 2   -- expect 2
#eval findPisanoPeriod 2 (-1) 3   -- expect 8
#eval findPisanoPeriod 2 (-1) 5   -- expect 12
#eval findPisanoPeriod 2 (-1) 7   -- expect 6

/-! ### Lucas(3, -1) Pisano periods -/

#eval findPisanoPeriod 3 (-1) 2   -- expect 3
#eval findPisanoPeriod 3 (-1) 3   -- expect 2
#eval findPisanoPeriod 3 (-1) 13  -- expect 52

/-! ### Lucas(3, 1) Pisano periods -/

#eval findPisanoPeriod 3 1 2      -- expect 3
#eval findPisanoPeriod 3 1 3      -- expect 4
#eval findPisanoPeriod 3 1 5      -- expect 10

/-! ### Pisano fixed points -/

-- Fibonacci fixed points ≤ 200: should find 24, 120
#eval findPisanoFixedPoints 1 (-1) 200

-- Pell fixed points ≤ 200: should find 2
#eval findPisanoFixedPoints 2 (-1) 200

-- Lucas(3, -1) fixed points ≤ 200: should find 6, 156
#eval findPisanoFixedPoints 3 (-1) 200

-- Lucas(3, 1) fixed points ≤ 200: should find 12, 60
#eval findPisanoFixedPoints 3 1 200

-- Lucas(4, 1) fixed points ≤ 200: should find 2, 6
#eval findPisanoFixedPoints 4 1 200
