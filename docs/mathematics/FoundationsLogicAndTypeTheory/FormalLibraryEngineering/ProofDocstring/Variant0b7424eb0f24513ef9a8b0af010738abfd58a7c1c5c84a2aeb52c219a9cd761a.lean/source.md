# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ProofDocstring.Variant0b7424eb0f24513ef9a8b0af010738abfd58a7c1c5c84a2aeb52c219a9cd761a

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `3270e78a99eb60bac184f46f9bf96cd7edffb3c3` · SHA-256 `4d17105a5f2f3fcce97af3b85fa0f17ad97374587a773cdb5a97387446b4388f`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Architect.Variantaec29bc57e5d7f2d6ccf73a6265c6e887c960313766cf2c406810a1fab179cb0","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"aec29bc57e5d7f2d6ccf73a6265c6e887c960313766cf2c406810a1fab179cb0","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.Architect.Variantaec29bc57e5d7f2d6ccf73a6265c6e887c960313766cf2c406810a1fab179cb0","mathematical_subject":"Foundations.Unclassified","original_sha256":"aec29bc57e5d7f2d6ccf73a6265c6e887c960313766cf2c406810a1fab179cb0","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Head/Think_retired/target/think/external/PrimeNumberTheoremAnd/.lake/packages/LeanArchitect/ArchitectTest/ProofDocstring.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Architect
import ArchitectTest.MyNat

-- Test regular proof docstring


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Architect.Variantaec29bc57e5d7f2d6ccf73a6265c6e887c960313766cf2c406810a1fab179cb0

@[blueprint] theorem test : True := by
  /-- my test -/
  trivial

/-- info: my test -/
#guard_msgs in
open Lean Architect in
run_meta do
  let doc := getProofDocString (← getEnv) ``test
  logInfo doc

-- Test imported proof docstring (the presistence of proofDocStringExt)

/-- info: The base case follows from \cref{MyNat.zero_add}.

The inductive case follows from \cref{MyNat.succ_add}. -/
#guard_msgs in
open Lean Architect in
run_meta do
  let doc := getProofDocString (← getEnv) ``MyNat.add_comm
  logInfo doc
```
