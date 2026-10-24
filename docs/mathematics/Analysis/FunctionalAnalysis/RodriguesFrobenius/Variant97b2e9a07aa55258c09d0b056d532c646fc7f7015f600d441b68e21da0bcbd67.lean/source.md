# Complete source: GRWTSK.Analysis.FunctionalAnalysis.RodriguesFrobenius.Variant97b2e9a07aa55258c09d0b056d532c646fc7f7015f600d441b68e21da0bcbd67

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `bedeb4fcdaf7fff645e3aeb1625cfe8c915b6da0` · SHA-256 `351e499ad39fcac3bbc53778cfe34721255340e958ca04a57be6227e353e121a`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.FunctionalAnalysis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.FunctionalAnalysis.SkewAdjointGenerator.Variant09716f9978e1433e08f7b10f7e906a9a4cf3c8431406286844a567cc0326c012","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"09716f9978e1433e08f7b10f7e906a9a4cf3c8431406286844a567cc0326c012","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.FunctionalAnalysis.SourceCorpus.SkewAdjointGenerator.Variant09716f9978e1433e08f7b10f7e906a9a4cf3c8431406286844a567cc0326c012","mathematical_subject":"Analysis.FunctionalAnalysis","original_sha256":"09716f9978e1433e08f7b10f7e906a9a4cf3c8431406286844a567cc0326c012","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/Mathematics/Operator/RodriguesFrobenius.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.Core.SemanticIdentity
import Mathlib.Analysis.InnerProductSpace.Basic
import Mathlib.Analysis.Normed.Operator.LinearIsometry

/-!
# Certified Rodrigues--Frobenius transport

Geometric rotation and arithmetic Frobenius are separate operators.  Their
composition is semilinear because the Frobenius map carries the scalar twist
and the Rodrigues realization is an ordinary real-linear isometry.

`GeneralizedRodrigues` stores a certified isometric realization of a declared
skew-adjoint generator.  This module deliberately does not manufacture a
matrix exponential from a digest or numerical approximation.
-/


namespace GRWTSK.Analysis.FunctionalAnalysis.SkewAdjointGenerator.Variant09716f9978e1433e08f7b10f7e906a9a4cf3c8431406286844a567cc0326c012

namespace Mathematics.Operator

universe u v

variable
    {H : Type u}
    [NormedAddCommGroup H]
    [InnerProductSpace ℝ H]

/-- A continuous real-linear generator with the defining skew-adjoint law. -/
structure SkewAdjointGenerator (H : Type u)
    [NormedAddCommGroup H]
    [InnerProductSpace ℝ H] where
  operator : H →L[ℝ] H
  skewAdjoint :
    ∀ left right,
      inner ℝ (operator left) right =
        -(inner ℝ left (operator right))

/--
A proof-carrying Rodrigues realization.  The isometry is data; the certificate
binds it to the independently checked functional-calculus construction.
-/
structure GeneralizedRodrigues (H : Type u)
    [NormedAddCommGroup H]
    [InnerProductSpace ℝ H] where
  generator : SkewAdjointGenerator H
  time : ℝ
  rotation : H ≃ₗᵢ[ℝ] H
  realizationCertificate : ObjectAddress

/-- The executable geometric transport is the certified linear isometry. -/
def generalizedRodrigues
    (transport : GeneralizedRodrigues H) :
    H ≃ₗᵢ[ℝ] H :=
  transport.rotation

/-- Certified Rodrigues transport preserves the Hilbert norm exactly. -/
theorem generalizedRodrigues_isometry
    (transport : GeneralizedRodrigues H)
    (value : H) :
    ‖generalizedRodrigues transport value‖ = ‖value‖ :=
  transport.rotation.norm_map value

/-- An additive Frobenius lift with its exact scalar-semilinearity law. -/
structure FrobeniusSemilinear
    (Scalar : Type u)
    (ModuleCarrier : Type v)
    [Semiring Scalar]
    [AddCommMonoid ModuleCarrier]
    [Module Scalar ModuleCarrier] where
  scalar : Scalar →+* Scalar
  map : ModuleCarrier →+ ModuleCarrier
  map_smul :
    ∀ coefficient value,
      map (coefficient • value) =
        scalar coefficient • map value

/--
Pairing compatibility is retained as an equation over the actual transported
vectors, not as an unattached digest.
-/
structure FrobeniusPairing
    (frobenius : FrobeniusSemilinear ℝ H)
    (transport : H → H) where
  compatible :
    ∀ left right,
      inner ℝ (transport left) (transport right) =
        frobenius.scalar (inner ℝ left right)

/-- One fiberwise Rodrigues--Frobenius operator. -/
structure RodriguesFrobenius (H : Type u)
    [NormedAddCommGroup H]
    [InnerProductSpace ℝ H] where
  rodrigues : GeneralizedRodrigues H
  frobenius : FrobeniusSemilinear ℝ H
  pairing :
    FrobeniusPairing frobenius
      (fun value ↦ rodrigues.rotation (frobenius.map value))
  operatorCertificate : ObjectAddress

/-- Arithmetic pullback remains separate from geometric rotation. -/
def frobeniusPullback
    (operator : RodriguesFrobenius H) :
    H → H :=
  operator.frobenius.map

/-- Geometric rotation after arithmetic Frobenius pullback. -/
def rodriguesFrobenius
    (operator : RodriguesFrobenius H) :
    H → H :=
  fun value ↦
    operator.rodrigues.rotation
      (operator.frobenius.map value)

/-- The combined transport carries the declared Frobenius scalar twist. -/
theorem rodriguesFrobenius_semilinear
    (operator : RodriguesFrobenius H)
    (coefficient : ℝ)
    (value : H) :
    rodriguesFrobenius operator (coefficient • value) =
      operator.frobenius.scalar coefficient •
        rodriguesFrobenius operator value := by
  unfold rodriguesFrobenius
  rw [operator.frobenius.map_smul]
  exact operator.rodrigues.rotation.map_smul _ _

/-- The declared Frobenius pairing law holds for the combined operator. -/
theorem tensorRepresentation_preserves_frobenius
    (operator : RodriguesFrobenius H)
    (left right : H) :
    inner ℝ
        (rodriguesFrobenius operator left)
        (rodriguesFrobenius operator right) =
      operator.frobenius.scalar (inner ℝ left right) :=
  operator.pairing.compatible left right

/--
Restriction naturality between two fibers.  The commuting square is an exact
equation over the maps, not an inferred match between labels.
-/
structure RodriguesFrobeniusNaturality
    {Source : Type u}
    {Target : Type v}
    [NormedAddCommGroup Source]
    [InnerProductSpace ℝ Source]
    [NormedAddCommGroup Target]
    [InnerProductSpace ℝ Target]
    (source : RodriguesFrobenius Source)
    (target : RodriguesFrobenius Target) where
  restrict : Source →L[ℝ] Target
  natural :
    ∀ value,
      restrict (rodriguesFrobenius source value) =
        rodriguesFrobenius target (restrict value)

/-- The stored commuting square is the transport naturality theorem. -/
theorem rodriguesFrobenius_natural
    {Source : Type u}
    {Target : Type v}
    [NormedAddCommGroup Source]
    [InnerProductSpace ℝ Source]
    [NormedAddCommGroup Target]
    [InnerProductSpace ℝ Target]
    {source : RodriguesFrobenius Source}
    {target : RodriguesFrobenius Target}
    (naturality : RodriguesFrobeniusNaturality source target)
    (value : Source) :
    naturality.restrict (rodriguesFrobenius source value) =
      rodriguesFrobenius target (naturality.restrict value) :=
  naturality.natural value

end Mathematics.Operator
```
