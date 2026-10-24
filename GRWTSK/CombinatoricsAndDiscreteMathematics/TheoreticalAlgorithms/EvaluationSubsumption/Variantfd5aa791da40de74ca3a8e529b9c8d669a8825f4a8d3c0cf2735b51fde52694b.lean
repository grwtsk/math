-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Link.Variant13d8671ce7c129b6215ba8fa5262690d061b564cf7fd00e410592327aa8ca81e","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"13d8671ce7c129b6215ba8fa5262690d061b564cf7fd00e410592327aa8ca81e","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.Link.Variant13d8671ce7c129b6215ba8fa5262690d061b564cf7fd00e410592327aa8ca81e","mathematical_subject":"Computation.DataStructures","original_sha256":"13d8671ce7c129b6215ba8fa5262690d061b564cf7fd00e410592327aa8ca81e","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/Mathematics/Boolean/Formula/EvaluationSubsumption.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["lake_or_runtime_control","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.Boolean.Formula.Corpus
import Mathematics.Boolean.Formula.Evaluation

/-!
# Formula-evaluation subsumption

Every executable equation in `Formula/Eval.lean` is retained as one exact
proposal-only source link.
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Link.Variant13d8671ce7c129b6215ba8fa5262690d061b564cf7fd00e410592327aa8ca81e

namespace Mathematics.Boolean.Formula.EvaluationSubsumption

open Mathematics
open Mathematics.Discovery

private def link
    (ordinal : Nat)
    (sourceName : String)
    (sourceName_nonempty : sourceName ≠ "")
    (kind : CorpusDeclarationKind)
    (digest : Digest)
    (digest_valid : digest.Valid)
    (target : String)
    (target_nonempty : target ≠ "")
    (relation : CorpusSubsumptionRelation) :
    CorpusSubsumptionLink :=
  Corpus.evaluationModule.subsumption
    { value := "ideas:boolean-formula:evaluation:" ++ toString ordinal }
    (by simp [StableId.Valid])
    ordinal
    sourceName
    sourceName_nonempty
    kind
    digest
    digest_valid
    target
    target_nonempty
    relation
    "Reconstruct evaluation as a structural fold and prove its executable equation."

def evaluation := link 0 "eval" (by decide) .definition
  { value := "f4720b9a3165394e08359e1caa05a66b9c612f3c5e5377ad78539cac966a6227" }
  (by unfold Digest.Valid; native_decide)
  "Mathematics.Boolean.Formula.eval" (by decide) .definitionReconstruction

def evalVar := link 1 "eval_var" (by decide) .theorem
  { value := "d421e759fd219d62feb88d5b96fa24befde5d4a3ed79821b7d5583b4e6591c7b" }
  (by unfold Digest.Valid; native_decide)
  "Mathematics.Boolean.Formula.eval_var" (by decide) .theoremReconstruction

def evalFalsum := link 2 "eval_falsum" (by decide) .theorem
  { value := "8c576015d86fba45a5437105cee4eb5433544679e95834568831323fa9fb03b6" }
  (by unfold Digest.Valid; native_decide)
  "Mathematics.Boolean.Formula.eval_falsum" (by decide) .theoremReconstruction

def evalTruth := link 3 "eval_truth" (by decide) .theorem
  { value := "831949f38f58e7171fbfbcf37d3a91f1c936346af85f7a975f9d2d13b3d2be09" }
  (by unfold Digest.Valid; native_decide)
  "Mathematics.Boolean.Formula.eval_truth" (by decide) .theoremReconstruction

def evalNeg := link 4 "eval_neg" (by decide) .theorem
  { value := "dca657820b0ff0575ee51cfaf39e8ef2eada058a1f9f0b2ccdd0c5314ef0f7fe" }
  (by unfold Digest.Valid; native_decide)
  "Mathematics.Boolean.Formula.eval_neg" (by decide) .theoremReconstruction

def evalConj := link 5 "eval_conj" (by decide) .theorem
  { value := "d12d58ff59cdba25b8eb584d07511e3fccebfbcb2512618adef1f6f292e1c190" }
  (by unfold Digest.Valid; native_decide)
  "Mathematics.Boolean.Formula.eval_conj" (by decide) .theoremReconstruction

def evalDisj := link 6 "eval_disj" (by decide) .theorem
  { value := "49ca8b7586bb9316552ba65786b20d25f5ee689fabef906e5e6f61fec8c7dd25" }
  (by unfold Digest.Valid; native_decide)
  "Mathematics.Boolean.Formula.eval_disj" (by decide) .theoremReconstruction

def evalImpl := link 7 "eval_impl" (by decide) .theorem
  { value := "420f2a454863381ac027232b07b1b88f557e03af746d82da7dcca01412b744ac" }
  (by unfold Digest.Valid; native_decide)
  "Mathematics.Boolean.Formula.eval_impl" (by decide) .theoremReconstruction

def evalEqv := link 8 "eval_eqv" (by decide) .theorem
  { value := "31b9d8d7766049d806713814bd77572211f2fcff10b76d1fc77d27010640e0de" }
  (by unfold Digest.Valid; native_decide)
  "Mathematics.Boolean.Formula.eval_eqv" (by decide) .theoremReconstruction

def evalConst := link 9 "eval_const" (by decide) .theorem
  { value := "3cf8c9a0071042b4bb31c7b41c597e03e630e2304b06ceb967a39a1cb21d8df1" }
  (by unfold Digest.Valid; native_decide)
  "Mathematics.Boolean.Formula.eval_const" (by decide) .theoremReconstruction

def evalCongr := link 10 "eval_congr" (by decide) .theorem
  { value := "972e65efd0558d7369a7848c9f88a0f5e5eaf7f5ed5f685c369927e98d8e28a9" }
  (by unfold Digest.Valid; native_decide)
  "Mathematics.Boolean.Formula.eval_congr" (by decide) .theoremReconstruction

def links : List CorpusSubsumptionLink := [
  evaluation,
  evalVar,
  evalFalsum,
  evalTruth,
  evalNeg,
  evalConj,
  evalDisj,
  evalImpl,
  evalEqv,
  evalConst,
  evalCongr
]

@[simp] theorem links_length : links.length = 11 := by decide

end Mathematics.Boolean.Formula.EvaluationSubsumption
