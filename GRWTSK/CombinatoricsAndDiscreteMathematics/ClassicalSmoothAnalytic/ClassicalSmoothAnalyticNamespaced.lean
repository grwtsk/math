-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.Finset.Varianta32839aa2a43d9290b0975ef387dccaead2dec828d3eaa81be8530a7efb4e66b","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"a32839aa2a43d9290b0975ef387dccaead2dec828d3eaa81be8530a7efb4e66b","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Combinatorics.FiniteCombinatorics.SourceCorpus.Finset.Varianta32839aa2a43d9290b0975ef387dccaead2dec828d3eaa81be8530a7efb4e66b","mathematical_subject":"Combinatorics.FiniteCombinatorics","original_sha256":"a32839aa2a43d9290b0975ef387dccaead2dec828d3eaa81be8530a7efb4e66b","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/07/21/Surface/formal/.surface/overlays/session:2e628ee6531784ebd1c16c0e/workspace/Surface/Legacy/BinaryLogicMatrix/ClassicalSmoothAnalytic.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Surface.Legacy.BinaryLogicMatrix.ElementaryCatalogue


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.Finset.Varianta32839aa2a43d9290b0975ef387dccaead2dec828d3eaa81be8530a7efb4e66b

namespace Surface.Legacy

structure Finset (α : Type) where
  elems : List α
deriving Repr

namespace Finset

def empty : Finset α := { elems := [] }
def singleton (a : α) : Finset α := { elems := [a] }
def union (A B : Finset α) : Finset α := { elems := A.elems ++ B.elems }
def bind (A : Finset α) (f : α -> Finset β) : Finset β :=
  { elems := A.elems.flatMap fun a => (f a).elems }
def Finite (_A : Finset α) : Prop := True

end Finset

inductive ClassicalSmoothAnalyticFunction where
  | one
  | pi
  | e
  | I
  | var : Nat -> ClassicalSmoothAnalyticFunction
  | neg : ClassicalSmoothAnalyticFunction -> ClassicalSmoothAnalyticFunction
  | inv : ClassicalSmoothAnalyticFunction -> ClassicalSmoothAnalyticFunction
  | add : ClassicalSmoothAnalyticFunction -> ClassicalSmoothAnalyticFunction ->
      ClassicalSmoothAnalyticFunction
  | sub : ClassicalSmoothAnalyticFunction -> ClassicalSmoothAnalyticFunction ->
      ClassicalSmoothAnalyticFunction
  | mul : ClassicalSmoothAnalyticFunction -> ClassicalSmoothAnalyticFunction ->
      ClassicalSmoothAnalyticFunction
  | div : ClassicalSmoothAnalyticFunction -> ClassicalSmoothAnalyticFunction ->
      ClassicalSmoothAnalyticFunction
  | pow : ClassicalSmoothAnalyticFunction -> ClassicalSmoothAnalyticFunction ->
      ClassicalSmoothAnalyticFunction
  | exp : ClassicalSmoothAnalyticFunction -> ClassicalSmoothAnalyticFunction
  | log : ClassicalSmoothAnalyticFunction -> ClassicalSmoothAnalyticFunction
  | sqrt : ClassicalSmoothAnalyticFunction -> ClassicalSmoothAnalyticFunction
  | sin : ClassicalSmoothAnalyticFunction -> ClassicalSmoothAnalyticFunction
  | cos : ClassicalSmoothAnalyticFunction -> ClassicalSmoothAnalyticFunction
  | tan : ClassicalSmoothAnalyticFunction -> ClassicalSmoothAnalyticFunction
  | compose : ClassicalSmoothAnalyticFunction -> ClassicalSmoothAnalyticFunction ->
      ClassicalSmoothAnalyticFunction
  | finiteSum : List ClassicalSmoothAnalyticFunction -> ClassicalSmoothAnalyticFunction
  | finiteProduct : List ClassicalSmoothAnalyticFunction -> ClassicalSmoothAnalyticFunction
deriving Repr

namespace ClassicalSmoothAnalyticFunction

def size : ClassicalSmoothAnalyticFunction -> Nat
  | one => 1
  | pi => 1
  | e => 1
  | I => 1
  | var _ => 1
  | neg _ => 1
  | inv _ => 1
  | add _ _ => 1
  | sub _ _ => 1
  | mul _ _ => 1
  | div _ _ => 1
  | pow _ _ => 1
  | exp _ => 1
  | log _ => 1
  | sqrt _ => 1
  | sin _ => 1
  | cos _ => 1
  | tan _ => 1
  | compose _ _ => 1
  | finiteSum _ => 1
  | finiteProduct _ => 1

def depth (f : ClassicalSmoothAnalyticFunction) : Nat :=
  size f

def vars : ClassicalSmoothAnalyticFunction -> Finset Nat
  | one => Finset.empty
  | pi => Finset.empty
  | e => Finset.empty
  | I => Finset.empty
  | var n => Finset.singleton n
  | neg f => vars f
  | inv f => vars f
  | add a b => Finset.union (vars a) (vars b)
  | sub a b => Finset.union (vars a) (vars b)
  | mul a b => Finset.union (vars a) (vars b)
  | div a b => Finset.union (vars a) (vars b)
  | pow a b => Finset.union (vars a) (vars b)
  | exp f => vars f
  | log f => vars f
  | sqrt f => vars f
  | sin f => vars f
  | cos f => vars f
  | tan f => vars f
  | compose a b => Finset.union (vars a) (vars b)
  | finiteSum _ => Finset.empty
  | finiteProduct _ => Finset.empty

theorem csa_size_pos (f : ClassicalSmoothAnalyticFunction) :
    0 < size f := by
  cases f <;> simp [size]

theorem csa_depth_le_size (f : ClassicalSmoothAnalyticFunction) :
    depth f ≤ size f := by
  simp [depth]

theorem csa_finite_vars (f : ClassicalSmoothAnalyticFunction) :
    (vars f).Finite := by
  trivial

end ClassicalSmoothAnalyticFunction

theorem csa_size_pos (f : ClassicalSmoothAnalyticFunction) :
    0 < ClassicalSmoothAnalyticFunction.size f :=
  ClassicalSmoothAnalyticFunction.csa_size_pos f

theorem csa_depth_le_size (f : ClassicalSmoothAnalyticFunction) :
    ClassicalSmoothAnalyticFunction.depth f ≤
      ClassicalSmoothAnalyticFunction.size f :=
  ClassicalSmoothAnalyticFunction.csa_depth_le_size f

theorem csa_finite_vars (f : ClassicalSmoothAnalyticFunction) :
    (ClassicalSmoothAnalyticFunction.vars f).Finite :=
  ClassicalSmoothAnalyticFunction.csa_finite_vars f

end Surface.Legacy
