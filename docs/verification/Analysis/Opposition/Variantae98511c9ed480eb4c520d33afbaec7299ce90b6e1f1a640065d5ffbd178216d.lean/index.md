# Verification target: GRWTSK.Analysis.Opposition.Variantae98511c9ed480eb4c520d33afbaec7299ce90b6e1f1a640065d5ffbd178216d

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4b5b6071d69f513b7b58b43c9b22515fda246004",
  "lexical_observation_count": 24,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/Opposition/Variantae98511c9ed480eb4c520d33afbaec7299ce90b6e1f1a640065d5ffbd178216d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Analysis/Opposition/Variantae98511c9ed480eb4c520d33afbaec7299ce90b6e1f1a640065d5ffbd178216d.lean/index.md) · [Full source](../../../../mathematics/Analysis/Opposition/Variantae98511c9ed480eb4c520d33afbaec7299ce90b6e1f1a640065d5ffbd178216d.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4b5b6071d69f513b7b58b43c9b22515fda246004`.

Source path: `GRWTSK/Analysis/Opposition/Variantae98511c9ed480eb4c520d33afbaec7299ce90b6e1f1a640065d5ffbd178216d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/Opposition/Variantae98511c9ed480eb4c520d33afbaec7299ce90b6e1f1a640065d5ffbd178216d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `DAF.Rhetorical.Hilbert.Point` — import line 1; external provider; requires a separately pinned dependency.
- `DAF.Rhetorical.Relations.Affinity` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Normed.Operator.Extend` — import line 3; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Finsupp.LSum` — import line 4; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [OppositionProfile](../../../../mathematics/Analysis/Opposition/Variantae98511c9ed480eb4c520d33afbaec7299ce90b6e1f1a640065d5ffbd178216d.lean/declarations/oppositionprofile--1b27153640bc88842a84cc41.md) | 22 | `declaration-track:1b27153640bc88842a84cc410f2ea875c0efa552bc9c4f6a14248ea900dba5a7` |
| 2 | `def` | [oppositionAffinity](../../../../mathematics/Analysis/Opposition/Variantae98511c9ed480eb4c520d33afbaec7299ce90b6e1f1a640065d5ffbd178216d.lean/declarations/oppositionaffinity--fe4f46605955584aec068e39.md) | 28 | `declaration-track:fe4f46605955584aec068e39ceabc6aa9c337a78ee4a6a09d70839a52bc3ea5c` |
| 3 | `theorem` | [oppositionAffinity_mem_Icc](../../../../mathematics/Analysis/Opposition/Variantae98511c9ed480eb4c520d33afbaec7299ce90b6e1f1a640065d5ffbd178216d.lean/declarations/oppositionaffinity-mem-icc--dee1915e8d8b83d7822bb1d6.md) | 35 | `result-track:dee1915e8d8b83d7822bb1d6753cd51842d45a73655796e2f6d384e4033c5905` |
| 4 | `structure` | [OppositionStructure](../../../../mathematics/Analysis/Opposition/Variantae98511c9ed480eb4c520d33afbaec7299ce90b6e1f1a640065d5ffbd178216d.lean/declarations/oppositionstructure--b145f111c46a4d3c9838f379.md) | 46 | `declaration-track:b145f111c46a4d3c9838f37922009cb382f37c7a72c3181de9c9e25947df99bf` |
| 5 | `def` | [indexEquiv](../../../../mathematics/Analysis/Opposition/Variantae98511c9ed480eb4c520d33afbaec7299ce90b6e1f1a640065d5ffbd178216d.lean/declarations/indexequiv--b1f4cb5702a2a72e9d4cac97.md) | 60 | `declaration-track:b1f4cb5702a2a72e9d4cac977279e8fa26089e0613c79deacee415d0b6c2e093` |
| 6 | `theorem` | [indexEquiv_apply](../../../../mathematics/Analysis/Opposition/Variantae98511c9ed480eb4c520d33afbaec7299ce90b6e1f1a640065d5ffbd178216d.lean/declarations/indexequiv-apply--ca818dee2a70022936702530.md) | 72 | `result-track:ca818dee2a70022936702530cecf6afa8b446af9fee32577516cdea99a99097e` |
| 7 | `def` | [rawEquiv](../../../../mathematics/Analysis/Opposition/Variantae98511c9ed480eb4c520d33afbaec7299ce90b6e1f1a640065d5ffbd178216d.lean/declarations/rawequiv--56f1055f7f9b34c75ce932e3.md) | 81 | `declaration-track:56f1055f7f9b34c75ce932e3d251b20384cdb35a4250f08633464c7efab575bd` |
| 8 | `theorem` | [rawEquiv_basisVector](../../../../mathematics/Analysis/Opposition/Variantae98511c9ed480eb4c520d33afbaec7299ce90b6e1f1a640065d5ffbd178216d.lean/declarations/rawequiv-basisvector--317634a883cd7366989b8e70.md) | 86 | `result-track:317634a883cd7366989b8e70b1c9964004500b8ac65c06b8906ad948e7df5d92` |
| 9 | `theorem` | [rawEquiv_inner](../../../../mathematics/Analysis/Opposition/Variantae98511c9ed480eb4c520d33afbaec7299ce90b6e1f1a640065d5ffbd178216d.lean/declarations/rawequiv-inner--d8b876b94f7052452d201fac.md) | 95 | `result-track:d8b876b94f7052452d201fac2d76a157a84e86a2edaeaf77f58a72b93d48e1d5` |
| 10 | `theorem` | [rawEquiv_involutive](../../../../mathematics/Analysis/Opposition/Variantae98511c9ed480eb4c520d33afbaec7299ce90b6e1f1a640065d5ffbd178216d.lean/declarations/rawequiv-involutive--f39ee865e7b53987518eb231.md) | 105 | `result-track:f39ee865e7b53987518eb2317cbae3f41c8d511c871bea9717ab40d715ac6c39` |
| 11 | `theorem` | [rawToRhetorical_denseRange](../../../../mathematics/Analysis/Opposition/Variantae98511c9ed480eb4c520d33afbaec7299ce90b6e1f1a640065d5ffbd178216d.lean/declarations/rawtorhetorical-denserange--c01b5a2ba80f4c0a45c00f5f.md) | 117 | `result-track:c01b5a2ba80f4c0a45c00f5fbb10b12bb33a6da6c6983ff638736c96eaabd58e` |
| 12 | `theorem` | [rawToRhetorical_rawEquiv_norm](../../../../mathematics/Analysis/Opposition/Variantae98511c9ed480eb4c520d33afbaec7299ce90b6e1f1a640065d5ffbd178216d.lean/declarations/rawtorhetorical-rawequiv-norm--44ce26331782c4b07bdb7fe1.md) | 127 | `result-track:44ce26331782c4b07bdb7fe1fa291d5a53be37f7f362dd52486865fdee158660` |
| 13 | `def` | [unitary](../../../../mathematics/Analysis/Opposition/Variantae98511c9ed480eb4c520d33afbaec7299ce90b6e1f1a640065d5ffbd178216d.lean/declarations/unitary--87d5980167ca4158bc0388d2.md) | 140 | `declaration-track:87d5980167ca4158bc0388d29ce7ee91fb4b649dfec937c1a0e8a6aa2a4b547d` |
| 14 | `theorem` | [unitary_rawToRhetorical](../../../../mathematics/Analysis/Opposition/Variantae98511c9ed480eb4c520d33afbaec7299ce90b6e1f1a640065d5ffbd178216d.lean/declarations/unitary-rawtorhetorical--17d935611b038ae1289c0326.md) | 151 | `result-track:17d935611b038ae1289c03262da0d66133dfec31af526d5d0fe7eee3189f17f1` |
| 15 | `theorem` | [unitary_rhetoricalVector](../../../../mathematics/Analysis/Opposition/Variantae98511c9ed480eb4c520d33afbaec7299ce90b6e1f1a640065d5ffbd178216d.lean/declarations/unitary-rhetoricalvector--6d11285ab53d5ca7b5835a08.md) | 168 | `result-track:6d11285ab53d5ca7b5835a08cfdcd13b2baeaff23ec2ecd021256842afb00154` |
| 16 | `theorem` | [unitary_involutive](../../../../mathematics/Analysis/Opposition/Variantae98511c9ed480eb4c520d33afbaec7299ce90b6e1f1a640065d5ffbd178216d.lean/declarations/unitary-involutive--1e8e07615f381cbcc615d557.md) | 180 | `result-track:1e8e07615f381cbcc615d557a8a8cf7f7a1bd9dd82328d6fe2460c0df9565f7a` |
| 17 | `def` | [operator](../../../../mathematics/Analysis/Opposition/Variantae98511c9ed480eb4c520d33afbaec7299ce90b6e1f1a640065d5ffbd178216d.lean/declarations/operator--6603569c5294449fb27adc37.md) | 195 | `declaration-track:6603569c5294449fb27adc378cacc53ba1b044f93ae14c45e6def4b7c74c4f80` |
| 18 | `theorem` | [operator_idempotentInvolution](../../../../mathematics/Analysis/Opposition/Variantae98511c9ed480eb4c520d33afbaec7299ce90b6e1f1a640065d5ffbd178216d.lean/declarations/operator-idempotentinvolution--bfee1384a9e2d0af91d3c3b5.md) | 200 | `result-track:bfee1384a9e2d0af91d3c3b5e7db90d08451a42eb4f7106728ecbf6da74733fe` |
| 19 | `theorem` | [operator_selfAdjoint](../../../../mathematics/Analysis/Opposition/Variantae98511c9ed480eb4c520d33afbaec7299ce90b6e1f1a640065d5ffbd178216d.lean/declarations/operator-selfadjoint--b81e2572aab4681bee339c95.md) | 207 | `result-track:b81e2572aab4681bee339c9516a52e8dc1f5a1f79d86d8c2bffdf32b6a15f77c` |
| 20 | `def` | [ExactOpposition](../../../../mathematics/Analysis/Opposition/Variantae98511c9ed480eb4c520d33afbaec7299ce90b6e1f1a640065d5ffbd178216d.lean/declarations/exactopposition--fb4ed72fe488ff4e982bf8b3.md) | 220 | `declaration-track:fb4ed72fe488ff4e982bf8b323de95153eb55abdf1f1021c95f1ccb04ef34ab8` |
| 21 | `def` | [baseResidual](../../../../mathematics/Analysis/Opposition/Variantae98511c9ed480eb4c520d33afbaec7299ce90b6e1f1a640065d5ffbd178216d.lean/declarations/baseresidual--dbe4dfc9f415743e37e4b5bd.md) | 227 | `declaration-track:dbe4dfc9f415743e37e4b5bd5bc297093bed710369dfa1cabb1d0680bb4976a1` |
| 22 | `theorem` | [baseResidual_eq_zero_iff](../../../../mathematics/Analysis/Opposition/Variantae98511c9ed480eb4c520d33afbaec7299ce90b6e1f1a640065d5ffbd178216d.lean/declarations/baseresidual-eq-zero-iff--ae32437e5746985a435570b5.md) | 235 | `result-track:ae32437e5746985a435570b54663cfad84a0e2b870078f35be14bb0b94c13611` |
| 23 | `def` | [CoordinateAntipodes](../../../../mathematics/Analysis/Opposition/Variantae98511c9ed480eb4c520d33afbaec7299ce90b6e1f1a640065d5ffbd178216d.lean/declarations/coordinateantipodes--3013fda159d62b018bc2a3f4.md) | 247 | `declaration-track:3013fda159d62b018bc2a3f412507767d81d5d693da5687dc42a0301ee2bf34e` |
| 24 | `def` | [residual](../../../../mathematics/Analysis/Opposition/Variantae98511c9ed480eb4c520d33afbaec7299ce90b6e1f1a640065d5ffbd178216d.lean/declarations/residual--08aa7215519e571262830989.md) | 253 | `declaration-track:08aa7215519e571262830989f73ab2af2a235d53aba3f221f931e3cabf34c16b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
