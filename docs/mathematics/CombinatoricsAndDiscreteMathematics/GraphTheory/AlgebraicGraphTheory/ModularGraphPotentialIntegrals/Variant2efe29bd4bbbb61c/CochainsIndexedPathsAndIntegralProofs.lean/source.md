# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.AlgebraicGraphTheory.ModularGraphPotentialIntegrals.Variant2efe29bd4bbbb61c.CochainsIndexedPathsAndIntegralProofs

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `fb5ebb1f4d275347b10e12908e7692d61f0cdaa3` · SHA-256 `4d702f778abcd240b8b10960484a482927fd15c120f38f07da578750db851f40`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
CochainsIndexedPathsAndIntegralProofs — individual source review
Attribution: ATTRIBUTION_CLARIFICATION_NEEDED
Issue: https://github.com/grwtsk/math/issues/254
Provisional mathematical ideas and direction: grwtsk contributors.
Provisional composite search, probabilistic symbolic recombination and linearized diffusive computation: OpenAI/Codex.
Cache warming and model sculpting: the countless, often unnamed mathematicians, enthusiasts, and curious minds whose work and questions have helped shape these tools, and who now have new ways to pursue mathematical answers to the endlessly deep question: “Why?”
These are owner-supplied provisional roles; exact contributions and source lineage need clarification.
Original SHA-256: 2efe29bd4bbbb61c4192cf0f081d63d5c2195b290106032f805088b9487ba30c
Organized SHA-256: 9b49504df492867c8312ead2ae2da76b2c950d36bd778fd1ef6b6a502e9d5386
PMD: 510.7.030.090 algebraic graph theory (editorial navigation only).
Statements, hypotheses and proof bodies are exact source copies. Original whole-file documentation is retained below and may describe other components.
Only containing namespaces and explicit component imports are changed. Distinct historical representations stay distinct.
Uncompiled; no Lean/Lake invocation, public umbrella admission, geometric provider, or new theorem priority claim.
-/

/- Two genuine algebraic graph seams retain whole vertex/edge cochains, coboundary, the complete endpoint-indexed EdgePath constructors, recursive pathIntegral and exact telescoping/closed-loop-zero/additivity proofs; then the scan-perturbed phaseConnection and complete closed-loop equality proof. Only the exact same-source cochain/path-sum module is added to the connection component. Original Phase/ScanOrder imports remain unchanged. No higher-cell complex, quotient cohomology, antisymmetric edge law or torsion/finiteness premise is asserted. -/

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

end Cellular
end Folder
```
