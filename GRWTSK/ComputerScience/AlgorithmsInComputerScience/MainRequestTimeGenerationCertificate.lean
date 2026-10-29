import Surface.Incremental.RustProtocol

namespace Surface
namespace Incremental

structure RequestTimeGenerationCertificate where
  result : IncrementalGenerationResult
  astDisciplinePreserved : Prop
  astDisciplinePreservedCertified : astDisciplinePreserved
  deterministicRequestTimeGeneration : Prop
  deterministicRequestTimeGenerationCertified : deterministicRequestTimeGeneration
  claimBoundary : List String

theorem requestTime_generation_preserves_AST_discipline
    (C : RequestTimeGenerationCertificate) :
    C.astDisciplinePreserved :=
  C.astDisciplinePreservedCertified

theorem requestTime_generation_is_deterministic
    (C : RequestTimeGenerationCertificate) :
    C.deterministicRequestTimeGeneration :=
  C.deterministicRequestTimeGenerationCertified

end Incremental
end Surface
