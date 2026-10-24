# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Basic.Variantf814d7e21031e5e53c258aa19035326c4e973cba91194cb23ec51c1b63400a39

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `aa35a63d99faf4a5ffdf2bc85a53a074f3b25000` · SHA-256 `cfaca28b5990e3f55f3a632114201ed77fc4d2ce3741bbf1bd31f8a99c374e50`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
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

```
