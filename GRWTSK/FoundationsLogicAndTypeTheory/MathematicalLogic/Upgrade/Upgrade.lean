import DAF.Project
import DAF.Refinement

/-!
# Certified same-graph workspace upgrades

`WorkspaceUpgrade` is a natural transformation between two
`WorkspaceDiagram`s over one fixed dependency graph.  This indexed, same-graph
form makes dependency environments definitionally compatible and avoids
transport artifacts in the central theorem.  Packed `Workspace`s remain
available through `Workspace.toDiagram`.

Upgrade strengths are explicit: an equivalence upgrade is projectwise
bijective, a factor upgrade is projectwise surjective, and a refinement
upgrade identifies its public types and maps.  Implementation migration,
system behavior, causal transport, observer-local transport, and rebuild
policy all carry separate certificates; none is inferred from an arbitrary
public-interface map.
-/

universe u v w₀ w₁
universe uI uX uR uO

namespace DAF

/-- A natural transformation between two workspace diagrams on the same graph. -/
structure WorkspaceUpgrade
    {G : DependencyGraph.{u}}
    (W₀ : WorkspaceDiagram.{u, v, w₀} G)
    (W₁ : WorkspaceDiagram.{u, v, w₁} G) where
  mapPublic : (p : G.ProjectId) → W₀.Export p → W₁.Export p
  semantics_natural :
    ∀ p env,
      mapPublic p ((W₀.node p).semantics env) =
        (W₁.node p).semantics
          (fun q hq ↦ mapPublic q (env q hq))

namespace Upgrade

/-- Upgrade every component of a direct-dependency environment. -/
def mapDependencyEnv
    {G : DependencyGraph.{u}}
    {W₀ : WorkspaceDiagram.{u, v, w₀} G}
    {W₁ : WorkspaceDiagram.{u, v, w₁} G}
    (U : WorkspaceUpgrade W₀ W₁)
    (p : G.ProjectId)
    (env : DependencyEnv G W₀.Export p) :
    DependencyEnv G W₁.Export p :=
  fun q hq ↦ U.mapPublic q (env q hq)

@[simp]
theorem mapDependencyEnv_apply
    {G : DependencyGraph.{u}}
    {W₀ : WorkspaceDiagram.{u, v, w₀} G}
    {W₁ : WorkspaceDiagram.{u, v, w₁} G}
    (U : WorkspaceUpgrade W₀ W₁)
    (p q : G.ProjectId)
    (env : DependencyEnv G W₀.Export p)
    (hq : q ∈ G.dependsOn p) :
    mapDependencyEnv U p env q hq = U.mapPublic q (env q hq) :=
  rfl

/-- Project semantics is natural with respect to the upgraded environment. -/
theorem project_semantics_natural
    {G : DependencyGraph.{u}}
    {W₀ : WorkspaceDiagram.{u, v, w₀} G}
    {W₁ : WorkspaceDiagram.{u, v, w₁} G}
    (U : WorkspaceUpgrade W₀ W₁)
    (p : G.ProjectId)
    (env : DependencyEnv G W₀.Export p) :
    U.mapPublic p ((W₀.node p).semantics env) =
      (W₁.node p).semantics (mapDependencyEnv U p env) :=
  U.semantics_natural p env

/-- Naturality extends from one node to recursively evaluated workspace exports. -/
theorem evaluate_natural
    {G : DependencyGraph.{u}}
    {W₀ : WorkspaceDiagram.{u, v, w₀} G}
    {W₁ : WorkspaceDiagram.{u, v, w₁} G}
    (U : WorkspaceUpgrade W₀ W₁)
    (p : G.ProjectId) :
    U.mapPublic p (W₀.evaluate p) = W₁.evaluate p := by
  induction p using G.acyclic.induction with
  | h p ih =>
      rw [W₀.evaluate_eq, W₁.evaluate_eq, U.semantics_natural]
      congr 1
      funext q hq
      exact ih q hq

/-- Upgrade the dependent product over every project in a tenant closure. -/
def tenantEnvironmentMap
    {G : DependencyGraph.{u}}
    {W₀ : WorkspaceDiagram.{u, v, w₀} G}
    {W₁ : WorkspaceDiagram.{u, v, w₁} G}
    (U : WorkspaceUpgrade W₀ W₁)
    (tenant : Tenant G) :
    tenant.Environment W₀.Export → tenant.Environment W₁.Export :=
  fun env p hp ↦ U.mapPublic p (env p hp)

/-- Upgrade the dependent product restricted to tenant roots. -/
def tenantRootMap
    {G : DependencyGraph.{u}}
    {W₀ : WorkspaceDiagram.{u, v, w₀} G}
    {W₁ : WorkspaceDiagram.{u, v, w₁} G}
    (U : WorkspaceUpgrade W₀ W₁)
    (tenant : Tenant G) :
    tenant.RootExports W₀.Export → tenant.RootExports W₁.Export :=
  fun env p hp ↦ U.mapPublic p (env p hp)

/-- Tenant environment transport is the componentwise project map. -/
@[simp]
theorem tenantEnvironmentMap_apply
    {G : DependencyGraph.{u}}
    {W₀ : WorkspaceDiagram.{u, v, w₀} G}
    {W₁ : WorkspaceDiagram.{u, v, w₁} G}
    (U : WorkspaceUpgrade W₀ W₁)
    (tenant : Tenant G)
    (env : tenant.Environment W₀.Export)
    (p : G.ProjectId)
    (hp : p ∈ G.depClosure tenant.roots) :
    tenantEnvironmentMap U tenant env p hp = U.mapPublic p (env p hp) :=
  rfl

@[simp]
theorem tenantRootMap_apply
    {G : DependencyGraph.{u}}
    {W₀ : WorkspaceDiagram.{u, v, w₀} G}
    {W₁ : WorkspaceDiagram.{u, v, w₁} G}
    (U : WorkspaceUpgrade W₀ W₁)
    (tenant : Tenant G)
    (env : tenant.RootExports W₀.Export)
    (p : G.ProjectId)
    (hp : p ∈ tenant.roots) :
    tenantRootMap U tenant env p hp = U.mapPublic p (env p hp) :=
  rfl

end Upgrade

/-! ## Certified artifact transport -/

/--
A concrete project-artifact migration above one component of a workspace
upgrade.  Validity is preserved in the upgraded dependency environment and
artifact denotation commutes with the public semantic map.
-/
structure WorkspaceArtifactMigration
    {G : DependencyGraph.{u}}
    {W₀ : WorkspaceDiagram.{u, v, w₀} G}
    {W₁ : WorkspaceDiagram.{u, v, w₁} G}
    (U : WorkspaceUpgrade W₀ W₁)
    (p : G.ProjectId) where
  migrate : (W₀.node p).Artifact → (W₁.node p).Artifact
  valid_migrate :
    ∀ env artifact,
      (W₀.node p).ValidArtifact env artifact →
        (W₁.node p).ValidArtifact
          (Upgrade.mapDependencyEnv U p env) (migrate artifact)
  denote_natural :
    ∀ env artifact,
      (W₀.node p).ValidArtifact env artifact →
        (W₁.node p).denote (migrate artifact) =
          U.mapPublic p ((W₀.node p).denote artifact)

namespace WorkspaceArtifactMigration

/-- The migrated artifact is certified in the upgraded dependency environment. -/
theorem migratedArtifact_valid
    {G : DependencyGraph.{u}}
    {W₀ : WorkspaceDiagram.{u, v, w₀} G}
    {W₁ : WorkspaceDiagram.{u, v, w₁} G}
    {U : WorkspaceUpgrade W₀ W₁}
    {p : G.ProjectId}
    (migration : WorkspaceArtifactMigration U p)
    (env : DependencyEnv G W₀.Export p)
    (artifact : (W₀.node p).Artifact)
    (hvalid : (W₀.node p).ValidArtifact env artifact) :
    (W₁.node p).ValidArtifact
      (Upgrade.mapDependencyEnv U p env) (migration.migrate artifact) :=
  migration.valid_migrate env artifact hvalid

/--
A migrated valid artifact denotes the upgraded declarative semantics.  The
proof explicitly composes old artifact soundness, denotation naturality, and
workspace semantic naturality.
-/
theorem migratedArtifact_sound
    {G : DependencyGraph.{u}}
    {W₀ : WorkspaceDiagram.{u, v, w₀} G}
    {W₁ : WorkspaceDiagram.{u, v, w₁} G}
    {U : WorkspaceUpgrade W₀ W₁}
    {p : G.ProjectId}
    (migration : WorkspaceArtifactMigration U p)
    (env : DependencyEnv G W₀.Export p)
    (artifact : (W₀.node p).Artifact)
    (hvalid : (W₀.node p).ValidArtifact env artifact) :
    (W₁.node p).denote (migration.migrate artifact) =
      (W₁.node p).semantics (Upgrade.mapDependencyEnv U p env) := by
  calc
    (W₁.node p).denote (migration.migrate artifact) =
        U.mapPublic p ((W₀.node p).denote artifact) :=
      migration.denote_natural env artifact hvalid
    _ = U.mapPublic p ((W₀.node p).semantics env) := by
      rw [(W₀.node p).artifact_sound env artifact hvalid]
    _ = (W₁.node p).semantics (Upgrade.mapDependencyEnv U p env) :=
      U.semantics_natural p env

end WorkspaceArtifactMigration

/-! ## Explicit upgrade strengths -/

/-- A workspace upgrade whose public map is an equivalence at every node. -/
structure EquivalenceUpgrade
    {G : DependencyGraph.{u}}
    (W₀ : WorkspaceDiagram.{u, v, w₀} G)
    (W₁ : WorkspaceDiagram.{u, v, w₁} G)
    extends WorkspaceUpgrade W₀ W₁ where
  map_bijective : ∀ p, Function.Bijective (mapPublic p)

namespace EquivalenceUpgrade

/-- The certified projectwise public equivalence. -/
noncomputable def equivPublic
    {G : DependencyGraph.{u}}
    {W₀ : WorkspaceDiagram.{u, v, w₀} G}
    {W₁ : WorkspaceDiagram.{u, v, w₁} G}
    (U : EquivalenceUpgrade W₀ W₁)
    (p : G.ProjectId) : W₀.Export p ≃ W₁.Export p :=
  Equiv.ofBijective (U.mapPublic p) (U.map_bijective p)

@[simp]
theorem equivPublic_apply
    {G : DependencyGraph.{u}}
    {W₀ : WorkspaceDiagram.{u, v, w₀} G}
    {W₁ : WorkspaceDiagram.{u, v, w₁} G}
    (U : EquivalenceUpgrade W₀ W₁)
    (p : G.ProjectId)
    (x : W₀.Export p) :
    U.equivPublic p x = U.mapPublic p x :=
  rfl

end EquivalenceUpgrade

/-- A projectwise surjective upgrade that may intentionally forget distinctions. -/
structure FactorUpgrade
    {G : DependencyGraph.{u}}
    (W₀ : WorkspaceDiagram.{u, v, w₀} G)
    (W₁ : WorkspaceDiagram.{u, v, w₁} G)
    extends WorkspaceUpgrade W₀ W₁ where
  map_surjective : ∀ p, Function.Surjective (mapPublic p)

/-- An interface-preserving upgrade whose public map is equality transport. -/
structure RefinementUpgrade
    {G : DependencyGraph.{u}}
    (W₀ : WorkspaceDiagram.{u, v, w₀} G)
    (W₁ : WorkspaceDiagram.{u, v, w₁} G)
    extends WorkspaceUpgrade W₀ W₁ where
  public_eq : ∀ p, W₀.Export p = W₁.Export p
  map_eq_cast :
    ∀ p x,
      mapPublic p x = _root_.cast (public_eq p) x

namespace RefinementUpgrade

/-- Equality transport makes every refinement public map bijective. -/
theorem map_bijective
    {G : DependencyGraph.{u}}
    {W₀ : WorkspaceDiagram.{u, v, w₀} G}
    {W₁ : WorkspaceDiagram.{u, v, w₁} G}
    (U : RefinementUpgrade W₀ W₁)
    (p : G.ProjectId) :
    Function.Bijective (U.mapPublic p) := by
  have hfun : U.mapPublic p = Equiv.cast (U.public_eq p) := by
    funext x
    exact U.map_eq_cast p x
  rw [hfun]
  exact (Equiv.cast (U.public_eq p)).bijective

/-- Every refinement upgrade is, in particular, an equivalence upgrade. -/
def toEquivalenceUpgrade
    {G : DependencyGraph.{u}}
    {W₀ : WorkspaceDiagram.{u, v, w₀} G}
    {W₁ : WorkspaceDiagram.{u, v, w₁} G}
    (U : RefinementUpgrade W₀ W₁) :
    EquivalenceUpgrade W₀ W₁ where
  toWorkspaceUpgrade := U.toWorkspaceUpgrade
  map_bijective := U.map_bijective

end RefinementUpgrade

namespace EquivalenceUpgrade

/-- Forget inverse uniqueness and retain only the projectwise factor property. -/
def toFactorUpgrade
    {G : DependencyGraph.{u}}
    {W₀ : WorkspaceDiagram.{u, v, w₀} G}
    {W₁ : WorkspaceDiagram.{u, v, w₁} G}
    (U : EquivalenceUpgrade W₀ W₁) :
    FactorUpgrade W₀ W₁ where
  toWorkspaceUpgrade := U.toWorkspaceUpgrade
  map_surjective := fun p ↦ (U.map_bijective p).2

end EquivalenceUpgrade

/-- A breaking change intentionally carries no semantic transport theorem. -/
inductive UpgradeDisposition
  | refinement
  | equivalence
  | factor
  | breaking
  deriving DecidableEq, Repr

/-! ## Concrete implementation migration -/

/-- Valid implementation migration commuting with the abstraction maps. -/
structure ImplementationMigration
    {Spec₀ Impl₀ Spec₁ Impl₁ : System.{uI, uX, uR, uO}}
    (R₀ : Refinement Spec₀ Impl₀)
    (R₁ : Refinement Spec₁ Impl₁)
    (U : Spec₀.State → Spec₁.State) where
  migrate : Impl₀.State → Impl₁.State
  valid_migrate : ∀ x, R₀.Valid x → R₁.Valid (migrate x)
  migrate_sound :
    ∀ x,
      R₀.Valid x →
        R₁.abstract (migrate x) = U (R₀.abstract x)

/-! ## Behavioral capabilities -/

/-- A public export explicitly carrying a transition system. -/
structure SystemExport where
  system : System.{uI, uX, uR, uO}

/-- A behavioral upgrade backed by a system homomorphism. -/
structure SystemUpgrade (A B : SystemExport.{uI, uX, uR, uO}) where
  hom : A.system.Hom B.system

namespace SystemUpgrade

theorem step_natural
    {A B : SystemExport.{uI, uX, uR, uO}}
    (U : SystemUpgrade A B)
    (input : A.system.Input)
    (state : A.system.State) :
    U.hom.mapState (A.system.step input state) =
      B.system.step (U.hom.mapInput input) (U.hom.mapState state) :=
  U.hom.step_natural input state

theorem observe_natural
    {A B : SystemExport.{uI, uX, uR, uO}}
    (U : SystemUpgrade A B)
    (resolution : B.system.Resolution)
    (state : A.system.State) :
    U.hom.mapObservation resolution
        (A.system.observe (U.hom.pullResolution resolution) state) =
      B.system.observe resolution (U.hom.mapState state) :=
  U.hom.observe_natural resolution state

end SystemUpgrade

/-- A certified observer-local factor of a global system. -/
structure ObserverLocal
    (Global : System.{uI, uX, uR, uO}) where
  Local : System.{uI, uX, uR, uO}
  reduce : Global.Factor Local

/-- A commuting square between observer-local factors. -/
structure ObserverLocalUpgrade
    {G₀ G₁ : System.{uI, uX, uR, uO}}
    (A : ObserverLocal G₀)
    (B : ObserverLocal G₁) where
  global : G₀.Hom G₁
  localHom : A.Local.Hom B.Local
  reduce_natural :
    ∀ x,
      localHom.mapState (A.reduce.mapState x) =
        B.reduce.mapState (global.mapState x)

namespace Upgrade

/-- The supplied observer-local upgrade square commutes pointwise. -/
theorem observerLocal_natural
    {G₀ G₁ : System.{uI, uX, uR, uO}}
    {A : ObserverLocal G₀}
    {B : ObserverLocal G₁}
    (U : ObserverLocalUpgrade A B)
    (x : G₀.State) :
    U.localHom.mapState (A.reduce.mapState x) =
      B.reduce.mapState (U.global.mapState x) :=
  U.reduce_natural x

end Upgrade

end DAF
