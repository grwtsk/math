# RepresentsDeclaredAt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:9ed4ce1c42fe93afe72ce289554f305c8cfaab00103c3e894bd1189929fff586",
  "kind": "inductive",
  "lexical_name": "RepresentsDeclaredAt",
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
  "slug": "representsdeclaredat--5dede6be5d62fe6ac3556e19",
  "source": {
    "blob": "a61b6ead0b66b2d0b6cfc6a42a2e7a5b55504c41",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 82,
    "line": 29,
    "path": "GRWTSK/Analysis/SpecialFunctions/Coverage/Variant8ed9f01a6effc94d43902558fc8db9cf8933b46b32cf0b46a5b34d50b037fceb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:5dede6be5d62fe6ac3556e194b6cf1b8cf9cc86cc9eefd1221483a50175a1313",
  "verification": {
    "reference": "docs/verification/Analysis/SpecialFunctions/Coverage/Variant8ed9f01a6effc94d43902558fc8db9cf8933b46b32cf0b46a5b34d50b037fceb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `inductive` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:9ed4ce1c42fe93afe72ce289554f305c8cfaab00103c3e894bd1189929fff586`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 29–82.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
inductive RepresentsDeclaredAt :
    Gamma -> ExtendedEML -> DeclaredSurfaceObject -> Prop where
  | finiteEML (Γ : Gamma) (f : FiniteEMLObject) :
      RepresentsDeclaredAt Γ (ExtendedEML.finite emlOneTree)
        (DeclaredSurfaceObject.finiteEML f)
  | matrix (Γ : Gamma) (M : BinaryLogicMatrix rows cols) :
      RepresentsDeclaredAt Γ (ExtendedEML.binaryMatrixWitness M)
        (DeclaredSurfaceObject.matrix M)
  | bijectiveFlow (Γ : Gamma) (F : BinaryLogicMatrixFlow rows cols) :
      RepresentsDeclaredAt Γ (ExtendedEML.bijectiveFlowWitness F)
        (DeclaredSurfaceObject.bijectiveFlow F)
  | classical (Γ : Gamma) (f : ClassicalSmoothAnalyticFunction) :
      RepresentsDeclaredAt Γ (classicalWitness f)
        (DeclaredSurfaceObject.classical f)
  | measurable (Γ : Gamma) (f : CertifiedMeasurableFunction) :
      RepresentsDeclaredAt Γ (ExtendedEML.measurableAtom f)
        (DeclaredSurfaceObject.measurable f)
  | fractal (Γ : Gamma) (f : CertifiedNowhereDifferentiableFractalFunction) :
      RepresentsDeclaredAt Γ (ExtendedEML.fractalWitness f)
        (DeclaredSurfaceObject.fractal f)
  | zetaMobiusFractal (Γ : Gamma) (f : ZetaMobiusFractalFunction) :
      RepresentsDeclaredAt Γ (ExtendedEML.zetaMobiusFractalWitness f)
        (DeclaredSurfaceObject.zetaMobiusFractal f)
  | oracle (Γ : Gamma) (f : OracleRepresentableFunction) :
      RepresentsDeclaredAt Γ (ExtendedEML.oracleWitness f)
        (DeclaredSurfaceObject.oracle f)
  | heatFlow (Γ : Gamma) (f : HeatFlowRepresentableObject) :
      RepresentsDeclaredAt Γ (ExtendedEML.heatFlowWitness f)
        (DeclaredSurfaceObject.heatFlow f)
  | heatAveraging (Γ : Gamma) (f : HeatAveragingRepresentableObject) :
      RepresentsDeclaredAt Γ (ExtendedEML.heatAveragingWitness f)
        (DeclaredSurfaceObject.heatAveraging f)
  | chainComplex (Γ : Gamma) (f : ChainComplexRepresentableObject) :
      RepresentsDeclaredAt Γ (ExtendedEML.chainComplexWitness f)
        (DeclaredSurfaceObject.chainComplex f)
  | homologyStable (Γ : Gamma) (f : HomologyStableFlowObject) :
      RepresentsDeclaredAt Γ (ExtendedEML.homologyStabilityWitness f)
        (DeclaredSurfaceObject.homologyStable f)
  | ricciFlow (Γ : Gamma) (f : RicciFlowRepresentableObject) :
      RepresentsDeclaredAt Γ (ExtendedEML.ricciFlowWitness f)
        (DeclaredSurfaceObject.ricciFlow f)
  | ricciSurgery (Γ : Gamma) (f : RicciSurgeryRepresentableObject) :
      RepresentsDeclaredAt Γ (ExtendedEML.ricciSurgeryWitness f)
        (DeclaredSurfaceObject.ricciSurgery f)
  | extinctionTopology (Γ : Gamma) (f : ExtinctionTopologyObject) :
      RepresentsDeclaredAt Γ (ExtendedEML.extinctionTopologyWitness f)
        (DeclaredSurfaceObject.extinctionTopology f)
  | infiniteTime (Γ : Gamma) (f : InfiniteTimeRepresentableFunction) :
      RepresentsDeclaredAt Γ (ExtendedEML.infiniteTimeWitness f)
        (DeclaredSurfaceObject.infiniteTime f)
  | choice (Γ : Gamma) (f : ChoiceDependentObject) :
      RepresentsDeclaredAt Γ (ExtendedEML.choiceWitness f)
        (DeclaredSurfaceObject.choice f)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/SpecialFunctions/Coverage/Variant8ed9f01a6effc94d43902558fc8db9cf8933b46b32cf0b46a5b34d50b037fceb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/SpecialFunctions/Coverage/Variant8ed9f01a6effc94d43902558fc8db9cf8933b46b32cf0b46a5b34d50b037fceb.lean#L29).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a61b6ead0b66b2d0b6cfc6a42a2e7a5b55504c41` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
