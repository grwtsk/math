# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.MLList.Variant457a6ec5884ea7f9751ce67f2817af3c439dac322e3d1657972c247c7cfaf7a2

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `4a43d3e8b39acb9eb30d7c6a501adbf117f063ec` · SHA-256 `24dac50b10b39b7e699ad5cd5a49a92d1a0554e01d3eeae7498b7b0d244590e6`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Append.Variant2a3de1469d11a506b7b2df92bc116fdbcb0dcb604952a827f488825d59940306","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"2a3de1469d11a506b7b2df92bc116fdbcb0dcb604952a827f488825d59940306","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.Append.Variant2a3de1469d11a506b7b2df92bc116fdbcb0dcb604952a827f488825d59940306","mathematical_subject":"Computation.DataStructures","original_sha256":"2a3de1469d11a506b7b2df92bc116fdbcb0dcb604952a827f488825d59940306","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/FEATURES/.lake/packages/mathlib/test/MLList.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2019 Scott Morrison. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Scott Morrison
-/
import Std.Data.MLList.Basic
import Mathlib.Control.Basic


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Append.Variant2a3de1469d11a506b7b2df92bc116fdbcb0dcb604952a827f488825d59940306

@[reducible] def S (α : Type) := StateT (List Nat) Option α
def append (x : Nat) : S Unit :=
  fun s => some ((), x :: s)

def F : Nat → S Nat
  | 0 => failure
  | (n+1) => do
      append (n+1)
      pure n

open Lean

#eval show MetaM Unit from do
  -- Note that `fix` fails if any invocation of `F` fails.
  -- This is different from previous behaviour, where it just terminated the lazy list.
  -- Hence we must use `.takeAsList 11` here rather than `.force`.
  let x := ((MLList.fix F 10).takeAsList 11).run []
  guard $ x = some ([10, 9, 8, 7, 6, 5, 4, 3, 2, 1, 0], [1, 2, 3, 4, 5, 6, 7, 8, 9, 10])

example : ((MLList.fix F 10).takeAsList 4).run [] = some ([10, 9, 8, 7], [8, 9, 10]) := by
  native_decide
example :
    (((MLList.fix F 10).map fun n => n*n).takeAsList 3).run [] =
      some ([100, 81, 64], [9, 10]) := by
  native_decide

def l1 : MLList S Nat := MLList.ofList [0,1,2]
def l2 : MLList S Nat := MLList.ofList [3,4,5]
def ll : MLList S Nat := (MLList.ofList [l1, l2]).join

#eval show MetaM Unit from do
  let x := ll.force.run []
  guard $ x = some ([0, 1, 2, 3, 4, 5], [])

def half_or_fail (n : Nat) : MetaM Nat :=
do guard (n % 2 = 0)
   pure (n / 2)

#eval do
  let x : MLList MetaM Nat := MLList.range
  let y := x.filterMapM fun n => try? <| half_or_fail n
  let z ← y.takeAsList 10
  guard $ z.length = 10

#eval do
  let R : MLList MetaM Nat := MLList.range
  let S : MLList MetaM Nat := R.filterMapM fun n => try? do
    guard (n % 5 = 0)
    pure n
  let n ← R.takeAsList 5
  let m ← S.head
  guard $ n = [0,1,2,3,4]
  guard $ m = 0

#eval do
  let R : MLList MetaM Nat := MLList.range
  let n ← R.firstM fun n => try? do
    guard (n = 5)
    pure n
  guard $ n = 5
```
