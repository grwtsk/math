# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.WithWeakNamespace.Variantcc9df7789f0c400ca3e9859127d6978cedb2d1fe0e6f95127f6ab8b128ef4a76

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `e33a04894430d10e6e4649c7935154ba3f1fb71b` · SHA-256 `2124c0943bfd816b08213cac1b59fe35eac733c7776beca9d3b2239b809bc1c4`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

````lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ResolveNamespaceRelative.Variant7058d83a90c9b6cd8546613d74228905e13db8a9d48d97bf069774b53644f1ce","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"7058d83a90c9b6cd8546613d74228905e13db8a9d48d97bf069774b53644f1ce","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.ResolveNamespaceRelative.Variant7058d83a90c9b6cd8546613d74228905e13db8a9d48d97bf069774b53644f1ce","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"7058d83a90c9b6cd8546613d74228905e13db8a9d48d97bf069774b53644f1ce","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Lean/Elab/Command/WithWeakNamespace.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2021 Microsoft Corporation. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Mario Carneiro, Daniel Selsam, Gabriel Ebner
-/
module

prelude
public import Lean.Elab.Command


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ResolveNamespaceRelative.Variant7058d83a90c9b6cd8546613d74228905e13db8a9d48d97bf069774b53644f1ce

namespace Lean.Elab.Command

/-- Adds the name to the namespace, `_root_`-aware.
```
resolveNamespaceRelative `A `B.b == `A.B.b
resolveNamespaceRelative `A `_root_.B.c == `B.c
```
-/
def resolveNamespaceRelative (ns : Name) : Name → Name
  | `_root_ => Name.anonymous
  | Name.str n s .. => Name.mkStr (resolveNamespaceRelative ns n) s
  | Name.num n i .. => Name.mkNum (resolveNamespaceRelative ns n) i
  | Name.anonymous => ns

/-- Changes the current namespace without causing scoped things to go out of scope -/
def withWeakNamespace {α : Type} (ns : Name) (m : CommandElabM α) : CommandElabM α := do
  let old ← getCurrNamespace
  let ns := resolveNamespaceRelative old ns
  modify fun s ↦ { s with env := s.env.registerNamespace ns }
  modifyScope ({ · with currNamespace := ns })
  try m finally modifyScope ({ · with currNamespace := old })

@[builtin_command_elab Parser.Command.withWeakNamespace]
def elabWithWeakNamespace : CommandElab
  | `(Parser.Command.withWeakNamespace| with_weak_namespace $ns:ident $cmd) =>
    withWeakNamespace ns.getId (elabCommand cmd)
  | _ => throwUnsupportedSyntax

end Lean.Elab.Command
````
