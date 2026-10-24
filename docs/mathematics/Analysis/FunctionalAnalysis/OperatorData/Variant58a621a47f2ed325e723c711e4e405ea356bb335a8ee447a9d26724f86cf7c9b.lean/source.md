# Complete source: GRWTSK.Analysis.FunctionalAnalysis.OperatorData.Variant58a621a47f2ed325e723c711e4e405ea356bb335a8ee447a9d26724f86cf7c9b

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `f9def97b3233b5a39518d98c809ebe72c52975e5` · SHA-256 `58a621a47f2ed325e723c711e4e405ea356bb335a8ee447a9d26724f86cf7c9b`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathlib.Analysis.InnerProductSpace.Basic

/-!
# Folder.RH.OperatorData

Radiation role: operator-data
BinaryMatrix spine: This module fixes the local Hilbert-Polya operator interface.
Ontology: rh.operator_data
Pivot role: spectral
Zero typology: zeta
Contract boundary: operator-interface
Composite stack role: rh
-/

namespace Folder
namespace RH

noncomputable section

/--
Project-local interface for an unbounded operator.

Mathlib does not currently expose a general `UnboundedOperator` abstraction
under that name, so the RH cone uses this minimal local interface. The action
is defined on the declared domain, not on all of the Hilbert space.
-/
structure RHUnboundedOperator
    (H : Type _) [NormedAddCommGroup H] [InnerProductSpace ℂ H] where
  domain : Set H
  action : domain → H

def RHUnboundedOperator.apply
    {H : Type _} [NormedAddCommGroup H] [InnerProductSpace ℂ H]
    (D : RHUnboundedOperator H) :
    D.domain → H :=
  D.action

/-- The point spectrum used by the narrow Hilbert-Polya interface. -/
def RHSpectrum
    {H : Type _} [NormedAddCommGroup H] [InnerProductSpace ℂ H]
    (D : RHUnboundedOperator H) : Set ℂ :=
  {mu : ℂ | ∃ x : D.domain, (x : H) ≠ 0 ∧ D.apply x = mu • (x : H)}

/-- Symmetry/self-adjointness obligation for the local operator interface. -/
def IsSelfAdjoint
    {H : Type _} [NormedAddCommGroup H] [InnerProductSpace ℂ H]
    (D : RHUnboundedOperator H) : Prop :=
  ∀ x y : D.domain,
    inner ℂ (D.apply x) (y : H) = inner ℂ (x : H) (D.apply y)

/-- Compact-resolvent obligation for the local operator interface. -/
def HasCompactResolvent
    {H : Type _} [NormedAddCommGroup H] [InnerProductSpace ℂ H]
    (D : RHUnboundedOperator H) : Prop :=
  ∃ K : Set H, IsCompact K ∧ Set.range (fun x : D.domain => (x : H)) ⊆ K

/--
Operator data for a future Hilbert-Polya-style realization.

The data names the Hilbert space, domain, and operator. It only proves domain
density; self-adjointness, compact resolvent, and real spectrum are exposed as
separate theorem obligations in downstream modules.
-/
structure RHOperatorData where
  H : Type _
  [instNormed : NormedAddCommGroup H]
  [instInner : InnerProductSpace ℂ H]
  D : RHUnboundedOperator H
  domain_dense : Dense D.domain

attribute [instance] RHOperatorData.instNormed RHOperatorData.instInner

/--
Default spectral parameter for the hardened local interface.

Specialized realizations may supply a different map through
`ZeroSpectrumRealization`, but this name gives the requested theorem shape a
fixed, non-proof-bearing coordinate.
-/
noncomputable def spectralParameter (lambda : ℂ) : ℂ :=
  lambda

theorem operator_data_has_hilbert_type
    (O : RHOperatorData) :
    ∃ H : Type _, H = O.H :=
  ⟨O.H, rfl⟩

theorem operator_data_domain_dense
    (O : RHOperatorData) :
    Dense O.D.domain :=
  O.domain_dense

end

end RH
end Folder
```
