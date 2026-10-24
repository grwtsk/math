# requiredFoundation

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:d305442654665ebf1929643f138b6d379a23c08fd2e39b5b391e75d6f85f089e",
  "kind": "def",
  "lexical_name": "requiredFoundation",
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
  "slug": "requiredfoundation--0d8a3db93125de945940baeb",
  "source": {
    "blob": "4b2d114d04cfb8d11bf02a732c6257ed48854912",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 200,
    "line": 158,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/ExtendedEML/Variante140b87d5e26bfd26e6f2feff93af92eda9d8d588e57e2fac09346fa22c935f2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:0d8a3db93125de945940baeb1c70906815f06129e4683b76d88e938a84e17b3a",
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

Occurrence: `declaration:d305442654665ebf1929643f138b6d379a23c08fd2e39b5b391e75d6f85f089e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 158–200.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def requiredFoundation : ExtendedEML -> LogicalFoundation
  | finite _ => LogicalFoundation.classical
  | binaryMatrixWitness _ => LogicalFoundation.constructive
  | bijectiveFlowWitness _ => LogicalFoundation.bijectiveFiniteFlow
  | constPi => LogicalFoundation.classical
  | constE => LogicalFoundation.classical
  | constI => LogicalFoundation.classical
  | neg _ => LogicalFoundation.classical
  | inv _ => LogicalFoundation.classical
  | add _ _ =>
      LogicalFoundation.classical
  | sub _ _ =>
      LogicalFoundation.classical
  | mul _ _ =>
      LogicalFoundation.classical
  | div _ _ =>
      LogicalFoundation.classical
  | pow _ _ =>
      LogicalFoundation.classical
  | sqrt _ => LogicalFoundation.classical
  | sin _ => LogicalFoundation.classical
  | cos _ => LogicalFoundation.classical
  | tan _ => LogicalFoundation.classical
  | compose _ _ =>
      LogicalFoundation.classical
  | finiteSum _ => LogicalFoundation.classical
  | finiteProduct _ => LogicalFoundation.classical
  | measurableAtom _ => LogicalFoundation.measurable
  | simpleApproximation _ => LogicalFoundation.measurable
  | measurableLimit _ => LogicalFoundation.measurable
  | fractalWitness _ => LogicalFoundation.fractal
  | zetaMobiusFractalWitness _ => LogicalFoundation.fractal
  | oracleWitness _ => LogicalFoundation.oracle
  | heatFlowWitness _ => LogicalFoundation.heatFlow
  | heatAveragingWitness _ => LogicalFoundation.heatAveraging
  | chainComplexWitness _ => LogicalFoundation.chainComplex
  | homologyStabilityWitness _ => LogicalFoundation.homologyStability
  | ricciFlowWitness _ => LogicalFoundation.ricciFlow
  | ricciSurgeryWitness _ => LogicalFoundation.ricciSurgery
  | extinctionTopologyWitness _ => LogicalFoundation.extinctionTopology
  | infiniteTimeWitness _ => LogicalFoundation.infiniteTime
  | choiceWitness _ => LogicalFoundation.choice

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/ExtendedEML/Variante140b87d5e26bfd26e6f2feff93af92eda9d8d588e57e2fac09346fa22c935f2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/ExtendedEML/Variante140b87d5e26bfd26e6f2feff93af92eda9d8d588e57e2fac09346fa22c935f2.lean#L158).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4b2d114d04cfb8d11bf02a732c6257ed48854912` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
