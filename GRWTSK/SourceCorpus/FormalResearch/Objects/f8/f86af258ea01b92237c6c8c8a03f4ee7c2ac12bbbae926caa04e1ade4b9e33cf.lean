namespace Surface
namespace Incremental

structure ContentHash where
  algorithm : String
  value : String
deriving Repr, DecidableEq

theorem contentHash_visible
    (h : ContentHash) :
    h.value = h.value :=
  rfl

end Incremental
end Surface
