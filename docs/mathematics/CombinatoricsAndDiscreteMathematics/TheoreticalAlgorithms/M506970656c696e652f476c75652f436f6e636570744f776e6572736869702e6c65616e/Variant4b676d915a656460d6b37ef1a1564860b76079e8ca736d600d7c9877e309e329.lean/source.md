# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.M506970656c696e652f476c75652f436f6e636570744f776e6572736869702e6c65616e.Variant4b676d915a656460d6b37ef1a1564860b76079e8ca736d600d7c9877e309e329

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `f3a3c15dd0308628c11b75906b92cfc732ee1548` · SHA-256 `4b676d915a656460d6b37ef1a1564860b76079e8ca736d600d7c9877e309e329`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Think.Bit0.Bit0.Bit0.Bit1.Bit1.Bit0.Bit0.M506970656c696e652f476c75652f4e6f4f7665726c6170476c75652e6c65616e


/- source-tree-label: STL1|L|addr=00101111|role=proof_code_atom|slug=pipeline-glue-conceptownership|owner=canonical_owner|core=Pipeline/Glue/ConceptOwnership.lean|leaf=M506970656c696e652f476c75652f436f6e636570744f776e6572736869702e6c65616e.lean -/

set_option autoImplicit false

namespace Think.Pipeline.Glue.ConceptOwnership

inductive Concept where
  | arithmetic
  | residue
  | pole
  | spectral
  | rado
  | eml
  | validation
  | geometry
  | codexAuthority
deriving DecidableEq, Repr

def concepts : List Concept :=
  [ Concept.arithmetic
  , Concept.residue
  , Concept.pole
  , Concept.spectral
  , Concept.rado
  , Concept.eml
  , Concept.validation
  , Concept.geometry
  , Concept.codexAuthority
  ]

def canonicalOwner : Concept -> String
  | Concept.arithmetic => "Think.Pipeline.Leaves.Arithmetic"
  | Concept.residue => "Think.Pipeline.Residue"
  | Concept.pole => "Think.Pipeline.Leaves.Boundary.PoleBoundaryLeaf"
  | Concept.spectral => "Think.Pipeline.Leaves.Spectral"
  | Concept.rado => "Think.Pipeline.Leaves.Rado"
  | Concept.eml => "Think.Pipeline.Leaves.EML"
  | Concept.validation => "Think.Pipeline.Validation"
  | Concept.geometry => "Think.Pipeline.Geometry"
  | Concept.codexAuthority => "Think.Pipeline.AuthorityBoundary"

structure RoleBoundary where
  concept : Concept
  nonOwnerSurface : String
  boundaryKind : String
  importsCanonicalOwner : Bool
  mayClaimOwnership : Bool
deriving DecidableEq, Repr

def roleBoundaries : List RoleBoundary :=
  [ { concept := Concept.residue
      nonOwnerSurface := "Think.Kernel.Residue"
      boundaryKind := "kernel_atom"
      importsCanonicalOwner := false
      mayClaimOwnership := false }
  , { concept := Concept.residue
      nonOwnerSurface := "Think.Pipeline.ResidueTree"
      boundaryKind := "residue_tree_adapter"
      importsCanonicalOwner := true
      mayClaimOwnership := false }
  , { concept := Concept.rado
      nonOwnerSurface := "Think.Pipeline.Center.Rado*"
      boundaryKind := "center_adapter"
      importsCanonicalOwner := true
      mayClaimOwnership := false }
  , { concept := Concept.eml
      nonOwnerSurface := "Think.Pipeline.Center.EMLCompression"
      boundaryKind := "center_adapter"
      importsCanonicalOwner := true
      mayClaimOwnership := false }
  , { concept := Concept.validation
      nonOwnerSurface := "Think.Validation"
      boundaryKind := "external_validation_receipt"
      importsCanonicalOwner := true
      mayClaimOwnership := false }
  , { concept := Concept.geometry
      nonOwnerSurface := "Think.Pipeline.Lattice"
      boundaryKind := "coordinate_adapter"
      importsCanonicalOwner := true
      mayClaimOwnership := false }
  ]

def noRoleBoundaryClaimsOwnership : Prop :=
  ∀ b ∈ roleBoundaries, b.mayClaimOwnership = false

theorem concepts_count :
    concepts.length = 9 := by
  rfl

theorem role_boundaries_count :
    roleBoundaries.length = 6 := by
  rfl

theorem role_boundaries_are_non_owners :
    noRoleBoundaryClaimsOwnership := by
  intro b hb
  simp [roleBoundaries] at hb
  rcases hb with hb | hb | hb | hb | hb | hb
  · subst b; rfl
  · subst b; rfl
  · subst b; rfl
  · subst b; rfl
  · subst b; rfl
  · subst b; rfl

end Think.Pipeline.Glue.ConceptOwnership
```
