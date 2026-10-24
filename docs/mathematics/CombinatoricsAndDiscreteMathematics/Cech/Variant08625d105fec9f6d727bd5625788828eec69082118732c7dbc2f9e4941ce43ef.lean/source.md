# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.Cech.Variant08625d105fec9f6d727bd5625788828eec69082118732c7dbc2f9e4941ce43ef

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `ffeb0ebd1d6b4359102f4877d14dc4b79c31b04a` · SHA-256 `08625d105fec9f6d727bd5625788828eec69082118732c7dbc2f9e4941ce43ef`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Surface.ContinuousAssurance.Communication.Restriction

/-!
# Finite Čech-complex capability

This is the exact algebraic interface needed by the canonical communication
site: finite cochain carriers and a checked square-zero differential.  It does
not claim a vanishing theorem or identify these groups with analytic sheaf
cohomology.
-/

universe u

namespace Surface.ContinuousAssurance

/-- First three degrees of a computable finite Čech complex. -/
structure FiniteCechComplex where
  C0 : Type u
  C1 : Type u
  C2 : Type u
  c0Fintype : Fintype C0
  c1Fintype : Fintype C1
  c2Fintype : Fintype C2
  c0DecidableEq : DecidableEq C0
  c1DecidableEq : DecidableEq C1
  c2DecidableEq : DecidableEq C2
  c0AddCommGroup : AddCommGroup C0
  c1AddCommGroup : AddCommGroup C1
  c2AddCommGroup : AddCommGroup C2
  d0 : C0 →+ C1
  d1 : C1 →+ C2
  d_sq : ∀ cochain, d1 (d0 cochain) = 0

attribute [local instance] FiniteCechComplex.c0AddCommGroup
attribute [local instance] FiniteCechComplex.c1AddCommGroup
attribute [local instance] FiniteCechComplex.c2AddCommGroup
attribute [local instance] FiniteCechComplex.c0Fintype
attribute [local instance] FiniteCechComplex.c1Fintype
attribute [local instance] FiniteCechComplex.c2Fintype
attribute [local instance] FiniteCechComplex.c0DecidableEq
attribute [local instance] FiniteCechComplex.c1DecidableEq
attribute [local instance] FiniteCechComplex.c2DecidableEq

namespace FiniteCechComplex

def Cocycle1 (complex : FiniteCechComplex) (cochain : complex.C1) : Prop :=
  complex.d1 cochain = 0

def Coboundary1 (complex : FiniteCechComplex) (cochain : complex.C1) : Prop :=
  ∃ source, complex.d0 source = cochain

/-- Exact finite enumeration of degree-one cocycles. -/
def cocycles1 (complex : FiniteCechComplex) : Finset complex.C1 :=
  by
    letI : Fintype complex.C1 := complex.c1Fintype
    letI : DecidableEq complex.C1 := complex.c1DecidableEq
    letI : DecidableEq complex.C2 := complex.c2DecidableEq
    exact Finset.univ.filter fun cochain => complex.d1 cochain = 0

/-- Exact finite enumeration of degree-one coboundaries. -/
def coboundaries1 (complex : FiniteCechComplex) : Finset complex.C1 :=
  by
    letI : Fintype complex.C0 := complex.c0Fintype
    letI : Fintype complex.C1 := complex.c1Fintype
    letI : DecidableEq complex.C0 := complex.c0DecidableEq
    letI : DecidableEq complex.C1 := complex.c1DecidableEq
    exact Finset.univ.filter fun cochain =>
      ∃ source ∈ (Finset.univ : Finset complex.C0), complex.d0 source = cochain

@[simp]
theorem mem_cocycles1_iff
    (complex : FiniteCechComplex) (cochain : complex.C1) :
    cochain ∈ complex.cocycles1 ↔ complex.Cocycle1 cochain := by
  letI : Fintype complex.C1 := complex.c1Fintype
  letI : DecidableEq complex.C1 := complex.c1DecidableEq
  letI : DecidableEq complex.C2 := complex.c2DecidableEq
  simp [cocycles1, Cocycle1]

@[simp]
theorem mem_coboundaries1_iff
    (complex : FiniteCechComplex) (cochain : complex.C1) :
    cochain ∈ complex.coboundaries1 ↔ complex.Coboundary1 cochain := by
  letI : Fintype complex.C0 := complex.c0Fintype
  letI : Fintype complex.C1 := complex.c1Fintype
  letI : DecidableEq complex.C0 := complex.c0DecidableEq
  letI : DecidableEq complex.C1 := complex.c1DecidableEq
  simp [coboundaries1, Coboundary1]

/-- The finite Čech differential squares to zero. -/
theorem differential_sq_zero
    (complex : FiniteCechComplex)
    (cochain : complex.C0) :
    complex.d1 (complex.d0 cochain) = 0 :=
  complex.d_sq cochain

/-- Every degree-one coboundary is a degree-one cocycle. -/
theorem coboundary_is_cocycle
    (complex : FiniteCechComplex)
    {cochain : complex.C1}
    (boundary : complex.Coboundary1 cochain) :
    complex.Cocycle1 cochain := by
  obtain ⟨source, rfl⟩ := boundary
  exact complex.d_sq source

end FiniteCechComplex

/--
Bind a computable finite complex to its exact communication site, selected
finite cover, coefficient identifier, and canonical-index root.  Vanishing is
always relative to this data.
-/
structure FiniteCechPresentation where
  site : FiniteCommunicationSite
  cover : Finset site.Region
  coefficientObject : String
  attentionRegion : String
  indexRootDigest : EvidenceDigest
  complex : FiniteCechComplex

end Surface.ContinuousAssurance
```
