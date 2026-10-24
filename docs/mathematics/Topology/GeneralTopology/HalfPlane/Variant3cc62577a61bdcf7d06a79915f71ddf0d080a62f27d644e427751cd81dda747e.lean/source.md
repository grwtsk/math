# Complete source: GRWTSK.Topology.GeneralTopology.HalfPlane.Variant3cc62577a61bdcf7d06a79915f71ddf0d080a62f27d644e427751cd81dda747e

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `e6c5ca6a015a30323a83663406dc3f9e343b92e4` · SHA-256 `df47749d95fb57b5bbad7d961ec4e9df979d084bab3b70040a17d691459a066c`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Topology.GeneralTopology
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Topology.GeneralTopology.IsOpenReLtEReal.Variant51a5d8af571e1262b94eb8df2d582f9ae967f3d3bf9f058d93f5d264733bd3e4","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"51a5d8af571e1262b94eb8df2d582f9ae967f3d3bf9f058d93f5d264733bd3e4","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Topology.GeneralTopology.SourceCorpus.IsOpenReLtEReal.Variant51a5d8af571e1262b94eb8df2d582f9ae967f3d3bf9f058d93f5d264733bd3e4","mathematical_subject":"Topology.GeneralTopology","original_sha256":"51a5d8af571e1262b94eb8df2d582f9ae967f3d3bf9f058d93f5d264733bd3e4","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Analysis/Complex/HalfPlane.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2024 Michael Stoll. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Michael Stoll
-/
import Mathlib.Analysis.Complex.Basic
import Mathlib.Topology.Instances.EReal.Lemmas

/-!
# Half-planes in ℂ are open

We state that open left, right, upper and lower half-planes in the complex numbers are open sets,
where the bounding value of the real or imaginary part is given by an `EReal` `x`.
So this includes the full plane and the empty set for `x = ⊤`/`x = ⊥`.
-/


namespace GRWTSK.Topology.GeneralTopology.IsOpenReLtEReal.Variant51a5d8af571e1262b94eb8df2d582f9ae967f3d3bf9f058d93f5d264733bd3e4

namespace Complex

/-- An open left half-plane (with boundary real part given by an `EReal`) is an open set
in the complex plane. -/
lemma isOpen_re_lt_EReal (x : EReal) : IsOpen {z : ℂ | z.re < x} :=
  isOpen_lt (EReal.continuous_coe_iff.mpr continuous_re) continuous_const

/-- An open right half-plane (with boundary real part given by an `EReal`) is an open set
in the complex plane. -/
lemma isOpen_re_gt_EReal (x : EReal) : IsOpen {z : ℂ | x < z.re} :=
  isOpen_lt continuous_const <| EReal.continuous_coe_iff.mpr continuous_re

/-- An open lower half-plane (with boundary imaginary part given by an `EReal`) is an open set
in the complex plane. -/
lemma isOpen_im_lt_EReal (x : EReal) : IsOpen {z : ℂ | z.im < x} :=
  isOpen_lt (EReal.continuous_coe_iff.mpr continuous_im) continuous_const

/-- An open upper half-plane (with boundary imaginary part given by an `EReal`) is an open set
in the complex plane. -/
lemma isOpen_im_gt_EReal (x : EReal) : IsOpen {z : ℂ | x < z.im} :=
  isOpen_lt continuous_const <| EReal.continuous_coe_iff.mpr continuous_im

end Complex
```
