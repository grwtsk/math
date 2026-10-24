# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.GeodesicCompletion.Variant0058a8f561e7019c5e335ec3ba73440c2211c7aa9113f2fb74e73dbf3b4c782f

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `b9e2d8657c4e8f17ee5a294f464898bba42b670a` · SHA-256 `f3e21f486638659bf1d082d2cb2547a3baabbec655528f8c98cb29136863056f`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.BooleanMidpoint.Variant60f00a0c753b0a80ded2b0f58e9dae6e676dad35c9671db7a3dfb9207780ca01","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"60f00a0c753b0a80ded2b0f58e9dae6e676dad35c9671db7a3dfb9207780ca01","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.NumbersAndBasicStructures.SourceCorpus.BooleanMidpoint.Variant60f00a0c753b0a80ded2b0f58e9dae6e676dad35c9671db7a3dfb9207780ca01","mathematical_subject":"Foundations.NumbersAndBasicStructures","original_sha256":"60f00a0c753b0a80ded2b0f58e9dae6e676dad35c9671db7a3dfb9207780ca01","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/Mathematics/Projection/GeodesicCompletion.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.Projection.ExactOverlap
import Mathematics.Projection.StoneClosure
import Mathlib.Data.Set.Basic

/-!
# Exact Boolean geodesics and recursive midpoint completion

Finite incidence codes form a Hamming cube.  A midpoint candidate is defined
by exact geodesic equalities, never by a floating embedding or nearest-neighbor
threshold.  Candidate codes have no identity until an authoritative encoder
realizes them.

`MidpointGenerated` closes a seed set under midpoints, stage by stage.  This
expresses midpoints of midpoints without asserting that every formal code is
already known mathematics.  `CertifiedMidpointTower` is the stronger datum
that supplies a mathematical object for every generated code.

Compatibility of stages belongs to `StonePoint`: finite-stage completion and
inverse-stage compactification are separate claims.
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.BooleanMidpoint.Variant60f00a0c753b0a80ded2b0f58e9dae6e676dad35c9671db7a3dfb9207780ca01

namespace Mathematics.Projection

universe u

/-- Exact Hamming-cube geodesic interval. -/
def OnBooleanGeodesic
    {width : Nat}
    (left right point : FiniteIncidenceCode width) : Prop :=
  finiteHamming left point + finiteHamming point right =
    finiteHamming left right

/-- The two legs of an exact midpoint differ by at most one edge. -/
def BalancedLegs (leftLength rightLength : Nat) : Prop :=
  leftLength = rightLength ∨
    leftLength + 1 = rightLength ∨
    rightLength + 1 = leftLength

/-- One exact, potentially non-unique, Hamming midpoint candidate. -/
structure BooleanMidpoint
    {width : Nat}
    (left right : FiniteIncidenceCode width) where
  point : FiniteIncidenceCode width
  onGeodesic : OnBooleanGeodesic left right point
  balanced :
    BalancedLegs
      (finiteHamming left point)
      (finiteHamming point right)

/-- Realization evidence for a finite incidence code. -/
structure RealizedFiniteIncidence
    {Object : Type u} {width : Nat}
    (encode : Object → FiniteIncidenceCode width)
    (code : FiniteIncidenceCode width) where
  object : Object
  realized : encode object = code

/--
Recursive closure under all exact midpoint choices.  `retain` makes the tower
monotone; `midpoint` permits midpoints of points created at earlier stages.
-/
inductive MidpointGenerated
    {width : Nat}
    (seed : Set (FiniteIncidenceCode width)) :
    Nat → FiniteIncidenceCode width → Prop
  | seedPoint
      (point : FiniteIncidenceCode width)
      (member : point ∈ seed) :
      MidpointGenerated seed 0 point
  | retain
      {stage : Nat} {point : FiniteIncidenceCode width}
      (previous : MidpointGenerated seed stage point) :
      MidpointGenerated seed (stage + 1) point
  | midpoint
      {stage : Nat}
      {left right : FiniteIncidenceCode width}
      (leftGenerated : MidpointGenerated seed stage left)
      (rightGenerated : MidpointGenerated seed stage right)
      (middle : BooleanMidpoint left right) :
      MidpointGenerated seed (stage + 1) middle.point

/--
Proof that recursive midpoint completion has been realized by actual
mathematical objects.  Without this field, the tower remains proposal space.
-/
structure CertifiedMidpointTower
    {Object : Type u} {width : Nat}
    (encode : Object → FiniteIncidenceCode width)
    (seed : Set (FiniteIncidenceCode width)) where
  realize :
    ∀ stage code,
      MidpointGenerated seed stage code →
        RealizedFiniteIncidence encode code

/--
One compatible completion across changing probe stages.  The midpoint tower at
each stage is finite-stage data; `limitPoint` prevents successive refinements
from silently changing an older coordinate.
-/
structure CompatibleMidpointCompletion
    {Stage : Type u} [Preorder Stage]
    (system : BooleanProbeSystem Stage) where
  limitPoint : StonePoint system
  stageClosureDescription : Stage → String
  conservativeRefinementEvidence : ∀ _stage : Stage, List String

end Mathematics.Projection
```
