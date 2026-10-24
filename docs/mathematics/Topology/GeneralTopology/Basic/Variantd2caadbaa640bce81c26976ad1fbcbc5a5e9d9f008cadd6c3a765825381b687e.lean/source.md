# Complete source: GRWTSK.Topology.GeneralTopology.Basic.Variantd2caadbaa640bce81c26976ad1fbcbc5a5e9d9f008cadd6c3a765825381b687e

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `8daede96f01ac0732d6eaf25143dada5503d0394` · SHA-256 `88aac4144648d7fa8760f12a5af3094c6cd323bfdfccf23d415799e1a0013284`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Topology.GeneralTopology
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Topology.GeneralTopology.SpectralSpace.Variant691f5687d7d76bf62bd5c850c5e364a3fe092d48bc4e1ba221b928bdf78eb6ae","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"691f5687d7d76bf62bd5c850c5e364a3fe092d48bc4e1ba221b928bdf78eb6ae","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Topology.GeneralTopology.SourceCorpus.SpectralSpace.Variant691f5687d7d76bf62bd5c850c5e364a3fe092d48bc4e1ba221b928bdf78eb6ae","mathematical_subject":"Topology.GeneralTopology","original_sha256":"691f5687d7d76bf62bd5c850c5e364a3fe092d48bc4e1ba221b928bdf78eb6ae","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Topology/Spectral/Basic.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2025 Fangming Li. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Fangming Li
-/
import Mathlib.Topology.Sober
import Mathlib.Topology.Spectral.Prespectral

/-!
# Spectral spaces

A topological space is spectral if it is T0, compact, sober, quasi-separated, and its compact open
subsets form an open basis. Prime spectra of commutative semirings are spectral spaces.
-/


namespace GRWTSK.Topology.GeneralTopology.SpectralSpace.Variant691f5687d7d76bf62bd5c850c5e364a3fe092d48bc4e1ba221b928bdf78eb6ae

variable (α : Type*) [TopologicalSpace α]

/--
A topological space is spectral if it is T0, compact, sober, quasi-separated, and its compact open
subsets form an open basis.
-/
@[stacks 08YG]
class SpectralSpace : Prop extends
  T0Space α, CompactSpace α, QuasiSober α, QuasiSeparatedSpace α, PrespectralSpace α
```
