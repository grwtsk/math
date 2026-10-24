# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.EnumerativeCombinatorics.CombinatorialObjects.Words.DyadicCoordinateWords.Variant745aa34baa5761eb.CoordinateWordsAndBinaryRefinement

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `13041d4a383445c4940f5314247d06d856accc77` · SHA-256 `b93656dee111141164c898ba5d4f551ee5621aaf48c530fc84ecbef5891e7f68`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
CoordinateWordsAndBinaryRefinement — individual source review
Attribution: ATTRIBUTION_CLARIFICATION_NEEDED
Issue: https://github.com/grwtsk/math/issues/254
Provisional mathematical ideas and direction: grwtsk contributors.
Provisional composite search, probabilistic symbolic recombination and linearized diffusive computation: OpenAI/Codex.
Cache warming and model sculpting: the countless, often unnamed mathematicians, enthusiasts, and curious minds whose work and questions have helped shape these tools, and who now have new ways to pursue mathematical answers to the endlessly deep question: “Why?”
These are owner-supplied provisional roles; exact contributions and source lineage need clarification.
Original SHA-256: 745aa34baa5761eb7609cfecee85a891ef8b18208e8d3a6a0bf4e947c5c38b1d
Organized SHA-256: ffb599f98de1c1eff209b4a450331266b001aee5b757ed4f3196840507e86279
PMD: 510.7.010.030.080 words (editorial navigation only).
Statements, hypotheses and proof bodies are exact source copies. Original whole-file documentation is retained below and may describe other components.
Only containing namespaces and explicit component imports are changed. Distinct historical representations stay distinct.
Uncompiled; no Lean/Lake invocation, public umbrella admission, geometric provider, or new theorem priority claim.
-/

/- Two genuine seams preserve the full dyadic side definition/recurrence and the fixed-length finite coordinate-word carrier with binary-digit append, low embedding, exact coordinate equations and embedded bound proof. Only an exact same-source side component is added to the coordinate module; no original provider/import/namespace is replaced. No geometric cell complex or inverse refinement theorem is supplied. -/

import Folder.Basic

import GRWTSK.NumberTheory.ElementaryNumberTheory.DyadicSideLengths.Variant745aa34baa5761eb.DyadicSideAndSuccessorIdentity

/-!
# Folder.Cellular.Cube

Radiation role: cube-address
BinaryMatrix spine: This module generalizes BinaryMatrix indexing into finite cubical address spaces or adjacency data.
Ontology: cellular.cube
Pivot role: none
Zero typology: shell
Contract boundary: definition
Composite stack role: shell
-/


namespace Folder
namespace Cellular

abbrev CubeAddress (d k : Nat) :=
  Fin d → Fin (cubeSide k)

def appendBits
    {d k : Nat}
    (x : CubeAddress d k)
    (b : Fin d → Fin 2) :
    CubeAddress d (k + 1) :=
  fun i =>
    ⟨2 * (x i).val + (b i).val, by
      have hx := (x i).isLt
      have hb := (b i).isLt
      rw [cubeSide_succ]
      omega⟩

def embedLow
    {d k : Nat}
    (x : CubeAddress d k) :
    CubeAddress d (k + 1) :=
  appendBits x (fun _ => 0)

theorem appendBits_coord_val
    {d k : Nat}
    (x : CubeAddress d k)
    (b : Fin d → Fin 2)
    (i : Fin d) :
    (appendBits x b i).val = 2 * (x i).val + (b i).val :=
  rfl

theorem embedLow_coord_val
    {d k : Nat}
    (x : CubeAddress d k)
    (i : Fin d) :
    (embedLow x i).val = 2 * (x i).val := by
  simp [embedLow, appendBits]

end Cellular
end Folder
```
