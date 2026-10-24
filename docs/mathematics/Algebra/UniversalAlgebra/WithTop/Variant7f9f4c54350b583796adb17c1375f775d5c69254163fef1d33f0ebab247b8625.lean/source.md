# Complete source: GRWTSK.Algebra.UniversalAlgebra.WithTop.Variant7f9f4c54350b583796adb17c1375f775d5c69254163fef1d33f0ebab247b8625

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `361af43094fad6f37eb2810cf9a9d4feb155f9f3` · SHA-256 `184d971b419dad9d36e40c067c6514d19b9c43a19adec8d2a5a0988df3ba7484`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.UniversalAlgebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.UniversalAlgebra.NatCastWithTop.Variantd9d3f565bbcd021e31609119a664c42d0a0729bf61121402252b4773ab57f913","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"d9d3f565bbcd021e31609119a664c42d0a0729bf61121402252b4773ab57f913","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.GeneralAlgebra.SourceCorpus.NatCastWithTop.Variantd9d3f565bbcd021e31609119a664c42d0a0729bf61121402252b4773ab57f913","mathematical_subject":"Algebra.GeneralAlgebra","original_sha256":"d9d3f565bbcd021e31609119a664c42d0a0729bf61121402252b4773ab57f913","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/Data/Nat/Cast/WithTop.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2014 Mario Carneiro. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Mario Carneiro
-/
module

public import Mathlib.Algebra.Order.Monoid.Unbundled.WithTop

/-!
# Lemma about the coercion `ℕ → WithBot ℕ`.

An orphaned lemma about casting from `ℕ` to `WithBot ℕ`,
exiled here during the port to minimize imports of `Algebra.Order.Ring.Rat`.
-/


namespace GRWTSK.Algebra.UniversalAlgebra.NatCastWithTop.Variantd9d3f565bbcd021e31609119a664c42d0a0729bf61121402252b4773ab57f913

public section

instance : WellFoundedRelation (WithTop ℕ) := WellFoundedLT.toWellFoundedRelation

theorem Nat.cast_withTop (n : ℕ) : Nat.cast n = WithTop.some n :=
  rfl

theorem Nat.cast_withBot (n : ℕ) : Nat.cast n = WithBot.some n :=
  rfl
```
