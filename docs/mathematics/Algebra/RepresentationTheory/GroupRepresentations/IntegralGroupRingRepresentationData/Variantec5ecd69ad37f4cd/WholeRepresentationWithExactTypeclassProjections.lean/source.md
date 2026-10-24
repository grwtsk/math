# Complete source: GRWTSK.Algebra.RepresentationTheory.GroupRepresentations.IntegralGroupRingRepresentationData.Variantec5ecd69ad37f4cd.WholeRepresentationWithExactTypeclassProjections

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `63d962826dd95bcbcf2e24d6e9294e51a9fdc9f6` · SHA-256 `a1263e95ac7617207c5e5a168f8b5b47e274a1361d92c509f6398527f1ab757e`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
WholeRepresentationWithExactTypeclassProjections — individual source review
Attribution: ATTRIBUTION_CLARIFICATION_NEEDED
Issue: https://github.com/grwtsk/math/issues/254
Provisional mathematical ideas and direction: grwtsk contributors.
Provisional composite search, probabilistic symbolic recombination and linearized diffusive computation: OpenAI/Codex.
Cache warming and model sculpting: the countless, often unnamed mathematicians, enthusiasts, and curious minds whose work and questions have helped shape these tools, and who now have new ways to pursue mathematical answers to the endlessly deep question: “Why?”
These are owner-supplied provisional roles; exact contributions and source lineage need clarification.
Original SHA-256: ec5ecd69ad37f4cd299b56989fcfd0caa4b57a6296ba4fcaad6e4c396f706aa2
Organized SHA-256: bcad8845170abd0889d1a64a301d74630f51c5400661b241c2e04cc10af59c3b
PMD: 510.1.090.010 group representations (editorial navigation only).
Statements, hypotheses and proof bodies are exact source copies. Original whole-file documentation is retained below and may describe other components.
Only containing namespaces and explicit component imports are changed. Distinct historical representations stay distinct.
Uncompiled; no Lean/Lake invocation, public umbrella admission, geometric provider, or new theorem priority claim.
-/

/- Three complete seams retain coefficient-indexed carrier objects and the whole etale-comparison record including explicit coefficientChange and Hypothesis-to-bijectivity premise; the whole representation datum with actual group/ring instances, representation-to-units, integral group-ring homomorphism and exact generator equation; and the whole degree-indexed supplied functoriality package with its InducedBy predicate/proof. Only the functoriality component adds its exact same-source representation module. The two anonymous instances remain verbatim positional typeclass projections, without invented Lean declaration names. No algebraic K-theory construction, etale realization, equivalence or localization/completion theorem is inferred. -/

import DAF.Assembly.Interface
import DAF.Comparison.Coefficients
import Mathlib.Algebra.MonoidAlgebra.Basic

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
A group representation together with its induced integral group-ring map.

`groupRingMap_single` prevents an unrelated ring homomorphism from being
presented as the realization induced by `representation`.
-/
structure RepresentationDatum where
  Group : Type uG
  NumberRing : Type uR
  [instGroup : _root_.Group Group]
  [instCommRing : CommRing NumberRing]
  representation : Group →* NumberRingˣ
  groupRingMap : MonoidAlgebra ℤ Group →+* NumberRing
  groupRingMap_single :
    ∀ g : Group,
      groupRingMap (MonoidAlgebra.single g 1) =
        (representation g : NumberRing)

namespace RepresentationDatum

instance (A : RepresentationDatum) : _root_.Group A.Group :=
  A.instGroup

instance (A : RepresentationDatum) : CommRing A.NumberRing :=
  A.instCommRing

/-- The representation is recovered by evaluating the group-ring map on generators. -/
@[simp]
theorem groupRingMap_of
    (A : RepresentationDatum)
    (g : A.Group) :
    A.groupRingMap (MonoidAlgebra.single g 1) =
      (A.representation g : A.NumberRing) :=
  A.groupRingMap_single g

end RepresentationDatum

end DAF.Arithmetic
```
