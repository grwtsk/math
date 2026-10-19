namespace Surface
namespace Incremental

structure ModuleKey where
  moduleName : String
  file : String
deriving Repr, DecidableEq

def ModuleKey.lexicalKey
    (M : ModuleKey) : String :=
  M.moduleName ++ "\n" ++ M.file

theorem moduleKey_lexicalKey_deterministic
    (M : ModuleKey) :
    M.lexicalKey = M.lexicalKey :=
  rfl

end Incremental
end Surface
