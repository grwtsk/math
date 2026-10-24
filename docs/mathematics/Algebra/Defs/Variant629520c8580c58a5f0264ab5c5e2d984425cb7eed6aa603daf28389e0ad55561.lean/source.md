# Complete source: GRWTSK.Algebra.Defs.Variant629520c8580c58a5f0264ab5c5e2d984425cb7eed6aa603daf28389e0ad55561

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `beee951a12933bc5e7bfc96bef1f60694aea12ec` · SHA-256 `ad8563a8f5152400ef78342dfca3edae44f141e7e022861b24c3cfe6c46a90ee`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Algebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.PrimeSpectrum.Variantd839fffd44358e9ecbebbaf94578bcb1f83215ed556e6af703287953a7032bca","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"d839fffd44358e9ecbebbaf94578bcb1f83215ed556e6af703287953a7032bca","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.RingsAndFields.SourceCorpus.PrimeSpectrum.Variantd839fffd44358e9ecbebbaf94578bcb1f83215ed556e6af703287953a7032bca","mathematical_subject":"Algebra.RingsAndFields","original_sha256":"d839fffd44358e9ecbebbaf94578bcb1f83215ed556e6af703287953a7032bca","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/RingTheory/Spectrum/Prime/Defs.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2020 Johan Commelin. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Johan Commelin, Filippo A. E. Nuccio, Andrew Yang
-/
import Mathlib.RingTheory.Ideal.Prime

/-!
# Prime spectrum of a commutative (semi)ring as a type

The prime spectrum of a commutative (semi)ring is the type of all prime ideals.

For the Zariski topology, see `Mathlib/RingTheory/Spectrum/Prime/Topology.lean`.

(It is also naturally endowed with a sheaf of rings,
which is constructed in `AlgebraicGeometry.StructureSheaf`.)

## Main definitions

* `PrimeSpectrum R`: The prime spectrum of a commutative (semi)ring `R`,
  i.e., the set of all prime ideals of `R`.
-/


namespace GRWTSK.Algebra.PrimeSpectrum.Variantd839fffd44358e9ecbebbaf94578bcb1f83215ed556e6af703287953a7032bca

/-- The prime spectrum of a commutative (semi)ring `R` is the type of all prime ideals of `R`.

It is naturally endowed with a topology (the Zariski topology),
and a sheaf of commutative rings (see `Mathlib/AlgebraicGeometry/StructureSheaf.lean`).
It is a fundamental building block in algebraic geometry. -/
@[ext]
structure PrimeSpectrum (R : Type*) [CommSemiring R] where
  asIdeal : Ideal R
  isPrime : asIdeal.IsPrime

attribute [instance] PrimeSpectrum.isPrime
```
