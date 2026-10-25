# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Typeclass.Variantaeeb2b59f140f5f225c06cbdfa285ef0a177d72a6384321a7610a447c3cae9fd

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `b22ed8feb110a324bff9b54d3d4e8e6a2d23d7e6` · SHA-256 `3f83977a2c86f40559404a364d25b9ba9ea47aa062890f5590b8853dfb77777f`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.TypeClassArgument.Variantaa1a2b78037712ebd013e569e6fe89cd1eb4643667c3c8406ca0ec8d318c6de8","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"aa1a2b78037712ebd013e569e6fe89cd1eb4643667c3c8406ca0ec8d318c6de8","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.TypeClassArgument.Variantaa1a2b78037712ebd013e569e6fe89cd1eb4643667c3c8406ca0ec8d318c6de8","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"aa1a2b78037712ebd013e569e6fe89cd1eb4643667c3c8406ca0ec8d318c6de8","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/restored-inputs/packages/Qq/QqTest/typeclass.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Qq

namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.TypeClassArgument.Variantaa1a2b78037712ebd013e569e6fe89cd1eb4643667c3c8406ca0ec8d318c6de8

open Qq

set_option linter.unusedVariables false in
def typeClassArgument (α : Q(Sort u)) (inst : Q(Inhabited $α)) : Q($α) :=
  q(Inhabited.default)

example : Q(Nat) :=
  typeClassArgument q(Nat) q(inferInstance)

/--
info: ((Expr.const `Inhabited.default [Level.zero.succ]).app (Expr.const `Nat [])).app
  (((Expr.const `inferInstance [Level.zero.succ]).app
        ((Expr.const `Inhabited [Level.zero.succ]).app (Expr.const `Nat []))).app
    (Expr.const `instInhabitedNat []))
-/
#guard_msgs in
open Lean in
#eval show MetaM Q(Nat) from do
  let _ ← synthInstanceQ q(Inhabited Nat)
  return typeClassArgument (u := Level.one) q(Nat) q(inferInstance)
```
