# Complete source: GRWTSK.Algebra.LinearAlgebra.Bilinear.Variant874e7f55293aee066bc6858185e43be97785c67ffe86a792febe86fc97af215f

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `0600866b39399920eb7d40a391e6a558becf4fa8` · SHA-256 `9b7e1e31f63b7a8fb3ab6b42115c20452d6e5dcbafeba56220a55b439406b7bc`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.LinearAlgebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.LinearAlgebra.FGMap.Variant8b65f30fb1153cb2a201370535ed57af7c3b4ed6432e92cf55ca558975f20319","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"8b65f30fb1153cb2a201370535ed57af7c3b4ed6432e92cf55ca558975f20319","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.LinearAlgebra.SourceCorpus.FGMap.Variant8b65f30fb1153cb2a201370535ed57af7c3b4ed6432e92cf55ca558975f20319","mathematical_subject":"Algebra.LinearAlgebra","original_sha256":"8b65f30fb1153cb2a201370535ed57af7c3b4ed6432e92cf55ca558975f20319","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/RingTheory/Finiteness/Bilinear.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2020 Johan Commelin. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Johan Commelin
-/
import Mathlib.RingTheory.Finiteness.Defs
import Mathlib.Algebra.Module.Submodule.Bilinear

/-!
# Finitely generated submodules and bilinear maps

-/


namespace GRWTSK.Algebra.LinearAlgebra.FGMap.Variant8b65f30fb1153cb2a201370535ed57af7c3b4ed6432e92cf55ca558975f20319

open Function (Surjective)
open Finsupp

namespace Submodule

section Map₂

variable {R M N P : Type*}
variable [CommSemiring R] [AddCommMonoid M] [AddCommMonoid N] [AddCommMonoid P]
variable [Module R M] [Module R N] [Module R P]

theorem FG.map₂ (f : M →ₗ[R] N →ₗ[R] P) {p : Submodule R M} {q : Submodule R N} (hp : p.FG)
    (hq : q.FG) : (map₂ f p q).FG :=
  let ⟨sm, hfm, hm⟩ := fg_def.1 hp
  let ⟨sn, hfn, hn⟩ := fg_def.1 hq
  fg_def.2
    ⟨Set.image2 (fun m n => f m n) sm sn, hfm.image2 _ hfn,
      map₂_span_span R f sm sn ▸ hm ▸ hn ▸ rfl⟩

end Map₂

end Submodule
```
