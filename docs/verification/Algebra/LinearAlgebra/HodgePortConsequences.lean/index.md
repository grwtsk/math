# Verification target: GRWTSK.LinearAlgebra.HodgePortConsequences

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d7afb3ef25e5cb9c1ee84f961b5697bde740638d",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/LinearAlgebra/HodgePortConsequences.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/LinearAlgebra/HodgePortConsequences.lean/index.md) · [Full source](../../../../mathematics/Algebra/LinearAlgebra/HodgePortConsequences.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d7afb3ef25e5cb9c1ee84f961b5697bde740638d`.

Source path: `GRWTSK/LinearAlgebra/HodgePortConsequences.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/LinearAlgebra/HodgePortConsequences.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.LinearAlgebra.FramedFiberPort`](../../../../mathematics/Algebra/LinearAlgebra/FramedFiberPort.lean/index.md) — import line 1; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [IsHarmonic1](../../../../mathematics/Algebra/LinearAlgebra/HodgePortConsequences.lean/declarations/isharmonic1--cb88e1c459c18578a5152964.md) | 23 | `declaration-track:cb88e1c459c18578a51529641913e8b3a327eaf430a4626dbd8a34a59b4db443` |
| 2 | `theorem` | [delta_apply](../../../../mathematics/Algebra/LinearAlgebra/HodgePortConsequences.lean/declarations/delta-apply--d41b305106ccbde04f74cc78.md) | 35 | `result-track:d41b305106ccbde04f74cc787f96b221eb12fdc411bdf020981af24f0e2a5dd2` |
| 3 | `theorem` | [deltaStar_apply](../../../../mathematics/Algebra/LinearAlgebra/HodgePortConsequences.lean/declarations/deltastar-apply--ed46c770c15d4bfc929d96f2.md) | 41 | `result-track:ed46c770c15d4bfc929d96f2f8f19401db32ae0759d0a446305d21920e9a18ce` |
| 4 | `theorem` | [laplacian1_comm](../../../../mathematics/Algebra/LinearAlgebra/HodgePortConsequences.lean/declarations/laplacian1-comm--2a273a79d7ccfe370ccfbb1d.md) | 47 | `result-track:2a273a79d7ccfe370ccfbb1dfae2f5ea64e77e4f218f7db4478365e8b5517e7a` |
| 5 | `theorem` | [map_harmonic1](../../../../mathematics/Algebra/LinearAlgebra/HodgePortConsequences.lean/declarations/map-harmonic1--df313b8c756193596f3423cb.md) | 55 | `result-track:df313b8c756193596f3423cb89e2711dc0e567a209a9382233a056ac85fb94cc` |
| 6 | `def` | [identity](../../../../mathematics/Algebra/LinearAlgebra/HodgePortConsequences.lean/declarations/identity--aea1739fd63866d8d5263c19.md) | 65 | `declaration-track:aea1739fd63866d8d5263c19d3d71f9367cc2fe2d59d70d6769ad9982cc49777` |
| 7 | `def` | [comp](../../../../mathematics/Algebra/LinearAlgebra/HodgePortConsequences.lean/declarations/comp--2dae4ac2e85aa56ddc8f77df.md) | 76 | `declaration-track:2dae4ac2e85aa56ddc8f77dfb961a3991b51e441e9dc712dac51c8411621ee61` |
| 8 | `theorem` | [comp_map0_apply](../../../../mathematics/Algebra/LinearAlgebra/HodgePortConsequences.lean/declarations/comp-map0-apply--a5c8f37d618fe867b5866244.md) | 89 | `result-track:a5c8f37d618fe867b5866244b5ba907b03b721664f7fcec90d45ef639cd92b22` |
| 9 | `theorem` | [comp_map1_apply](../../../../mathematics/Algebra/LinearAlgebra/HodgePortConsequences.lean/declarations/comp-map1-apply--7c9099be0d869f8d977f5f0e.md) | 93 | `result-track:7c9099be0d869f8d977f5f0ee8cdb6d670370bc2311db903305997b96e9c2bc6` |
| 10 | `theorem` | [laplacian1_comm](../../../../mathematics/Algebra/LinearAlgebra/HodgePortConsequences.lean/declarations/laplacian1-comm--d417fe7a6ad5218ee23d3336.md) | 103 | `result-track:d417fe7a6ad5218ee23d33366936edd9be9b19e3d51f7a67becc258ac7449e4c` |
| 11 | `structure` | [ComplementaryHodgeProjectors](../../../../mathematics/Algebra/LinearAlgebra/HodgePortConsequences.lean/declarations/complementaryhodgeprojectors--dd38c14e0921a73f03c7ec80.md) | 112 | `declaration-track:dd38c14e0921a73f03c7ec805b9cb6777797ee9438cd440296f4459c5514d973` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
