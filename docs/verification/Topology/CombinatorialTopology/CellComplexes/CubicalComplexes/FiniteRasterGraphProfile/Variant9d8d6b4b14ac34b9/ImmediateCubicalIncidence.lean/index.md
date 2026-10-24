# Verification target: GRWTSK.Topology.CombinatorialTopology.CellComplexes.CubicalComplexes.FiniteRasterGraphProfile.Variant9d8d6b4b14ac34b9.ImmediateCubicalIncidence

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "41d258259afecc0e76b3bb77d6d5661bb7923df7",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/CombinatorialTopology/CellComplexes/CubicalComplexes/FiniteRasterGraphProfile/Variant9d8d6b4b14ac34b9/ImmediateCubicalIncidence.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../../../mathematics/Topology/CombinatorialTopology/CellComplexes/CubicalComplexes/FiniteRasterGraphProfile/Variant9d8d6b4b14ac34b9/ImmediateCubicalIncidence.lean/index.md) · [Full source](../../../../../../../../mathematics/Topology/CombinatorialTopology/CellComplexes/CubicalComplexes/FiniteRasterGraphProfile/Variant9d8d6b4b14ac34b9/ImmediateCubicalIncidence.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `41d258259afecc0e76b3bb77d6d5661bb7923df7`.

Source path: `GRWTSK/Topology/CombinatorialTopology/CellComplexes/CubicalComplexes/FiniteRasterGraphProfile/Variant9d8d6b4b14ac34b9/ImmediateCubicalIncidence.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/CombinatorialTopology/CellComplexes/CubicalComplexes/FiniteRasterGraphProfile/Variant9d8d6b4b14ac34b9/ImmediateCubicalIncidence.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `BitMatrix.Surgery.Digital` — import line 19; external provider; requires a separately pinned dependency.
- `Mathlib.Combinatorics.SimpleGraph.Connectivity.Finite` — import line 20; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [incidenceFaces](../../../../../../../../mathematics/Topology/CombinatorialTopology/CellComplexes/CubicalComplexes/FiniteRasterGraphProfile/Variant9d8d6b4b14ac34b9/ImmediateCubicalIncidence.lean/declarations/incidencefaces--55c083719e0bebf7cf90baee.md) | 50 | `declaration-track:55c083719e0bebf7cf90baee3f5541fb747c9f95da15ea3432c450fc1dc8172a` |
| 2 | `theorem` | [incidenceFaces_square_eq](../../../../../../../../mathematics/Topology/CombinatorialTopology/CellComplexes/CubicalComplexes/FiniteRasterGraphProfile/Variant9d8d6b4b14ac34b9/ImmediateCubicalIncidence.lean/declarations/incidencefaces-square-eq--12da6fe1b59dda553f1cb2c4.md) | 67 | `result-track:12da6fe1b59dda553f1cb2c4cec3daec3bce3f6d18785ddfce1c5d4faf8207ee` |
| 3 | `theorem` | [mem_incidenceFaces_square_iff](../../../../../../../../mathematics/Topology/CombinatorialTopology/CellComplexes/CubicalComplexes/FiniteRasterGraphProfile/Variant9d8d6b4b14ac34b9/ImmediateCubicalIncidence.lean/declarations/mem-incidencefaces-square-iff--520adca0916d709cff9353dd.md) | 78 | `result-track:520adca0916d709cff9353ddc523aefdd5e2049163cdfa74b7322afee0739f85` |
| 4 | `theorem` | [edgeAdjacent_iff_shared_incidence_face](../../../../../../../../mathematics/Topology/CombinatorialTopology/CellComplexes/CubicalComplexes/FiniteRasterGraphProfile/Variant9d8d6b4b14ac34b9/ImmediateCubicalIncidence.lean/declarations/edgeadjacent-iff-shared-incidence-face--0ca40342b74ba8a537d6a797.md) | 91 | `result-track:0ca40342b74ba8a537d6a7979f2e5eb22e8c39f490636df5b6e1fab82a2f6f22` |
| 5 | `theorem` | [incidenceFaces_lowersDimension](../../../../../../../../mathematics/Topology/CombinatorialTopology/CellComplexes/CubicalComplexes/FiniteRasterGraphProfile/Variant9d8d6b4b14ac34b9/ImmediateCubicalIncidence.lean/declarations/incidencefaces-lowersdimension--b5e6e1a4430f2b243123a27c.md) | 104 | `result-track:b5e6e1a4430f2b243123a27cd2ede0164c734b053615508dbcb968b97a90b080` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
