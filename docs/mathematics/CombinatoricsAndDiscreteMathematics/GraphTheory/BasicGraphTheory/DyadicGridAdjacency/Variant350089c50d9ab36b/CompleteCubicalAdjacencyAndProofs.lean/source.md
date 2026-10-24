# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.BasicGraphTheory.DyadicGridAdjacency.Variant350089c50d9ab36b.CompleteCubicalAdjacencyAndProofs

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `831cc6e744580d41d96d5c1ad799e7eff264fa93` · SHA-256 `358a48a602e98e304b6eac7af5f45ba8333d1fa949d939ff841a97c1e0bf0bff`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
CompleteCubicalAdjacencyAndProofs — individual source review
Attribution: ATTRIBUTION_CLARIFICATION_NEEDED
Issue: https://github.com/grwtsk/math/issues/254
Provisional mathematical ideas and direction: grwtsk contributors.
Provisional composite search, probabilistic symbolic recombination and linearized diffusive computation: OpenAI/Codex.
Cache warming and model sculpting: the countless, often unnamed mathematicians, enthusiasts, and curious minds whose work and questions have helped shape these tools, and who now have new ways to pursue mathematical answers to the endlessly deep question: “Why?”
These are owner-supplied provisional roles; exact contributions and source lineage need clarification.
Original SHA-256: 350089c50d9ab36b097b6b0bb3931b7af93fbd4ae1f248219cbf1b99fd74c65e
Organized SHA-256: 20e947c5ed277b32a6e2213d14a1b54360d88686eb90e99a27a072ec47b19a8a
PMD: 510.7.030.010 basic graph theory (editorial navigation only).
Statements, hypotheses and proof bodies are exact source copies. Original whole-file documentation is retained below and may describe other components.
Only containing namespaces and explicit component imports are changed. Distinct historical representations stay distinct.
Uncompiled; no Lean/Lake invocation, public umbrella admission, geometric provider, or new theorem priority claim.
-/

/- Complete one-coordinate unit-difference adjacency on the exact original finite CubeAddress provider. CoordDiffOne, SameExcept and existential CubeAdjacent retain every quantifier and both genuine symmetry/irreflexivity proof terms. No embedding of a continuous cube, cellular complex, traversal or domain realization is constructed. -/

import Folder.Cellular.Cube

/-!
# Folder.Cellular.Adjacency

Radiation role: cube-address
BinaryMatrix spine: This module generalizes BinaryMatrix indexing into finite cubical address spaces or adjacency data.
Ontology: cellular.adjacency
Pivot role: none
Zero typology: shell
Contract boundary: definition
Composite stack role: shell
-/


namespace Folder
namespace Cellular

def CoordDiffOne
    {d k : Nat}
    (x y : CubeAddress d k)
    (i : Fin d) : Prop :=
  ((x i).val + 1 = (y i).val) ∨
  ((y i).val + 1 = (x i).val)

def SameExcept
    {d k : Nat}
    (x y : CubeAddress d k)
    (i : Fin d) : Prop :=
  ∀ j : Fin d, j ≠ i → x j = y j

def CubeAdjacent
    {d k : Nat}
    (x y : CubeAddress d k) : Prop :=
  ∃ i : Fin d, CoordDiffOne x y i ∧ SameExcept x y i

theorem cubeAdjacent_symm
    {d k : Nat}
    {x y : CubeAddress d k} :
    CubeAdjacent x y → CubeAdjacent y x := by
  intro h
  rcases h with ⟨i, hdiff, hsame⟩
  refine ⟨i, ?_, ?_⟩
  · exact hdiff.symm
  · intro j hj
    exact (hsame j hj).symm

theorem cubeAdjacent_irrefl
    {d k : Nat}
    (x : CubeAddress d k) :
    ¬ CubeAdjacent x x := by
  intro h
  rcases h with ⟨i, hdiff, _⟩
  rcases hdiff with h | h <;> omega

end Cellular
end Folder
```
