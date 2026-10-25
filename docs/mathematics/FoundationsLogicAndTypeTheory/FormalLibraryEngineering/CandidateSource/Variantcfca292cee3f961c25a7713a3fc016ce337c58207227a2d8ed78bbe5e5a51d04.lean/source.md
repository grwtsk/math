# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.CandidateSource.Variantcfca292cee3f961c25a7713a3fc016ce337c58207227a2d8ed78bbe5e5a51d04

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `0569da6a3d27584b199e2693b1a76e26077a4ebe` · SHA-256 `cfca292cee3f961c25a7713a3fc016ce337c58207227a2d8ed78bbe5e5a51d04`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Surface.Core.Classification
import Boolean.Cube.PrismaticGeometry.OctahedralChain

/-!
# Procedural finite topology-surgery game

This canonical finite task module cuts the explicit oriented octahedral
fundamental two-chain at a bounded list index. The prefix and suffix are finite
caps. Sound regluing requires both exact reconstruction of the original chain
and coefficient-wise cancellation of their oriented edge boundaries.

The declarations below establish finite integer-chain identities only. They do
not claim a manifold homeomorphism, homology equivalence, Ricci surgery theorem,
or spherical-classification result. No target-equivalent helper theorem is
available in the dependency cone: each game target carries its explicit proof.
-/

namespace Surface.Core.TopologySurgeryGame

open Boolean.Cube.PrismaticGeometry

/-- Prefix cap selected by a bounded procedural cut index. -/
def octahedralPrefixCapChain (cut : Nat) :
    Chain octahedralCellComplex 2 where
  terms := (octahedralFaces.take cut).map
    (fun face => (octahedralFaceCoefficient face, face))

/-- Complementary suffix cap selected by the same cut index. -/
def octahedralSuffixCapChain (cut : Nat) :
    Chain octahedralCellComplex 2 where
  terms := (octahedralFaces.drop cut).map
    (fun face => (octahedralFaceCoefficient face, face))

def octahedralPrefixCapBoundary (cut : Nat) :
    Chain octahedralCellComplex 1 :=
  Chain.boundary (octahedralPrefixCapChain cut)

def octahedralSuffixCapBoundary (cut : Nat) :
    Chain octahedralCellComplex 1 :=
  Chain.boundary (octahedralSuffixCapChain cut)

def OctahedralCapSurgerySound (cut : Nat) : Prop :=
  (octahedralPrefixCapChain cut).terms ++
      (octahedralSuffixCapChain cut).terms =
        octahedralSphereChain.terms ∧
    ∀ edge : OctahedralEdge,
      octahedralEdgeCoefficient (octahedralPrefixCapBoundary cut) edge +
        octahedralEdgeCoefficient (octahedralSuffixCapBoundary cut) edge = 0

@[surface_candidate]
theorem octahedralCapSurgerySound_cut1 :
    OctahedralCapSurgerySound 1 := by
  refine ⟨rfl, ?_⟩
  intro edge
  cases edge with
  | xy xSign ySign => cases xSign <;> cases ySign <;> rfl
  | xz xSign zSign => cases xSign <;> cases zSign <;> rfl
  | yz ySign zSign => cases ySign <;> cases zSign <;> rfl

@[surface_candidate]
theorem octahedralCapSurgerySound_cut2 :
    OctahedralCapSurgerySound 2 := by
  refine ⟨rfl, ?_⟩
  intro edge
  cases edge with
  | xy xSign ySign => cases xSign <;> cases ySign <;> rfl
  | xz xSign zSign => cases xSign <;> cases zSign <;> rfl
  | yz ySign zSign => cases ySign <;> cases zSign <;> rfl

@[surface_candidate]
theorem octahedralCapSurgerySound_cut3 :
    OctahedralCapSurgerySound 3 := by
  constructor
  · rfl
  · intro edge
    cases edge with
    | xy xSign ySign => cases xSign <;> cases ySign <;> rfl
    | xz xSign zSign => cases xSign <;> cases zSign <;> rfl
    | yz ySign zSign => cases ySign <;> cases zSign <;> rfl

@[surface_candidate]
theorem octahedralCapSurgerySound_cut4 :
    OctahedralCapSurgerySound 4 := by
  refine ⟨rfl, ?_⟩
  intro edge
  cases edge with
  | xy xSign ySign => cases xSign <;> cases ySign <;> rfl
  | xz xSign zSign => cases xSign <;> cases zSign <;> rfl
  | yz ySign zSign => cases ySign <;> cases zSign <;> rfl

@[surface_candidate]
theorem octahedralCapSurgerySound_cut5 :
    OctahedralCapSurgerySound 5 := by
  refine ⟨rfl, ?_⟩
  intro edge
  cases edge with
  | xy xSign ySign => cases xSign <;> cases ySign <;> rfl
  | xz xSign zSign => cases xSign <;> cases zSign <;> rfl
  | yz ySign zSign => cases ySign <;> cases zSign <;> rfl

@[surface_candidate]
theorem octahedralCapSurgerySound_cut6 :
    OctahedralCapSurgerySound 6 := by
  refine ⟨rfl, ?_⟩
  intro edge
  cases edge with
  | xy xSign ySign => cases xSign <;> cases ySign <;> rfl
  | xz xSign zSign => cases xSign <;> cases zSign <;> rfl
  | yz ySign zSign => cases ySign <;> cases zSign <;> rfl

@[surface_candidate]
theorem octahedralCapSurgerySound_cut7 :
    OctahedralCapSurgerySound 7 := by
  refine ⟨rfl, ?_⟩
  intro edge
  cases edge with
  | xy xSign ySign => cases xSign <;> cases ySign <;> rfl
  | xz xSign zSign => cases xSign <;> cases zSign <;> rfl
  | yz ySign zSign => cases ySign <;> cases zSign <;> rfl

end Surface.Core.TopologySurgeryGame
```
