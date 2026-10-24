# RepresentsDeclaredAt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a1cba991a810337fddda6f4213efaf35dcbb42e84438068fc8d730e3c7f8d1f5",
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
  "slug": "representsdeclaredat--5b4044b3b6a414f395144cfe",
  "source": {
    "blob": "b915dbe52c7868b466769375e7034b752107e300",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 90,
    "line": 37,
    "path": "GRWTSK/Analysis/SpecialFunctions/Coverage/Variant390d1245b6185d08df0375836c11019876f1a0b4294efb800e8bcf5590e459fa.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:5b4044b3b6a414f395144cfe752a7a5d2db6ccdb51c282c73b489bb340fd6ba1",
  "verification": {
    "reference": "docs/verification/Analysis/SpecialFunctions/Coverage/Variant390d1245b6185d08df0375836c11019876f1a0b4294efb800e8bcf5590e459fa.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `inductive` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:a1cba991a810337fddda6f4213efaf35dcbb42e84438068fc8d730e3c7f8d1f5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 37–90.

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

[Verification target and public status](../../../../../../verification/Analysis/SpecialFunctions/Coverage/Variant390d1245b6185d08df0375836c11019876f1a0b4294efb800e8bcf5590e459fa.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/SpecialFunctions/Coverage/Variant390d1245b6185d08df0375836c11019876f1a0b4294efb800e8bcf5590e459fa.lean#L37).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b915dbe52c7868b466769375e7034b752107e300` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
