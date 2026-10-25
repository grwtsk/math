# CertifiedWorkspaceUpgradeResult

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:87176815c26175f23904a6af247d4db94aa3160d766447f412efc7f3d6514a7c",
  "kind": "structure",
  "lexical_name": "CertifiedWorkspaceUpgradeResult",
  "mathematical_admission": "NOT_CLAIMED",
  "metrics": [
    {
      "coverage": "No exact-source compiler-observed verification dependency graph supplied.",
      "id": "spectral_log_volume",
      "profile": "docs/reference/ranking-profile.json",
      "profile_id": "spectral-volume-radius3-v1",
      "profile_sha256": "f8800b2ae8ab1d08df856bc79abc53dbafa1cbd922963b7247e927bf0ed9afd6",
      "radius": 3,
      "reason": "verification_dependency_graph_unavailable",
      "status": "UNAVAILABLE",
      "value": null
    }
  ],
  "schema": "grwtsk.source-declaration-article/1",
  "slug": "certifiedworkspaceupgraderesult--1b918308353e8e28713b972a",
  "source": {
    "blob": "ee0178bbe5615474df5efaf83d13d1b51723cd5b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 279,
    "line": 139,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CertifiedUpgrade/Variant3d7bffea037492d7b8b62c9eee475089981cca97c2ad25f49f6b8b41263aaa36.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:1b918308353e8e28713b972a90195cbbd77b3d36841c881a1c7946a293f6b9ca",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CertifiedUpgrade/Variant3d7bffea037492d7b8b62c9eee475089981cca97c2ad25f49f6b8b41263aaa36.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:87176815c26175f23904a6af247d4db94aa3160d766447f412efc7f3d6514a7c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 139–279.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
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
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CertifiedUpgrade/Variant3d7bffea037492d7b8b62c9eee475089981cca97c2ad25f49f6b8b41263aaa36.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CertifiedUpgrade/Variant3d7bffea037492d7b8b62c9eee475089981cca97c2ad25f49f6b8b41263aaa36.lean#L139).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ee0178bbe5615474df5efaf83d13d1b51723cd5b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
