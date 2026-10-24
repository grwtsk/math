# witnessKind

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:356e30ae0625e332b7f0c5969aeb8cb3fc664da30af8de1de81cc0890163b891",
  "kind": "def",
  "lexical_name": "witnessKind",
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
  "slug": "witnesskind--d9d62b862def31f0b8df8f02",
  "source": {
    "blob": "4b2d114d04cfb8d11bf02a732c6257ed48854912",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 157,
    "line": 121,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/ExtendedEML/Variante140b87d5e26bfd26e6f2feff93af92eda9d8d588e57e2fac09346fa22c935f2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:d9d62b862def31f0b8df8f02e7903b1a75efdccdea0dc16546c6362f28fa61b5",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/ExtendedEML/Variante140b87d5e26bfd26e6f2feff93af92eda9d8d588e57e2fac09346fa22c935f2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:356e30ae0625e332b7f0c5969aeb8cb3fc664da30af8de1de81cc0890163b891`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 121–157.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def witnessKind : ExtendedEML -> CoverageWitnessKind
  | finite _ => CoverageWitnessKind.finiteEMLTree
  | binaryMatrixWitness _ => CoverageWitnessKind.binaryMatrix
  | bijectiveFlowWitness _ => CoverageWitnessKind.bijectiveFlow
  | constPi => CoverageWitnessKind.extendedClosure
  | constE => CoverageWitnessKind.extendedClosure
  | constI => CoverageWitnessKind.extendedClosure
  | neg _ => CoverageWitnessKind.extendedClosure
  | inv _ => CoverageWitnessKind.extendedClosure
  | add _ _ => CoverageWitnessKind.extendedClosure
  | sub _ _ => CoverageWitnessKind.extendedClosure
  | mul _ _ => CoverageWitnessKind.extendedClosure
  | div _ _ => CoverageWitnessKind.extendedClosure
  | pow _ _ => CoverageWitnessKind.extendedClosure
  | sqrt _ => CoverageWitnessKind.extendedClosure
  | sin _ => CoverageWitnessKind.extendedClosure
  | cos _ => CoverageWitnessKind.extendedClosure
  | tan _ => CoverageWitnessKind.extendedClosure
  | compose _ _ => CoverageWitnessKind.extendedClosure
  | finiteSum _ => CoverageWitnessKind.extendedClosure
  | finiteProduct _ => CoverageWitnessKind.extendedClosure
  | measurableAtom _ => CoverageWitnessKind.measurableAtom
  | simpleApproximation _ => CoverageWitnessKind.simpleApproximation
  | measurableLimit _ => CoverageWitnessKind.measurableLimit
  | fractalWitness _ => CoverageWitnessKind.certifiedFractal
  | zetaMobiusFractalWitness _ => CoverageWitnessKind.zetaMobiusFractal
  | oracleWitness _ => CoverageWitnessKind.oracle
  | heatFlowWitness _ => CoverageWitnessKind.heatFlow
  | heatAveragingWitness _ => CoverageWitnessKind.heatAveraging
  | chainComplexWitness _ => CoverageWitnessKind.chainComplex
  | homologyStabilityWitness _ => CoverageWitnessKind.homologyStability
  | ricciFlowWitness _ => CoverageWitnessKind.ricciFlow
  | ricciSurgeryWitness _ => CoverageWitnessKind.ricciSurgery
  | extinctionTopologyWitness _ => CoverageWitnessKind.extinctionTopology
  | infiniteTimeWitness _ => CoverageWitnessKind.infiniteTime
  | choiceWitness _ => CoverageWitnessKind.choice

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/ExtendedEML/Variante140b87d5e26bfd26e6f2feff93af92eda9d8d588e57e2fac09346fa22c935f2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/ExtendedEML/Variante140b87d5e26bfd26e6f2feff93af92eda9d8d588e57e2fac09346fa22c935f2.lean#L121).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4b2d114d04cfb8d11bf02a732c6257ed48854912` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
