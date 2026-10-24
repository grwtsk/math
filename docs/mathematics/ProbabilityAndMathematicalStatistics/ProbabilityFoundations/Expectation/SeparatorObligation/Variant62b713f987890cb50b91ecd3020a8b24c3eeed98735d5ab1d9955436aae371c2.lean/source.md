# Complete source: GRWTSK.ProbabilityAndMathematicalStatistics.ProbabilityFoundations.Expectation.SeparatorObligation.Variant62b713f987890cb50b91ecd3020a8b24c3eeed98735d5ab1d9955436aae371c2

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `e8deefa1288f2bfbe936d2d2206249487e42efd7` · SHA-256 `62b713f987890cb50b91ecd3020a8b24c3eeed98735d5ab1d9955436aae371c2`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathematics.Projection.RoutingStatus
import Mathematics.Projection.StructuralIsomorphism

/-!
# Proof obligations emitted by unresolved routing residue

A separator is new mathematics.  A model may propose one, but admission
requires invariance, conservative refinement, and exact separation proofs.
-/

namespace Mathematics.Projection

universe u v w

inductive SeparatorKind
  | intrinsicProbe
  | externalRigidifier
  deriving DecidableEq, Repr

structure SeparatorObligation
    (Element : Type u) (Probe : Type v)
    [DecidableEq Element] where
  residue : RoutingResidue Element Probe
  separatorKind : SeparatorKind

/--
An admitted intrinsic separator is an invariant new probe that distinguishes
the complete unresolved fiber and conservatively extends the old code.  The
required theorem is this dependent type itself; no decorative string or
caller-selected proposition is treated as a discharged obligation.
-/
structure CertifiedSeparator
    {Element : Type u}
    {OldProbe : Type v}
    {NewProbe : Type w}
    [DecidableEq Element]
    (oldEncode : Element → IncidenceCode OldProbe)
    (newEncode : Element → IncidenceCode NewProbe)
    (extension : ProbeExtension OldProbe NewProbe)
    (obligation : SeparatorObligation Element OldProbe) where
  conservative :
    ConservativeRefinement oldEncode newEncode extension
  separates :
    ∀ left ∈ obligation.residue.candidateFiber,
      ∀ right ∈ obligation.residue.candidateFiber,
        left ≠ right →
          newEncode left ≠ newEncode right

end Mathematics.Projection
```
