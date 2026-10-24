# Complete source: GRWTSK.Algebra.LinearAlgebra.Iteration.Variant6e75c8f1f01b051b14b0c67391bc7996b82d86a04e9f140e05283aadc28c4a0b

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `357e7d9c4fb50cc877131e8a90775dc5f5fbc2ff` · SHA-256 `caa36c7fa385cc2d3ab64cda8ea9a858fe12354d986a1c8835f3c5d34eaf8b58`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.LinearAlgebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.LinearAlgebra.Iterate.Variant1f1f2efdeade9306a1a4bda646fae6973db5dd281989d7be08dfd6cff2d1eeb3","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"1f1f2efdeade9306a1a4bda646fae6973db5dd281989d7be08dfd6cff2d1eeb3","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.LinearAlgebra.SourceCorpus.Iterate.Variant1f1f2efdeade9306a1a4bda646fae6973db5dd281989d7be08dfd6cff2d1eeb3","mathematical_subject":"Algebra.LinearAlgebra","original_sha256":"1f1f2efdeade9306a1a4bda646fae6973db5dd281989d7be08dfd6cff2d1eeb3","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/TestProject/BooleanMatrix/Application/Iteration.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import BooleanMatrix.Application.Core

/-!
# Iterated BooleanMatrix execution
-/


namespace GRWTSK.Algebra.LinearAlgebra.Iterate.Variant1f1f2efdeade9306a1a4bda646fae6973db5dd281989d7be08dfd6cff2d1eeb3

namespace BooleanMatrix
namespace Application

/-- Execute an application a finite number of times. -/
def iterate
    (application : Application) :
    Nat → Application
  | 0 => identity
  | Nat.succ steps =>
      comp application (iterate application steps)

@[simp]
theorem iterate_zero
    (application : Application)
    (input : Matrix) :
    iterate application 0 input = input :=
  rfl

@[simp]
theorem iterate_succ
    (application : Application)
    (steps : Nat)
    (input : Matrix) :
    iterate application (Nat.succ steps) input =
      application (iterate application steps input) :=
  rfl

/-- The complete countable execution sequence from an initial matrix. -/
def orbit
    (application : Application)
    (initial : Matrix) :
    Nat → Matrix :=
  fun step => iterate application step initial

@[simp]
theorem orbit_zero
    (application : Application)
    (initial : Matrix) :
    orbit application initial 0 = initial :=
  rfl

@[simp]
theorem orbit_succ
    (application : Application)
    (initial : Matrix)
    (step : Nat) :
    orbit application initial (Nat.succ step) =
      application (orbit application initial step) :=
  rfl

end Application
end BooleanMatrix
```
