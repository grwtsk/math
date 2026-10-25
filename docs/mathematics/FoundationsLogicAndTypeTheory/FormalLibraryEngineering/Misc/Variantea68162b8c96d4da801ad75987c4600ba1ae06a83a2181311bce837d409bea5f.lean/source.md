# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Misc.Variantea68162b8c96d4da801ad75987c4600ba1ae06a83a2181311bce837d409bea5f

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `96c678c2eb69f81955fcdc93b36091c72f0ba021` · SHA-256 `30a109e84629c89e5f9e960f829112317ce14f5a1de5c6efbd880496232d4063`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Bar.Variant6f04038093d909537ef3b942ccc63e93a4005d578548755b94d7707c04ad0475","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"6f04038093d909537ef3b942ccc63e93a4005d578548755b94d7707c04ad0475","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.Bar.Variant6f04038093d909537ef3b942ccc63e93a4005d578548755b94d7707c04ad0475","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"6f04038093d909537ef3b942ccc63e93a4005d578548755b94d7707c04ad0475","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/restored-inputs/packages/Qq/QqTest/misc.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Qq

namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Bar.Variant6f04038093d909537ef3b942ccc63e93a4005d578548755b94d7707c04ad0475

open Lean Qq

def bar {α : Q(Type u)} (a : Q($α)) : Q(Prop) := q($a = $a)
def bar2 {α : Q(Sort u)} (a : Q($α)) : Q($a = $a) := q(by simp)

def baz (u : Level) : Type := Q(Sort u)

#guard_msgs(drop info, warning, error) in
#eval bar2 q([1,2, 4])

/-- info: q(∀ (x : Nat), x = x + 0) : Q(Prop) -/
#guard_msgs in
#check q(∀ x, x = x + 0)

example {α : Q(Type u)} (inst : Q(Inhabited $α)) : Q(∃ x : $α, x = x) :=
  q(⟨default, by rfl⟩)

-- TODO: investigate PANIC
-- example : Q(let x := 5; x = x) := q(by simp)

#guard_msgs(drop info, warning, error) in
-- the following also panics if moved into an `example`
#eval show Q(∀ n : UInt64, n.toFin = n.toFin) from q(fun _ => by simp)

def foo' (n : Nat) : Q(Q($($n) = $($n))) := q(q(by simp))

#guard_msgs(drop info, warning, error) in
#eval foo' 3
```
