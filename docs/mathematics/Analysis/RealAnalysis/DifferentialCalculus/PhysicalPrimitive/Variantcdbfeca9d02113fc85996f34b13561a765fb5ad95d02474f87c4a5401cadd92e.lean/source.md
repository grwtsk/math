# Complete source: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.PhysicalPrimitive.Variantcdbfeca9d02113fc85996f34b13561a765fb5ad95d02474f87c4a5401cadd92e

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `919f0695aad146f01e822a3688600557a37a309a` · SHA-256 `c2d5a660c470d0e9a60bd3866c2e6ac1c6efbdd90eb814e24a15a921ecba553a`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.RealAnalysis.DifferentialCalculus
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.Primitive.Variant64c0f9d13507138898f4b0ba76442e7f6bb07a2bd9b8d8b5684bf0225c3db842","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"64c0f9d13507138898f4b0ba76442e7f6bb07a2bd9b8d8b5684bf0225c3db842","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.Calculus.SourceCorpus.Primitive.Variant64c0f9d13507138898f4b0ba76442e7f6bb07a2bd9b8d8b5684bf0225c3db842","mathematical_subject":"Analysis.Calculus","original_sha256":"64c0f9d13507138898f4b0ba76442e7f6bb07a2bd9b8d8b5684bf0225c3db842","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/scratch/rh-packet-20261005/peano-worker/PhysicalPrimitive.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FormalResearch.RiemannHypothesis.SourceBumpPeano


namespace GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.Primitive.Variant64c0f9d13507138898f4b0ba76442e7f6bb07a2bd9b8d8b5684bf0225c3db842

set_option autoImplicit false
noncomputable section

namespace FormalResearch.RiemannHypothesis.SourceBumpPeanoScratch

open SourceBumpAutocorrelation SourceBumpPeano

def primitive (f0 f1 f2 : ℝ → ℝ) (Z t : ℝ) : ℝ :=
  Real.exp (t / 2) / Z * (f2 t - f1 t + f0 t / 4)

def primitiveSlope (f0 f1 f2 f3 : ℝ → ℝ) (Z t : ℝ) : ℝ :=
  Real.exp (t / 2) / Z * (f3 t - f2 t / 2 - f1 t / 4 + f0 t / 8)

theorem primitive_hasDerivAt {f0 f1 f2 f3 : ℝ → ℝ} {Z t : ℝ}
    (h0 : HasDerivAt f0 (f1 t) t) (h1 : HasDerivAt f1 (f2 t) t)
    (h2 : HasDerivAt f2 (f3 t) t) :
    HasDerivAt (primitive f0 f1 f2 Z) (primitiveSlope f0 f1 f2 f3 Z t) t := by
  have he := (((hasDerivAt_id t).div_const (2 : ℝ)).exp.div_const Z)
  have hn := he.mul ((h2.sub h1).add (h0.div_const 4))
  convert hn using 1
  · rfl
  · dsimp [primitiveSlope]
    ring

theorem primitiveSlope_hasDerivAt {f0 f1 f2 f3 f4 : ℝ → ℝ} {Z t : ℝ}
    (h0 : HasDerivAt f0 (f1 t) t) (h1 : HasDerivAt f1 (f2 t) t)
    (h2 : HasDerivAt f2 (f3 t) t) (h3 : HasDerivAt f3 (f4 t) t) :
    HasDerivAt (primitiveSlope f0 f1 f2 f3 Z)
      (Real.exp (t / 2) / Z * (f4 t - f2 t / 2 + f0 t / 16)) t := by
  have he := (((hasDerivAt_id t).div_const (2 : ℝ)).exp.div_const Z)
  have hn := he.mul (((h3.sub (h2.div_const 2)).sub (h1.div_const 4)).add (h0.div_const 8))
  convert hn using 1
  · rfl
  · ring

#check ContDiff.deriv'
#check ContDiff.iterate_deriv
#check ContDiff.differentiable
#check DifferentiableAt.hasDerivAt

end FormalResearch.RiemannHypothesis.SourceBumpPeanoScratch
```
