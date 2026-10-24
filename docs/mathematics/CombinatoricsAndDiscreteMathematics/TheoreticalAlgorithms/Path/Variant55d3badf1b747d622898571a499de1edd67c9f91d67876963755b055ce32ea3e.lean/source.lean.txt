-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.DeflectionPath.Variant13f05fb20b819b10778d446c9cde0a45555c5914958657595f30fd61a6ce15c3","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"13f05fb20b819b10778d446c9cde0a45555c5914958657595f30fd61a6ce15c3","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.DeflectionPath.Variant13f05fb20b819b10778d446c9cde0a45555c5914958657595f30fd61a6ce15c3","mathematical_subject":"Computation.DataStructures","original_sha256":"13f05fb20b819b10778d446c9cde0a45555c5914958657595f30fd61a6ce15c3","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/Mathematics/SemiLocalDefect/ResidueDeflection/Path.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.SemiLocalDefect.ResidueDeflection.Phase
import Mathematics.GraphAccess.Arc

/-!
# Typed paths in an immutable graph cut

Adjacency is encoded by the indices of the inductive path.
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.DeflectionPath.Variant13f05fb20b819b10778d446c9cde0a45555c5914958657595f30fd61a6ce15c3

namespace Mathematics.SemiLocalDefect.ResidueDeflection

open Mathematics.GraphAccess

universe uNode uEdge uClass

inductive DeflectionPath
    (graph : GraphCut) :
    graph.Node → graph.Node → Type _
  | nil (node : graph.Node) :
      DeflectionPath graph node node
  | cons
      (arc : Arc graph)
      {target : graph.Node}
      (rest :
        DeflectionPath graph arc.head target) :
      DeflectionPath graph arc.tail target

def DeflectionPath.length
    {graph : GraphCut}
    {source target : graph.Node} :
    DeflectionPath graph source target → Nat
  | .nil _ => 0
  | .cons _ rest => rest.length + 1

def DeflectionPath.arcs
    {graph : GraphCut}
    {source target : graph.Node} :
    DeflectionPath graph source target →
      List (Arc graph)
  | .nil _ => []
  | .cons arc rest => arc :: rest.arcs

def DeflectionPath.AllArcs
    {graph : GraphCut}
    (predicate : Arc graph → Prop)
    {source target : graph.Node} :
    DeflectionPath graph source target → Prop
  | .nil _ => True
  | .cons arc rest =>
      predicate arc ∧ rest.AllArcs predicate

def DeflectionPath.phaseProduct
    {graph : GraphCut}
    (phase : Arc graph → Phase3)
    {source target : graph.Node} :
    DeflectionPath graph source target →
      Phase3
  | .nil _ => .identity
  | .cons arc rest =>
      Phase3.mul
        (rest.phaseProduct phase)
        (phase arc)

end Mathematics.SemiLocalDefect.ResidueDeflection
