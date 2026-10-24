# Complete source: GRWTSK.Algebra.UniversalAlgebra.Synonym.Variantc0a8af5840ac6314ac87a6ef55ac5972d95d93eb76e5d076be03c34bfa6c5fcd

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `fe7ead80cf81a08f3c11c9cb444b65b9a034323e` · SHA-256 `9203aead9b7a698d078685b89e78ab383a013e687d6e09d1098b2c6e69820184`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.UniversalAlgebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.UniversalAlgebra.Module.Variant1deb058f54889a62afc1beec3d47a22c8fd9a38d4fe4e8547c2e496f944fec05","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"1deb058f54889a62afc1beec3d47a22c8fd9a38d4fe4e8547c2e496f944fec05","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.GeneralAlgebra.SourceCorpus.Module.Variant1deb058f54889a62afc1beec3d47a22c8fd9a38d4fe4e8547c2e496f944fec05","mathematical_subject":"Algebra.GeneralAlgebra","original_sha256":"1deb058f54889a62afc1beec3d47a22c8fd9a38d4fe4e8547c2e496f944fec05","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Algebra/Order/Module/Synonym.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2021 Yaël Dillies. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Yaël Dillies
-/
import Mathlib.Algebra.Module.Defs
import Mathlib.Algebra.Order.GroupWithZero.Action.Synonym
import Mathlib.Algebra.Order.Ring.Synonym

/-!
# Action instances for `OrderDual`


This PR transfers group action with zero instances from a type `α` to `αᵒᵈ` and `Lex α`. Note that
the `SMul` instances are already defined in `Mathlib/Algebra/Order/Group/Synonym.lean`.

## See also

* `Mathlib/Algebra/Order/Group/Action/Synonym.lean`
* `Mathlib/Algebra/Order/GroupWithZero/Action/Synonym.lean`
-/


namespace GRWTSK.Algebra.UniversalAlgebra.Module.Variant1deb058f54889a62afc1beec3d47a22c8fd9a38d4fe4e8547c2e496f944fec05

variable {α β : Type*}

namespace OrderDual

instance instModule [Semiring α] [AddCommMonoid β] [Module α β] : Module αᵒᵈ β where
  add_smul := add_smul (R := α)
  zero_smul := zero_smul _

instance instModule' [Semiring α] [AddCommMonoid β] [Module α β] : Module α βᵒᵈ where
  add_smul := add_smul (M := β)
  zero_smul := zero_smul _

end OrderDual

namespace Lex

instance instModule [Semiring α] [AddCommMonoid β] [Module α β] : Module (Lex α) β :=
  ‹Module α β›

instance instModule' [Semiring α] [AddCommMonoid β] [Module α β] : Module α (Lex β) :=
  ‹Module α β›

end Lex
```
