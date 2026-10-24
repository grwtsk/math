# Complete source: GRWTSK.Algebra.Finset.Variant5e1c2e567220bf005f80c08e5d65bb01a31a08389feb467bb01f8a9347e1263a

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `9d045e570f6f5c8338f4015502b1422611f640cc` · SHA-256 `cb29b694d19131fe46035f8c65246f3f68d3cae96ad09be81841607fa63539af`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

````lean
-- corpus-organization-transform:v1
-- Mathematical subject: Algebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.DistribNeg.Variant0b3e3dd7efacddf3649e0333c1b01123a2ffa35ce616e0001cb24900309503ee","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"0b3e3dd7efacddf3649e0333c1b01123a2ffa35ce616e0001cb24900309503ee","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.MixedSubjects.SourceCorpus.DistribNeg.Variant0b3e3dd7efacddf3649e0333c1b01123a2ffa35ce616e0001cb24900309503ee","mathematical_subject":"Foundations.MixedSubjects","original_sha256":"0b3e3dd7efacddf3649e0333c1b01123a2ffa35ce616e0001cb24900309503ee","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/Algebra/Ring/Pointwise/Finset.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2022 Yaël Dillies. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Yaël Dillies
-/
module

public import Mathlib.Algebra.Ring.Pointwise.Set
public import Mathlib.Algebra.Ring.InjSurj
public import Mathlib.Algebra.Group.Pointwise.Finset.Basic

/-!
# Pointwise operations of sets in a ring

This file proves properties of pointwise operations of sets in a ring.

## Tags

set multiplication, set addition, pointwise addition, pointwise multiplication,
pointwise subtraction
-/


namespace GRWTSK.Algebra.DistribNeg.Variant0b3e3dd7efacddf3649e0333c1b01123a2ffa35ce616e0001cb24900309503ee

@[expose] public section

assert_not_exists MulAction

open scoped Pointwise

namespace Finset
variable {α : Type*}

/-- `Finset α` has distributive negation if `α` has. -/
@[instance_reducible]
protected noncomputable def distribNeg [DecidableEq α] [Mul α] [HasDistribNeg α] :
    HasDistribNeg (Finset α) :=
  coe_injective.hasDistribNeg _ coe_neg coe_mul

scoped[Pointwise] attribute [instance] Finset.distribNeg

section Distrib
variable [DecidableEq α] [Distrib α] (s t u : Finset α)

/-!
Note that `Finset α` is not a `Distrib` because `s * t + s * u` has cross terms that `s * (t + u)`
lacks.

```lean
-- {10, 16, 18, 20, 8, 9}
#eval {1, 2} * ({3, 4} + {5, 6} : Finset ℕ)

-- {10, 11, 12, 13, 14, 15, 16, 18, 20, 8, 9}
#eval ({1, 2} : Finset ℕ) * {3, 4} + {1, 2} * {5, 6}
```
-/

lemma mul_add_subset : s * (t + u) ⊆ s * t + s * u :=
  image₂_distrib_subset_left mul_add

lemma add_mul_subset : (s + t) * u ⊆ s * u + t * u :=
  image₂_distrib_subset_right add_mul

end Distrib
end Finset
````
