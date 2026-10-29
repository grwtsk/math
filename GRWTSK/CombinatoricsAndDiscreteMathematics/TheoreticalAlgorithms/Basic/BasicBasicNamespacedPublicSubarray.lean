-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.ArrayMergeSortInternalMerge.Variant963bbe622d3570e69901aaf900d50d8f0a744d4c1635297f9b2ef21624c3c9ea","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"963bbe622d3570e69901aaf900d50d8f0a744d4c1635297f9b2ef21624c3c9ea","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.ArrayMergeSortInternalMerge.Variant963bbe622d3570e69901aaf900d50d8f0a744d4c1635297f9b2ef21624c3c9ea","mathematical_subject":"Computation.DataStructures","original_sha256":"963bbe622d3570e69901aaf900d50d8f0a744d4c1635297f9b2ef21624c3c9ea","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Init/Data/Array/Sort/Basic.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2026 Lean FRO. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Paul Reichert
-/
module

prelude
public import Init.Data.Array.Subarray.Split
public import Init.Data.Slice.Array
import Init.Omega


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.ArrayMergeSortInternalMerge.Variant963bbe622d3570e69901aaf900d50d8f0a744d4c1635297f9b2ef21624c3c9ea

public section

private def Array.MergeSort.Internal.merge (xs ys : Array α) (le : α → α → Bool := by exact (· ≤ ·)) :
    Array α :=
  if hxs : 0 < xs.size then
    if hys : 0 < ys.size then
      go xs[*...*] ys[*...*] (by simp only [Array.size_mkSlice_rii]; omega) (by simp only [Array.size_mkSlice_rii]; omega) (Array.emptyWithCapacity (xs.size + ys.size))
    else
      xs
  else
    ys
where
  go (xs ys : Subarray α) (hxs : 0 < xs.size) (hys : 0 < ys.size) (acc : Array α) : Array α :=
    let x := xs[0]
    let y := ys[0]
    if le x y then
      if hi : 1 < xs.size then
        go (xs.drop 1) ys (by simp only [Subarray.size_drop]; omega) hys (acc.push x)
      else
        ys.foldl (init := acc.push x) (fun acc y => acc.push y)
    else
      if hj : 1 < ys.size then
        go xs (ys.drop 1) hxs (by simp only [Subarray.size_drop]; omega) (acc.push y)
      else
        xs.foldl (init := acc.push y) (fun acc x => acc.push x)
  termination_by xs.size + ys.size

def Subarray.mergeSort (xs : Subarray α) (le : α → α → Bool := by exact (· ≤ ·)) : Array α :=
    if h : 1 < xs.size then
      let splitIdx := (xs.size + 1) / 2 -- We follow the same splitting convention as `List.mergeSort`
      let left := xs[*...splitIdx]
      let right := xs[splitIdx...*]
      Array.MergeSort.Internal.merge (mergeSort left le) (mergeSort right le) le
    else
      xs.toArray
termination_by xs.size
decreasing_by
  · simp only [Subarray.size_mkSlice_rio]; omega
  · simp only [Subarray.size_mkSlice_rci]; omega

@[inline]
def Array.mergeSort (xs : Array α) (le : α → α → Bool := by exact (· ≤ ·)) : Array α :=
    xs[*...*].mergeSort le
