# ExtendedEML

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a4f67caf74307c1eb78a259f1599fa4fd039ddefaa203795b83795f7954805fc",
  "kind": "inductive",
  "lexical_name": "ExtendedEML",
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
  "slug": "extendedeml--b97fec3d6adeedf84ed7bbb4",
  "source": {
    "blob": "4b2d114d04cfb8d11bf02a732c6257ed48854912",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 80,
    "line": 40,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/ExtendedEML/Variante140b87d5e26bfd26e6f2feff93af92eda9d8d588e57e2fac09346fa22c935f2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:b97fec3d6adeedf84ed7bbb4465fae556b842ea1b3cc2ae4f42feb12f4900e2c",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/ExtendedEML/Variante140b87d5e26bfd26e6f2feff93af92eda9d8d588e57e2fac09346fa22c935f2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `inductive` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:a4f67caf74307c1eb78a259f1599fa4fd039ddefaa203795b83795f7954805fc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 40–80.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
inductive ExtendedEML where
  | finite : {k : Nat} -> EMLTree k -> ExtendedEML
  | binaryMatrixWitness :
      {rows cols : Nat} -> BinaryLogicMatrix rows cols -> ExtendedEML
  | bijectiveFlowWitness :
      {rows cols : Nat} -> BinaryLogicMatrixFlow rows cols -> ExtendedEML
  | constPi : ExtendedEML
  | constE : ExtendedEML
  | constI : ExtendedEML
  | neg : ExtendedEML -> ExtendedEML
  | inv : ExtendedEML -> ExtendedEML
  | add : ExtendedEML -> ExtendedEML -> ExtendedEML
  | sub : ExtendedEML -> ExtendedEML -> ExtendedEML
  | mul : ExtendedEML -> ExtendedEML -> ExtendedEML
  | div : ExtendedEML -> ExtendedEML -> ExtendedEML
  | pow : ExtendedEML -> ExtendedEML -> ExtendedEML
  | sqrt : ExtendedEML -> ExtendedEML
  | sin : ExtendedEML -> ExtendedEML
  | cos : ExtendedEML -> ExtendedEML
  | tan : ExtendedEML -> ExtendedEML
  | compose : ExtendedEML -> ExtendedEML -> ExtendedEML
  | finiteSum : List ExtendedEML -> ExtendedEML
  | finiteProduct : List ExtendedEML -> ExtendedEML
  | measurableAtom : CertifiedMeasurableFunction -> ExtendedEML
  | simpleApproximation : CertifiedSimpleApproximationRef -> ExtendedEML
  | measurableLimit : CertifiedMeasurableLimitRef -> ExtendedEML
  | fractalWitness : CertifiedNowhereDifferentiableFractalFunction -> ExtendedEML
  | zetaMobiusFractalWitness : ZetaMobiusFractalFunction -> ExtendedEML
  | oracleWitness : OracleRepresentableFunction -> ExtendedEML
  | heatFlowWitness : HeatFlowRepresentableObject -> ExtendedEML
  | heatAveragingWitness : HeatAveragingRepresentableObject -> ExtendedEML
  | chainComplexWitness : ChainComplexRepresentableObject -> ExtendedEML
  | homologyStabilityWitness : HomologyStableFlowObject -> ExtendedEML
  | ricciFlowWitness : RicciFlowRepresentableObject -> ExtendedEML
  | ricciSurgeryWitness : RicciSurgeryRepresentableObject -> ExtendedEML
  | extinctionTopologyWitness : ExtinctionTopologyObject -> ExtendedEML
  | infiniteTimeWitness : InfiniteTimeRepresentableFunction -> ExtendedEML
  | choiceWitness : ChoiceDependentObject -> ExtendedEML

namespace ExtendedEML

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/ExtendedEML/Variante140b87d5e26bfd26e6f2feff93af92eda9d8d588e57e2fac09346fa22c935f2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/ExtendedEML/Variante140b87d5e26bfd26e6f2feff93af92eda9d8d588e57e2fac09346fa22c935f2.lean#L40).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4b2d114d04cfb8d11bf02a732c6257ed48854912` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
