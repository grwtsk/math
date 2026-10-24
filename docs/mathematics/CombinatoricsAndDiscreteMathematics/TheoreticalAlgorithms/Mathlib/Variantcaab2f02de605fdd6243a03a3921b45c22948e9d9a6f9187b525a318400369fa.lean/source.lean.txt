import Surface.Prismatic.MathlibAdapters

namespace Surface.Prismatic

universe u

/-!
What is formalized:
An exact-file adapter contract from Surface `DeltaRing` data to a future Mathlib
commutative-ring-plus-delta backend.

What is certificate-gated:
The actual Mathlib ring hierarchy, the δ-map transfer, the Frobenius lift
transfer, and the ring-homomorphism transfer.

What is not claimed:
This file does not import Mathlib and does not construct a Mathlib δ-ring.

Primary mathematical source:
Bhatt--Scholze's δ-ring interface and Surface.Prismatic.DeltaRing.
-/

/-- Exact-file adapter for a Surface δ-ring into a future Mathlib backend. -/
structure DeltaRingMathlibAdapter
    {p : Nat}
    (A : DeltaRing.{u} p) where
  backend : MathlibAdapterBackend
  carrierTransferred : Prop
  carrierTransferredCertified :
    carrierTransferred
  ringOperationsTransferred : Prop
  ringOperationsTransferredCertified :
    ringOperationsTransferred
  deltaTransferred : Prop
  deltaTransferredCertified :
    deltaTransferred
  phiTransferred : Prop
  phiTransferredCertified :
    phiTransferred
  frobeniusLiftFormulaTransferred : Prop
  frobeniusLiftFormulaTransferredCertified :
    frobeniusLiftFormulaTransferred
  ringHomCertificateTransferred : Prop
  ringHomCertificateTransferredCertified :
    ringHomCertificateTransferred
  boundary : List String

def DeltaRingMathlibAdapter.usableForFinalTheorem
    {p : Nat}
    {A : DeltaRing.{u} p}
    (M : DeltaRingMathlibAdapter A) :
    Prop :=
  M.backend.usableForFinalTheorem

theorem DeltaRingMathlibAdapter.unavailable_not_usableForFinalTheorem
    {p : Nat}
    {A : DeltaRing.{u} p}
    (M : DeltaRingMathlibAdapter A)
    (h : M.backend = MathlibAdapterBackend.unavailable) :
    ¬ M.usableForFinalTheorem := by
  intro hUse
  rw [DeltaRingMathlibAdapter.usableForFinalTheorem, h] at hUse
  exact MathlibAdapterBackend.unavailable_not_usableForFinalTheorem hUse

theorem DeltaRingMathlibAdapter.finalTheorem_requires_importedMathlib
    {p : Nat}
    {A : DeltaRing.{u} p}
    (M : DeltaRingMathlibAdapter A)
    (h : M.usableForFinalTheorem) :
    M.backend = MathlibAdapterBackend.importedMathlib :=
  h

end Surface.Prismatic
