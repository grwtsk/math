# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.TypeTheory.DependentTypeTheory.SuppliedIndexedMapInductionData.Variantec5ecd69ad37f4cd.WholeSuppliedDegreewiseFunctoriality

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `cd2602b57b910a15b571aa9cfe0ac852d6ba4d4b` · SHA-256 `673e463c682dea8f181351803c3c8139d242ea34bb8b38d4b80e7947e8878f13`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
WholeSuppliedDegreewiseFunctoriality — individual source review
Attribution: ATTRIBUTION_CLARIFICATION_NEEDED
Issue: https://github.com/grwtsk/math/issues/254
Provisional mathematical ideas and direction: grwtsk contributors.
Provisional composite search, probabilistic symbolic recombination and linearized diffusive computation: OpenAI/Codex.
Cache warming and model sculpting: the countless, often unnamed mathematicians, enthusiasts, and curious minds whose work and questions have helped shape these tools, and who now have new ways to pursue mathematical answers to the endlessly deep question: “Why?”
These are owner-supplied provisional roles; exact contributions and source lineage need clarification.
Original SHA-256: ec5ecd69ad37f4cd299b56989fcfd0caa4b57a6296ba4fcaad6e4c396f706aa2
Organized SHA-256: bcad8845170abd0889d1a64a301d74630f51c5400661b241c2e04cc10af59c3b
PMD: 510.0.070.020 dependent type theory (editorial navigation only).
Statements, hypotheses and proof bodies are exact source copies. Original whole-file documentation is retained below and may describe other components.
Only containing namespaces and explicit component imports are changed. Distinct historical representations stay distinct.
Uncompiled; no Lean/Lake invocation, public umbrella admission, geometric provider, or new theorem priority claim.
-/

/- Three complete seams retain coefficient-indexed carrier objects and the whole etale-comparison record including explicit coefficientChange and Hypothesis-to-bijectivity premise; the whole representation datum with actual group/ring instances, representation-to-units, integral group-ring homomorphism and exact generator equation; and the whole degree-indexed supplied functoriality package with its InducedBy predicate/proof. Only the functoriality component adds its exact same-source representation module. The two anonymous instances remain verbatim positional typeclass projections, without invented Lean declaration names. No algebraic K-theory construction, etale realization, equivalence or localization/completion theorem is inferred. -/

import DAF.Assembly.Interface
import DAF.Comparison.Coefficients
import Mathlib.Algebra.MonoidAlgebra.Basic

import GRWTSK.Algebra.RepresentationTheory.GroupRepresentations.IntegralGroupRingRepresentationData.Variantec5ecd69ad37f4cd.WholeRepresentationWithExactTypeclassProjections

/-!
# Arithmetic-realization interfaces

The structures in this module are parameters for arithmetic comparison
problems; they are not global existence theorems.  A representation of a group
in the units of a number ring is additional input, and the proof that a group
ring map is induced by that representation is stored with the input.

Likewise, an arithmetic K-theory or etale comparison is represented through a
supplied functoriality/comparison interface.  No ordinary homology group is
identified with algebraic K-theory here, and no K-theory comparison is assumed
to be bijective without its named hypothesis.  Localization and completion
change coefficient objects; an explicit coefficient change therefore remains
in the type of every etale comparison datum.
-/

namespace DAF.Arithmetic

open scoped MonoidAlgebra

universe uG uR uS uT uK uE uP

/--
Supplied functoriality data for the K-theory map induced by one arithmetic
realization.

The predicate `InducedBy` is part of the selected K-theory model.  Requiring a
proof of it records that `kTheoryMap` really comes from the ring homomorphism;
this module does not pretend to construct algebraic K-theory itself.
-/
structure KTheoryFunctoriality
    (A : RepresentationDatum) where
  Source : Int → Type uS
  Target : Int → Type uT
  InducedBy :
    (MonoidAlgebra ℤ A.Group →+* A.NumberRing) →
      ((degree : Int) → Source degree → Target degree) → Prop
  kTheoryMap :
    (degree : Int) → Source degree → Target degree
  induced_by_groupRingMap :
    InducedBy A.groupRingMap kTheoryMap

end DAF.Arithmetic
```
