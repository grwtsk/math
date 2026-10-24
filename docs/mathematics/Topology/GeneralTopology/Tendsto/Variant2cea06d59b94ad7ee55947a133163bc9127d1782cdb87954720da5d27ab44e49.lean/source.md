# Complete source: GRWTSK.Topology.GeneralTopology.Tendsto.Variant2cea06d59b94ad7ee55947a133163bc9127d1782cdb87954720da5d27ab44e49

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `1992593d815a875f69ad4a882a02123a63e17616` · SHA-256 `292668867d2d6bd8c2571f1d856bdabf42dba9454d5e14cd34f8f199282187d8`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Topology.GeneralTopology
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Topology.GeneralTopology.TendstoSupPrimeAntidiagonalCofinite.Variant605f3796a0d4919c4d8ebf4cb40df208eab121c6083c92ad00cb2e254fc7a229","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"605f3796a0d4919c4d8ebf4cb40df208eab121c6083c92ad00cb2e254fc7a229","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Topology.GeneralTopology.SourceCorpus.TendstoSupPrimeAntidiagonalCofinite.Variant605f3796a0d4919c4d8ebf4cb40df208eab121c6083c92ad00cb2e254fc7a229","mathematical_subject":"Topology.GeneralTopology","original_sha256":"605f3796a0d4919c4d8ebf4cb40df208eab121c6083c92ad00cb2e254fc7a229","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/Algebra/Order/Antidiag/Tendsto.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2026 William Coram. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: William Coram
-/
module

public import Mathlib.Algebra.Group.Pointwise.Set.Finite
public import Mathlib.Algebra.Order.Antidiag.Prod
public import Mathlib.Order.Filter.Cofinite

/-!
# Antidiagonal tendsto

`tendsto_sup'_antidiagonal_cofinite`: If a function `f : M × M → R` on a Finset `M`, that has the
  antidiagonal propertry,  tends to to a filter `F` under the cofinite filter then so does the
  function assigning to `x : M` its supremum of its antidiagonal.
-/


namespace GRWTSK.Topology.GeneralTopology.TendstoSupPrimeAntidiagonalCofinite.Variant605f3796a0d4919c4d8ebf4cb40df208eab121c6083c92ad00cb2e254fc7a229

public section

namespace Finset.HasAntidiagonal

open Filter

variable {M R : Type*} [AddZeroClass M] [HasAntidiagonal M] {f : M × M → R} [LinearOrder R]
  {F : Filter R}

lemma tendsto_sup'_antidiagonal_cofinite (hf : Tendsto f cofinite F) : Tendsto
    (fun a ↦ (Finset.antidiagonal a).sup' (nonempty_antidiagonal _) f) cofinite F := by
  intro U hU
  refine ((((hf hU).image Prod.fst)).add ((hf hU).image Prod.snd)).subset ?_
  simp only [Set.subset_def, Set.mem_compl_iff, Set.mem_preimage]
  intro x hx
  obtain ⟨i, hi, e⟩ := Finset.exists_mem_eq_sup' (nonempty_antidiagonal x) f
  obtain rfl : i.1 + i.2 = x := by simpa using hi
  exact Set.add_mem_add (by simpa using ⟨i.2, e ▸ hx⟩) (by simpa using ⟨i.1, e ▸ hx⟩)

end Finset.HasAntidiagonal
```
