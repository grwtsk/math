# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.SymmetryLayers.Variant8dd3de33eee18a53a3e378f188b4e418fec24fed022af336258218e813101e0f

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `67690ebadfff05cddcb0ad581bc7ab2cc7c885af` · SHA-256 `271f5001ad91ac1bbd16527fd747c5a446a8dfdc9b683d27a013be0b5c94adbf`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.MathematicalLogic
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.SymmetryLayerKind.Variant05665b465b984ae2c5744f74b797257f3f4ad4f8932073056597a7fd17558861","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"05665b465b984ae2c5744f74b797257f3f4ad4f8932073056597a7fd17558861","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Logic.Foundations.SourceCorpus.SymmetryLayerKind.Variant05665b465b984ae2c5744f74b797257f3f4ad4f8932073056597a7fd17558861","mathematical_subject":"Logic.Foundations","original_sha256":"05665b465b984ae2c5744f74b797257f3f4ad4f8932073056597a7fd17558861","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/Mathematics/ConnesBitfield/SymmetryLayers.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.ConnesBitfield.OrbitSymmetry

/-!
# Registered automorphism layers

Graph, phase, semantic, and arithmetic symmetries remain separate groups.
They enter one crossed product only through a certified direct- or
semidirect-product realization.  Every registered layer carries its own
kernel-equivariance certificate.
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.SymmetryLayerKind.Variant05665b465b984ae2c5744f74b797257f3f4ad4f8932073056597a7fd17558861

namespace Mathematics.ConnesBitfield

universe uSchedule

inductive SymmetryLayerKind
  | graph
  | phase
  | semantic
  | arithmetic
  | composite
  deriving DecidableEq, Repr

inductive SymmetryCompositionMode
  | directProduct
  | semidirectProduct
  deriving DecidableEq, Repr

structure RegisteredKernelSymmetryLayer
    {system : RandomBitfieldSystem}
    {carrier : WassersteinLawCarrier system}
    {Schedule : Type uSchedule}
    (family :
      ScheduleKernelFamily system carrier Schedule) where
  kind : SymmetryLayerKind
  model : FiniteCrossedProductModel system
  equivariance :
    EquivariantScheduleKernelCertificate
      model family

/--
The embeddings and factorization law required before two symmetry layers may
be treated as one automorphism group.  The normal-factor condition covers
semidirect products; direct products additionally require commuting factors.
-/
structure SymmetryLayerCompositionCertificate
    {system : RandomBitfieldSystem}
    (left right combined :
      FiniteCrossedProductModel system) where
  mode : SymmetryCompositionMode
  embedLeft :
    left.Automorphism →
      combined.Automorphism
  embedRight :
    right.Automorphism →
      combined.Automorphism
  embedLeftIdentity :
    embedLeft 1 = 1
  embedRightIdentity :
    embedRight 1 = 1
  embedLeftMultiplicative :
    ∀ first second,
      embedLeft (first * second) =
        embedLeft first * embedLeft second
  embedRightMultiplicative :
    ∀ first second,
      embedRight (first * second) =
        embedRight first * embedRight second
  embedLeftInjective :
    Function.Injective embedLeft
  embedRightInjective :
    Function.Injective embedRight
  leftActionAgrees :
    ∀ automorphism state,
      combined.action.act
          (embedLeft automorphism) state =
        left.action.act automorphism state
  rightActionAgrees :
    ∀ automorphism state,
      combined.action.act
          (embedRight automorphism) state =
        right.action.act automorphism state
  factorization :
    ∀ automorphism : combined.Automorphism,
      ∃ leftAutomorphism rightAutomorphism,
        automorphism =
          embedLeft leftAutomorphism *
            embedRight rightAutomorphism
  factorizationUnique :
    ∀ {leftFirst leftSecond
        rightFirst rightSecond},
      embedLeft leftFirst * embedRight rightFirst =
          embedLeft leftSecond *
            embedRight rightSecond →
        leftFirst = leftSecond ∧
          rightFirst = rightSecond
  rightFactorNormal :
    ∀ leftAutomorphism rightAutomorphism,
      ∃ transported : right.Automorphism,
        embedLeft leftAutomorphism *
              embedRight rightAutomorphism *
              (embedLeft leftAutomorphism)⁻¹ =
          embedRight transported
  directFactorsCommute :
    mode = SymmetryCompositionMode.directProduct →
      ∀ leftAutomorphism rightAutomorphism,
        embedLeft leftAutomorphism *
            embedRight rightAutomorphism =
          embedRight rightAutomorphism *
            embedLeft leftAutomorphism

/--
Recursive composition of two already registered layers.  The combined layer
has its own exact equivariance certificate; compatibility of the component
actions is not used as a substitute for checking the combined kernel action.
-/
structure LayeredSymmetryBoundaryCertificate
    {system : RandomBitfieldSystem}
    {carrier : WassersteinLawCarrier system}
    {Schedule : Type uSchedule}
    (family :
      ScheduleKernelFamily system carrier Schedule) where
  left :
    RegisteredKernelSymmetryLayer family
  right :
    RegisteredKernelSymmetryLayer family
  combined :
    RegisteredKernelSymmetryLayer family
  combinedIsComposite :
    combined.kind = SymmetryLayerKind.composite
  compatibility :
    SymmetryLayerCompositionCertificate
      left.model right.model combined.model

end Mathematics.ConnesBitfield
```
