# Complete source: GRWTSK.Analysis.FunctionalAnalysis.BanachSpaces.NormedSpaces.Compactification.Variant4bf67945032ebf4f2c1b9f2e75ae60ab454e92610d93e4bab2db71bd96fac6b5

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `fa9fe043e52110bc2afb9e8b9b95ac3a89475427` · SHA-256 `2f1dd5dd98be2b792cc865ec87fc85e87ca0471948bb51cd9fd61328e0d600df`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.FunctionalAnalysis.BanachSpaces.NormedSpaces
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.FunctionalAnalysis.BanachSpaces.NormedSpaces.CompactificationCertificate.Variant6ae7c83ac2fd4605c42f069f7a72ad10aace55f9a93b26278abe4db058c5bb05","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"6ae7c83ac2fd4605c42f069f7a72ad10aace55f9a93b26278abe4db058c5bb05","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.NormedSpaces.SourceCorpus.CompactificationCertificate.Variant6ae7c83ac2fd4605c42f069f7a72ad10aace55f9a93b26278abe4db058c5bb05","mathematical_subject":"Analysis.NormedSpaces","original_sha256":"6ae7c83ac2fd4605c42f069f7a72ad10aace55f9a93b26278abe4db058c5bb05","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/Mathematics/AbelReynolds/Compactification.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.AbelReynolds.Symmetry
import Mathlib.Analysis.Normed.Module.Basic
import Mathlib.Analysis.Normed.Operator.LinearIsometry

/-!
# Equivariant spheroidal compactification

The compactification is a separate geometric realization.  Its symmetry law
is carried explicitly; proximity to the compactified fixed locus is never
promoted to algebraic fixedness.
-/


namespace GRWTSK.Analysis.FunctionalAnalysis.BanachSpaces.NormedSpaces.CompactificationCertificate.Variant6ae7c83ac2fd4605c42f069f7a72ad10aace55f9a93b26278abe4db058c5bb05

namespace Mathematics.AbelReynolds

noncomputable def stereographicCompactify
    {W : Type*}
    [NormedAddCommGroup W]
    [NormedSpace ℝ W]
    (point : W) : W × ℝ :=
  let denominator := 1 + ‖point‖ ^ 2
  ((2 / denominator) • point,
    (‖point‖ ^ 2 - 1) / denominator)

def liftCompactifiedSymmetry
    {W : Type*}
    [NormedAddCommGroup W]
    [NormedSpace ℝ W]
    (symmetry : W ≃ₗᵢ[ℝ] W) :
    W × ℝ → W × ℝ :=
  fun point => (symmetry point.1, point.2)

theorem stereographicCompactify_equivariant
    {W : Type*}
    [NormedAddCommGroup W]
    [NormedSpace ℝ W]
    (symmetry : W ≃ₗᵢ[ℝ] W)
    (point : W) :
    liftCompactifiedSymmetry symmetry
        (stereographicCompactify point) =
      stereographicCompactify (symmetry point) := by
  ext <;>
    simp [liftCompactifiedSymmetry,
      stereographicCompactify]

structure CompactificationCertificate
    (Affine Compact : Type*) where
  compactify : Affine → Compact
  affineSymmetry : Involution Affine
  compactSymmetry : Involution Compact
  equivariant :
    ∀ value,
      compactSymmetry.act (compactify value) =
        compactify (affineSymmetry.act value)
  reflectsEquality : Function.Injective compactify

theorem CompactificationCertificate.reflectsFixedness
    {Affine Compact : Type*}
    (certificate :
      CompactificationCertificate Affine Compact)
    {value : Affine}
    (fixed :
      certificate.compactSymmetry.Fixed
        (certificate.compactify value)) :
    certificate.affineSymmetry.Fixed value := by
  apply certificate.reflectsEquality
  simpa [Involution.Fixed] using
    certificate.equivariant value |>.symm.trans fixed

end Mathematics.AbelReynolds
```
