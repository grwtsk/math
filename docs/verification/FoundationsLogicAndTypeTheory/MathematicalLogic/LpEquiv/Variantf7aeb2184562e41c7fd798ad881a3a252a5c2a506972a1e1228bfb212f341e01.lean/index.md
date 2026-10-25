# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.LpEquiv.Variantf7aeb2184562e41c7fd798ad881a3a252a5c2a506972a1e1228bfb212f341e01

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3d8e057f70a7b33fd02f1651e325717d3fc5985b",
  "lexical_observation_count": 23,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/LpEquiv/Variantf7aeb2184562e41c7fd798ad881a3a252a5c2a506972a1e1228bfb212f341e01.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/LpEquiv/Variantf7aeb2184562e41c7fd798ad881a3a252a5c2a506972a1e1228bfb212f341e01.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/LpEquiv/Variantf7aeb2184562e41c7fd798ad881a3a252a5c2a506972a1e1228bfb212f341e01.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3d8e057f70a7b33fd02f1651e325717d3fc5985b`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/LpEquiv/Variantf7aeb2184562e41c7fd798ad881a3a252a5c2a506972a1e1228bfb212f341e01.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/LpEquiv/Variantf7aeb2184562e41c7fd798ad881a3a252a5c2a506972a1e1228bfb212f341e01.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Normed.Lp.PiLp` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Normed.Lp.lpSpace` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.ContinuousMap.Bounded.Normed` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [Memℓp.all](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/LpEquiv/Variantf7aeb2184562e41c7fd798ad881a3a252a5c2a506972a1e1228bfb212f341e01.lean/declarations/mem-p-all--3101da09450f168310b26f20.md) | 59 | `result-track:3101da09450f168310b26f2004d54f0a7b8c6087691f4f27e6e6cffe97406a32` |
| 2 | `def` | [Equiv.lpPiLp](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/LpEquiv/Variantf7aeb2184562e41c7fd798ad881a3a252a5c2a506972a1e1228bfb212f341e01.lean/declarations/equiv-lppilp--8ba94f49f9526e686b13d0b3.md) | 66 | `declaration-track:8ba94f49f9526e686b13d0b3221abf7c8fc3ed78f557dd41d054ce0005285f20` |
| 3 | `theorem` | [coe_equiv_lpPiLp](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/LpEquiv/Variantf7aeb2184562e41c7fd798ad881a3a252a5c2a506972a1e1228bfb212f341e01.lean/declarations/coe-equiv-lppilp--34a8ebd545648242949733f1.md) | 72 | `result-track:34a8ebd545648242949733f1276baf68a1fd310fd2b6bf4f108773eb1e3976bd` |
| 4 | `theorem` | [coe_equiv_lpPiLp_symm](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/LpEquiv/Variantf7aeb2184562e41c7fd798ad881a3a252a5c2a506972a1e1228bfb212f341e01.lean/declarations/coe-equiv-lppilp-symm--8bd044fdbb88a960002d95e7.md) | 75 | `result-track:8bd044fdbb88a960002d95e70195260653a87af1b2b3f577972e45f4c6e62149` |
| 5 | `def` | [AddEquiv.lpPiLp](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/LpEquiv/Variantf7aeb2184562e41c7fd798ad881a3a252a5c2a506972a1e1228bfb212f341e01.lean/declarations/addequiv-lppilp--33e05e5617a4583bffdbef7f.md) | 80 | `declaration-track:33e05e5617a4583bffdbef7f2157c27806c0b0ca9087b69c203d00f5d746e5f1` |
| 6 | `theorem` | [coe_addEquiv_lpPiLp](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/LpEquiv/Variantf7aeb2184562e41c7fd798ad881a3a252a5c2a506972a1e1228bfb212f341e01.lean/declarations/coe-addequiv-lppilp--aed34e176e2d87a4be865132.md) | 83 | `result-track:aed34e176e2d87a4be86513212701e9f80e143dcae89333322c6accb53307c96` |
| 7 | `theorem` | [coe_addEquiv_lpPiLp_symm](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/LpEquiv/Variantf7aeb2184562e41c7fd798ad881a3a252a5c2a506972a1e1228bfb212f341e01.lean/declarations/coe-addequiv-lppilp-symm--189c7df5c40bb889e73a2b6d.md) | 86 | `result-track:189c7df5c40bb889e73a2b6de80e8ffb3385614f0192b604b1bc5e3b9a1dbf9b` |
| 8 | `theorem` | [equiv_lpPiLp_norm](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/LpEquiv/Variantf7aeb2184562e41c7fd798ad881a3a252a5c2a506972a1e1228bfb212f341e01.lean/declarations/equiv-lppilp-norm--01e6f2f479af6b5bbfd7cf42.md) | 92 | `result-track:01e6f2f479af6b5bbfd7cf4225eceb5db83a26a00c1c0af98631e7be13536307` |
| 9 | `def` | [lpPiLpₗᵢ](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/LpEquiv/Variantf7aeb2184562e41c7fd798ad881a3a252a5c2a506972a1e1228bfb212f341e01.lean/declarations/lppilp--e17478e86ce44c87ba73350d.md) | 105 | `declaration-track:e17478e86ce44c87ba73350d2bd4479e017410bcf3b07de4d80508c1bc991cac` |
| 10 | `theorem` | [coe_lpPiLpₗᵢ](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/LpEquiv/Variantf7aeb2184562e41c7fd798ad881a3a252a5c2a506972a1e1228bfb212f341e01.lean/declarations/coe-lppilp--c68293e628d4d981081ff65f.md) | 112 | `result-track:c68293e628d4d981081ff65fe72afb0958b19e777f84e8bd3e52a1894d14269e` |
| 11 | `theorem` | [coe_lpPiLpₗᵢ_symm](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/LpEquiv/Variantf7aeb2184562e41c7fd798ad881a3a252a5c2a506972a1e1228bfb212f341e01.lean/declarations/coe-lppilp-symm--b29ac3c52d57aac8c8ea7bde.md) | 115 | `result-track:b29ac3c52d57aac8c8ea7bde16e0d4ec5f7d5b5aa7037756af987782926e6b3c` |
| 12 | `def` | [AddEquiv.lpBCF](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/LpEquiv/Variantf7aeb2184562e41c7fd798ad881a3a252a5c2a506972a1e1228bfb212f341e01.lean/declarations/addequiv-lpbcf--a19334d35e6f011d41d062a0.md) | 137 | `declaration-track:a19334d35e6f011d41d062a01212d90f855e187c7cd36b46e9b27469987b2b5f` |
| 13 | `theorem` | [coe_addEquiv_lpBCF](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/LpEquiv/Variantf7aeb2184562e41c7fd798ad881a3a252a5c2a506972a1e1228bfb212f341e01.lean/declarations/coe-addequiv-lpbcf--7fb535f214108d703942b03c.md) | 145 | `result-track:7fb535f214108d703942b03cc59173dcffe89b456688e19adddf8551f8f07592` |
| 14 | `theorem` | [coe_addEquiv_lpBCF_symm](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/LpEquiv/Variantf7aeb2184562e41c7fd798ad881a3a252a5c2a506972a1e1228bfb212f341e01.lean/declarations/coe-addequiv-lpbcf-symm--1da247ad252268a3596bb3c8.md) | 148 | `result-track:1da247ad252268a3596bb3c80b9a0edf732b1119cf71c1d415dd24b86e927599` |
| 15 | `def` | [lpBCFₗᵢ](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/LpEquiv/Variantf7aeb2184562e41c7fd798ad881a3a252a5c2a506972a1e1228bfb212f341e01.lean/declarations/lpbcf--bf3c0d34da67fbd8e89bc5d2.md) | 154 | `declaration-track:bf3c0d34da67fbd8e89bc5d26c781d13b1a753d270e50c1dad66b0aad1c27b48` |
| 16 | `theorem` | [coe_lpBCFₗᵢ](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/LpEquiv/Variantf7aeb2184562e41c7fd798ad881a3a252a5c2a506972a1e1228bfb212f341e01.lean/declarations/coe-lpbcf--814adbd8036f339d15ff7870.md) | 162 | `result-track:814adbd8036f339d15ff7870d751d905cc4ac3b23e69a5c345469191ae71e7e0` |
| 17 | `theorem` | [coe_lpBCFₗᵢ_symm](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/LpEquiv/Variantf7aeb2184562e41c7fd798ad881a3a252a5c2a506972a1e1228bfb212f341e01.lean/declarations/coe-lpbcf-symm--43b6fc15b276f31ee3509ff2.md) | 165 | `result-track:43b6fc15b276f31ee3509ff2102d518ec30fae3c2cf52ae95869a9b4e51b7cc6` |
| 18 | `def` | [RingEquiv.lpBCF](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/LpEquiv/Variantf7aeb2184562e41c7fd798ad881a3a252a5c2a506972a1e1228bfb212f341e01.lean/declarations/ringequiv-lpbcf--bf6db8a56462e7df16e436cd.md) | 173 | `declaration-track:bf6db8a56462e7df16e436cd6a706a1cca219e55ce5e8b3421e21b0310575265` |
| 19 | `theorem` | [coe_ringEquiv_lpBCF](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/LpEquiv/Variantf7aeb2184562e41c7fd798ad881a3a252a5c2a506972a1e1228bfb212f341e01.lean/declarations/coe-ringequiv-lpbcf--0cef734baa668d0262443ca6.md) | 180 | `result-track:0cef734baa668d0262443ca6838f587e716fbb8793baa7647ae84d3756720136` |
| 20 | `theorem` | [coe_ringEquiv_lpBCF_symm](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/LpEquiv/Variantf7aeb2184562e41c7fd798ad881a3a252a5c2a506972a1e1228bfb212f341e01.lean/declarations/coe-ringequiv-lpbcf-symm--75103697e6425c643680025b.md) | 183 | `result-track:75103697e6425c643680025bdc74d76c35f96868feb0431ecaa8d9913ae57483` |
| 21 | `def` | [AlgEquiv.lpBCF](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/LpEquiv/Variantf7aeb2184562e41c7fd798ad881a3a252a5c2a506972a1e1228bfb212f341e01.lean/declarations/algequiv-lpbcf--81420ee0659e1a2ed4a11760.md) | 192 | `declaration-track:81420ee0659e1a2ed4a117609d7d73189d777bab62e4c6c36b5c2eed969299d6` |
| 22 | `theorem` | [coe_algEquiv_lpBCF](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/LpEquiv/Variantf7aeb2184562e41c7fd798ad881a3a252a5c2a506972a1e1228bfb212f341e01.lean/declarations/coe-algequiv-lpbcf--18038e75e87ac94bcaaab0c6.md) | 198 | `result-track:18038e75e87ac94bcaaab0c6dd3906d4ff46f2acf03bd8421dcde85a34631f8a` |
| 23 | `theorem` | [coe_algEquiv_lpBCF_symm](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/LpEquiv/Variantf7aeb2184562e41c7fd798ad881a3a252a5c2a506972a1e1228bfb212f341e01.lean/declarations/coe-algequiv-lpbcf-symm--f87dfa0740afa4b79a02a4f9.md) | 201 | `result-track:f87dfa0740afa4b79a02a4f9481b3425d444bae6fdfab5c0f6bb240b9de8a986` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
