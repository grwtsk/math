# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Certification.Variant1cf9d5045548a73d6ac3cfbfe25b5e8480499d242b3ff7fa3f07e6d6855178b1

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `6fd8c9f5719a01baf375b7e2b05c580dcfc7a644` · SHA-256 `969b04742cb68de63dcf696f607886fc8d01721d716d1edcd57afc2c44c730a7`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.CertificateFamily.Variant3767279048285cc883b0930c0f1536c1259a9bfc447d2cdeeafcab3da906b78c","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"3767279048285cc883b0930c0f1536c1259a9bfc447d2cdeeafcab3da906b78c","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.CertificateFamily.Variant3767279048285cc883b0930c0f1536c1259a9bfc447d2cdeeafcab3da906b78c","mathematical_subject":"Foundations.Unclassified","original_sha256":"3767279048285cc883b0930c0f1536c1259a9bfc447d2cdeeafcab3da906b78c","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal.worktrees/rh-target-sufficiency/FormalResearch/PositiveAtlas/Certification.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","scope_end_name_mismatch","uncompiled_organization"],"structural_qualification":"structural_issues_retained_uncompiled","transform_version":"1"}
import Mathlib

/-!
# Positive atlas certification core

This module formalizes the certificate-relative compression interface used by the
positive atlas program. It deliberately does not assert the existence of a
minimal sufficient quotient for any particular mathematical system. Instead it
defines the exact structure that later atlas cells must construct and prove
minimal.

A structural Quine in this module reconstructs only certificate-relevant
structure. Verification authority is not represented by these definitions and
is not enlarged by them.
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.CertificateFamily.Variant3767279048285cc883b0930c0f1536c1259a9bfc447d2cdeeafcab3da906b78c

namespace FormalResearch.PositiveAtlas

universe u v w

/-- A heterogeneous family of observables whose values constitute the admitted
certificate-relevant distinctions on a state space. -/
structure CertificateFamily (State : Type u) where
  index : Type v
  value : index → Type w
  observe : (i : index) → State → value i

namespace CertificateFamily

variable {State : Type u} (C : CertificateFamily State)

/-- Two states are certificate-equivalent when every admitted observable has the
same value on both states. -/
def Equivalent (x y : State) : Prop :=
  ∀ i, C.observe i x = C.observe i y

theorem equivalent_refl (x : State) : C.Equivalent x x := by
  intro i
  rfl

theorem equivalent_symm {x y : State} (h : C.Equivalent x y) :
    C.Equivalent y x := by
  intro i
  exact (h i).symm

theorem equivalent_trans {x y z : State} (hxy : C.Equivalent x y)
    (hyz : C.Equivalent y z) : C.Equivalent x z := by
  intro i
  exact (hxy i).trans (hyz i)

end CertificateFamily

/-- An exact sufficient representation factors every admitted observable through
one compressed carrier. No existence or minimality claim is built into this
structure. -/
structure SufficientRepresentation {State : Type u} (C : CertificateFamily State) where
  carrier : Type v
  compress : State → carrier
  recover : (i : C.index) → carrier → C.value i
  recover_compress : ∀ i s, recover i (compress s) = C.observe i s

namespace SufficientRepresentation

variable {State : Type u} {C : CertificateFamily State}

/-- q factors through r when the compression carried by r still contains enough
information to reconstruct the compression carried by q. -/
def FactorsThrough (q r : SufficientRepresentation C) : Prop :=
  ∃ f : r.carrier → q.carrier, q.compress = f ∘ r.compress

/-- A sufficient representation is minimal when it factors through every other
exact sufficient representation. -/
def IsMinimal (q : SufficientRepresentation C) : Prop :=
  ∀ r : SufficientRepresentation C, q.FactorsThrough r

theorem equivalent_of_compress_eq (q : SufficientRepresentation C) {x y : State}
    (h : q.compress x = q.compress y) : C.Equivalent x y := by
  intro i
  calc
    C.observe i x = q.recover i (q.compress x) := (q.recover_compress i x).symm
    _ = q.recover i (q.compress y) := by rw [h]
    _ = C.observe i y := q.recover_compress i y

theorem factor_of_minimal {q : SufficientRepresentation C} (hq : q.IsMinimal)
    (r : SufficientRepresentation C) : q.FactorsThrough r :=
  hq r

end SufficientRepresentation

/-- A certificate-relative structural Quine consists of an exact minimal
sufficient representation together with an internal reconstruction section.
The reconstruction is required to preserve the admitted certificate family, not
to certify the soundness of an ambient verifier. -/
structure StructuralQuine {State : Type u} (C : CertificateFamily State) where
  quotient : SufficientRepresentation C
  reconstruct : quotient.carrier → State
  section : ∀ q, quotient.compress (reconstruct q) = q
  reconstruct_equivalent : ∀ s, C.Equivalent (reconstruct (quotient.compress s)) s
  minimal : quotient.IsMinimal

namespace StructuralQuine

variable {State : Type u} {C : CertificateFamily State}

/-- Project a state to the internally reconstructed representative of its
minimal sufficient certificate class. -/
def project (Q : StructuralQuine C) (s : State) : State :=
  Q.reconstruct (Q.quotient.compress s)

theorem project_idempotent (Q : StructuralQuine C) : Function.Idempotent Q.project := by
  intro s
  unfold project
  rw [Q.section]

theorem project_certificate_equivalent (Q : StructuralQuine C) (s : State) :
    C.Equivalent (Q.project s) s :=
  Q.reconstruct_equivalent s

theorem quotient_factors_through (Q : StructuralQuine C)
    (r : SufficientRepresentation C) : Q.quotient.FactorsThrough r :=
  Q.minimal r

end StructuralQuine

end FormalResearch.PositiveAtlas
```
