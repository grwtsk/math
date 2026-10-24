# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.FiniteInfinite.Variant66f95c6b68bbdd5426aa7a172d2dd22489303f5baba019fc81f367b04783cc66

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `10870a76cdf14e4abc280845b47864a3eb0586fd` · SHA-256 `b829631c3fec5039bb31ae2303783f6e766ec8c6008911c32c81223c0788d321`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.DFinsuppInfiniteOfExistsRight.Variant4417552dced0ed627a7cbee5b54138ae734282ce99a23c4f99f2f7a63019d79b","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"4417552dced0ed627a7cbee5b54138ae734282ce99a23c4f99f2f7a63019d79b","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Combinatorics.FiniteCombinatorics.SourceCorpus.DFinsuppInfiniteOfExistsRight.Variant4417552dced0ed627a7cbee5b54138ae734282ce99a23c4f99f2f7a63019d79b","mathematical_subject":"Combinatorics.FiniteCombinatorics","original_sha256":"4417552dced0ed627a7cbee5b54138ae734282ce99a23c4f99f2f7a63019d79b","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/Data/DFinsupp/FiniteInfinite.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2018 Kenny Lau. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Johannes Hölzl, Kenny Lau
-/
module

public import Mathlib.Data.DFinsupp.Defs
public import Mathlib.Data.Fintype.Pi

/-!
# Finiteness and infiniteness of the `DFinsupp` type

## Main results

* `DFinsupp.fintype`: if the domain and codomain are finite, then `DFinsupp` is finite
* `DFinsupp.infinite_of_left`: if the domain is infinite, then `DFinsupp` is infinite
* `DFinsupp.infinite_of_exists_right`: if one fiber of the codomain is infinite,
  then `DFinsupp` is infinite
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.DFinsuppInfiniteOfExistsRight.Variant4417552dced0ed627a7cbee5b54138ae734282ce99a23c4f99f2f7a63019d79b

public section


universe u u₁ u₂ v v₁ v₂ v₃ w x y l

variable {ι : Type u}

section FiniteInfinite

instance DFinsupp.fintype {ι : Sort _} {π : ι → Sort _} [DecidableEq ι] [∀ i, Zero (π i)]
    [Fintype ι] [∀ i, Fintype (π i)] : Fintype (Π₀ i, π i) :=
  Fintype.ofEquiv (∀ i, π i) DFinsupp.equivFunOnFintype.symm

instance DFinsupp.infinite_of_left {ι : Sort _} {π : ι → Sort _} [∀ i, Nontrivial (π i)]
    [∀ i, Zero (π i)] [Infinite ι] : Infinite (Π₀ i, π i) := by
  let := Classical.decEq ι; choose m hm using fun i => exists_ne (0 : π i)
  exact Infinite.of_injective _ (DFinsupp.single_left_injective hm)

/-- See `DFinsupp.infinite_of_right` for this in instance form, with the drawback that
it needs all `π i` to be infinite. -/
theorem DFinsupp.infinite_of_exists_right {ι : Sort _} {π : ι → Sort _} (i : ι) [Infinite (π i)]
    [∀ i, Zero (π i)] : Infinite (Π₀ i, π i) :=
  letI := Classical.decEq ι
  Infinite.of_injective (fun j => DFinsupp.single i j) DFinsupp.single_injective

/-- See `DFinsupp.infinite_of_exists_right` for the case that only one `π ι` is infinite. -/
instance DFinsupp.infinite_of_right {ι : Sort _} {π : ι → Sort _} [∀ i, Infinite (π i)]
    [∀ i, Zero (π i)] [Nonempty ι] : Infinite (Π₀ i, π i) :=
  DFinsupp.infinite_of_exists_right (Classical.arbitrary ι)

end FiniteInfinite
```
