# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.KrullDimension.Variantf569ed12312babb8e5b49cb7b5a25b3ae2ee06f62dd3ec2619fc5a35be2fe893

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `9f87a594a5f158c5f924ee96070805da0826123f` · SHA-256 `ac831164438e6b072a09b5d45cb8d2a0791e1e39f39d41804e429360c1128aab`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.Card.Varianta3e360aee3edde09487f72b0d1715488a25fa9d5479fe81a86b99172485045f9","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"a3e360aee3edde09487f72b0d1715488a25fa9d5479fe81a86b99172485045f9","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.OrderTheory.SourceCorpus.Card.Varianta3e360aee3edde09487f72b0d1715488a25fa9d5479fe81a86b99172485045f9","mathematical_subject":"Algebra.OrderTheory","original_sha256":"a3e360aee3edde09487f72b0d1715488a25fa9d5479fe81a86b99172485045f9","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Wanted/Order/KrullDimension.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2024 Joachim Breitner. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Joachim Breitner
-/
module

public import Mathlib.Data.Set.Card
public import Mathlib.Order.KrullDimension


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.Card.Varianta3e360aee3edde09487f72b0d1715488a25fa9d5479fe81a86b99172485045f9

namespace Order

/-
These two lemmas could possibly be used to simplify the calculations in
the `Concrete calculations` section of `Mathlib/Order/KrullDimension.lean`, especially once
the `Set.encard` api is richer.
-/

proof_wanted height_of_linearOrder {α : Type*} [LinearOrder α] (a : α) :
  height a = (Set.Iio a).encard

proof_wanted coheight_of_linearOrder {α : Type*} [LinearOrder α] (a : α) :
  coheight a = (Set.Ioi a).encard

end Order
```
