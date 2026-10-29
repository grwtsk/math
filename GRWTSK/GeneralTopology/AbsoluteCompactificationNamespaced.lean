-- corpus-organization-transform:v1
-- Mathematical subject: Topology.GeneralTopology
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Topology.GeneralTopology.RealizedIncidences.Variant08ef17edbca65daea26b59d14c95e1fb65c9b52463d4c3fbb005059debcb76cc","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"08ef17edbca65daea26b59d14c95e1fb65c9b52463d4c3fbb005059debcb76cc","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Topology.GeneralTopology.SourceCorpus.RealizedIncidences.Variant08ef17edbca65daea26b59d14c95e1fb65c9b52463d4c3fbb005059debcb76cc","mathematical_subject":"Topology.GeneralTopology","original_sha256":"08ef17edbca65daea26b59d14c95e1fb65c9b52463d4c3fbb005059debcb76cc","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/Mathematics/Projection/AbsoluteCompactification.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
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


namespace GRWTSK.Topology.GeneralTopology.RealizedIncidences.Variant08ef17edbca65daea26b59d14c95e1fb65c9b52463d4c3fbb005059debcb76cc

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
