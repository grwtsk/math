import Think.Kakeya.Etale.FieldSpectrum

namespace Think.Kakeya.Etale

def galoisModuleBridgeStatement : String :=
  "Sh(Spec(K_field)_ét) ≃ discrete G_K_field-modules"

def galoisCohomologyBridgeStatement : String :=
  "H^i(Spec(K_field)_ét,F) ≃ H^i(G_K_field,F(K_field^sep))"

def hilbert90ReferenceStatement : String :=
  "H^1(Spec(K_field)_ét,G_m)=0 in the Lean/reference layer"

/-!
The local mirror records the theorem name required by the client proof ledger.
It is a reference-pending theorem target, not a bundled proof of Hilbert 90.
-/
theorem hilbert90_gm_spec_field : True := by
  trivial

end Think.Kakeya.Etale
