# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.SimplexAlgorithm.Variant518b2988a84a847bda3b3b3a749c85cae20a3907a14b4f49a4112d8bd38c8a9f

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `9d68c417b63089d4712cfa5af4cc498796fa6246` · SHA-256 `9b1701c06cadf8b365dcaeb0b6ed622bef36ce04855885faf2162d059eee5124`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Preprocess.Variantd21d444fb521a47384dc75fcedb95fe72be5433e6deb459b1ee0ee0a851ec42e","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"d21d444fb521a47384dc75fcedb95fe72be5433e6deb459b1ee0ee0a851ec42e","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.Preprocess.Variantd21d444fb521a47384dc75fcedb95fe72be5433e6deb459b1ee0ee0a851ec42e","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"d21d444fb521a47384dc75fcedb95fe72be5433e6deb459b1ee0ee0a851ec42e","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Tactic/Linarith/Oracle/SimplexAlgorithm.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["scope_end_name_mismatch","scope_underflow","uncompiled_organization"],"structural_qualification":"structural_issues_retained_uncompiled","transform_version":"1"}
/-
Copyright (c) 2024 Vasily Nesterov. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Vasily Nesterov
-/
import Mathlib.Tactic.Linarith.Datatypes
import Mathlib.Tactic.Linarith.Oracle.SimplexAlgorithm.PositiveVector

/-!
# The oracle based on Simplex Algorithm

This file contains hooks to enable the use of the Simplex Algorithm in `linarith`.
The algorithm's entry point is the function `Linarith.SimplexAlgorithm.findPositiveVector`.
See the file `PositiveVector.lean` for details of how the procedure works.
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Preprocess.Variantd21d444fb521a47384dc75fcedb95fe72be5433e6deb459b1ee0ee0a851ec42e

namespace Linarith.SimplexAlgorithm
open Mathlib

/-- Preprocess the goal to pass it to `Linarith.SimplexAlgorithm.findPositiveVector`. -/
def preprocess (matType : ℕ → ℕ → Type) [UsableInSimplexAlgorithm matType] (hyps : List Comp)
    (maxVar : ℕ) : matType (maxVar + 1) (hyps.length) × List Nat :=
  let values : List (ℕ × ℕ × ℚ) := hyps.foldlIdx (init := []) fun idx cur comp =>
    cur ++ comp.coeffs.map fun (var, c) => (var, idx, c)

  let strictIndexes := hyps.findIdxs (·.str == Ineq.lt)
  (ofValues values, strictIndexes)

/--
Extract the certificate from the `vec` found by `Linarith.SimplexAlgorithm.findPositiveVector`.
-/
def postprocess (vec : Array ℚ) : Std.HashMap ℕ ℕ :=
  let common_den : ℕ := vec.foldl (fun acc item => acc.lcm item.den) 1
  let vecNat : Array ℕ := vec.map (fun x : ℚ => (x * common_den).floor.toNat)
  (∅ : Std.HashMap Nat Nat).insertMany <| vecNat.zipIdx.filterMap
    fun ⟨item, idx⟩ => if item != 0 then some (idx, item) else none

end SimplexAlgorithm

open SimplexAlgorithm

/-- An oracle that uses the Simplex Algorithm. -/
def CertificateOracle.simplexAlgorithmSparse : CertificateOracle where
  produceCertificate hyps maxVar := do
    let (A, strictIndexes) := preprocess SparseMatrix hyps maxVar
    let vec ← findPositiveVector A strictIndexes
    return postprocess vec

/--
The same oracle as `CertificateOracle.simplexAlgorithmSparse`, but uses dense matrices. Works faster
on dense states.
-/
def CertificateOracle.simplexAlgorithmDense : CertificateOracle where
  produceCertificate hyps maxVar := do
    let (A, strictIndexes) := preprocess DenseMatrix hyps maxVar
    let vec ← findPositiveVector A strictIndexes
    return postprocess vec

end Linarith
```
