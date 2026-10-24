# Complete source: GRWTSK.Algebra.LinearAlgebra.Basic.Variant522f695cff6651bb35b38c331892aa309052014f04d33361308697c75e39c40f

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `c0acec56a3e4edc9df0582ac2bc4e50b335f7fdf` · SHA-256 `e0d3676a07dea027a1c0e4a12038489edcf2372aff4c894eb42da729f96503bf`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.LinearAlgebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.LinearAlgebra.RankQuotientEqOfLeTorsion.Variantf4ac9671586deec7d6b589e74fc2431c9943d5b5681e530f146ed34bdd91480b","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"f4ac9671586deec7d6b589e74fc2431c9943d5b5681e530f146ed34bdd91480b","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.LinearAlgebra.SourceCorpus.RankQuotientEqOfLeTorsion.Variantf4ac9671586deec7d6b589e74fc2431c9943d5b5681e530f146ed34bdd91480b","mathematical_subject":"Algebra.LinearAlgebra","original_sha256":"f4ac9671586deec7d6b589e74fc2431c9943d5b5681e530f146ed34bdd91480b","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/LinearAlgebra/Dimension/Torsion/Basic.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2018 Mario Carneiro. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Andrew Yang
-/
import Mathlib.Algebra.Module.Torsion
import Mathlib.LinearAlgebra.Dimension.Constructions
import Mathlib.LinearAlgebra.Dimension.Subsingleton

/-!
# Rank and torsion

## Main statements

- `rank_quotient_eq_of_le_torsion` : `rank M/N = rank M` if `N ≤ torsion M`.
-/


namespace GRWTSK.Algebra.LinearAlgebra.RankQuotientEqOfLeTorsion.Variantf4ac9671586deec7d6b589e74fc2431c9943d5b5681e530f146ed34bdd91480b

open Submodule

theorem rank_quotient_eq_of_le_torsion {R M : Type*} [CommRing R] [AddCommGroup M] [Module R M]
    {M' : Submodule R M} (hN : M' ≤ torsion R M) : Module.rank R (M ⧸ M') = Module.rank R M :=
  (rank_quotient_le M').antisymm <| by
    nontriviality R
    rw [Module.rank]
    refine ciSup_le fun ⟨s, hs⟩ ↦ LinearIndependent.cardinal_le_rank (v := (M'.mkQ ·)) ?_
    rw [LinearIndepOn, linearIndependent_iff'] at hs
    simp_rw [linearIndependent_iff', ← map_smul, ← map_sum, mkQ_apply, Quotient.mk_eq_zero]
    intro t g hg i hi
    obtain ⟨r, hg⟩ := hN hg
    simp_rw [Finset.smul_sum, Submonoid.smul_def, smul_smul] at hg
    exact r.prop _ (mul_comm (g i) r ▸ hs t _ hg i hi)
```
