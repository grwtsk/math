# Complete source: GRWTSK.Algebra.LinearAlgebra.Lift.Variant515600707890560667cdec9beafe83bf52d0660e47a1d08772a71a42105e5deb

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `44cd6e94a1e3374568910ad91c1ae79dd5706e09` · SHA-256 `fe5fa9b4760b90a113582cd83359c2e8f91db3b7a4f312047f0393e5d4897680`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.LinearAlgebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.LinearAlgebra.LiftOr.Variantb0b9be35259cd59d932fc6ca1306ed38edec64147a0e317a26da704a1ec14427","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"b0b9be35259cd59d932fc6ca1306ed38edec64147a0e317a26da704a1ec14427","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.LinearAlgebra.SourceCorpus.LiftOr.Variantb0b9be35259cd59d932fc6ca1306ed38edec64147a0e317a26da704a1ec14427","mathematical_subject":"Algebra.LinearAlgebra","original_sha256":"b0b9be35259cd59d932fc6ca1306ed38edec64147a0e317a26da704a1ec14427","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/TestProject/BooleanMatrix/Codec/Lift.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import BooleanMatrix.Codec.Core
import BooleanMatrix.Matrix.Core
import BooleanMatrix.TypedApplication

/-!
# Transporting functions through BooleanMatrix codecs
-/


namespace GRWTSK.Algebra.LinearAlgebra.LiftOr.Variantb0b9be35259cd59d932fc6ca1306ed38edec64147a0e317a26da704a1ec14427

namespace BooleanMatrix
namespace Codec

universe u v

variable {α : Type u}
variable {β : Type v}

/--
Transport an ordinary function through matrix codecs.

Invalid source matrices emit the supplied fallback matrix.
-/
def liftOr
    (source : Codec α)
    (target : Codec β)
    (function : α → β)
    (fallback : Matrix) :
    Application :=
  fun input =>
    match source.decode input with
    | some value => target.encode (function value)
    | none => fallback

@[simp]
theorem liftOr_encode
    (source : Codec α)
    (target : Codec β)
    (function : α → β)
    (fallback : Matrix)
    (value : α) :
    liftOr source target function fallback
        (source.encode value) =
      target.encode (function value) := by
  simp [liftOr, source.decode_encode]

/-- Lift a function using the empty matrix as its invalid-input result. -/
def lift
    (source : Codec α)
    (target : Codec β)
    (function : α → β) :
    Application :=
  liftOr source target function Matrix.empty

@[simp]
theorem lift_encode
    (source : Codec α)
    (target : Codec β)
    (function : α → β)
    (value : α) :
    lift source target function (source.encode value) =
      target.encode (function value) := by
  exact liftOr_encode
    source target function Matrix.empty value

/-- Every codec-lifted function is a typed matrix application. -/
def typedLift
    (source : Codec α)
    (target : Codec β)
    (function : α → β) :
    TypedApplication source.format target.format where
  run := lift source target function
  preserves := by
    intro input valid
    change ∃ value, source.encode value = input at valid
    cases valid with
    | intro value equality =>
        subst input
        change ∃ output,
          target.encode output =
            lift source target function
              (source.encode value)
        exact ⟨
          function value,
          (lift_encode source target function value).symm
        ⟩

end Codec
end BooleanMatrix
```
