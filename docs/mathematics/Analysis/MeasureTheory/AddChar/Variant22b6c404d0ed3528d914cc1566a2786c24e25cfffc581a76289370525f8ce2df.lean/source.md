# Complete source: GRWTSK.Analysis.MeasureTheory.AddChar.Variant22b6c404d0ed3528d914cc1566a2786c24e25cfffc581a76289370525f8ce2df

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `557246eefad904604d2b3baa9f31964464144075` · SHA-256 `5c3b17420fb1132f4010a403ea251663ed8569178afb57f7edcb2508cfa0ba93`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.MeasureTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.MeasureTheory.AddChar.Variant764447450c4739d58278931f7a65d8d092de3e52221a0ed1f6af551313b6798c","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"764447450c4739d58278931f7a65d8d092de3e52221a0ed1f6af551313b6798c","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.MeasureTheory.SourceCorpus.AddChar.Variant764447450c4739d58278931f7a65d8d092de3e52221a0ed1f6af551313b6798c","mathematical_subject":"Analysis.MeasureTheory","original_sha256":"764447450c4739d58278931f7a65d8d092de3e52221a0ed1f6af551313b6798c","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/MeasureTheory/Constructions/AddChar.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2024 Yaël Dillies. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Yaël Dillies
-/
import Mathlib.Algebra.Group.AddChar
import Mathlib.MeasureTheory.MeasurableSpace.Defs

/-!
# Measurable space instance for additive characters

This file endows `AddChar A M` with the discrete measurable space structure whenever `A` is a finite
discrete measurable space.

## TODO

Give the definition in the correct generality.
-/


namespace GRWTSK.Analysis.MeasureTheory.AddChar.Variant764447450c4739d58278931f7a65d8d092de3e52221a0ed1f6af551313b6798c

namespace AddChar
variable {A M : Type*} [AddMonoid A] [Monoid M] [MeasurableSpace A] [MeasurableSpace M]

@[nolint unusedArguments]
instance instMeasurableSpace [DiscreteMeasurableSpace A] [Finite A] :
    MeasurableSpace (AddChar A M) :=
  ⊤

instance instDiscreteMeasurableSpace [DiscreteMeasurableSpace A] [Finite A] :
    DiscreteMeasurableSpace (AddChar A M) :=
  ⟨fun _ ↦ trivial⟩

end AddChar
```
