# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Measurement.Variant4288d75b5ed308d4c1b4024d785935e86c23b7e7c1d426e4ef3a9f84dffc2dff

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `b8b8700be9d89c088e1dc36b0dbbbc7120759532` · SHA-256 `4288d75b5ed308d4c1b4024d785935e86c23b7e7c1d426e4ef3a9f84dffc2dff`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Think.Kakeya.Gauge.Reference

namespace Think.Kakeya.Gauge

/-!
Measurement layer mirror.

`signedHeat`, `gaugeHeat`, and `gaugeEnergy` mirror the finite measured
quantities from the shader/runtime. They are not analytic recovery claims.
-/

def signedHeat {α : Type} (g : α → ℝ) (x : α) : ℝ :=
  g x - analyticGrey

def gaugeHeat {α : Type} (g : α → ℝ) (x : α) : ℝ :=
  if signedHeat g x < 0 then -(signedHeat g x) else signedHeat g x

def gaugeEnergyList {α : Type} (samples : List α) (w : α → ℝ) (g : α → ℝ) : ℝ :=
  samples.foldl (fun total x => total + w x * (signedHeat g x) * (signedHeat g x)) 0

def ratAbs (x : ℝ) : ℝ :=
  if x < 0 then -x else x

def KEqual (eps x y : ℝ) : Prop :=
  ratAbs (x - y) ≤ eps

/--
KEqual is a tolerance relation and is not assumed transitive.
Boolean algebra is performed only after quotient/classification.
-/
def KResidueHeat (eps x y : ℝ) : ℝ :=
  if ratAbs (x - y) - eps < 0 then 0 else ratAbs (x - y) - eps

def BoolAndValue (x y : Bool) : ℝ :=
  if x && y then 1 else 0

def BoolXorValue (x y : Bool) : ℝ :=
  if x = y then 0 else 1

def LowerBoundaryK (eps x : ℝ) : Prop :=
  KEqual eps x 0

def GreyBoundaryK (eps x : ℝ) : Prop :=
  KEqual eps x analyticGrey

def UpperBoundaryK (eps x : ℝ) : Prop :=
  KEqual eps x 1

def BoundaryMemberK (eps normX : ℝ) : Prop :=
  KEqual eps normX 1

def L1Norm {n : Nat} (x : Fin n → ℝ) : ℝ :=
  (List.finRange n).foldl (fun total i => total + ratAbs (x i)) 0

def OnL1BoundaryK {n : Nat} (eps : ℝ) (x : Fin n → ℝ) : Prop :=
  KEqual eps (L1Norm x) 1

def L1BoundaryResidueHeat {n : Nat} (eps : ℝ) (x : Fin n → ℝ) : ℝ :=
  KResidueHeat eps (L1Norm x) 1

def crossPolytopeVertexCount (n : Nat) : Nat := 2 * n
def crossPolytopeStrutCount (n : Nat) : Nat := n
def crossPolytopeFacetCount (n : Nat) : Nat := 2 ^ n

inductive KSymbol where
  | zeroK
  | oneK
  | halfK
  | betweenK
  | ambiguousK

def CanonK (_eps : ℝ) (_x : ℝ) : KSymbol :=
  KSymbol.betweenK

inductive KBoundarySymbol where
  | zeroK
  | oneK
  | greyBoundaryK
  | betweenBoundaryK
  | ambiguousBoundaryK

def binaryBoundaryVariation (bits : List Bool) : Bool :=
  match bits with
  | [] => false
  | b :: rest => if rest.all (fun x => x == b) then false else true

def binaryBoundaryXor (bits : List Bool) : Bool :=
  bits.foldl (fun acc b => Bool.xor acc b) false

def boundedMeasurementExportDisclaimer : String :=
  "This export certifies bounded measurement under declared precision. It does not certify exact recovery of analytic grey from shader samples."

end Think.Kakeya.Gauge
```
