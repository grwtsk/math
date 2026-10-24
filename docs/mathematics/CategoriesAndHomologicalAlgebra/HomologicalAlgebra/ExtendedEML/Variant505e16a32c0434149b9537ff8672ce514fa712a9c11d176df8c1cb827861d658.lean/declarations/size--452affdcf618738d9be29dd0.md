# size

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:adcceb2d6150f3341c015c73b5681218ef7c39d120182904be6df4e79f19e11a",
  "kind": "def",
  "lexical_name": "size",
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
  "slug": "size--452affdcf618738d9be29dd0",
  "source": {
    "blob": "f7c89382212e8ec7afc619e507ade6c93c54a599",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 125,
    "line": 89,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/ExtendedEML/Variant505e16a32c0434149b9537ff8672ce514fa712a9c11d176df8c1cb827861d658.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:452affdcf618738d9be29dd09b34d6ac8355ee0525878bf2d9359259039579bb",
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

Occurrence: `declaration:adcceb2d6150f3341c015c73b5681218ef7c39d120182904be6df4e79f19e11a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 89–125.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def size : ExtendedEML -> Nat
  | finite _ => 1
  | binaryMatrixWitness _ => 1
  | bijectiveFlowWitness _ => 1
  | constPi => 1
  | constE => 1
  | constI => 1
  | neg _ => 1
  | inv _ => 1
  | add _ _ => 1
  | sub _ _ => 1
  | mul _ _ => 1
  | div _ _ => 1
  | pow _ _ => 1
  | sqrt _ => 1
  | sin _ => 1
  | cos _ => 1
  | tan _ => 1
  | compose _ _ => 1
  | finiteSum _ => 1
  | finiteProduct _ => 1
  | measurableAtom _ => 1
  | simpleApproximation _ => 1
  | measurableLimit _ => 1
  | fractalWitness _ => 1
  | zetaMobiusFractalWitness _ => 1
  | oracleWitness _ => 1
  | heatFlowWitness _ => 1
  | heatAveragingWitness _ => 1
  | chainComplexWitness _ => 1
  | homologyStabilityWitness _ => 1
  | ricciFlowWitness _ => 1
  | ricciSurgeryWitness _ => 1
  | extinctionTopologyWitness _ => 1
  | infiniteTimeWitness _ => 1
  | choiceWitness _ => 1

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/ExtendedEML/Variant505e16a32c0434149b9537ff8672ce514fa712a9c11d176df8c1cb827861d658.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/ExtendedEML/Variant505e16a32c0434149b9537ff8672ce514fa712a9c11d176df8c1cb827861d658.lean#L89).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f7c89382212e8ec7afc619e507ade6c93c54a599` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
