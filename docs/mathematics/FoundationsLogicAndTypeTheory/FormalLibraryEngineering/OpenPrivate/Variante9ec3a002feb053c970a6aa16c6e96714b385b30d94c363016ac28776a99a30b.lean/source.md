# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.OpenPrivate.Variante9ec3a002feb053c970a6aa16c6e96714b385b30d94c363016ac28776a99a30b

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `f5b764324dc1cbd5be67000a8acf8d846326d13f` · SHA-256 `f1c2607965b85cdb2dab871f9f4952b1fe9104902ae194a2cd17c7778ef5a7b4`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.OpenPrivate.Variant94d6b77a6b757124ee0723e0186087c715a5d24487730f2553955f4799764fe1","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"94d6b77a6b757124ee0723e0186087c715a5d24487730f2553955f4799764fe1","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.NumbersAndBasicStructures.SourceCorpus.OpenPrivate.Variant94d6b77a6b757124ee0723e0186087c715a5d24487730f2553955f4799764fe1","mathematical_subject":"Foundations.NumbersAndBasicStructures","original_sha256":"94d6b77a6b757124ee0723e0186087c715a5d24487730f2553955f4799764fe1","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/restored-inputs/packages/batteries/BatteriesTest/openPrivate.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Batteries.Tactic.OpenPrivate

import BatteriesTest.OpenPrivateDefs




namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.OpenPrivate.Variant94d6b77a6b757124ee0723e0186087c715a5d24487730f2553955f4799764fe1

/-- error: Unknown identifier `secretNumber` -/
#guard_msgs in
#eval secretNumber


-- It works with one space between the tokens
/-- info: 2 -/
#guard_msgs in
open private secretNumber from BatteriesTest.OpenPrivateDefs in
#eval secretNumber


-- It also works with other kinds of whitespace between the tokens

/-- info: 2 -/
#guard_msgs in
open      private secretNumber from BatteriesTest.OpenPrivateDefs in
#eval secretNumber


/-- info: 2 -/
#guard_msgs in
open
  private secretNumber from BatteriesTest.OpenPrivateDefs in
#eval secretNumber

/-- info: 2 -/
#guard_msgs in
open /- Being sneaky! -/ private secretNumber from BatteriesTest.OpenPrivateDefs in
#eval secretNumber

/--
info: @[backward_defeq] private theorem secretNumber.eq_def : secretNumber✝ = 2 :=
Eq.refl secretNumber✝
-/
#guard_msgs in
open private secretNumber.eq_def from BatteriesTest.OpenPrivateDefs in
#print secretNumber.eq_def
```
