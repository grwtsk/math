import Folder.Cellular.Phase
import Folder.Cellular.ScanOrder

/-!
# Folder.Cellular.PhaseConnection

Radiation role: phase-connection
BinaryMatrix spine: This module turns BinaryMatrix-radiated cell data into finite phase, scan, or connection data.
Ontology: cellular.phase_connection
Pivot role: none
Zero typology: shell
Contract boundary: proved
Composite stack role: phase
-/


namespace Folder
namespace Cellular

abbrev Cochain0 (d k m : Nat) :=
  CubeAddress d k → Phase m

abbrev Cochain1 (d k m : Nat) :=
  OrientedEdge d k → Phase m

def coboundary
    (f : Cochain0 d k m) :
    Cochain1 d k m :=
  fun e => f e.target - f e.source

def phaseConnection
    (q : Cochain0 d k m)
    (ω : ScanTwist d k m) :
    Cochain1 d k m :=
  fun e => coboundary q e + ω.value e

inductive EdgePath (d k : Nat) :
    CubeAddress d k → CubeAddress d k → Type where
  | nil : EdgePath d k x x
  | cons :
      (e : OrientedEdge d k) →
      EdgePath d k e.target y →
      EdgePath d k e.source y

def pathIntegral
    (A : Cochain1 d k m) :
    EdgePath d k x y → Phase m
  | EdgePath.nil => 0
  | EdgePath.cons e rest => A e + pathIntegral A rest

theorem pathIntegral_coboundary
    (f : Cochain0 d k m)
    (p : EdgePath d k x y) :
    pathIntegral (coboundary f) p = f y - f x := by
  induction p with
  | nil =>
      simp [pathIntegral]
  | cons e rest ih =>
      simp [pathIntegral, coboundary, ih]

theorem loopIntegral_coboundary_zero
    (f : Cochain0 d k m)
    (p : EdgePath d k x x) :
    pathIntegral (coboundary f) p = 0 := by
  rw [pathIntegral_coboundary]
  simp

theorem pathIntegral_add
    (A B : Cochain1 d k m)
    (p : EdgePath d k x y) :
    pathIntegral (fun e => A e + B e) p =
      pathIntegral A p + pathIntegral B p := by
  induction p with
  | nil =>
      simp [pathIntegral]
  | cons e rest ih =>
      simp [pathIntegral, ih]
      abel

theorem phaseConnection_loopIntegral_eq_scan
    (q : Cochain0 d k m)
    (ω : ScanTwist d k m)
    (p : EdgePath d k x x) :
    pathIntegral (phaseConnection q ω) p =
      pathIntegral ω.value p := by
  rw [show phaseConnection q ω = fun e => coboundary q e + ω.value e by rfl]
  rw [pathIntegral_add]
  rw [loopIntegral_coboundary_zero]
  simp

end Cellular
end Folder
