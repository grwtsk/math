# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.SetTheory.Cardinal.Variant789e1c4970fced6e5c53223e0413b4cce596cf9512b6dd5a348e60b1bd488ada

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `29cdd73081c738bec0df8b045fb77837e137c515` · SHA-256 `70bd246de5c029521cfb779aa38e2898aefb62bdb10f3231c301b0720ac9891c`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.SetTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.SetTheory.CardinalMkRat.Variantca9aaeb36925ea15741bb6f06795d460621cbac7e4c5d81c82e953f747916a8f","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"ca9aaeb36925ea15741bb6f06795d460621cbac7e4c5d81c82e953f747916a8f","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Logic.SetTheory.SourceCorpus.CardinalMkRat.Variantca9aaeb36925ea15741bb6f06795d460621cbac7e4c5d81c82e953f747916a8f","mathematical_subject":"Logic.SetTheory","original_sha256":"ca9aaeb36925ea15741bb6f06795d460621cbac7e4c5d81c82e953f747916a8f","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Data/Rat/Cardinal.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2019 Chris Hughes. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Chris Hughes, Floris Van Doorn
-/
import Mathlib.Algebra.CharZero.Infinite
import Mathlib.Algebra.Ring.Rat
import Mathlib.Data.Rat.Encodable
import Mathlib.SetTheory.Cardinal.Basic

/-!
# Cardinality of ℚ

This file proves that the Cardinality of ℚ is ℵ₀
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.SetTheory.CardinalMkRat.Variantca9aaeb36925ea15741bb6f06795d460621cbac7e4c5d81c82e953f747916a8f

assert_not_exists Module Field

open Cardinal

theorem Cardinal.mkRat : #ℚ = ℵ₀ := mk_eq_aleph0 ℚ
```
