namespace Think.Kakeya.Crystalline

structure UnramifiedQpExtensionReference where
  primeP : Nat
  degreeF : Nat
  fieldLabel : String
  residueFieldLabel : String

def FrobeniusLabel (degreeF : Nat) : String :=
  if degreeF = 1 then "φ" else "φ^f"

/-!
This is reference-layer metadata only. It records the unramified Q_p extension
used by the client visualization, without claiming a compiled p-adic Hodge
construction of D_cris.
-/
theorem unramified_qp_reference_layer : True := by
  trivial

end Think.Kakeya.Crystalline
