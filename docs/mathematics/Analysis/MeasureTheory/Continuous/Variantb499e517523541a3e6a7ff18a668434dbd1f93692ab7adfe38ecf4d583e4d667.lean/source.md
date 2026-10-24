# Complete source: GRWTSK.Analysis.MeasureTheory.Continuous.Variantb499e517523541a3e6a7ff18a668434dbd1f93692ab7adfe38ecf4d583e4d667

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `1be3c38d4ae8bca5ba9f25d5036c812728a5ff86` · SHA-256 `1542d560736871e91873692733fe647ee51b7109f8eaf95c3974e30d5cc57247`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.MeasureTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.MeasureTheory.DomAct.Variant552e97b63b7e9998938a5b68396b739e5e11e8b957b15f4a999485e740f1586f","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"552e97b63b7e9998938a5b68396b739e5e11e8b957b15f4a999485e740f1586f","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.MeasureTheory.SourceCorpus.DomAct.Variant552e97b63b7e9998938a5b68396b739e5e11e8b957b15f4a999485e740f1586f","mathematical_subject":"Analysis.MeasureTheory","original_sha256":"552e97b63b7e9998938a5b68396b739e5e11e8b957b15f4a999485e740f1586f","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/MeasureTheory/Function/LpSpace/DomAct/Continuous.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2024 Yury Kudryashov. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Yury Kudryashov
-/
import Mathlib.MeasureTheory.Function.LpSpace.DomAct.Basic
import Mathlib.MeasureTheory.Function.LpSpace.ContinuousCompMeasurePreserving
import Mathlib.Topology.Algebra.Constructions.DomMulAct

/-!
# Continuity of the action of `Mᵈᵐᵃ` on `MeasureSpace.Lp E p μ`

In this file we prove that under certain conditions,
the action of `Mᵈᵐᵃ` on `MeasureTheory.Lp E p μ` is continuous in both variables.

Recall that `Mᵈᵐᵃ` acts on `MeasureTheory.Lp E p μ`
by `mk c • f = MeasureTheory.Lp.compMeasurePreserving (c • ·) _ f`.
This action is defined, if `M` acts on `X` by mesaure preserving maps.

If `M` acts on `X` by continuous maps
preserving a locally finite measure
which is inner regular for finite measure sets with respect to compact sets,
then the action of `Mᵈᵐᵃ` on `Lp E p μ` described above, `1 ≤ p < ∞`,
is continuous in both arguments.

In particular, it applies to the case when `X = M` is a locally compact topological group,
and `μ` is the Haar measure.

## Tags

measure theory, group action, domain action, continuous action, Lp space
-/


namespace GRWTSK.Analysis.MeasureTheory.DomAct.Variant552e97b63b7e9998938a5b68396b739e5e11e8b957b15f4a999485e740f1586f

open scoped ENNReal
open DomMulAct

namespace MeasureTheory

variable {X M E : Type*}
  [TopologicalSpace X] [R1Space X] [MeasurableSpace X] [BorelSpace X]
  [Monoid M] [TopologicalSpace M] [MeasurableSpace M] [OpensMeasurableSpace M]
  [SMul M X] [ContinuousSMul M X]
  [NormedAddCommGroup E]
  {μ : Measure X} [IsLocallyFiniteMeasure μ] [μ.InnerRegularCompactLTTop]
  [SMulInvariantMeasure M X μ]
  {p : ℝ≥0∞} [Fact (1 ≤ p)] [hp : Fact (p ≠ ∞)]

@[to_additive]
instance Lp.instContinuousSMulDomMulAct : ContinuousSMul Mᵈᵐᵃ (Lp E p μ) where
  continuous_smul :=
    let g : C(Mᵈᵐᵃ × Lp E p μ, C(X, X)) :=
      (ContinuousMap.mk (fun a : M × X ↦ a.1 • a.2) continuous_smul).curry.comp <|
        .comp (.mk DomMulAct.mk.symm) ContinuousMap.fst
    continuous_snd.compMeasurePreservingLp g.continuous _ Fact.out

end MeasureTheory
```
