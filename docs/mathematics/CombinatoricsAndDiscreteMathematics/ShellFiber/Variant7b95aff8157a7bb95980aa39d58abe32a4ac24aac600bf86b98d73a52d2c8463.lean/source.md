# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.ShellFiber.Variant7b95aff8157a7bb95980aa39d58abe32a4ac24aac600bf86b98d73a52d2c8463

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `461646603828146979a8bb5d4a452a5b774b190f` · SHA-256 `19a3ec3322346ad69f064f1b12a591071a000288a0df3e6af73140321ebf2752`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.ShellFiber.Variant43e69628fbb38668363a934f0ed2eccd73b64ab6dfb09f817fedc85b842ef65f","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"43e69628fbb38668363a934f0ed2eccd73b64ab6dfb09f817fedc85b842ef65f","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Combinatorics.FiniteCombinatorics.SourceCorpus.ShellFiber.Variant43e69628fbb38668363a934f0ed2eccd73b64ab6dfb09f817fedc85b842ef65f","mathematical_subject":"Combinatorics.FiniteCombinatorics","original_sha256":"43e69628fbb38668363a934f0ed2eccd73b64ab6dfb09f817fedc85b842ef65f","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/TestProject/Expansion/ShellFiber.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Folder.Expansion.Shell
import Folder.Carrier.Bit

/-!
# Folder.Expansion.ShellFiber

Radiation role: shell-filtration
BinaryMatrix spine: This module organizes boundary, shell, or expansion layers radiating out from BinaryMatrix-shaped finite carriers.
Ontology: expansion.shell_fiber
Pivot role: none
Zero typology: shell
Contract boundary: definition
Composite stack role: shell
-/



namespace GRWTSK.CombinatoricsAndDiscreteMathematics.ShellFiber.Variant43e69628fbb38668363a934f0ed2eccd73b64ab6dfb09f817fedc85b842ef65f

namespace Folder
namespace Expansion

open Carrier

structure ShellFiber (s : GridShape) where
  value : {c : Cell (expandedShape s) // IsShellCell c} → Bit

namespace ShellFiber

def zero (s : GridShape) : ShellFiber s where
  value := fun _ => 0

noncomputable def countOnes {s : GridShape} (F : ShellFiber s) : Nat :=
  Fintype.card {c : {c : Cell (expandedShape s) // IsShellCell c} //
    F.value c = 1}

@[ext]
theorem ext {s : GridShape} {F G : ShellFiber s}
    (h : ∀ c, F.value c = G.value c) :
    F = G := by
  cases F with
  | mk Fvalue =>
    cases G with
    | mk Gvalue =>
      have hv : Fvalue = Gvalue := funext h
      cases hv
      rfl

end ShellFiber
end Expansion
end Folder
```
