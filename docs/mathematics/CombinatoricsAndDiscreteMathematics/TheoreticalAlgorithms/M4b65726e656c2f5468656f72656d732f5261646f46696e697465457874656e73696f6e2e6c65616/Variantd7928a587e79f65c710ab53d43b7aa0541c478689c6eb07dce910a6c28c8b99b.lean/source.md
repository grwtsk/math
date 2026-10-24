# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.M4b65726e656c2f5468656f72656d732f5261646f46696e697465457874656e73696f6e2e6c65616.Variantd7928a587e79f65c710ab53d43b7aa0541c478689c6eb07dce910a6c28c8b99b

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `9235d32dfe6f966ec96e0d4119831c2f3464aad1` · SHA-256 `d7928a587e79f65c710ab53d43b7aa0541c478689c6eb07dce910a6c28c8b99b`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Think.Bit0.Bit0.Bit1.Bit1.Bit1.Bit1.Bit0.Bit0.M4b65726e656c2f5468656f72656d732f42617369632e6c65616e


/- source-tree-label: STL1|L|addr=11101000|role=proof_code_atom|slug=kernel-theorems-radofiniteextension|owner=canonical_owner|core=Kernel/Theorems/RadoFiniteExtension.lean|leaf=M4b65726e656c2f5468656f72656d732f5261646f46696e697465457874656e73696f6e2e6c65616e.lean -/

set_option autoImplicit false

namespace Think.Kernel.Theorems.RadoFiniteExtension

universe u

structure Graph (V : Type u) where
  adj : V -> V -> Prop

def DisjointLists {V : Type u} (U W : List V) : Prop :=
  ∀ x : V, x ∈ U -> x ∈ W -> False

def Realizes {V : Type u} (G : Graph V)
    (U W : List V) (x : V) : Prop :=
  (∀ u : V, u ∈ U -> G.adj x u) ∧
    (∀ w : V, w ∈ W -> ¬ G.adj x w)

def ExtensionProperty {V : Type u} (G : Graph V) : Prop :=
  ∀ U W : List V, DisjointLists U W ->
    ∃ x : V, Realizes G U W x

theorem extension_property_produces_realizer
    {V : Type u} (G : Graph V)
    (h : ExtensionProperty G)
    (U W : List V)
    (hdisjoint : DisjointLists U W) :
    ∃ x : V, Realizes G U W x :=
  h U W hdisjoint

theorem realizer_adjacent_to_left
    {V : Type u} {G : Graph V}
    {U W : List V} {x u : V}
    (h : Realizes G U W x)
    (hu : u ∈ U) :
    G.adj x u :=
  h.1 u hu

theorem realizer_avoids_right
    {V : Type u} {G : Graph V}
    {U W : List V} {x w : V}
    (h : Realizes G U W x)
    (hw : w ∈ W) :
    ¬ G.adj x w :=
  h.2 w hw

def extensionStatement
    (V : Type u) (G : Graph V) : Prop :=
  ExtensionProperty G ->
    ∀ U W : List V, DisjointLists U W ->
      ∃ x : V, Realizes G U W x

def extensionFormalTheorem
    (V : Type u) (G : Graph V) : Think.Kernel.Theorems.FormalTheorem :=
  { name := "rado-finite-extension-realizer"
    source := "finite Rado extension-property schema"
    claim := extensionStatement V G
    status := Think.Kernel.Theorems.ProofStatus.proofComplete
    checked := FWR.Checked.proved (by
      intro h U W hdisjoint
      exact extension_property_produces_realizer G h U W hdisjoint) }

theorem extensionFormalTheorem_complete
    (V : Type u) (G : Graph V) :
    (extensionFormalTheorem V G).hasCompleteProof := by
  exact ⟨rfl, rfl⟩

theorem extensionFormalTheorem_has_no_residue
    (V : Type u) (G : Graph V) :
    (extensionFormalTheorem V G).checked.hasResidue = false := by
  exact
    Think.Kernel.Theorems.FormalTheorem.complete_has_no_residue
      (extensionFormalTheorem V G)
      (extensionFormalTheorem_complete V G)

end Think.Kernel.Theorems.RadoFiniteExtension
```
