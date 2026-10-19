import Surface.AST.Core
import Surface.Incremental.Hash
import Surface.Incremental.ModuleKey

namespace Surface
namespace Incremental

open Surface.AST

structure ModuleSnapshot where
  key : ModuleKey
  sourceHash : ContentHash
  moduleAstHash : ContentHash
  declarationAstHash : ContentHash
  siteArtifactHash? : Option ContentHash
  moduleAst : LeanModuleAst
  declarations : List LeanDeclarationAst
  claimBoundary : List String
deriving Repr

theorem moduleSnapshot_claimBoundary_visible
    (S : ModuleSnapshot) :
    S.claimBoundary = S.claimBoundary :=
  rfl

end Incremental
end Surface
