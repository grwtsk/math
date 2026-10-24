# Complete source: GRWTSK.Algebra.LinearAlgebra.Projective.Variant98e4d2149fcbc90ff8a7b7bc6b5e10257adf9a36f251155d72e0379edf0522d8

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `b9463640b8b3c4a30eece3a6424d9d6c6cc62dd2` · SHA-256 `eb2ea6a2c354a6124a03f655a8afc82d78ca31cc172c3831b09608617c4440f2`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.LinearAlgebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.LinearAlgebra.ExistsCompEqIdOfProjective.Variant8a29b1809ba019ebef79124a0270b093313d6e850d1b41f9b1d10c6265b5fb94","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"8a29b1809ba019ebef79124a0270b093313d6e850d1b41f9b1d10c6265b5fb94","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.LinearAlgebra.SourceCorpus.ExistsCompEqIdOfProjective.Variant8a29b1809ba019ebef79124a0270b093313d6e850d1b41f9b1d10c6265b5fb94","mathematical_subject":"Algebra.LinearAlgebra","original_sha256":"8a29b1809ba019ebef79124a0270b093313d6e850d1b41f9b1d10c6265b5fb94","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/RingTheory/Finiteness/Projective.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2020 Johan Commelin. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Johan Commelin
-/
module

public import Mathlib.Algebra.Module.Projective
public import Mathlib.RingTheory.Finiteness.Cardinality

/-!
# Finite and projective modules

-/


namespace GRWTSK.Algebra.LinearAlgebra.ExistsCompEqIdOfProjective.Variant8a29b1809ba019ebef79124a0270b093313d6e850d1b41f9b1d10c6265b5fb94

public section

open Function (Surjective)

namespace Module

namespace Finite

variable {R M : Type*}
variable [Semiring R] [AddCommMonoid M] [Module R M]

variable (R M) in
theorem exists_comp_eq_id_of_projective [Module.Finite R M] [Projective R M] :
    ∃ (n : ℕ) (f : (Fin n → R) →ₗ[R] M) (g : M →ₗ[R] Fin n → R),
      Function.Surjective f ∧ Function.Injective g ∧ f ∘ₗ g = .id :=
  have ⟨n, f, surj⟩ := exists_fin' R M
  have ⟨g, hfg⟩ := Module.projective_lifting_property f .id surj
  ⟨n, f, g, surj, LinearMap.injective_of_comp_eq_id _ _ hfg, hfg⟩

end Finite

end Module
```
