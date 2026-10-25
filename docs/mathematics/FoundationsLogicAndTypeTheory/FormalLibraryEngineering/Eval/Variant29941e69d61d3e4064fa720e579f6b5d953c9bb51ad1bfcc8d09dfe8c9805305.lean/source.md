# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Eval.Variant29941e69d61d3e4064fa720e579f6b5d953c9bb51ad1bfcc8d09dfe8c9805305

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `b56d0468bcd5a7b787c5c6a4d4e9cc13a4655f3c` · SHA-256 `13c2b4ab050e7714654ba2627add66728f48999d5288963f8ecd6325728d8b8b`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.EvalTerm.Varianta42a18df62ba93e1e621ff311e98eb6147f1e49a7c5856899c80cf58f3da045f","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"a42a18df62ba93e1e621ff311e98eb6147f1e49a7c5856899c80cf58f3da045f","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.EvalTerm.Varianta42a18df62ba93e1e621ff311e98eb6147f1e49a7c5856899c80cf58f3da045f","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"a42a18df62ba93e1e621ff311e98eb6147f1e49a7c5856899c80cf58f3da045f","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Lean/Elab/Eval.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2022 Sebastian Ullrich. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Sebastian Ullrich
-/
module

prelude
public import Lean.Meta.Eval
public import Lean.Elab.SyntheticMVars


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.EvalTerm.Varianta42a18df62ba93e1e621ff311e98eb6147f1e49a7c5856899c80cf58f3da045f

public section

namespace Lean.Elab.Term
open Meta

unsafe def evalTerm (α) (type : Expr) (value : Syntax) (safety := DefinitionSafety.safe) : TermElabM α := withoutModifyingEnv do
  let v ← elabTermEnsuringType value type
  synthesizeSyntheticMVarsNoPostponing
  let v ← instantiateMVars v
  if (← logUnassignedUsingErrorInfos (← getMVars v)) then throwAbortTerm
  evalExpr α type v safety

end Lean.Elab.Term
```
