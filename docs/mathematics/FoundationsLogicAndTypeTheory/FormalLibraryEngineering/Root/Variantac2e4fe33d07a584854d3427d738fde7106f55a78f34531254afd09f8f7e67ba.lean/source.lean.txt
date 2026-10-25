namespace Demo

inductive Obj where
  | mk

theorem obj_refl (x : Obj) : x = x := rfl

end Demo
