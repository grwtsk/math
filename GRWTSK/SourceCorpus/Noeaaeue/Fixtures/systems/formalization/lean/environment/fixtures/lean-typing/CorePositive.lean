import Init
namespace TypingPositive
universe u
def identity {α : Type u} (a : α) : α := a
theorem identity_eq {α : Type u} (a : α) : identity a = a := rfl
inductive Flag where | off | on
end TypingPositive
