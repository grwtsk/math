import Mathlib.Topology.Compactness.Compact
import Mathlib.Topology.Order
import Mathematics.Projection.IncidenceAnchorNetwork

/-!
# Absolute Boolean compactification of known mathematics

For a declared probe family, all Boolean incidence codes form a compact
product of finite discrete spaces.  The closure of the realized codes is
therefore an actual compact space, not a metaphor or a learned embedding.

The incidence-anchor network lives in the Hamming graph on this carrier.  Its
graph connectivity and the Stone topology are deliberately separate.
-/

namespace Mathematics.Projection

open Set

universe u v

/-- Incidence codes currently realized by mathematical objects. -/
def realizedIncidences
    {Object : Type u} {Probe : Type v}
    (encode : Object → IncidenceCode Probe) :
    Set (IncidenceCode Probe) :=
  Set.range encode

/--
The absolute compactification is the closure of all currently realized
incidence points inside the complete Boolean product cube.
-/
def AbsoluteKnowledgeCompactification
    {Object : Type u} {Probe : Type v}
    (encode : Object → IncidenceCode Probe) :
    Set (IncidenceCode Probe) :=
  closure (realizedIncidences encode)

/-- Every known object is a point of the absolute compactification. -/
theorem realized_mem_absoluteCompactification
    {Object : Type u} {Probe : Type v}
    (encode : Object → IncidenceCode Probe)
    (object : Object) :
    encode object ∈ AbsoluteKnowledgeCompactification encode := by
  apply subset_closure
  exact ⟨object, rfl⟩

/--
The known-incidence closure is compact by Tychonoff compactness of the Boolean
cube and closedness of closure.
-/
theorem absoluteKnowledgeCompactification_isCompact
    {Object : Type u} {Probe : Type v}
    (encode : Object → IncidenceCode Probe) :
    IsCompact (AbsoluteKnowledgeCompactification encode) := by
  exact isClosed_closure.isCompact

/--
A certified finite-stage incidence singleton belongs to the absolute
compactification under the canonical inclusion.  This is set membership, not
dynamical fixedness.
-/
theorem incidenceSingleton_mem_absoluteCompactification
    {Object : Type u} [DecidableEq Object]
    {width : Nat}
    (encode : Object → FiniteIncidenceCode width)
    (asIncidence :
      FiniteIncidenceCode width → IncidenceCode (Fin width))
    (point : CertifiedIncidenceSingleton encode) :
    asIncidence (encode point.object) ∈
      AbsoluteKnowledgeCompactification (asIncidence ∘ encode) := by
  exact realized_mem_absoluteCompactification
    (asIncidence ∘ encode) point.object

end Mathematics.Projection
