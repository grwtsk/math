import Surface.Incremental.Json

namespace Surface
namespace Incremental

structure RustIncrementalRequestFrame where
  requestId : String
  changedPath : String
  beforeHash? : Option String
  afterHash : String
  generatorVersionHash : String
  toolchainHash : String
  claimBoundary : List String
deriving Repr

structure RustIncrementalResultFrame where
  requestId : String
  affectedModulesHash : String
  orderHash : String
  reportHash : String
  success : Bool
  rustIsNotProofAuthority : True
  claimBoundary : List String
deriving Repr

theorem rustIncrementalResult_is_transport_not_authority
    (R : RustIncrementalResultFrame) :
    R.rustIsNotProofAuthority = True.intro :=
  rfl

end Incremental
end Surface
