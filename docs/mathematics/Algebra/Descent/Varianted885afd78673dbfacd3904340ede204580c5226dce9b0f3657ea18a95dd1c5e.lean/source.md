# Complete source: GRWTSK.Algebra.Descent.Varianted885afd78673dbfacd3904340ede204580c5226dce9b0f3657ea18a95dd1c5e

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `ab699f6535b7aa7b70a295f2e1a1d2d4d3d0b5fd` · SHA-256 `05dd2c9b91a5d73ef3dcb5321de4836cc230841ffb97a992772535f0b9ae2d0c`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Algebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.Descent.Variant24cb027e07b66fdc0a15dc39c8702a92684cd7df66cfe81cea985b3f62d24629","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"24cb027e07b66fdc0a15dc39c8702a92684cd7df66cfe81cea985b3f62d24629","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.RingsAndFields.SourceCorpus.Descent.Variant24cb027e07b66fdc0a15dc39c8702a92684cd7df66cfe81cea985b3f62d24629","mathematical_subject":"Algebra.RingsAndFields","original_sha256":"24cb027e07b66fdc0a15dc39c8702a92684cd7df66cfe81cea985b3f62d24629","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Wanted/RingTheory/Etale/Descent.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2026 Christian Merten. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Christian Merten
-/
module

public import Mathlib.RingTheory.Etale.Descent


namespace GRWTSK.Algebra.Descent.Variant24cb027e07b66fdc0a15dc39c8702a92684cd7df66cfe81cea985b3f62d24629

open TensorProduct

namespace Algebra

/-
The lemma `Algebra.FormallySmooth.of_formallySmooth_tensorProduct_of_faithfullyFlat` has an
additional `Algebra.FinitePresentation` assumption, because the proof uses that a flat module
of finite presentation is projective and the former descends. This also holds without
the finite presentation assumption, but requires showing that projectivity descends
along faithfully flat base change, which is due to Raynaud and Gruson
(see https://stacks.math.columbia.edu/tag/058B).
-/

/-- Formally smooth algebras descend along faithfully flat base change. See the TODO
in the module docstring of `Mathlib/RingTheory/Etale/Descent.lean`. -/
proof_wanted FormallySmooth.of_formallySmooth_tensorProduct_of_faithfullyFlat
    {R S : Type*} [CommRing R] [CommRing S] [Algebra R S]
    (T : Type*) [CommRing T] [Algebra R T] [Module.FaithfullyFlat R T]
    [FormallySmooth T (T ⊗[R] S)] :
    FormallySmooth R S

end Algebra
```
