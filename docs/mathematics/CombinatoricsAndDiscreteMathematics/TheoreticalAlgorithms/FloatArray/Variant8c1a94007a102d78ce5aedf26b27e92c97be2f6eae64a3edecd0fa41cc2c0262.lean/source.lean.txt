-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.MapMUnsafe.Variant9abf336ffcaf2b3b062086deec7f1a28497e87db4054d46e765b3aa51220a80d","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"9abf336ffcaf2b3b062086deec7f1a28497e87db4054d46e765b3aa51220a80d","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.MapMUnsafe.Variant9abf336ffcaf2b3b062086deec7f1a28497e87db4054d46e765b3aa51220a80d","mathematical_subject":"Computation.DataStructures","original_sha256":"9abf336ffcaf2b3b062086deec7f1a28497e87db4054d46e765b3aa51220a80d","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/restored-inputs/packages/batteries/Batteries/Data/FloatArray.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2024 François G. Dorais. All rights reserved.
Released under Apache 2. license as described in the file LICENSE.
Authors: François G. Dorais
-/
module


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.MapMUnsafe.Variant9abf336ffcaf2b3b062086deec7f1a28497e87db4054d46e765b3aa51220a80d

@[expose] public section

namespace FloatArray

attribute [ext] FloatArray

/--
Unsafe optimized implementation of `mapM`.

This function is unsafe because it relies on the implementation limit that the size of an array is
always less than `USize.size`.
-/
@[inline]
unsafe def mapMUnsafe [Monad m] (a : FloatArray) (f : Float → m Float) : m FloatArray :=
  loop a 0 a.usize
where
  /-- Inner loop for `mapMUnsafe`. -/
  @[specialize]
  loop (a : FloatArray) (k s : USize) := do
    if k < s then
      let x := a.uget k lcProof
      let y ← f x
      let a := a.uset k y lcProof
      loop a (k+1) s
    else pure a

/-- `mapM f a` applies the monadic function `f` to each element of the array. -/
@[implemented_by mapMUnsafe]
def mapM [Monad m] (a : FloatArray) (f : Float → m Float) : m FloatArray := do
  let mut r := a
  for i in [0:r.size] do
    r := r.set! i (← f r[i]!)
  return r

/-- `map f a` applies the function `f` to each element of the array. -/
@[inline]
def map (a : FloatArray) (f : Float → Float) : FloatArray :=
  mapM (m:=Id) a f
