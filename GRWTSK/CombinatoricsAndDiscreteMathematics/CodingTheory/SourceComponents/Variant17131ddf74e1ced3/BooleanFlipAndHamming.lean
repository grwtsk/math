/-
BooleanFlipAndHamming — exact source mathematical component
Attribution: ATTRIBUTION_CLARIFICATION_NEEDED
Issue: https://github.com/grwtsk/math/issues/254
Provisional mathematical ideas and direction: grwtsk contributors.
Provisional composite search, probabilistic symbolic recombination and linearized diffusive computation: OpenAI/Codex.
Cache warming and model sculpting: the countless, often unnamed mathematicians, enthusiasts, and curious minds whose work and questions have helped shape these tools, and who now have new ways to pursue mathematical answers to the endlessly deep question: “Why?”
These are owner-supplied provisional roles; exact contributions and source lineage need clarification.
Original SHA-256: 17131ddf74e1ced349fdb236a51ddf600635e99de778c4a9306a1df76f65f64a
Organized SHA-256: 6e0a1ee1b3d1950e8385560e459bccb83a30fe79a3e8e8241beb9b4b277e8cf9
PMD: 510.7.090 coding theory (editorial navigation only).
Statements, hypotheses and proof bodies are exact source copies. Original whole-file documentation is retained below and may describe other components.
Only containing namespaces and explicit component imports are changed. Distinct historical representations stay distinct.
Uncompiled; no Lean/Lake invocation, public umbrella admission, geometric provider, or new theorem priority claim.
-/

/- Exact pointwise flip identities, dependent extensionality and finite disagreement count. No metric axioms or coding bound asserted. Original declaration namespace and import identities remain exact. Same-source companion imports, if any, are explicit. Source documentation may describe archived workflow components. No Lean elaboration, provider activation, semantic acceptance or namespace coimport compatibility is asserted. -/

import Boolean.Matrix
import Boolean.Cube.ListTools
import GRWTSK.FoundationsLogicAndTypeTheory.TypeTheory.SimpleTypeTheory.FunctionTypes.SourceComponents.Variant17131ddf74e1ced3.FiniteBooleanCarriers

namespace Boolean.Cube

universe u

/-- Flip one coordinate of a hypercube point. -/
def Hypercube.flip {n : Nat} (x : Hypercube.Point n) (i : Fin n) :
    Hypercube.Point n :=
  fun j =>
    if j = i then
      !(x j)
    else
      x j

@[simp] theorem Hypercube.flip_same {n : Nat} (x : Hypercube.Point n) (i : Fin n) :
    Hypercube.flip x i i = !(x i) := by
  simp [Hypercube.flip]

theorem Hypercube.flip_other {n : Nat}
    (x : Hypercube.Point n) {i j : Fin n} (h : j ≠ i) :
    Hypercube.flip x i j = x j := by
  simp [Hypercube.flip, h]

theorem Hypercube.eq_of_dropLast_eq_last_eq {n : Nat}
    {x y : Hypercube.Point (n + 1)}
    (hdrop : Hypercube.dropLast x = Hypercube.dropLast y)
    (hlast : Hypercube.last x = Hypercube.last y) :
    x = y := by
  funext i
  by_cases hlt : i.val < n
  · have hcoord := congrFun hdrop ⟨i.val, hlt⟩
    simpa [Hypercube.dropLast] using hcoord
  · have hi : i.val = n := by
      omega
    have hfin : i = ⟨n, Nat.lt_succ_self n⟩ := by
      apply Fin.ext
      exact hi
    simpa [hfin, Hypercube.last] using hlast

/-- Test whether two hypercube points are extensionally equal. -/
def Hypercube.pointEq {n : Nat} (x y : Hypercube.Point n) : Bool :=
  ListTools.allTrue
    ((List.finRange n).map
      (fun i => decide (x i = y i)))

/-- Hamming distance between two Boolean hypercube vertices. -/
def Hypercube.hammingDistance {n : Nat}
    (x y : Hypercube.Point n) : Nat :=
  ListTools.countTrue
    ((List.finRange n).map
      (fun i => Hypercube.boolDiff (x i) (y i)))

end Boolean.Cube
