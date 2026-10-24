# Complete source: GRWTSK.ProbabilityAndMathematicalStatistics.ProbabilityFoundations.ProbabilitySpaces.Independence.CertificateValidity.Variant79eefc44b3915020332e91a30d314e1607688705ab0ca0405c05ea4716e50802

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `29cd54ab373ef44a341c6f82d6ba48d9658142f0` · SHA-256 `e90959d6df98a4ec01efd46dc26189aa567e7b9e31711a8ecb7df6654d31c7be`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: ProbabilityAndMathematicalStatistics.ProbabilityFoundations.ProbabilitySpaces.Independence
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.ProbabilityAndMathematicalStatistics.ProbabilityFoundations.ProbabilitySpaces.Independence.SnapshotChange.Variantd5033694cd95bf790650208f30fd27839a408dcdc80e66741f1fed5826b7f666","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"d5033694cd95bf790650208f30fd27839a408dcdc80e66741f1fed5826b7f666","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Probability.Independence.SourceCorpus.SnapshotChange.Variantd5033694cd95bf790650208f30fd27839a408dcdc80e66741f1fed5826b7f666","mathematical_subject":"Probability.Independence","original_sha256":"d5033694cd95bf790650208f30fd27839a408dcdc80e66741f1fed5826b7f666","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/Mathematics/Authority/CertificateValidity.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.Authority.CertificateMetadata

/-!
# Selective certificate validity

Mathematical validity, committed authorization, and current snapshot authority
are independent.  A certificate is usable only when all three hold.
-/


namespace GRWTSK.ProbabilityAndMathematicalStatistics.ProbabilityFoundations.ProbabilitySpaces.Independence.SnapshotChange.Variantd5033694cd95bf790650208f30fd27839a408dcdc80e66741f1fed5826b7f666

namespace Mathematics.Authority

open Mathematics.Projection

/-- Exact equality of every recorded component dependency. -/
def MathematicallyValidAt
    (certificate : CertificateMetadata)
    (snapshot : MasterSnapshot) : Prop :=
  ∀ dependency ∈ certificate.dependencies,
    dependency.Matches snapshot

/-- Authorization is a sealed capability, not a metadata Boolean. -/
def AuthorizedAt
    (certificate : CertificateMetadata)
    (snapshot : MasterSnapshot) : Prop :=
  Nonempty (AcceptedCertificateAuthorization certificate snapshot)

/--
Current usability requires a verified-active master snapshot and exact
certificate/snapshot identity.
-/
def NotRevokedAt
    (certificate : CertificateMetadata)
    (snapshot : MasterSnapshot) : Prop :=
  Nonempty (VerifiedActiveMasterSnapshot snapshot) ∧
    certificate.snapshot = snapshot.id

/-- The complete fail-closed usability predicate. -/
def UsableAt
    (certificate : CertificateMetadata)
    (snapshot : MasterSnapshot) : Prop :=
  MathematicallyValidAt certificate snapshot ∧
  AuthorizedAt certificate snapshot ∧
  NotRevokedAt certificate snapshot

theorem mathematicallyValidAt_iff
    (certificate : CertificateMetadata)
    (snapshot : MasterSnapshot) :
    MathematicallyValidAt certificate snapshot ↔
      ∀ dependency ∈ certificate.dependencies,
        snapshot.componentDigest dependency.component =
          dependency.digest :=
  Iff.rfl

theorem UsableAt.mathematicallyValid
    {certificate : CertificateMetadata}
    {snapshot : MasterSnapshot}
    (usable : UsableAt certificate snapshot) :
    MathematicallyValidAt certificate snapshot :=
  usable.1

theorem UsableAt.snapshotExact
    {certificate : CertificateMetadata}
    {snapshot : MasterSnapshot}
    (usable : UsableAt certificate snapshot) :
    certificate.snapshot = snapshot.id :=
  usable.2.2.2

/-- Failed mathematical validity is sufficient to reject usability. -/
theorem not_usableAt_of_not_mathematicallyValid
    {certificate : CertificateMetadata}
    {snapshot : MasterSnapshot}
    (invalid : ¬ MathematicallyValidAt certificate snapshot) :
    ¬ UsableAt certificate snapshot := by
  intro usable
  exact invalid usable.mathematicallyValid

/-- Revoked metadata cannot possess the sealed admitted authorization. -/
theorem revoked_not_authorized
    {certificate : CertificateMetadata}
    {snapshot : MasterSnapshot}
    (revoked : certificate.authorityState = .revoked) :
    ¬ AuthorizedAt certificate snapshot := by
  rintro ⟨authorization⟩
  have admitted := authorization.admitted
  rw [revoked] at admitted
  cases admitted

/-- Superseded metadata cannot possess the sealed admitted authorization. -/
theorem superseded_not_authorized
    {certificate : CertificateMetadata}
    {snapshot : MasterSnapshot}
    (superseded :
      certificate.authorityState = .superseded) :
    ¬ AuthorizedAt certificate snapshot := by
  rintro ⟨authorization⟩
  have admitted := authorization.admitted
  rw [superseded] at admitted
  cases admitted

/-- Exact component changes between two immutable snapshots. -/
structure SnapshotChange
    (before after : MasterSnapshot) where
  changed : Finset SnapshotComponent
  unchanged_outside :
    ∀ component,
      component ∉ changed →
        after.componentDigest component =
          before.componentDigest component
  changed_exact :
    ∀ component ∈ changed,
      after.componentDigest component ≠
        before.componentDigest component

/-- The certificate has no dependency in the changed component set. -/
def IndependentOf
    (certificate : CertificateMetadata)
    {before after : MasterSnapshot}
    (change : SnapshotChange before after) : Prop :=
  ∀ dependency ∈ certificate.dependencies,
    dependency.component ∉ change.changed

/--
Selective survival: changing unrelated components preserves mathematical
validity.  Authorization and current-snapshot status must still be checked
separately.
-/
theorem mathematicallyValidAt_of_independent_change
    {certificate : CertificateMetadata}
    {before after : MasterSnapshot}
    (change : SnapshotChange before after)
    (validBefore : MathematicallyValidAt certificate before)
    (independent : IndependentOf certificate change) :
    MathematicallyValidAt certificate after := by
  intro dependency member
  unfold SnapshotDependency.Matches
  rw [change.unchanged_outside dependency.component
    (independent dependency member)]
  exact validBefore dependency member

/-- Any exact change to a recorded component invalidates the old metadata. -/
theorem not_mathematicallyValidAt_of_changed_dependency
    {certificate : CertificateMetadata}
    {before after : MasterSnapshot}
    (change : SnapshotChange before after)
    (validBefore : MathematicallyValidAt certificate before)
    {dependency : SnapshotDependency}
    (member : dependency ∈ certificate.dependencies)
    (changed : dependency.component ∈ change.changed) :
    ¬ MathematicallyValidAt certificate after := by
  intro validAfter
  have beforeMatches := validBefore dependency member
  have afterMatches := validAfter dependency member
  apply change.changed_exact dependency.component changed
  calc
    after.componentDigest dependency.component =
        dependency.digest := afterMatches
    _ = before.componentDigest dependency.component :=
      beforeMatches.symm

/-- Runtime-independent mathematics survives a runtime-only digest change. -/
theorem runtime_change_preserves_mathematical_validity
    {certificate : CertificateMetadata}
    {before after : MasterSnapshot}
    (change : SnapshotChange before after)
    (runtimeOnly : change.changed = { .runtime })
    (validBefore : MathematicallyValidAt certificate before)
    (runtimeIndependent :
      ∀ dependency ∈ certificate.dependencies,
        dependency.component ≠ .runtime) :
    MathematicallyValidAt certificate after := by
  apply mathematicallyValidAt_of_independent_change
      change validBefore
  intro dependency member
  simpa [runtimeOnly] using runtimeIndependent dependency member

/-- An operator-dependent fixed-point certificate fails after operator change. -/
theorem operator_change_invalidates
    {certificate : CertificateMetadata}
    {before after : MasterSnapshot}
    (change : SnapshotChange before after)
    (validBefore : MathematicallyValidAt certificate before)
    {dependency : SnapshotDependency}
    (member : dependency ∈ certificate.dependencies)
    (operatorDependency : dependency.component = .operator)
    (operatorChanged : .operator ∈ change.changed) :
    ¬ MathematicallyValidAt certificate after := by
  have dependencyChanged :
      dependency.component ∈ change.changed := by
    simpa [operatorDependency] using operatorChanged
  exact
    not_mathematicallyValidAt_of_changed_dependency
      change validBefore member dependencyChanged

/--
A surgery changing operator or transport invalidates every certificate that
records either component.  Reconstruction or an explicit theorem migration
is required before reuse.
-/
theorem surgery_change_invalidates
    {certificate : CertificateMetadata}
    {before after : MasterSnapshot}
    (change : SnapshotChange before after)
    (operatorChanged : .operator ∈ change.changed)
    (transportChanged : .transport ∈ change.changed)
    (validBefore : MathematicallyValidAt certificate before)
    {dependency : SnapshotDependency}
    (member : dependency ∈ certificate.dependencies)
    (surgeryDependent :
      dependency.component = .operator ∨
        dependency.component = .transport) :
    ¬ MathematicallyValidAt certificate after := by
  apply
    not_mathematicallyValidAt_of_changed_dependency
      change validBefore member
  rcases surgeryDependent with operatorDependency | transportDependency
  · simpa [operatorDependency] using operatorChanged
  · simpa [transportDependency] using transportChanged

end Mathematics.Authority
```
