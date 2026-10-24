# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.Defs.Variant1684922dba40dbcd30de2a034e42c8addcc3641a1e945d62453bf9a67a856e21

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `eec5bdee427d21c0e3ef99ceaec34cb6e047ec78` · SHA-256 `4c602a77b90ab7b773f1b82bee5d581f11200b70bfc400efc99c7cb0937636aa`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.Lattice.Variantf314b2ab05b2cc36a6b22bb31a92f6f6b0cb8b084cab103a76a4b7655d9df54c","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"f314b2ab05b2cc36a6b22bb31a92f6f6b0cb8b084cab103a76a4b7655d9df54c","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.OrderTheory.SourceCorpus.Lattice.Variantf314b2ab05b2cc36a6b22bb31a92f6f6b0cb8b084cab103a76a4b7655d9df54c","mathematical_subject":"Algebra.OrderTheory","original_sha256":"f314b2ab05b2cc36a6b22bb31a92f6f6b0cb8b084cab103a76a4b7655d9df54c","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/RingTheory/SimpleRing/Defs.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2024 Jujian Zhang. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Jujian Zhang
-/

import Mathlib.RingTheory.TwoSidedIdeal.Lattice
import Mathlib.Order.Atoms

/-! # Simple rings

A ring `R` is **simple** if it has only two two-sided ideals, namely `⊥` and `⊤`.

## Main definitions

- `IsSimpleRing`: a predicate expressing that a ring is simple.

-/



namespace GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.Lattice.Variantf314b2ab05b2cc36a6b22bb31a92f6f6b0cb8b084cab103a76a4b7655d9df54c

/--
A ring `R` is **simple** if it has only two two-sided ideals, namely `⊥` and `⊤`.
-/
@[mk_iff] class IsSimpleRing (R : Type*) [NonUnitalNonAssocRing R] : Prop where
  simple : IsSimpleOrder (TwoSidedIdeal R)

attribute [instance] IsSimpleRing.simple
```
