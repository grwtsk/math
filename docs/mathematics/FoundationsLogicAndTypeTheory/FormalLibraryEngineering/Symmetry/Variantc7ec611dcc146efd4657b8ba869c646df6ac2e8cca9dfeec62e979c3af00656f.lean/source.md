# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Symmetry.Variantc7ec611dcc146efd4657b8ba869c646df6ac2e8cca9dfeec62e979c3af00656f

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `ebd9c4624afb8012938930f473cc708918609841` · SHA-256 `014e48f66384ea701465db6519cd430f34eb13fc6355975fdfe7c191f28ee5ce`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Involution.Variant4726721af9afdb5b89dcd3747d2735e82f751794510f92ec8188b2e47ced5032","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"4726721af9afdb5b89dcd3747d2735e82f751794510f92ec8188b2e47ced5032","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.Involution.Variant4726721af9afdb5b89dcd3747d2735e82f751794510f92ec8188b2e47ced5032","mathematical_subject":"Foundations.Unclassified","original_sha256":"4726721af9afdb5b89dcd3747d2735e82f751794510f92ec8188b2e47ced5032","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/Mathematics/AbelReynolds/Symmetry.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.AbelReynolds.Boundary
import Mathematics.AbelReynolds.Orbit
import Mathematics.AbelReynolds.Tally

/-!
# Boundary-aware involutive symmetry

Involutivity alone supplies no unstated linear, multiplicative, or
contravariant law.  Fixed reusable blocks therefore carry their exact action
and fixedness witness.
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Involution.Variant4726721af9afdb5b89dcd3747d2735e82f751794510f92ec8188b2e47ced5032

namespace Mathematics.AbelReynolds

structure Involution (Carrier : Type*) where
  act : Carrier → Carrier
  involutive : Function.Involutive act

def Involution.Fixed
    (involution : Involution Carrier)
    (value : Carrier) : Prop :=
  involution.act value = value

@[simp] theorem Involution.act_act
    (involution : Involution Carrier)
    (value : Carrier) :
    involution.act (involution.act value) = value :=
  involution.involutive value

structure BoundaryInvolution (Carrier : Type*) where
  boundary : Involution BoundaryKey
  value : Involution Carrier
  covariance : String

structure TwistedFixedWitness
    (involution : BoundaryInvolution Carrier)
    (sourceBoundary : BoundaryKey)
    (value : Carrier) where
  identification : Carrier → Carrier
  identifiedFixed :
    identification (involution.value.act value) = value
  sourceMatches :
    involution.boundary.act sourceBoundary ≠ sourceBoundary

structure CertifiedTallyInvolution where
  mark : Involution CertifiedMark

def CertifiedTallyInvolution.act
    (involution : CertifiedTallyInvolution)
    (tally : CertifiedTally) : CertifiedTally :=
  tally.map involution.mark.act

theorem CertifiedTallyInvolution.act_involutive
    (involution : CertifiedTallyInvolution) :
    Function.Involutive involution.act := by
  intro tally
  simp [CertifiedTallyInvolution.act,
    involution.mark.involutive]

structure FixedReusableBlock
    (involution : CertifiedTallyInvolution) where
  tally : CertifiedTally
  nonempty : tally ≠ []
  fixed : involution.act tally = tally

structure ReynoldsSymmetryCompatibility
    (Carrier : Type*) where
  symmetry : Involution Carrier
  projector : Weight → Carrier → Carrier
  characterAction : Weight → Weight
  commutes :
    ∀ weight value,
      symmetry.act (projector weight value) =
        projector (characterAction weight)
          (symmetry.act value)

end Mathematics.AbelReynolds
```
