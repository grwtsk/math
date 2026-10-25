# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.125.Variant918ffcb9042f95ffac56422afd34f0efdd92145f4ab81095c46052ebafac2182

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `37ab826147a6182f1f7f5ababa8dae73d5d18dee` · SHA-256 `753b0ecd47fffc88c39924e6c2124676644f688a5d24dcf5488a20fabf9bc296`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.MyTacGen.Variante2f6ef196ee810833055c96ff1750cfa0ed7a13d051a6d849a055916471a9001","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"e2f6ef196ee810833055c96ff1750cfa0ed7a13d051a6d849a055916471a9001","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.MyTacGen.Variante2f6ef196ee810833055c96ff1750cfa0ed7a13d051a6d849a055916471a9001","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"e2f6ef196ee810833055c96ff1750cfa0ed7a13d051a6d849a055916471a9001","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/restored-inputs/packages/aesop/AesopTest/125.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Aesop


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.MyTacGen.Variante2f6ef196ee810833055c96ff1750cfa0ed7a13d051a6d849a055916471a9001

set_option aesop.check.all true
set_option aesop.smallErrorMessages true

@[aesop 90%]
def myTacGen : Aesop.TacGen := fun _ => do
  return #[("exact ⟨val - f { val := val, property := property }, fun a ha => by simpa⟩",
            0.9)]

/-- error: Tactic `aesop` failed, made no progress -/
#guard_msgs in
theorem foo (f : { x // 0 < x } → { x // 0 < x }) (val : Nat)
    (property : 0 < val) :
    ∃ w x, ∀ (a : Nat) (b : 0 < a), ↑(f { val := a, property := b }) = w * a + x := by
  constructor
  aesop
```
