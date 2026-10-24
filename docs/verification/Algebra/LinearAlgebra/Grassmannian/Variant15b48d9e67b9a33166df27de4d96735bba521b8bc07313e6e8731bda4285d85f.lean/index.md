# Verification target: GRWTSK.Algebra.LinearAlgebra.Grassmannian.Variant15b48d9e67b9a33166df27de4d96735bba521b8bc07313e6e8731bda4285d85f

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "508418463704a47a9302713d79259c9594e13820",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Grassmannian/Variant15b48d9e67b9a33166df27de4d96735bba521b8bc07313e6e8731bda4285d85f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Grassmannian/Variant15b48d9e67b9a33166df27de4d96735bba521b8bc07313e6e8731bda4285d85f.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Grassmannian/Variant15b48d9e67b9a33166df27de4d96735bba521b8bc07313e6e8731bda4285d85f.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `508418463704a47a9302713d79259c9594e13820`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Grassmannian/Variant15b48d9e67b9a33166df27de4d96735bba521b8bc07313e6e8731bda4285d85f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Grassmannian/Variant15b48d9e67b9a33166df27de4d96735bba521b8bc07313e6e8731bda4285d85f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.PositiveAtlas.Grassmannian.SignedGraph` — import line 6; external provider; requires a separately pinned dependency.
- `FormalResearch.PositiveAtlas.Grassmannian.Plucker24` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [squareChart24](../../../../../mathematics/Algebra/LinearAlgebra/Grassmannian/Variant15b48d9e67b9a33166df27de4d96735bba521b8bc07313e6e8731bda4285d85f.lean/declarations/squarechart24--b11bf4840939f4b5926beedc.md) | 25 | `declaration-track:b11bf4840939f4b5926beedccff24e3fae50f302cf7ec0b9bce755fe08fe47cd` |
| 2 | `theorem` | [signedGraph_two_eq_chart](../../../../../mathematics/Algebra/LinearAlgebra/Grassmannian/Variant15b48d9e67b9a33166df27de4d96735bba521b8bc07313e6e8731bda4285d85f.lean/declarations/signedgraph-two-eq-chart--ff4575e400320261d37f30a4.md) | 29 | `result-track:ff4575e400320261d37f30a4a2baff01c0ff6cae97788551fe94c9d17b7f8d4d` |
| 3 | `theorem` | [squareChart24_coordinates](../../../../../mathematics/Algebra/LinearAlgebra/Grassmannian/Variant15b48d9e67b9a33166df27de4d96735bba521b8bc07313e6e8731bda4285d85f.lean/declarations/squarechart24-coordinates--8c424ec39a1a065b20436293.md) | 36 | `result-track:8c424ec39a1a065b20436293efc84f208cb72a719f87f21970b5d673bc4f348f` |
| 4 | `def` | [pairColumns24](../../../../../mathematics/Algebra/LinearAlgebra/Grassmannian/Variant15b48d9e67b9a33166df27de4d96735bba521b8bc07313e6e8731bda4285d85f.lean/declarations/paircolumns24--2eeac4e702201b374eec4942.md) | 43 | `declaration-track:2eeac4e702201b374eec494213c9134eb9f0c1f34f86e8c6e635a6801d1b3b50` |
| 5 | `theorem` | [coordinates24_nonnegative_of_ordered](../../../../../mathematics/Algebra/LinearAlgebra/Grassmannian/Variant15b48d9e67b9a33166df27de4d96735bba521b8bc07313e6e8731bda4285d85f.lean/declarations/coordinates24-nonnegative-of-ordered--ebac8973d24ca2695d022635.md) | 49 | `result-track:ebac8973d24ca2695d0226352064dd77dc83350f277b1153eda923821d739600` |
| 6 | `def` | [squareNonnegative2](../../../../../mathematics/Algebra/LinearAlgebra/Grassmannian/Variant15b48d9e67b9a33166df27de4d96735bba521b8bc07313e6e8731bda4285d85f.lean/declarations/squarenonnegative2--1a5296298eb577327d297f87.md) | 61 | `declaration-track:1a5296298eb577327d297f8709139bd5df830b47badf524b2be06d65467582f5` |
| 7 | `theorem` | [finiteNonnegative_two_iff](../../../../../mathematics/Algebra/LinearAlgebra/Grassmannian/Variant15b48d9e67b9a33166df27de4d96735bba521b8bc07313e6e8731bda4285d85f.lean/declarations/finitenonnegative-two-iff--f1ba444de5eacecf5cfcdb1e.md) | 65 | `result-track:f1ba444de5eacecf5cfcdb1ed9ae0fac7075eddadb6b8885e14439fbce244c48` |
| 8 | `theorem` | [squareChart24_nonnegative_iff](../../../../../mathematics/Algebra/LinearAlgebra/Grassmannian/Variant15b48d9e67b9a33166df27de4d96735bba521b8bc07313e6e8731bda4285d85f.lean/declarations/squarechart24-nonnegative-iff--85ee03fea8b621280d2f013a.md) | 106 | `result-track:85ee03fea8b621280d2f013a41ba2ee7e94a2d6d6bca3c04ae352f3fad74a239` |
| 9 | `theorem` | [signedGraph_minorCorrespondence_two](../../../../../mathematics/Algebra/LinearAlgebra/Grassmannian/Variant15b48d9e67b9a33166df27de4d96735bba521b8bc07313e6e8731bda4285d85f.lean/declarations/signedgraph-minorcorrespondence-two--8aa267f2a7880a16285c8bae.md) | 125 | `result-track:8aa267f2a7880a16285c8bae9bf2ee38c2c4f8c3d0b24734e2bf1cc5d593083d` |
| 10 | `theorem` | [normalized_toeplitz_two_nonnegative](../../../../../mathematics/Algebra/LinearAlgebra/Grassmannian/Variant15b48d9e67b9a33166df27de4d96735bba521b8bc07313e6e8731bda4285d85f.lean/declarations/normalized-toeplitz-two-nonnegative--2ef43388107a339aeae6eac4.md) | 130 | `result-track:2ef43388107a339aeae6eac43c2fd8d0e28054fbd12e22a2d768b7191f0a43f9` |
| 11 | `theorem` | [toeplitz_two_boundary_coordinate](../../../../../mathematics/Algebra/LinearAlgebra/Grassmannian/Variant15b48d9e67b9a33166df27de4d96735bba521b8bc07313e6e8731bda4285d85f.lean/declarations/toeplitz-two-boundary-coordinate--31e10bc7e1ecdd761617226f.md) | 140 | `result-track:31e10bc7e1ecdd761617226f427449f24c7585fffe9792e991b5e838b442d78e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
