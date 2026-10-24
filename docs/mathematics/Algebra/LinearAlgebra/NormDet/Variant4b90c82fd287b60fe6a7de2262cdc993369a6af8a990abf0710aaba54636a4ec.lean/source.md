# Complete source: GRWTSK.Algebra.LinearAlgebra.NormDet.Variant4b90c82fd287b60fe6a7de2262cdc993369a6af8a990abf0710aaba54636a4ec

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `277c3cb305ee22d969ad7f0c5390dc2e03c13070` · SHA-256 `99f6ef81f1cd1213ae8beeff8496a0cacd578db185b1034f191a0e6b08f91e0a`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

````lean
-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.LinearAlgebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.LinearAlgebra.NormalizeBirdDet.Variant78f01561c3fcc49bb265cb4330e1542173588b60e07bab41f87772c8f4508365","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"78f01561c3fcc49bb265cb4330e1542173588b60e07bab41f87772c8f4508365","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.LinearAlgebra.SourceCorpus.NormalizeBirdDet.Variant78f01561c3fcc49bb265cb4330e1542173588b60e07bab41f87772c8f4508365","mathematical_subject":"Algebra.LinearAlgebra","original_sha256":"78f01561c3fcc49bb265cb4330e1542173588b60e07bab41f87772c8f4508365","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/Tactic/NormDet.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["custom_or_effectful_command","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2026 Paul Cadman. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Paul Cadman
-/
module

public import Mathlib.LinearAlgebra.Matrix.Determinant.Basic  -- shake: keep (Matrix.det, Qq dependency)
public import Mathlib.LinearAlgebra.Matrix.Determinant.Bird.Correctness  -- shake: keep (BirdDet.det_eq_birdDet, Qq dependency)
public import Mathlib.Tactic.Determinant.Bird.Cert

/-!
# `norm_det` simproc and `eval_det` tactic

This module defines the `norm_det` simproc and the `eval_det` tactic for
normalizing determinants of matrix literals over a commutative ring.
-/


namespace GRWTSK.Algebra.LinearAlgebra.NormalizeBirdDet.Variant78f01561c3fcc49bb265cb4330e1542173588b60e07bab41f87772c8f4508365

public meta section

open Lean Meta Qq
open Mathlib.Tactic.Determinant

/-- reify a `BirdDet` call and normalize it using the certificate-chain evaluator -/
private def normalizeBirdDet (e : Expr) : MetaM Simp.Result := do
  let ⟨rα, ctx⟩ ← reifyBirdDet e
  let detNorm ← certBirdDet (rα := rα) |>.run' {} |>.run ctx |>.run .reducible
  Mathlib.Tactic.RingNF.cleanup {} {expr := detNorm.norm, proof? := some detNorm.proof}

/-- Normalize the determinant of `A` from its `entries` in row-major order -/
private def normalizeDetFromEntries {u : Level} {α : Q(Type u)} {n : Q(ℕ)} (rα : Q(CommRing $α))
  (A : Q(Matrix (Fin $n) (Fin $n) $α)) (entries : Array Q($α)) :
    MetaM Simp.Result := do
  let xs : Q(List $α) ← mkListLit α entries.toList
  let arrayExpr : Q(Array $α) := q(List.toArray $xs)
  -- `List.ofFn` is exposed (unlike `Array.ofFn`) and so this reduction can be
  -- checked by the kernel
  have : (List.ofFn fun k : Fin ($n * $n) ↦ $A k.divNat k.modNat) =Q $xs := ⟨⟩
  let hlist : Q(List.ofFn (fun k : Fin ($n * $n) ↦ $A k.divNat k.modNat) = $xs) := q(rfl)
  let hArray := q($hlist ▸ List.toArray_ofFn)
  let birdDet := q(BirdDet.birdDet $n $arrayExpr)
  let detEqBirdDet := q($hArray ▸ Matrix.ofArray_ofFn $A ▸ BirdDet.det_eq_birdDet
    (Array.ofFn fun k : Fin ($n * $n) ↦ $A k.divNat k.modNat) Array.size_ofFn)
  let birdDetNorm ← normalizeBirdDet birdDet
  let detEqBirdDetRes : Simp.Result := ⟨birdDet, some detEqBirdDet, true⟩
  detEqBirdDetRes.mkEqTrans birdDetNorm

/-- Extract the entries of a square `!![...]` matrix literal in row-major order.
Returns `none` if `A` is not an `n × n` matrix literal. -/
private def entriesOfMatrixLiteral? {u : Level} {α : Q(Type u)} {n : Q(ℕ)}
    (A : Q(Matrix (Fin $n) (Fin $n) $α)) :
    MetaM (Option (Array Q($α))) := do
  let some dim ← getNatValue? n | return none
  let ~q(Matrix.of $rows) := A | return none
  let (matrixRows, _, _) ← Matrix.matchVecConsPrefix n rows
  unless matrixRows.length == dim do return none
  let entriesByRow ← matrixRows.mapM fun row => do
    let (entries, _, _) ← Matrix.matchVecConsPrefix n row
    return entries
  unless entriesByRow.all (·.length == dim) do return none
  let entries ← entriesByRow.flatten.mapM fun entry => do
    let some entry ← checkTypeQ entry α | throwError "expected matrix entry to have type {α}"
    return entry
  return some entries.toArray

/-- The `norm_det` simproc normalizes determinants of matrices written using `!![...]`
notation over a commutative ring. -/
simproc_decl norm_det (Matrix.det _) := fun e => do
  let e ← instantiateMVars e
  let ⟨_, _, e⟩ ← inferTypeQ' e
  let ~q(@Matrix.det (Fin $n) _ _ _ $rα $matrix) := e | return .continue
  let some entries ← entriesOfMatrixLiteral? matrix | return .continue
  return .done (← normalizeDetFromEntries rα matrix entries)

/--
`eval_det` normalizes determinants of matrices written using `!![...]` notation
over a commutative ring.

Examples:

```lean
example : Matrix.det (R := ℤ) !![1, 2; 3, 4] = -2 := by
  eval_det

example {R : Type*} [CommRing R] (a b c d : R) :
    Matrix.det !![a, b; c, d] = a * d - b * c := by
  eval_det
  ring
```
-/
macro (name := evalDet) "eval_det" : tactic => `(tactic| simp only [norm_det])

end
````
