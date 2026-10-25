# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Descr.Variant6bbc75c2dcb7efd258cbdd69335c1db0ef81904ebac0a0e8323c86b5f6399a9e

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `c0a22e51aef964df58ece0c06f385e54140b6aa7` · SHA-256 `f7385b51db92961a655e48796864331c71847e1ea92c6a193b7b9ee428636c34`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.RuleTacDescr.Variant0a04a56a1d99239ad7a5690e3a9e759808017251a061cd17306ef5e19433e7c0","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"0a04a56a1d99239ad7a5690e3a9e759808017251a061cd17306ef5e19433e7c0","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.RuleTacDescr.Variant0a04a56a1d99239ad7a5690e3a9e759808017251a061cd17306ef5e19433e7c0","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"0a04a56a1d99239ad7a5690e3a9e759808017251a061cd17306ef5e19433e7c0","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/restored-inputs/packages/aesop/Aesop/RuleTac/Descr.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
module

public import Aesop.RuleTac.Basic
public import Aesop.Forward.Match.Types
public import Aesop.Script.CtorNames


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.RuleTacDescr.Variant0a04a56a1d99239ad7a5690e3a9e759808017251a061cd17306ef5e19433e7c0

public section

open Lean Lean.Meta

namespace Aesop

inductive RuleTacDescr
  | apply (term : RuleTerm) (md : TransparencyMode)
  | constructors (constructorNames : Array Name) (md : TransparencyMode)
  | forward (term : RuleTerm) (immediate : UnorderedArraySet PremiseIndex)
      (isDestruct : Bool)
  | cases (target : CasesTarget) (md : TransparencyMode)
      (isRecursiveType : Bool) (ctorNames : Array CtorNames)
  | tacticM (decl : Name)
  | ruleTac (decl : Name)
  | tacGen (decl : Name)
  | singleRuleTac (decl : Name)
  | tacticStx (stx : Syntax)
  | preprocess
  | forwardMatches (ms : Array ForwardRuleMatch)
  deriving Inhabited

namespace RuleTacDescr

def forwardRuleMatches? : RuleTacDescr → Option (Array ForwardRuleMatch)
  | forwardMatches ms => ms
  | _ => none

end RuleTacDescr

end Aesop
```
