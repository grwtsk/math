# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Config.Variant09f62d384556e05d3d68dd9b1ecabbdc8ded63503d138431377092ef3a13a2bb

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `4bfe37b12434afaf59456537d0d09edb2bf08743` · SHA-256 `7ca950005ebd82a92170dfc4e4e26858558236197601e475abc3eafa44f678fc`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

````lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.SetElabConfig.Varianta4dd042df192f1575044cb13f23999d55344f4dcf336ed0422495bfe74f21b86","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"a4dd042df192f1575044cb13f23999d55344f4dcf336ed0422495bfe74f21b86","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.SetElabConfig.Varianta4dd042df192f1575044cb13f23999d55344f4dcf336ed0422495bfe74f21b86","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"a4dd042df192f1575044cb13f23999d55344f4dcf336ed0422495bfe74f21b86","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Lean/Elab/Config.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2021 Microsoft Corporation. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Leonardo de Moura
-/
module

prelude
public import Lean.Meta.Basic


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.SetElabConfig.Varianta4dd042df192f1575044cb13f23999d55344f4dcf336ed0422495bfe74f21b86

public section

namespace Lean.Elab.Term

/--
  Set `isDefEq` configuration for the elaborator.
  Note that we enable all approximations but `quasiPatternApprox`

  In Lean3 and Lean 4, we used to use the quasi-pattern approximation during elaboration.
  The example:
  ```
  def ex : StateT δ (StateT σ Id) σ :=
  monadLift (get : StateT σ Id σ)
  ```
  demonstrates why it produces counterintuitive behavior.
  We have the `Monad-lift` application:
  ```
  @monadLift ?m ?n ?c ?α (get : StateT σ id σ) : ?n ?α
  ```
  It produces the following unification problem when we process the expected type:
  ```
  ?n ?α =?= StateT δ (StateT σ id) σ
  ==> (approximate using first-order unification)
  ?n := StateT δ (StateT σ id)
  ?α := σ
  ```
  Then, we need to solve:
  ```
  ?m ?α =?= StateT σ id σ
  ==> instantiate metavars
  ?m σ =?= StateT σ id σ
  ==> (approximate since it is a quasi-pattern unification constraint)
  ?m := fun σ => StateT σ id σ
  ```
  Note that the constraint is not a Milner pattern because σ is in
  the local context of `?m`. We are ignoring the other possible solutions:
  ```
  ?m := fun σ' => StateT σ id σ
  ?m := fun σ' => StateT σ' id σ
  ?m := fun σ' => StateT σ id σ'
  ```

  We need the quasi-pattern approximation for elaborating recursor-like expressions (e.g., dependent `match with` expressions).

  If we had use first-order unification, then we would have produced
  the right answer: `?m := StateT σ id`

  Haskell would work on this example since it always uses
  first-order unification.
-/
def setElabConfig (cfg : Meta.Config) : Meta.Config :=
  { cfg with foApprox := true, ctxApprox := true, constApprox := false, quasiPatternApprox := false }


end Lean.Elab.Term
````
