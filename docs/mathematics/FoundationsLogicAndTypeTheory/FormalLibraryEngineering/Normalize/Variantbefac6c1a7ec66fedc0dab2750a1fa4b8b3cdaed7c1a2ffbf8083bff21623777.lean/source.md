# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Normalize.Variantbefac6c1a7ec66fedc0dab2750a1fa4b8b3cdaed7c1a2ffbf8083bff21623777

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `e42cbf89a91e9657d1259b628ef4615cb39e8e37` · SHA-256 `d63808cbff943cac1fdd0418293d1cc8755d782e629f530696ef1db1ffa3e4a2`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.FormulaTreeNnf.Variant69ef6ef1b924a6738f2753825f1eba816fe3cd7fa87af601e5530a13821de49f","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"69ef6ef1b924a6738f2753825f1eba816fe3cd7fa87af601e5530a13821de49f","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.FormulaTreeNnf.Variant69ef6ef1b924a6738f2753825f1eba816fe3cd7fa87af601e5530a13821de49f","mathematical_subject":"Foundations.Unclassified","original_sha256":"69ef6ef1b924a6738f2753825f1eba816fe3cd7fa87af601e5530a13821de49f","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/07/21/Surface/formal/.surface/overlays/session:2e628ee6531784ebd1c16c0e/workspace/Surface/Boolean/Syntax/Normalize.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["scope_underflow","uncompiled_organization"],"structural_qualification":"structural_issues_retained_uncompiled","transform_version":"1"}
import Surface.Boolean.Syntax.Basic


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.FormulaTreeNnf.Variant69ef6ef1b924a6738f2753825f1eba816fe3cd7fa87af601e5530a13821de49f

namespace Surface.Boolean

universe u

/-!
Structural negation-normalization for Boolean trees.

`FormulaTree.nnf` removes implication/equivalence/NAND and pushes negation to
variables and constants.  The auxiliary `FormulaTree.negNnf` is structurally
recursive on the same tree, avoiding a fuel argument.
-/

mutual

def FormulaTree.nnf : FormulaTree α → FormulaTree α
  | .var a => .var a
  | .falsum => .falsum
  | .truth => .truth
  | .neg p => FormulaTree.negNnf p
  | .conj p q => .conj (FormulaTree.nnf p) (FormulaTree.nnf q)
  | .disj p q => .disj (FormulaTree.nnf p) (FormulaTree.nnf q)
  | .impl p q => .disj (FormulaTree.negNnf p) (FormulaTree.nnf q)
  | .eqv p q =>
      .conj
        (.disj (FormulaTree.negNnf p) (FormulaTree.nnf q))
        (.disj (FormulaTree.negNnf q) (FormulaTree.nnf p))
  | .nand p q => .disj (FormulaTree.negNnf p) (FormulaTree.negNnf q)

def FormulaTree.negNnf : FormulaTree α → FormulaTree α
  | .var a => .neg (.var a)
  | .falsum => .truth
  | .truth => .falsum
  | .neg p => FormulaTree.nnf p
  | .conj p q => .disj (FormulaTree.negNnf p) (FormulaTree.negNnf q)
  | .disj p q => .conj (FormulaTree.negNnf p) (FormulaTree.negNnf q)
  | .impl p q => .conj (FormulaTree.nnf p) (FormulaTree.negNnf q)
  | .eqv p q =>
      .disj
        (.conj (FormulaTree.nnf p) (FormulaTree.negNnf q))
        (.conj (FormulaTree.negNnf p) (FormulaTree.nnf q))
  | .nand p q => .conj (FormulaTree.nnf p) (FormulaTree.nnf q)

end

end Surface.Boolean
```
