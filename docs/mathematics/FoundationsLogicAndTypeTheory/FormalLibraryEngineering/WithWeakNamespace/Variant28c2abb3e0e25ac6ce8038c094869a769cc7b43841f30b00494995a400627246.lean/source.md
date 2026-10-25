# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.WithWeakNamespace.Variant28c2abb3e0e25ac6ce8038c094869a769cc7b43841f30b00494995a400627246

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `2c0a20f9c614121d54bbfd20cb34ed7b1c43b47f` · SHA-256 `37f8274a75be14c132e134449b4719953e1e08c16e1694a8c2b99c7abf42b043`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

````lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ResolveNamespace.Variant665f9c14c2b3745ad5158e7b442e1f81d4e1fde4a1069793d85664990fdc7f86","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"665f9c14c2b3745ad5158e7b442e1f81d4e1fde4a1069793d85664990fdc7f86","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.ResolveNamespace.Variant665f9c14c2b3745ad5158e7b442e1f81d4e1fde4a1069793d85664990fdc7f86","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"665f9c14c2b3745ad5158e7b442e1f81d4e1fde4a1069793d85664990fdc7f86","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Util/WithWeakNamespace.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["custom_or_effectful_command","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2021 Microsoft Corporation. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Mario Carneiro, Daniel Selsam, Gabriel Ebner
-/

import Mathlib.Init

/-!
# Defines `with_weak_namespace` command.

Changes the current namespace without causing scoped things to go out of scope.
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ResolveNamespace.Variant665f9c14c2b3745ad5158e7b442e1f81d4e1fde4a1069793d85664990fdc7f86

namespace Lean.Elab.Command

/-- Adds the name to the namespace, `_root_`-aware.
```
resolveNamespace `A `B.b == `A.B.b
resolveNamespace `A `_root_.B.c == `B.c
```
-/
def resolveNamespace (ns : Name) : Name → Name
  | `_root_ => Name.anonymous
  | Name.str n s .. => Name.mkStr (resolveNamespace ns n) s
  | Name.num n i .. => Name.mkNum (resolveNamespace ns n) i
  | Name.anonymous => ns

/-- Changes the current namespace without causing scoped things to go out of scope -/
def withWeakNamespace {α : Type} (ns : Name) (m : CommandElabM α) : CommandElabM α := do
  let old ← getCurrNamespace
  let ns := resolveNamespace old ns
  modify fun s ↦ { s with env := s.env.registerNamespace ns }
  modifyScope ({ · with currNamespace := ns })
  try m finally modifyScope ({ · with currNamespace := old })

/-- Changes the current namespace without causing scoped things to go out of scope -/
elab "with_weak_namespace " ns:ident cmd:command : command =>
  withWeakNamespace ns.getId (elabCommand cmd)

end Lean.Elab.Command
````
