import Think.Kakeya.Gauge.Reference

namespace Think.Kakeya.Etale

/-!
Reference-layer labels for the arithmetic étale site.

These definitions deliberately distinguish `K_field` from the browser's
finite-measurement tolerance `K128`.
-/

structure FieldSpectrumReference where
  baseFieldLabel : String
  specLabel : String
deriving Repr, DecidableEq

def specKFieldEtale : FieldSpectrumReference :=
  { baseFieldLabel := "K_field", specLabel := "Spec(K_field)_ét" }

def absoluteGaloisGroupLabel : String :=
  "G_K_field"

def zariskiTooCoarseForClientArithmeticInvariant : String :=
  "Zariski topology is too coarse for this client arithmetic invariant role, not globally invalid."

end Think.Kakeya.Etale
