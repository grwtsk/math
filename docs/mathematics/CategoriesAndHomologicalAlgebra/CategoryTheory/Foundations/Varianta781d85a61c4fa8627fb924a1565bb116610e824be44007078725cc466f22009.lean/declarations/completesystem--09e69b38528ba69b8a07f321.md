# CompleteSystem

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:234489ef29f81e51ff15bf2479acd346cad2b902413fb1b79fe1081c5fb48fc8",
  "kind": "structure",
  "lexical_name": "CompleteSystem",
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
  "slug": "completesystem--09e69b38528ba69b8a07f321",
  "source": {
    "blob": "764e5d0f985b6fea4190a92291bb149d380759c1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 312,
    "line": 265,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Foundations/Varianta781d85a61c4fa8627fb924a1565bb116610e824be44007078725cc466f22009.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:09e69b38528ba69b8a07f321e32d17534e94eff9f575d9e3d2036c2e7564770f",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Foundations/Varianta781d85a61c4fa8627fb924a1565bb116610e824be44007078725cc466f22009.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:234489ef29f81e51ff15bf2479acd346cad2b902413fb1b79fe1081c5fb48fc8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 265–312.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure CompleteSystem (S : RealizationSystem) : Prop where
  algebraicJacobson : S.P.algebraicJacobson
  algebraicClosedResiduesFinite : S.P.algebraicClosedResiduesFinite
  analytificationFunctorial : S.P.analytificationFunctorial
  supportMapNatural : S.P.supportMapNatural
  analytificationPreservesSeparatedness : S.P.analytificationPreservesSeparatedness
  analytificationPreservesFiberProducts : S.P.analytificationPreservesFiberProducts
  analytificationPreservesBaseChange : S.P.analytificationPreservesBaseChange
  affinoidJacobson : S.P.affinoidJacobson
  affinoidClosedResiduesFinite : S.P.affinoidClosedResiduesFinite
  stronglyNoetherian : S.P.stronglyNoetherian
  sheafyFromStrongNoetherian : S.P.sheafy
  rationalDomainAcyclic : S.P.rationalDomainAcyclic
  stableUniformSheafiness :
    S.P.stablyUniformAlternative → S.P.sheafy
  rigidBerkovichEquivalence :
    EquivalenceWitness S.carrier.functors.RB
  berkovichAdicEquivalence :
    EquivalenceWitness S.carrier.functors.BA
  comparisonRestrictsToProfile : S.P.comparisonRestrictsToProfile
  raynaudEquivalence :
    EquivalenceWitness S.carrier.functors.RigEta
  separatedFormalModelsExist : S.P.separatedFormalModelsExist
  specializationNatural : S.P.specializationNatural
  admissibleBlowupsGenericFiberInvariant :
    S.P.admissibleBlowupsGenericFiberInvariant
  henselianChartPairs : S.P.henselianChartPairs
  operationClosure : S.P.operationClosure
  prismaticBridge :
    S.P.tateAdmissiblePrism → S.P.prismaticBridge
  globalPlaceBridge :
    S.P.globalSourceWithPlaces → S.P.globalPlaceBridge
  properGAGA :
    S.P.properAlgebraicProfile →
      S.P.properGAGAFullFaithful ∧
      S.P.properGAGACoherentEquivalence
  henselianGAGA :
    S.P.properHenselianProfile →
      S.P.henselianGAGAExact ∧
      S.P.henselianGAGAFullFaithful ∧
      S.P.henselianGAGAEssentialImageSubobjectClosed ∧
      S.P.henselianGAGAEssentialImageQuotientClosed
  henselianEssentialSurjectivityBoundary :
    S.P.characteristicZeroOrMixedScope →
      ¬ S.P.unrestrictedHenselianEssentialSurjectivityCharZeroMixed


end FCRS
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Foundations/Varianta781d85a61c4fa8627fb924a1565bb116610e824be44007078725cc466f22009.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Foundations/Varianta781d85a61c4fa8627fb924a1565bb116610e824be44007078725cc466f22009.lean#L265).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `764e5d0f985b6fea4190a92291bb149d380759c1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
