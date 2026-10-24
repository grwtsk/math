# Verification target: GRWTSK.Algebra.LinearAlgebra.IsometryEquiv.Variant59d54536602da6c67876623a6517475926e5c1d2f83d1b8e60cf923f7541bccd

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d52c48b4fc5470fb0c879a444d4a95a2b1e114d4",
  "lexical_observation_count": 19,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/IsometryEquiv/Variant59d54536602da6c67876623a6517475926e5c1d2f83d1b8e60cf923f7541bccd.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/IsometryEquiv/Variant59d54536602da6c67876623a6517475926e5c1d2f83d1b8e60cf923f7541bccd.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/IsometryEquiv/Variant59d54536602da6c67876623a6517475926e5c1d2f83d1b8e60cf923f7541bccd.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d52c48b4fc5470fb0c879a444d4a95a2b1e114d4`.

Source path: `GRWTSK/Algebra/LinearAlgebra/IsometryEquiv/Variant59d54536602da6c67876623a6517475926e5c1d2f83d1b8e60cf923f7541bccd.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/IsometryEquiv/Variant59d54536602da6c67876623a6517475926e5c1d2f83d1b8e60cf923f7541bccd.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.LinearAlgebra.QuadraticForm.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.QuadraticForm.Isometry` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [IsometryEquiv](../../../../../mathematics/Algebra/LinearAlgebra/IsometryEquiv/Variant59d54536602da6c67876623a6517475926e5c1d2f83d1b8e60cf923f7541bccd.lean/declarations/isometryequiv--60fdb086f3682d3a4751ab19.md) | 45 | `declaration-track:60fdb086f3682d3a4751ab19f9605e64e36feffe55801f29dc101e6c9696e6c5` |
| 2 | `def` | [Equivalent](../../../../../mathematics/Algebra/LinearAlgebra/IsometryEquiv/Variant59d54536602da6c67876623a6517475926e5c1d2f83d1b8e60cf923f7541bccd.lean/declarations/equivalent--ff0014d14ec1dc7762b99c76.md) | 52 | `declaration-track:ff0014d14ec1dc7762b99c76613879500b5dea4eb99a6770aa0447efa95bad9b` |
| 3 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/IsometryEquiv/Variant59d54536602da6c67876623a6517475926e5c1d2f83d1b8e60cf923f7541bccd.lean/declarations/instance--0503e408c171819605f5dd28.md) | 59 | `declaration-track:0503e408c171819605f5dd28645f0493d43e21a1194b165af8e18c63b98cd4ad` |
| 4 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/IsometryEquiv/Variant59d54536602da6c67876623a6517475926e5c1d2f83d1b8e60cf923f7541bccd.lean/declarations/instance--d54e2737dae68086406bf403.md) | 66 | `declaration-track:d54e2737dae68086406bf403ec639bab534689f091d2b819ff80453b4d91105f` |
| 5 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/IsometryEquiv/Variant59d54536602da6c67876623a6517475926e5c1d2f83d1b8e60cf923f7541bccd.lean/declarations/instance--7374980a59c71d83a73d2cc7.md) | 71 | `declaration-track:7374980a59c71d83a73d2cc74b347386e74cea5f10488b9ea3f7b0e7106b8478` |
| 6 | `theorem` | [coe_toLinearEquiv](../../../../../mathematics/Algebra/LinearAlgebra/IsometryEquiv/Variant59d54536602da6c67876623a6517475926e5c1d2f83d1b8e60cf923f7541bccd.lean/declarations/coe-tolinearequiv--a2c57886ff9f6d9e2ab45a74.md) | 75 | `result-track:a2c57886ff9f6d9e2ab45a74a9a2796517439be06be01da35bc4687ecf885913` |
| 7 | `theorem` | [map_app](../../../../../mathematics/Algebra/LinearAlgebra/IsometryEquiv/Variant59d54536602da6c67876623a6517475926e5c1d2f83d1b8e60cf923f7541bccd.lean/declarations/map-app--4ecfc54b937af43639094d79.md) | 79 | `result-track:4ecfc54b937af43639094d79e907d97e704e0d665b626a6ab4a3a1a9f4b4d8fe` |
| 8 | `def` | [refl](../../../../../mathematics/Algebra/LinearAlgebra/IsometryEquiv/Variant59d54536602da6c67876623a6517475926e5c1d2f83d1b8e60cf923f7541bccd.lean/declarations/refl--6dd6f264bd60dd22a43566a4.md) | 84 | `declaration-track:6dd6f264bd60dd22a43566a4b605c3a2d6212629f0ef4bad0cb5bad5e2781176` |
| 9 | `def` | [symm](../../../../../mathematics/Algebra/LinearAlgebra/IsometryEquiv/Variant59d54536602da6c67876623a6517475926e5c1d2f83d1b8e60cf923f7541bccd.lean/declarations/symm--e8d38021a062e2b93806b1aa.md) | 89 | `declaration-track:e8d38021a062e2b93806b1aa9982c7a1cb577a1fe941aaba990c1720d786ac1b` |
| 10 | `def` | [trans](../../../../../mathematics/Algebra/LinearAlgebra/IsometryEquiv/Variant59d54536602da6c67876623a6517475926e5c1d2f83d1b8e60cf923f7541bccd.lean/declarations/trans--a57d5b1eb22cfc01bd8fbc93.md) | 95 | `declaration-track:a57d5b1eb22cfc01bd8fbc936cd401cdc8ae0ac9b80adea289a3d92e348c32d6` |
| 11 | `def` | [toIsometry](../../../../../mathematics/Algebra/LinearAlgebra/IsometryEquiv/Variant59d54536602da6c67876623a6517475926e5c1d2f83d1b8e60cf923f7541bccd.lean/declarations/toisometry--ef8fc5ebeed7f5032a98a2bc.md) | 101 | `declaration-track:ef8fc5ebeed7f5032a98a2bcd6f999e3ef621de8154096d490d966b6f290504c` |
| 12 | `theorem` | [refl](../../../../../mathematics/Algebra/LinearAlgebra/IsometryEquiv/Variant59d54536602da6c67876623a6517475926e5c1d2f83d1b8e60cf923f7541bccd.lean/declarations/refl--6e536840e4612d62a7d40aca.md) | 112 | `result-track:6e536840e4612d62a7d40aca2c6571afad89c13218b77ccbbbce0240a93c1ffa` |
| 13 | `theorem` | [symm](../../../../../mathematics/Algebra/LinearAlgebra/IsometryEquiv/Variant59d54536602da6c67876623a6517475926e5c1d2f83d1b8e60cf923f7541bccd.lean/declarations/symm--5dd5d2a97a9dd0412e8c89fd.md) | 116 | `result-track:5dd5d2a97a9dd0412e8c89fdd9f8ee71b7cb94fb07ddba9095551aa628721d79` |
| 14 | `theorem` | [trans](../../../../../mathematics/Algebra/LinearAlgebra/IsometryEquiv/Variant59d54536602da6c67876623a6517475926e5c1d2f83d1b8e60cf923f7541bccd.lean/declarations/trans--79113fe2e9dafb3a55d8f21e.md) | 120 | `result-track:79113fe2e9dafb3a55d8f21ecae1295d2dcb55592dd51b0148f7cfa03fa41730` |
| 15 | `def` | [isometryEquivOfCompLinearEquiv](../../../../../mathematics/Algebra/LinearAlgebra/IsometryEquiv/Variant59d54536602da6c67876623a6517475926e5c1d2f83d1b8e60cf923f7541bccd.lean/declarations/isometryequivofcomplinearequiv--3f4edc544f991a23ee4c2d8e.md) | 126 | `declaration-track:3f4edc544f991a23ee4c2d8e802b893b2e582e47b957a9b60514f73a23f3e570` |
| 16 | `def` | [isometryEquivBasisRepr](../../../../../mathematics/Algebra/LinearAlgebra/IsometryEquiv/Variant59d54536602da6c67876623a6517475926e5c1d2f83d1b8e60cf923f7541bccd.lean/declarations/isometryequivbasisrepr--196415f858b5d73ab2bb1d67.md) | 137 | `declaration-track:196415f858b5d73ab2bb1d677f37179080af11d200690c27ace490d3e20f43e4` |
| 17 | `def` | [isometryEquivWeightedSumSquares](../../../../../mathematics/Algebra/LinearAlgebra/IsometryEquiv/Variant59d54536602da6c67876623a6517475926e5c1d2f83d1b8e60cf923f7541bccd.lean/declarations/isometryequivweightedsumsquares--8762ca6f0068607d688f65d6.md) | 148 | `declaration-track:8762ca6f0068607d688f65d62bbba5b40be4169663ba9e3f01dd33a6e18f8283` |
| 18 | `theorem` | [equivalent_weightedSumSquares](../../../../../mathematics/Algebra/LinearAlgebra/IsometryEquiv/Variant59d54536602da6c67876623a6517475926e5c1d2f83d1b8e60cf923f7541bccd.lean/declarations/equivalent-weightedsumsquares--b64975cdd367b21248512ef3.md) | 161 | `result-track:b64975cdd367b21248512ef330fcc7251989415de41fca5408ced04006f86d47` |
| 19 | `theorem` | [equivalent_weightedSumSquares_units_of_nondegenerate'](../../../../../mathematics/Algebra/LinearAlgebra/IsometryEquiv/Variant59d54536602da6c67876623a6517475926e5c1d2f83d1b8e60cf923f7541bccd.lean/declarations/equivalent-weightedsumsquares-units-of-nondegenerate--80cd2caa8e5db41422f8a6ed.md) | 166 | `result-track:80cd2caa8e5db41422f8a6ed7a4500d56795e257b7ca8f45a287f8fce228986b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
