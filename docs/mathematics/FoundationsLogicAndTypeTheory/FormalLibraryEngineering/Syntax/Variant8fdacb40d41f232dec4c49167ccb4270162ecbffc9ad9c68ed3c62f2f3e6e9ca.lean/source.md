# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Syntax.Variant8fdacb40d41f232dec4c49167ccb4270162ecbffc9ad9c68ed3c62f2f3e6e9ca

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `307c4992de35c83abbefb74285dcbd727c892042` · SHA-256 `aac0675c864788a28422df412d5bae454251a12cd96f28fe16ecb900cb646aa4`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Command.Variant7339580f076a810a574cc2818b6f97a565116e5364bedb5d64a90da9bdf1e408","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"7339580f076a810a574cc2818b6f97a565116e5364bedb5d64a90da9bdf1e408","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.Command.Variant7339580f076a810a574cc2818b6f97a565116e5364bedb5d64a90da9bdf1e408","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"7339580f076a810a574cc2818b6f97a565116e5364bedb5d64a90da9bdf1e408","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/FEATURES/.lake/packages/mathlib/Mathlib/Mathport/Syntax.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["custom_or_effectful_command","implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2021 Microsoft Corporation. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Mario Carneiro
-/
import Lean.Elab.Command
import Lean.Elab.Quotation
import Std.Tactic.Ext
import Std.Tactic.RCases
import Std.Tactic.Where
import Mathlib.Data.Matrix.Notation
import Mathlib.Logic.Equiv.LocalEquiv
import Mathlib.Order.Filter.Basic
import Mathlib.RingTheory.WittVector.IsPoly
import Mathlib.SetTheory.Game.PGame
import Mathlib.Tactic.Abel
import Mathlib.Tactic.ApplyCongr
import Mathlib.Tactic.ApplyFun
import Mathlib.Tactic.ApplyWith
import Mathlib.Tactic.ByContra
import Mathlib.Tactic.CancelDenoms
import Mathlib.Tactic.Cases
import Mathlib.Tactic.CasesM
import Mathlib.Tactic.CategoryTheory.Elementwise
import Mathlib.Tactic.CategoryTheory.Slice
import Mathlib.Tactic.Choose
import Mathlib.Tactic.Classical
import Mathlib.Tactic.Clear_
import Mathlib.Tactic.Clear!
import Mathlib.Tactic.ClearExcept
import Mathlib.Tactic.Constructor
import Mathlib.Tactic.Congrm
import Mathlib.Tactic.Continuity
import Mathlib.Tactic.Contrapose
import Mathlib.Tactic.Conv
import Mathlib.Tactic.Convert
import Mathlib.Tactic.Core
import Mathlib.Tactic.DefEqTransformations
import Mathlib.Tactic.ExtractGoal
import Mathlib.Tactic.Existsi
import Mathlib.Tactic.FieldSimp
import Mathlib.Tactic.FinCases
import Mathlib.Tactic.Find
import Mathlib.Tactic.GeneralizeProofs
import Mathlib.Tactic.GuardHypNums
import Mathlib.Tactic.InferParam
import Mathlib.Tactic.IntervalCases
import Mathlib.Tactic.Inhabit
import Mathlib.Tactic.IrreducibleDef
import Mathlib.Tactic.LeftRight
import Mathlib.Tactic.LibrarySearch
import Mathlib.Tactic.Lift
import Mathlib.Tactic.Linarith
import Mathlib.Tactic.LinearCombination
import Mathlib.Tactic.Measurability
import Mathlib.Tactic.MkIffOfInductiveProp
import Mathlib.Tactic.ModCases
import Mathlib.Tactic.Monotonicity
import Mathlib.Tactic.Nontriviality
import Mathlib.Tactic.NormCast
import Mathlib.Tactic.NormNum
import Mathlib.Tactic.NthRewrite
import Mathlib.Tactic.PermuteGoals
import Mathlib.Tactic.Polyrith
import Mathlib.Tactic.Positivity
import Mathlib.Tactic.PushNeg
import Mathlib.Tactic.Qify
import Mathlib.Tactic.Recover
import Mathlib.Tactic.Relation.Rfl
import Mathlib.Tactic.Relation.Symm
import Mathlib.Tactic.Relation.Trans
import Mathlib.Tactic.Rename
import Mathlib.Tactic.RenameBVar
import Mathlib.Tactic.Replace
import Mathlib.Tactic.RestateAxiom
import Mathlib.Tactic.Ring
import Mathlib.Tactic.RSuffices
import Mathlib.Tactic.RunCmd
import Mathlib.Tactic.ScopedNS
import Mathlib.Tactic.Set
import Mathlib.Tactic.SimpIntro
import Mathlib.Tactic.SimpRw
import Mathlib.Tactic.Simps.Basic
import Mathlib.Tactic.SolveByElim
import Mathlib.Tactic.SplitIfs
import Mathlib.Tactic.Substs
import Mathlib.Tactic.SwapVar
import Mathlib.Tactic.Tauto
import Mathlib.Tactic.TFAE
import Mathlib.Tactic.Trace
import Mathlib.Tactic.TypeCheck
import Mathlib.Tactic.Use
import Mathlib.Tactic.WLOG
import Mathlib.Tactic.Zify
import Mathlib.Util.Syntax
import Mathlib.Util.WithWeakNamespace
import Mathlib.Mathport.Notation

-- To fix upstream:
-- * bracketedExplicitBinders doesn't support optional types

/-!
This file defines all the tactics that are required by mathport. Most of the `syntax` declarations
in this file (as opposed to the imported files) are not defined anywhere and effectively form the
TODO list before we can port mathlib to lean 4 for real.

For tactic writers: I (Mario) have put a comment before each syntax declaration to represent the
estimated difficulty of writing the tactic. The key is as follows:

* `E`: Easy. It's a simple macro in terms of existing things,
  or an elab tactic for which we have many similar examples. Example: `left`
* `M`: Medium. An elab tactic, not too hard, perhaps a 100-200 lines file. Example: `have`
* `N`: Possibly requires new mechanisms in lean 4, some investigation required
* `B`: Hard, because it is a big and complicated tactic
* `S`: Possibly easy, because we can just stub it out or replace with something else
* `?`: uncategorized
-/

namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Command.Variant7339580f076a810a574cc2818b6f97a565116e5364bedb5d64a90da9bdf1e408

namespace Mathlib.Tactic
open Lean Parser.Tactic

/- N -/ elab (name := include) "include" (ppSpace ident)+ : command => pure ()
/- N -/ elab (name := omit) "omit" (ppSpace ident)+ : command => pure ()
/- N -/ syntax (name := parameter) "parameter" (ppSpace bracketedBinder)+ : command

/- S -/ syntax (name := propagateTags) "propagate_tags " tacticSeq : tactic
/- S -/ syntax (name := mapply) "mapply " term : tactic
/- S -/ syntax "destruct " term : tactic
/- N -/ syntax (name := abstract) "abstract" (ppSpace ident)? ppSpace tacticSeq : tactic

/- B -/ syntax (name := cc) "cc" : tactic

/- S -/ syntax (name := rsimp) "rsimp" : tactic
/- S -/ syntax (name := compVal) "comp_val" : tactic
/- S -/ syntax (name := async) "async " tacticSeq : tactic

/- M -/ syntax (name := injectionsAndClear) "injections_and_clear" : tactic

/- E -/ syntax (name := tryFor) "try_for " term:max tacticSeq : tactic
/- E -/ syntax (name := unfoldCoes) "unfold_coes" (location)? : tactic
/- E -/ syntax (name := unfoldWf) "unfold_wf" : tactic
/- M -/ syntax (name := unfoldAux) "unfold_aux" : tactic
/- S -/ syntax (name := «continue») "continue " tacticSeq : tactic
/- M -/ syntax (name := clean) "clean " term : tactic
/- B -/ syntax (name := refineStruct) "refine_struct " term : tactic
/- M -/ syntax (name := matchHyp) "match_hyp " ("(" &"m" " := " term ") ")? ident " : " term :
  tactic
/- S -/ syntax (name := guardTags) "guard_tags" (ppSpace ident)* : tactic
/- S -/ syntax (name := guardProofTerm) "guard_proof_term " tactic:51 " => " term : tactic
/- S -/ syntax (name := failIfSuccess?) "fail_if_success? " str ppSpace tacticSeq : tactic
/- N -/ syntax (name := field) "field " ident " => " tacticSeq : tactic
/- S -/ syntax (name := haveField) "have_field" : tactic
/- S -/ syntax (name := applyField) "apply_field" : tactic
/- S -/ syntax (name := hGeneralize) "h_generalize " atomic(binderIdent " : ")? term:51 " = " ident
  (" with " binderIdent)? : tactic
/- S -/ syntax (name := hGeneralize!) "h_generalize! " atomic(binderIdent " : ")?
  term:51 " = " ident (" with " binderIdent)? : tactic
/- S -/ syntax (name := extractGoal!) "extract_goal!" (ppSpace ident)?
  (" with" (ppSpace colGt ident)*)? : tactic
/- S -/ syntax (name := revertDeps) "revert_deps" (ppSpace colGt ident)* : tactic
/- S -/ syntax (name := revertAfter) "revert_after " ident : tactic
/- S -/ syntax (name := revertTargetDeps) "revert_target_deps" : tactic

/- S -/ syntax (name := hint) "hint" : tactic

/- S -/ syntax (name := rcases?) "rcases?" casesTarget,* (" : " num)? : tactic
/- S -/ syntax (name := rintro?) "rintro?" (" : " num)? : tactic

/- M -/ syntax (name := decide!) "decide!" : tactic

/- M -/ syntax (name := deltaInstance) "delta_instance" (ppSpace ident)* : tactic

/- S -/ syntax (name := elide) "elide " num (location)? : tactic
/- S -/ syntax (name := unelide) "unelide" (location)? : tactic

/- S -/ syntax (name := clarify) "clarify" (config)?
  (Parser.Tactic.simpArgs)? (" using " term,+)? : tactic
/- S -/ syntax (name := safe) "safe" (config)?
  (Parser.Tactic.simpArgs)? (" using " term,+)? : tactic
/- S -/ syntax (name := finish) "finish" (config)?
  (Parser.Tactic.simpArgs)? (" using " term,+)? : tactic

syntax generalizesArg := (ident " : ")? term:51 " = " ident
/- M -/ syntax (name := generalizes) "generalizes " "[" generalizesArg,* "]" : tactic

syntax withPattern := "-" <|> "_" <|> ident
/- S -/ syntax (name := cases'') "cases''" casesTarget
  (" with" (ppSpace colGt withPattern)+)? : tactic
syntax fixingClause := " fixing" (" *" <|> (ppSpace ident)+)
syntax generalizingClause := " generalizing" (ppSpace ident)+
/- S -/ syntax (name := induction'') "induction''" casesTarget
  (fixingClause <|> generalizingClause)? (" with" (ppSpace colGt withPattern)+)? : tactic

syntax termList := " [" term,* "]"
/- B -/ syntax (name := itauto) "itauto" (" *" <|> termList)? : tactic
/- B -/ syntax (name := itauto!) "itauto!" (" *" <|> termList)? : tactic

/- B -/ syntax (name := obviously) "obviously" : tactic

/- S -/ syntax (name := prettyCases) "pretty_cases" : tactic

/- M -/ syntax (name := assocRw) "assoc_rw " rwRuleSeq (location)? : tactic

/- N -/ syntax (name := dsimpResult) "dsimp_result"
  (&" only")? (dsimpArgs)? " => " tacticSeq : tactic
/- N -/ syntax (name := simpResult) "simp_result"
  (&" only")? (simpArgs)? " => " tacticSeq : tactic

/- S -/ syntax (name := suggest) "suggest" (config)? (ppSpace num)?
  (simpArgs)? (" using" (ppSpace colGt binderIdent)+)? : tactic

/- M -/ syntax (name := truncCases) "trunc_cases " term
  (" with" (ppSpace colGt binderIdent)+)? : tactic

/- E -/ syntax (name := applyNormed) "apply_normed " term : tactic

/- E -/ syntax (name := noncommRing) "noncomm_ring" : tactic


/- S -/ syntax (name := omega) "omega" (&" manual")? (&" nat" <|> &" int")? : tactic

/- B -/ syntax (name := acMono) "ac_mono" ("*" <|> ("^" num))?
  (config)? ((" : " term) <|> (" := " term))? : tactic

/- M -/ syntax (name := reassoc) "reassoc" (ppSpace colGt ident)* : tactic
/- M -/ syntax (name := reassoc!) "reassoc!" (ppSpace colGt ident)* : tactic
/- M -/ syntax (name := deriveReassocProof) "derive_reassoc_proof" : tactic

/- S -/ syntax (name := subtypeInstance) "subtype_instance" : tactic

/- M -/ syntax (name := group) "group" (location)? : tactic

/- S -/ syntax (name := transport) "transport" (ppSpace term)? " using " term : tactic

/- M -/ syntax (name := unfoldCases) "unfold_cases " tacticSeq : tactic

/- B -/ syntax (name := equivRw) "equiv_rw" (config)? (termList <|> (ppSpace term)) (location)? :
  tactic
/- B -/ syntax (name := equivRwType) "equiv_rw_type" (config)? ppSpace term : tactic

/- E -/ syntax (name := nthRwLHS) "nth_rw_lhs " num rwRuleSeq (location)? : tactic
/- E -/ syntax (name := nthRwRHS) "nth_rw_rhs " num rwRuleSeq (location)? : tactic

/- S -/ syntax (name := rwSearch) "rw_search" (config)? rwRuleSeq : tactic
/- S -/ syntax (name := rwSearch?) "rw_search?" (config)? rwRuleSeq : tactic

/- M -/ syntax (name := piInstanceDeriveField) "pi_instance_derive_field" : tactic
/- M -/ syntax (name := piInstance) "pi_instance" : tactic

/- B -/ syntax (name := tidy) "tidy" (config)? : tactic
/- B -/ syntax (name := tidy?) "tidy?" (config)? : tactic

/- M -/ syntax (name := deriveElementwiseProof) "derive_elementwise_proof" : tactic

/- M -/ syntax (name := computeDegreeLE) "compute_degree_le" : tactic

/- S -/ syntax (name := mkDecorations) "mk_decorations" : tactic

/- E -/ syntax (name := isBounded_default) "isBounded_default" : tactic

/- S -/ syntax (name := mvBisim) "mv_bisim" (ppSpace colGt term)?
  (" with" (ppSpace binderIdent)+)? : tactic

/- E -/ syntax (name := unitInterval) "unit_interval" : tactic

/- M -/ syntax (name := padicIndexSimp) "padic_index_simp" " [" term,* "]" (location)? : tactic

/- M -/ syntax (name := borelize) "borelize" (ppSpace colGt term:max)* : tactic

/- E -/ syntax (name := uniqueDiffWithinAt_Ici_Iic_univ) "uniqueDiffWithinAt_Ici_Iic_univ" : tactic

/- M -/ syntax (name := ghostFunTac) "ghost_fun_tac " term ", " term : tactic
/- E -/ syntax (name := wittTruncateFunTac) "witt_truncate_fun_tac" : tactic

/- M -/ syntax (name := pure_coherence) "pure_coherence" : tactic
/- M -/ syntax (name := coherence) "coherence" : tactic

/- M -/ syntax (name := moveOp) "move_op " term:max ppSpace rwRule,+ (location)? : tactic
macro (name := moveMul) "move_mul " pats:rwRule,+ loc:(location)? : tactic =>
  `(tactic| move_op (·*·) $pats,* $(loc)?)
macro (name := moveAdd) "move_add " pats:rwRule,+ loc:(location)? : tactic =>
  `(tactic| move_op (·+·) $pats,* $(loc)?)

/- S -/ syntax (name := intro) "intro" : attr
/- S -/ syntax (name := intro!) "intro!" : attr

/- S -/ syntax (name := interactive) "interactive" : attr

/- M -/ syntax (name := expandExists) "expand_exists" (ppSpace ident)+ : attr

-- TODO: this should be handled in mathport
/- S -/ syntax (name := protectProj) "protect_proj" (&" without" (ppSpace ident)+)? : attr

/- M -/ syntax (name := notationClass) "notation_class" "*"? (ppSpace ident)? : attr

/- N -/ syntax (name := pp_nodot) "pp_nodot" : attr

/- N -/ syntax (name := addTacticDoc) (docComment)? "add_tactic_doc " term : command

/- M -/ syntax (name := addHintTactic) "add_hint_tactic " tactic : command

/- S -/ syntax (name := listUnusedDecls) "#list_unused_decls" : command

/- N -/ syntax (name := defReplacer) "def_replacer " ident Parser.Term.optType : command

/- M -/ syntax (name := reassocAxiom) "reassoc_axiom " ident : command

/- S -/ syntax (name := sample) "#sample " term : command

/- S -/ syntax (name := printSorryIn) "#print_sorry_in " ident : command

/- E -/ syntax (name := assertInstance) "assert_instance " term : command
/- E -/ syntax (name := assertNoInstance) "assert_no_instance " term : command
```
