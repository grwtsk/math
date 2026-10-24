# Complete source: GRWTSK.Analysis.MeasureTheory.MeasurableSpace.Variant1cf1f82b8fe7dc32b18e9bc1256ac03d67f73746e3b3cab8699e208794632511

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `7a9de98c955107207d74541aa1588b52135742a4` · SHA-256 `ed6491d73960ef7012c06cffd55f4c14d949e718924e02fbb13fddf4196ceac2`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.MeasureTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.MeasureTheory.RootMeasurableEvalMatrix.Variant85ec343854cd8c4460433760e4dffaa995681a1706f148b5c2e13ba5d0ff784f","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"85ec343854cd8c4460433760e4dffaa995681a1706f148b5c2e13ba5d0ff784f","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.MeasureTheory.SourceCorpus.RootMeasurableEvalMatrix.Variant85ec343854cd8c4460433760e4dffaa995681a1706f148b5c2e13ba5d0ff784f","mathematical_subject":"Analysis.MeasureTheory","original_sha256":"85ec343854cd8c4460433760e4dffaa995681a1706f148b5c2e13ba5d0ff784f","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/Analysis/Matrix/MeasurableSpace.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2026 Gaëtan Serré. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Gaëtan Serré
-/
module

public import Mathlib.MeasureTheory.Constructions.BorelSpace.Basic
public import Mathlib.Topology.Instances.Matrix

/-!
# Measurable space structure on Matrices

If `α` is a measurable space, we set the measurable space structure on `Matrix m n α` to be the
same as the one on `m → n → α`.
-/


namespace GRWTSK.Analysis.MeasureTheory.RootMeasurableEvalMatrix.Variant85ec343854cd8c4460433760e4dffaa995681a1706f148b5c2e13ba5d0ff784f

@[expose] public section

namespace Matrix

section MeasurableSpace

variable {m n α : Type*} [MeasurableSpace α]

instance : MeasurableSpace (Matrix m n α) := inferInstanceAs <| MeasurableSpace (m → n → α)

variable {β : Type*} [MeasurableSpace β]

lemma _root_.GRWTSK.Analysis.MeasureTheory.RootMeasurableEvalMatrix.Variant85ec343854cd8c4460433760e4dffaa995681a1706f148b5c2e13ba5d0ff784f.Measurable.eval_matrix {i : m} {j : n} {M : β → Matrix m n α} (hM : Measurable M) :
    Measurable (M · i j) := hM.eval.eval

lemma _root_.GRWTSK.Analysis.MeasureTheory.RootMeasurableEvalMatrix.Variant85ec343854cd8c4460433760e4dffaa995681a1706f148b5c2e13ba5d0ff784f.Measurable.of_eval_matrix (M : β → Matrix m n α)
    (hM : ∀ i j, Measurable (M · i j)) : Measurable M :=
  .of_eval (fun i ↦ .of_eval fun j ↦ hM i j)

protected lemma measurable_iff {M : β → Matrix m n α} :
    Measurable M ↔ ∀ i j, Measurable (M · i j) where
  mp h _ _ := h.eval_matrix
  mpr h := Measurable.of_eval_matrix M h

protected lemma measurable_apply {i : m} {j : n} :
    Measurable (fun M : Matrix m n α ↦ M i j) := measurable_id.eval_matrix

end MeasurableSpace

section MeasurableEquiv

variable (m n α : Type*) [MeasurableSpace α]

@[fun_prop]
lemma measurable_of : Measurable <| Matrix.of (m := m) (n := n) (α := α) :=
  measurable_id

instance [Countable m] [Countable n] [TopologicalSpace α] [SecondCountableTopology α]
  [BorelSpace α] : BorelSpace (Matrix m n α) := inferInstanceAs <| BorelSpace (m → n → α)

/-- The map from `m → n → α` to `Matrix m n α` as a measurable equivalence. -/
protected def ofMeasurableEquiv : (m → n → α) ≃ᵐ (Matrix m n α) where
  toEquiv := Matrix.of
  measurable_toFun := measurable_id
  measurable_invFun := measurable_of m n α

lemma coe_ofMeasurableEquiv : ⇑(Matrix.ofMeasurableEquiv m n α) = Matrix.of := rfl

lemma coe_ofMeasurableEquiv_symm : ⇑(Matrix.ofMeasurableEquiv m n α).symm = Matrix.of.symm := rfl

@[simp]
lemma ofMeasurableEquiv_apply (f : m → n → α) :
    Matrix.ofMeasurableEquiv m n α f = Matrix.of f := rfl

@[simp]
lemma ofMeasurableEquiv_symm_apply (M : Matrix m n α) :
    (Matrix.ofMeasurableEquiv m n α).symm M = Matrix.of.symm M := rfl

end MeasurableEquiv

end Matrix
```
