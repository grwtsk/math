# Complete source: GRWTSK.Algebra.Order.Variant916b9eaaa366e0d3f23699325512ac75834d0c4b116a64c715aa83fdab662fd0

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `311201f66a0355b8e826fd88432c35d2d307d47e` · SHA-256 `cf79cdb858b15ed36ce94395b45602282f367a908c3e43f62130935b76e20819`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Algebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.Subalgebra.Variantfff2528d433bae5630b231a0933b022696ddbcbbb94bf2ccc20a57d23d7dc0e5","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"fff2528d433bae5630b231a0933b022696ddbcbbb94bf2ccc20a57d23d7dc0e5","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.RingsAndFields.SourceCorpus.Subalgebra.Variantfff2528d433bae5630b231a0933b022696ddbcbbb94bf2ccc20a57d23d7dc0e5","mathematical_subject":"Algebra.RingsAndFields","original_sha256":"fff2528d433bae5630b231a0933b022696ddbcbbb94bf2ccc20a57d23d7dc0e5","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Algebra/Algebra/Subalgebra/Order.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2021 Damiano Testa. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Damiano Testa
-/

import Mathlib.Algebra.Algebra.Subalgebra.Basic
import Mathlib.Algebra.Module.Submodule.Order
import Mathlib.Algebra.Ring.Subsemiring.Order

/-!
# Order instances on subalgebras
-/


namespace GRWTSK.Algebra.Subalgebra.Variantfff2528d433bae5630b231a0933b022696ddbcbbb94bf2ccc20a57d23d7dc0e5

namespace Subalgebra

variable {R A : Type*}

instance toIsOrderedRing [CommSemiring R] [Semiring A] [PartialOrder A] [IsOrderedRing A]
    [Algebra R A] (S : Subalgebra R A) : IsOrderedRing S :=
  S.toSubsemiring.toIsOrderedRing

instance toIsStrictOrderedRing [CommSemiring R] [Semiring A] [PartialOrder A]
    [IsStrictOrderedRing A] [Algebra R A] (S : Subalgebra R A) : IsStrictOrderedRing S :=
  S.toSubsemiring.toIsStrictOrderedRing

end Subalgebra
```
