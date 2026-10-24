# requiredFoundation

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:7d58ec412e643ca90508a50e38f2f617d934d1232e584af7a0f7c9f56da9f643",
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
  "slug": "requiredfoundation--d48aa8bd8e375b845c2b21fa",
  "source": {
    "blob": "f7c89382212e8ec7afc619e507ade6c93c54a599",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 208,
    "line": 166,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/ExtendedEML/Variant505e16a32c0434149b9537ff8672ce514fa712a9c11d176df8c1cb827861d658.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:d48aa8bd8e375b845c2b21fab9f732297c493699ac332f5d973185e9c3014f71",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/ExtendedEML/Variant505e16a32c0434149b9537ff8672ce514fa712a9c11d176df8c1cb827861d658.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:7d58ec412e643ca90508a50e38f2f617d934d1232e584af7a0f7c9f56da9f643`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 166–208.

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

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/ExtendedEML/Variant505e16a32c0434149b9537ff8672ce514fa712a9c11d176df8c1cb827861d658.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/ExtendedEML/Variant505e16a32c0434149b9537ff8672ce514fa712a9c11d176df8c1cb827861d658.lean#L166).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f7c89382212e8ec7afc619e507ade6c93c54a599` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
