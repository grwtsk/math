# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Functions.Variantbc9c5b711dd862df21bf7cc7c20f37545e874f6966a6d552bb93df8f1b35aaa3

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `710d7914866d7b30174fd7b2ae9d35c6ec84bee8` · SHA-256 `578ad856bedefe079852848b2cabb1b9d66037e1345eec3bc71f675961e27cfd`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Trig.Variant7f02fc560c85212f282893dc84b51c37a51a59c04e1f3af2cd83216becea0155","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"7f02fc560c85212f282893dc84b51c37a51a59c04e1f3af2cd83216becea0155","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.Trig.Variant7f02fc560c85212f282893dc84b51c37a51a59c04e1f3af2cd83216becea0155","mathematical_subject":"Foundations.Unclassified","original_sha256":"7f02fc560c85212f282893dc84b51c37a51a59c04e1f3af2cd83216becea0155","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Head/Think_retired/target/think/external/PrimeNumberTheoremAnd/.lake/packages/leancert/LeanCert/Engine/TaylorModel/Functions.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2024 LeanCert Contributors. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: LeanCert Contributors
-/
import LeanCert.Engine.TaylorModel.Trig
import LeanCert.Engine.TaylorModel.ExpLog
import LeanCert.Engine.TaylorModel.Hyperbolic
import LeanCert.Engine.TaylorModel.Special

/-!
# Taylor Models - Function-Specific Definitions

This file re-exports all function-specific Taylor model definitions.
The implementation is split into:

* `TaylorModel/Trig.lean` - Sin, Cos, Sinc (and future Tan)
* `TaylorModel/ExpLog.lean` - Exp, Log
* `TaylorModel/Hyperbolic.lean` - Sinh, Cosh, Tanh, Atan, Atanh, Asinh
* `TaylorModel/Special.lean` - Erf (and future Sqrt)

## Main definitions (re-exported)

### Trig
* `sinTaylorPoly`, `cosTaylorPoly`, `sincTaylorPoly`
* `tmSin`, `tmCos`, `tmSinc`
* `tmSin_correct`, `tmCos_correct`

### ExpLog
* `expTaylorPoly`, `logTaylorPolyAtCenter`
* `tmExp`, `tmLog`
* `tmExp_correct`, `tmLog_correct`

### Hyperbolic
* `sinhTaylorPoly`, `coshTaylorPoly`, `atanTaylorPoly`, `atanhTaylorPoly`, `asinhTaylorPoly`
* `tmSinh`, `tmCosh`, `tmTanh`, `tmAtan`, `tmAtanh`, `tmAsinh`
* `tmSinh_correct`, `tmCosh_correct`, `tmAtanh_correct`

### Special
* `erfTaylorPoly`
* `tmErf`
-/

namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Trig.Variant7f02fc560c85212f282893dc84b51c37a51a59c04e1f3af2cd83216becea0155

```
