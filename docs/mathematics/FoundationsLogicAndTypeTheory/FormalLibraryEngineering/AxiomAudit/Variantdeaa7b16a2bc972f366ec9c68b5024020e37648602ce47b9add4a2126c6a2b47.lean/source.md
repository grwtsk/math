# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.AxiomAudit.Variantdeaa7b16a2bc972f366ec9c68b5024020e37648602ce47b9add4a2126c6a2b47

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `dd0b4e612b75b4f7e5e45184864e249f021aa51c` · SHA-256 `ce7ff97d611055bef061cbbfab74ae5eef1ddbc7eda2db12cad96c4610614928`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.AssertNoSorry.Variant6134ac9aa488250b1470f5a2b789af4aef5470b482ed7da4b64e3f3c17b5bef0","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"6134ac9aa488250b1470f5a2b789af4aef5470b482ed7da4b64e3f3c17b5bef0","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.AssertNoSorry.Variant6134ac9aa488250b1470f5a2b789af4aef5470b482ed7da4b64e3f3c17b5bef0","mathematical_subject":"Foundations.Unclassified","original_sha256":"6134ac9aa488250b1470f5a2b789af4aef5470b482ed7da4b64e3f3c17b5bef0","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Head/Think_retired/target/think/external/PrimeNumberTheoremAnd/.lake/packages/leancert/Tests/AxiomAudit.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathlib.Util.AssertNoSorry
import LeanCert.Engine.Eval.Core
import LeanCert.Core.IntervalRat.Taylor
import LeanCert.Core.IntervalRat.TrigReduced

/-!
Axiom/sorry guardrail for the certified interval evaluation path.
These should stay free of `sorryAx`.
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.AssertNoSorry.Variant6134ac9aa488250b1470f5a2b789af4aef5470b482ed7da4b64e3f3c17b5bef0

assert_no_sorry LeanCert.Engine.evalIntervalCore_correct
assert_no_sorry LeanCert.Engine.evalIntervalCore1_correct
assert_no_sorry LeanCert.Core.IntervalRat.mem_logComputable
assert_no_sorry LeanCert.Core.IntervalRat.mem_sinComputableReduced
assert_no_sorry LeanCert.Core.IntervalRat.mem_cosComputableReduced
assert_no_sorry LeanCert.Engine.mem_erfPointComputable
```
