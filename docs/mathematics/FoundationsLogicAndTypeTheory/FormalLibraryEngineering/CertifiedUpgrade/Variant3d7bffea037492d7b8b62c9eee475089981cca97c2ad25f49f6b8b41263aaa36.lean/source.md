# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.CertifiedUpgrade.Variant3d7bffea037492d7b8b62c9eee475089981cca97c2ad25f49f6b8b41263aaa36

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `ee0178bbe5615474df5efaf83d13d1b51723cd5b` · SHA-256 `3d7bffea037492d7b8b62c9eee475089981cca97c2ad25f49f6b8b41263aaa36`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import DAF.Upgrade
import DAF.Causal
import DAF.BuildModel

/-!
# Certified multi-tenant workspace-upgrade integration

This integration-owned module is the downstream composition point for the
otherwise independent workspace, causal, observer, and rebuild layers.  A
certified workspace upgrade contains an actual natural workspace map, one
validated artifact migration per project, and the detected change set to which
the declared rebuild policy is applied.

The exported result is a bundle of typed conclusions.  In particular, causal
equivalence is available only from a supplied system isomorphism, while a
system factor supplies only a surjective map of causal quotients and also
requires a surjective input translation.  No arbitrary proposition is accepted
as a stand-in for any of these capabilities.
-/

universe u v w₀ w₁
universe uI uX uR uO

namespace DAF

/--
A same-graph semantic workspace upgrade equipped with certified migrations for
all concrete project artifacts and with its independently detected change set.
-/
structure CertifiedWorkspaceUpgrade
    {G : DependencyGraph.{u}}
    (W₀ : WorkspaceDiagram.{u, v, w₀} G)
    (W₁ : WorkspaceDiagram.{u, v, w₁} G) where
  upgrade : WorkspaceUpgrade W₀ W₁
  artifactMigration :
    (p : G.ProjectId) → WorkspaceArtifactMigration upgrade p
  changes : Build.ChangeSet G

namespace CertifiedWorkspaceUpgrade

/-- The underlying natural transformation of public project semantics. -/
abbrev toWorkspaceUpgrade
    {G : DependencyGraph.{u}}
    {W₀ : WorkspaceDiagram.{u, v, w₀} G}
    {W₁ : WorkspaceDiagram.{u, v, w₁} G}
    (U : CertifiedWorkspaceUpgrade W₀ W₁) :
    WorkspaceUpgrade W₀ W₁ :=
  U.upgrade

end CertifiedWorkspaceUpgrade

/-! ## Root-export behavioral capabilities -/

/--
A project export explicitly carries old and new systems, and the systems
obtained from the recursively evaluated exports are related by a homomorphism.
The workspace upgrade already proves that the new evaluated export is the
public image of the old one (`Upgrade.evaluate_natural`).
-/
structure WorkspaceSystemCapability
    {G : DependencyGraph.{u}}
    {W₀ : WorkspaceDiagram.{u, v, w₀} G}
    {W₁ : WorkspaceDiagram.{u, v, w₁} G}
    (U : WorkspaceUpgrade W₀ W₁)
    (p : G.ProjectId) where
  sourceSystem : W₀.Export p → SystemExport.{uI, uX, uR, uO}
  targetSystem : W₁.Export p → SystemExport.{uI, uX, uR, uO}
  hom :
    ((sourceSystem (W₀.evaluate p)).system).Hom
      ((targetSystem (W₁.evaluate p)).system)

namespace WorkspaceSystemCapability

/-- The target export used by a root capability is the upgraded source export. -/
theorem evaluated_export_natural
    {G : DependencyGraph.{u}}
    {W₀ : WorkspaceDiagram.{u, v, w₀} G}
    {W₁ : WorkspaceDiagram.{u, v, w₁} G}
    {U : WorkspaceUpgrade W₀ W₁}
    {p : G.ProjectId}
    (_capability : WorkspaceSystemCapability U p) :
    U.mapPublic p (W₀.evaluate p) = W₁.evaluate p :=
  Upgrade.evaluate_natural U p

end WorkspaceSystemCapability

/-- A root export carrying a structural isomorphism of its evaluated systems. -/
structure WorkspaceSystemIsoCapability
    {G : DependencyGraph.{u}}
    {W₀ : WorkspaceDiagram.{u, v, w₀} G}
    {W₁ : WorkspaceDiagram.{u, v, w₁} G}
    (U : WorkspaceUpgrade W₀ W₁)
    (p : G.ProjectId) where
  sourceSystem : W₀.Export p → SystemExport.{uI, uX, uR, uO}
  targetSystem : W₁.Export p → SystemExport.{uI, uX, uR, uO}
  iso :
    ((sourceSystem (W₀.evaluate p)).system).Iso
      ((targetSystem (W₁.evaluate p)).system)

/--
A root export carrying a state-surjective factor of its evaluated systems and
the separately necessary surjectivity of the input translation.
-/
structure WorkspaceSystemFactorCapability
    {G : DependencyGraph.{u}}
    {W₀ : WorkspaceDiagram.{u, v, w₀} G}
    {W₁ : WorkspaceDiagram.{u, v, w₁} G}
    (U : WorkspaceUpgrade W₀ W₁)
    (p : G.ProjectId) where
  sourceSystem : W₀.Export p → SystemExport.{uI, uX, uR, uO}
  targetSystem : W₁.Export p → SystemExport.{uI, uX, uR, uO}
  factor :
    ((sourceSystem (W₀.evaluate p)).system).Factor
      ((targetSystem (W₁.evaluate p)).system)
  input_surjective : Function.Surjective factor.toHom.mapInput

/-- A root export carrying an explicit commuting observer-local upgrade square. -/
structure WorkspaceObserverCapability
    {G : DependencyGraph.{u}}
    {W₀ : WorkspaceDiagram.{u, v, w₀} G}
    {W₁ : WorkspaceDiagram.{u, v, w₁} G}
    (U : WorkspaceUpgrade W₀ W₁)
    (p : G.ProjectId) where
  sourceSystem : W₀.Export p → SystemExport.{uI, uX, uR, uO}
  targetSystem : W₁.Export p → SystemExport.{uI, uX, uR, uO}
  sourceObserver :
    ObserverLocal ((sourceSystem (W₀.evaluate p)).system)
  targetObserver :
    ObserverLocal ((targetSystem (W₁.evaluate p)).system)
  upgrade : ObserverLocalUpgrade sourceObserver targetObserver

/--
The independently usable conclusions of a certified workspace upgrade.

Behavioral, causal, and observer-local clauses quantify over explicit supplied
certificates.  Thus this bundle records what each certificate entails without
pretending that an arbitrary public-value map provides those stronger facts.
-/
structure CertifiedWorkspaceUpgradeResult
    {G : DependencyGraph.{u}}
    {W₀ : WorkspaceDiagram.{u, v, w₀} G}
    {W₁ : WorkspaceDiagram.{u, v, w₁} G}
    (U : CertifiedWorkspaceUpgrade W₀ W₁) where
  /-- Every valid old artifact migrates to a valid artifact in the new environment. -/
  projectValid :
    ∀ (p : G.ProjectId)
      (env : DependencyEnv G W₀.Export p)
      (artifact : (W₀.node p).Artifact),
      (W₀.node p).ValidArtifact env artifact →
        (W₁.node p).ValidArtifact
          (Upgrade.mapDependencyEnv U.upgrade p env)
          ((U.artifactMigration p).migrate artifact)
  /-- Every valid migrated artifact denotes the upgraded node semantics. -/
  projectSound :
    ∀ (p : G.ProjectId)
      (env : DependencyEnv G W₀.Export p)
      (artifact : (W₀.node p).Artifact)
      (_hvalid : (W₀.node p).ValidArtifact env artifact),
      (W₁.node p).denote ((U.artifactMigration p).migrate artifact) =
        (W₁.node p).semantics
          (Upgrade.mapDependencyEnv U.upgrade p env)
  /-- Canonical componentwise transport of a tenant's entire dependency closure. -/
  tenantTransport :
    ∀ tenant : Tenant G,
      tenant.Environment W₀.Export → tenant.Environment W₁.Export
  /-- Canonical restriction of public transport to tenant roots. -/
  rootTransport :
    ∀ tenant : Tenant G,
      tenant.RootExports W₀.Export → tenant.RootExports W₁.Export
  /-- A system carried by a selected tenant root commutes with transitions. -/
  rootSystemStepTransport :
    ∀ (tenant : Tenant G)
      (p : G.ProjectId)
      (_hp : p ∈ tenant.roots)
      (C : WorkspaceSystemCapability.{u, v, w₀, w₁, uI, uX, uR, uO}
        U.upgrade p)
      (input : (C.sourceSystem (W₀.evaluate p)).system.Input)
      (state : (C.sourceSystem (W₀.evaluate p)).system.State),
      C.hom.mapState
          ((C.sourceSystem (W₀.evaluate p)).system.step input state) =
        (C.targetSystem (W₁.evaluate p)).system.step
          (C.hom.mapInput input) (C.hom.mapState state)
  /-- A system carried by a selected tenant root commutes with observation. -/
  rootSystemObserveTransport :
    ∀ (tenant : Tenant G)
      (p : G.ProjectId)
      (_hp : p ∈ tenant.roots)
      (C : WorkspaceSystemCapability.{u, v, w₀, w₁, uI, uX, uR, uO}
        U.upgrade p)
      (resolution : (C.targetSystem (W₁.evaluate p)).system.Resolution)
      (state : (C.sourceSystem (W₀.evaluate p)).system.State),
      C.hom.mapObservation resolution
          ((C.sourceSystem (W₀.evaluate p)).system.observe
            (C.hom.pullResolution resolution) state) =
        (C.targetSystem (W₁.evaluate p)).system.observe resolution
          (C.hom.mapState state)
  /-- A system isomorphism carried by a root gives an equivalence of causal states. -/
  rootCausalEquivalenceTransport :
    ∀ (tenant : Tenant G)
      (p : G.ProjectId)
      (_hp : p ∈ tenant.roots)
      (C : WorkspaceSystemIsoCapability.{u, v, w₀, w₁, uI, uX, uR, uO}
        U.upgrade p),
      (C.sourceSystem (W₀.evaluate p)).system.CausalState ≃
        (C.targetSystem (W₁.evaluate p)).system.CausalState
  /-- A root-carried factor gives only a surjection of causal states. -/
  rootCausalFactorTransport :
    ∀ (tenant : Tenant G)
      (p : G.ProjectId)
      (_hp : p ∈ tenant.roots)
      (C : WorkspaceSystemFactorCapability.{u, v, w₀, w₁, uI, uX, uR, uO}
        U.upgrade p),
      Function.Surjective
        (C.factor.toHom.causalStateMap C.input_surjective)
  /-- A root-carried observer-local upgrade square commutes pointwise. -/
  rootObserverTransport :
    ∀ (tenant : Tenant G)
      (p : G.ProjectId)
      (_hp : p ∈ tenant.roots)
      (C : WorkspaceObserverCapability.{u, v, w₀, w₁, uI, uX, uR, uO}
        U.upgrade p)
      (state : (C.sourceSystem (W₀.evaluate p)).system.State),
      C.upgrade.localHom.mapState (C.sourceObserver.reduce.mapState state) =
        C.targetObserver.reduce.mapState (C.upgrade.global.mapState state)
  /-- A supplied system homomorphism commutes with one transition. -/
  systemStepTransport :
    ∀ {A B : SystemExport.{uI, uX, uR, uO}}
      (S : SystemUpgrade A B)
      (input : A.system.Input)
      (state : A.system.State),
      S.hom.mapState (A.system.step input state) =
        B.system.step (S.hom.mapInput input) (S.hom.mapState state)
  /-- A supplied system homomorphism commutes with dependent observation. -/
  systemObserveTransport :
    ∀ {A B : SystemExport.{uI, uX, uR, uO}}
      (S : SystemUpgrade A B)
      (resolution : B.system.Resolution)
      (state : A.system.State),
      S.hom.mapObservation resolution
          (A.system.observe (S.hom.pullResolution resolution) state) =
        B.system.observe resolution (S.hom.mapState state)
  /-- A supplied system isomorphism transports the causal quotient exactly. -/
  causalEquivalenceTransport :
    ∀ {M N : System.{uI, uX, uR, uO}},
      M.Iso N → M.CausalState ≃ N.CausalState
  /--
  A supplied state factor and a surjective input translation induce a
  surjection of causal quotients; no inverse is asserted.
  -/
  causalFactorTransport :
    ∀ {M N : System.{uI, uX, uR, uO}}
      (F : M.Factor N)
      (hInput : Function.Surjective F.toHom.mapInput),
      Function.Surjective (F.toHom.causalStateMap hInput)
  /-- Every supplied observer-local upgrade square commutes pointwise. -/
  observerTransport :
    ∀ {M N : System.{uI, uX, uR, uO}}
      {A : ObserverLocal M}
      {B : ObserverLocal N}
      (S : ObserverLocalUpgrade A B)
      (state : M.State),
      S.localHom.mapState (A.reduce.mapState state) =
        B.reduce.mapState (S.global.mapState state)
  /-- The abstract Lean rebuild set is exactly the declared conservative policy. -/
  rebuildCharacterization :
    Build.leanRebuild U.changes =
      U.changes.implementationChangedSet ∪
        Build.dependentsClosure G U.changes.publicChangedSet
  /-- Tenant operational unaffectedness is exactly disjointness from that set. -/
  tenantImpactCharacterization :
    ∀ tenant : Tenant G,
      ¬ tenant.Affected U.changes ↔
        Disjoint (G.depClosure tenant.roots) (Build.leanRebuild U.changes)

/--
Construct the certified multi-tenant result from the component certificates.
Each field is a previously proved typed theorem, so consumers can depend only
on the conclusion they need.
-/
noncomputable def certifiedWorkspaceUpgrade
    {G : DependencyGraph.{u}}
    {W₀ : WorkspaceDiagram.{u, v, w₀} G}
    {W₁ : WorkspaceDiagram.{u, v, w₁} G}
    (U : CertifiedWorkspaceUpgrade W₀ W₁) :
    CertifiedWorkspaceUpgradeResult U where
  projectValid := fun p env artifact hvalid ↦
    (U.artifactMigration p).migratedArtifact_valid env artifact hvalid
  projectSound := fun p env artifact hvalid ↦
    (U.artifactMigration p).migratedArtifact_sound env artifact hvalid
  tenantTransport := fun tenant ↦
    Upgrade.tenantEnvironmentMap U.upgrade tenant
  rootTransport := fun tenant ↦
    Upgrade.tenantRootMap U.upgrade tenant
  rootSystemStepTransport := fun _tenant _p _hp C input state ↦
    C.hom.step_natural input state
  rootSystemObserveTransport := fun _tenant _p _hp C resolution state ↦
    C.hom.observe_natural resolution state
  rootCausalEquivalenceTransport := fun _tenant _p _hp C ↦
    C.iso.causalStateEquiv
  rootCausalFactorTransport := fun _tenant _p _hp C ↦
    C.factor.causalStateMap_surjective C.input_surjective
  rootObserverTransport := fun _tenant _p _hp C state ↦
    Upgrade.observerLocal_natural C.upgrade state
  systemStepTransport := fun S input state ↦
    S.step_natural input state
  systemObserveTransport := fun S resolution state ↦
    S.observe_natural resolution state
  causalEquivalenceTransport := fun F ↦ F.causalStateEquiv
  causalFactorTransport := fun F hInput ↦
    F.causalStateMap_surjective hInput
  observerTransport := fun S state ↦
    Upgrade.observerLocal_natural S state
  rebuildCharacterization := Build.leanRebuild_eq U.changes
  tenantImpactCharacterization := fun tenant ↦
    Build.tenant_unaffected_iff_disjoint tenant U.changes

end DAF
```
