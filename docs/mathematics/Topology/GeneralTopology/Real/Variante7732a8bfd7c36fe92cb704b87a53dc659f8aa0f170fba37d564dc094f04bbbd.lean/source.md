# Complete source: GRWTSK.Topology.GeneralTopology.Real.Variante7732a8bfd7c36fe92cb704b87a53dc659f8aa0f170fba37d564dc094f04bbbd

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `09205998d054c3fa440fb617128ea145d8790fa0` · SHA-256 `8a6fb12b5aef423ff16cea9700a918c7c753744a0c346627a5f3b9b4ad2f3178`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Topology.GeneralTopology
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Topology.GeneralTopology.Star.Variant853476daf48294ac91190c4739c529642ebeb559c8fd15065a6c5feab96833cb","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"853476daf48294ac91190c4739c529642ebeb559c8fd15065a6c5feab96833cb","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Topology.GeneralTopology.SourceCorpus.Star.Variant853476daf48294ac91190c4739c529642ebeb559c8fd15065a6c5feab96833cb","mathematical_subject":"Topology.GeneralTopology","original_sha256":"853476daf48294ac91190c4739c529642ebeb559c8fd15065a6c5feab96833cb","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/Topology/Algebra/Star/Real.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2017 Johannes Hölzl. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Johannes Hölzl, Mario Carneiro
-/
module

public import Mathlib.Basic.NNReal.Star
public import Mathlib.Topology.Algebra.Star
public import Mathlib.Topology.MetricSpace.Pseudo.Constructions

/-!
# Topological properties of conjugation on ℝ
-/


namespace GRWTSK.Topology.GeneralTopology.Star.Variant853476daf48294ac91190c4739c529642ebeb559c8fd15065a6c5feab96833cb

public section

assert_not_exists IsTopologicalRing UniformContinuousConstSMul UniformOnFun

noncomputable section

instance : ContinuousStar ℝ := ⟨continuous_id⟩

namespace NNReal

instance : ContinuousStar ℝ≥0 where
  continuous_star := continuous_id

end NNReal
```
