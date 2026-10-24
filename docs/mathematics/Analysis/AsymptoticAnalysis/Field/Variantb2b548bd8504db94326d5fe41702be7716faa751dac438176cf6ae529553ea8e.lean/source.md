# Complete source: GRWTSK.Analysis.AsymptoticAnalysis.Field.Variantb2b548bd8504db94326d5fe41702be7716faa751dac438176cf6ae529553ea8e

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `5aa4000e44f76afa42442801420ac658dd7fa06b` · SHA-256 `ff793b5f6cca0e949c9f044f7d7fa1dcdbf68e2c889167916d8d6757eadda67f`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.AsymptoticAnalysis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.AsymptoticAnalysis.MultipliableNorm.Variantfe77853c774cc7c44a2006ff0281702979dc11a07f5985df13ab419910e6fa2d","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"fe77853c774cc7c44a2006ff0281702979dc11a07f5985df13ab419910e6fa2d","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.AsymptoticsAndSeries.SourceCorpus.MultipliableNorm.Variantfe77853c774cc7c44a2006ff0281702979dc11a07f5985df13ab419910e6fa2d","mathematical_subject":"Analysis.AsymptoticsAndSeries","original_sha256":"fe77853c774cc7c44a2006ff0281702979dc11a07f5985df13ab419910e6fa2d","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Topology/Algebra/InfiniteSum/Field.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2024 Bhavik Mehta. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Bhavik Mehta
-/
import Mathlib.Analysis.Normed.Group.Continuity
import Mathlib.Analysis.Normed.Field.Basic
import Mathlib.Topology.Algebra.InfiniteSum.Defs

/-!
# Infinite sums and products in topological fields

Lemmas on topological sums in fields (as opposed to groups).
-/



namespace GRWTSK.Analysis.AsymptoticAnalysis.MultipliableNorm.Variantfe77853c774cc7c44a2006ff0281702979dc11a07f5985df13ab419910e6fa2d

section NormedField

variable {α E : Type*} [NormedField E] {f : α → E} {x : E}

nonrec theorem HasProd.norm (hfx : HasProd f x) : HasProd (‖f ·‖) ‖x‖ := by
  simp only [HasProd, ← norm_prod]
  exact hfx.norm

theorem Multipliable.norm (hf : Multipliable f) : Multipliable (‖f ·‖) :=
  let ⟨x, hx⟩ := hf; ⟨‖x‖, hx.norm⟩

protected theorem Multipliable.norm_tprod (hf : Multipliable f) : ‖∏' i, f i‖ = ∏' i, ‖f i‖ :=
  hf.hasProd.norm.tprod_eq.symm

@[deprecated (since := "2025-04-12")] alias norm_tprod := Multipliable.norm_tprod

end NormedField
```
