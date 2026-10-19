import Mathematics.MobiusOntology.ControlledMap

/-!
# Affine error monoid

The carrier-forgetting projection retains exactly the affine recurrence
`e ↦ L e + ε` and preserves typed composition.
-/

namespace Mathematics.MobiusOntology

open scoped NNReal

abbrev ErrorFactor := Mathematics.Attention.ErrorFactor
abbrev ErrorTransform := Mathematics.Attention.ErrorTransform

namespace ErrorTransform

def identity : ErrorTransform :=
  Mathematics.Attention.ErrorTransform.id

def comp (later earlier : ErrorTransform) : ErrorTransform :=
  Mathematics.Attention.ErrorTransform.comp later earlier

theorem comp_assoc (third second first : ErrorTransform) :
    comp (comp third second) first =
      comp third (comp second first) :=
  Mathematics.Attention.ErrorTransform.comp_assoc third second first

end ErrorTransform

namespace ControlledMap

def toErrorTransform
    {X Y : Type*}
    [PseudoMetricSpace X] [PseudoMetricSpace Y]
    (controlled : ControlledMap X Y) :
    ErrorTransform :=
  Mathematics.Attention.ControlledApproximation.toErrorTransform controlled

theorem toErrorTransform_comp
    {X Y Z : Type*}
    [PseudoMetricSpace X] [PseudoMetricSpace Y] [PseudoMetricSpace Z]
    (later : ControlledMap Y Z)
    (earlier : ControlledMap X Y) :
    (comp later earlier).toErrorTransform =
      ErrorTransform.comp
        later.toErrorTransform earlier.toErrorTransform :=
  Mathematics.Attention.ControlledApproximation.toErrorTransform_comp
    later earlier

end ControlledMap

end Mathematics.MobiusOntology
