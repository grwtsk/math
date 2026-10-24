-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.ResidueDeflectionCut.Variant4ce02020e8239d261f3e3cc3221a3a8e5b1fa08e80b7457570251ce548523f7d","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"4ce02020e8239d261f3e3cc3221a3a8e5b1fa08e80b7457570251ce548523f7d","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Combinatorics.FiniteCombinatorics.SourceCorpus.ResidueDeflectionCut.Variant4ce02020e8239d261f3e3cc3221a3a8e5b1fa08e80b7457570251ce548523f7d","mathematical_subject":"Combinatorics.FiniteCombinatorics","original_sha256":"4ce02020e8239d261f3e3cc3221a3a8e5b1fa08e80b7457570251ce548523f7d","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/Mathematics/SemiLocalDefect/ResidueDeflection/Graph.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.SemiLocalDefect.ResidueDeflection.Path
import Mathematics.GraphAccess.Admissibility

/-!
# Reflective modulo-three graph cut

Zero-labelled nodes remain represented as defects but are excluded from the
admitted safe subgraph.  Bypass paths and local loops use only safe arcs.
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.ResidueDeflectionCut.Variant4ce02020e8239d261f3e3cc3221a3a8e5b1fa08e80b7457570251ce548523f7d

namespace Mathematics.SemiLocalDefect.ResidueDeflection

open Mathematics.GraphAccess

structure ResidueDeflectionCut
    (graph : GraphCut) where
  residue : graph.Node → Residue3
  defectNode : graph.Node → Bool
  defect_iff_zero :
    ∀ node,
      defectNode node = true ↔
        residue node = .zero
  safeArc : Arc graph → Bool
  safeArc_endpoints :
    ∀ arc,
      safeArc arc = true →
        (residue arc.tail).Safe ∧
          (residue arc.head).Safe
  admissibility : AdmissibilityProfile graph
  admitted_node_iff_safe :
    ∀ node,
      NodeAdmissible admissibility node ↔
        (residue node).Safe
  admitted_arc_iff_safe :
    ∀ arc,
      ArcAdmissible admissibility arc ↔
        safeArc arc = true
  Bypass : Type
  bypassFintype : Fintype Bypass
  bypassDecEq : DecidableEq Bypass
  bypassDefect : Bypass → graph.Node
  bypassLeft : Bypass → graph.Node
  bypassRight : Bypass → graph.Node
  bypassPath :
    ∀ bypass,
      DeflectionPath graph
        (bypassLeft bypass)
        (bypassRight bypass)
  bypass_safe :
    ∀ bypass,
      (bypassPath bypass).AllArcs
        (fun arc => safeArc arc = true)
  bypass_complete :
    ∀ node,
      defectNode node = true →
        ∃ bypass,
          bypassDefect bypass = node
  loopBase : Bypass → graph.Node
  defectLoop :
    ∀ bypass,
      DeflectionPath graph
        (loopBase bypass)
        (loopBase bypass)
  defectLoop_safe :
    ∀ bypass,
      (defectLoop bypass).AllArcs
        (fun arc => safeArc arc = true)
  loopBase_safe :
    ∀ bypass,
      (residue (loopBase bypass)).Safe

attribute [instance]
  ResidueDeflectionCut.bypassFintype
  ResidueDeflectionCut.bypassDecEq

theorem ResidueDeflectionCut.defect_not_admitted
    {graph : GraphCut}
    (cut : ResidueDeflectionCut graph)
    {node : graph.Node}
    (defect : cut.defectNode node = true) :
    ¬ NodeAdmissible cut.admissibility node := by
  intro admitted
  have safe :=
    (cut.admitted_node_iff_safe node).mp
      admitted
  have zero :=
    (cut.defect_iff_zero node).mp defect
  rw [zero] at safe
  exact safe

end Mathematics.SemiLocalDefect.ResidueDeflection
