# Verification target: GRWTSK.Algebra.Unitization.Variantc3bf32612a9677b9bf7fb2e950130bcf0785a12cd1766483c6c85f58ba86ca15

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f23d0d807ad6fd118a05c62611a31cf9f47e4f1b",
  "lexical_observation_count": 22,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Unitization/Variantc3bf32612a9677b9bf7fb2e950130bcf0785a12cd1766483c6c85f58ba86ca15.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Unitization/Variantc3bf32612a9677b9bf7fb2e950130bcf0785a12cd1766483c6c85f58ba86ca15.lean/index.md) · [Full source](../../../../mathematics/Algebra/Unitization/Variantc3bf32612a9677b9bf7fb2e950130bcf0785a12cd1766483c6c85f58ba86ca15.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f23d0d807ad6fd118a05c62611a31cf9f47e4f1b`.

Source path: `GRWTSK/Algebra/Unitization/Variantc3bf32612a9677b9bf7fb2e950130bcf0785a12cd1766483c6c85f58ba86ca15.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Unitization/Variantc3bf32612a9677b9bf7fb2e950130bcf0785a12cd1766483c6c85f58ba86ca15.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Algebra.Unitization` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Star.Subalgebra` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.GroupAction.Ring` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [lift_range_le](../../../../mathematics/Algebra/Unitization/Variantc3bf32612a9677b9bf7fb2e950130bcf0785a12cd1766483c6c85f58ba86ca15.lean/declarations/lift-range-le--f3a486075eec4a3a660cd573.md) | 53 | `result-track:f3a486075eec4a3a660cd5732065f56b2a3b284cfa8b18828028db775603393f` |
| 2 | `theorem` | [lift_range](../../../../mathematics/Algebra/Unitization/Variantc3bf32612a9677b9bf7fb2e950130bcf0785a12cd1766483c6c85f58ba86ca15.lean/declarations/lift-range--b7e3aa8842bee9efa96e726a.md) | 62 | `result-track:b7e3aa8842bee9efa96e726a6f6284ada821637c54ad6ce587f8750c0c3bef9b` |
| 3 | `def` | [unitization](../../../../mathematics/Algebra/Unitization/Variantc3bf32612a9677b9bf7fb2e950130bcf0785a12cd1766483c6c85f58ba86ca15.lean/declarations/unitization--8f6e332d6aee3d11afa38768.md) | 77 | `declaration-track:8f6e332d6aee3d11afa387688473ecd559975a39b93b17bf9f8dca10d43e1eb6` |
| 4 | `theorem` | [unitization_apply](../../../../mathematics/Algebra/Unitization/Variantc3bf32612a9677b9bf7fb2e950130bcf0785a12cd1766483c6c85f58ba86ca15.lean/declarations/unitization-apply--f8ce90cbf989cbf133753e1d.md) | 81 | `result-track:f8ce90cbf989cbf133753e1df1fcd80569d5372fabed76c4f231e81b7c4cd4fb` |
| 5 | `theorem` | [unitization_range](../../../../mathematics/Algebra/Unitization/Variantc3bf32612a9677b9bf7fb2e950130bcf0785a12cd1766483c6c85f58ba86ca15.lean/declarations/unitization-range--2db88d397b78c212ece96d9b.md) | 85 | `result-track:2db88d397b78c212ece96d9b7471dd1ea3ce2e9596a1c28b6ad07d1566d3ed29` |
| 6 | `theorem` | [_root_.AlgHomClass.unitization_injective'](../../../../mathematics/Algebra/Unitization/Variantc3bf32612a9677b9bf7fb2e950130bcf0785a12cd1766483c6c85f58ba86ca15.lean/declarations/root-alghomclass-unitization-injective--0f7d21dc27f018e15db2f2d8.md) | 96 | `result-track:0f7d21dc27f018e15db2f2d81cb7684fb4c748324d3ae054c7aec09f820fc7c1` |
| 7 | `theorem` | [_root_.AlgHomClass.unitization_injective](../../../../mathematics/Algebra/Unitization/Variantc3bf32612a9677b9bf7fb2e950130bcf0785a12cd1766483c6c85f58ba86ca15.lean/declarations/root-alghomclass-unitization-injective--1749e0382e953c88b3b73f4c.md) | 114 | `result-track:1749e0382e953c88b3b73f4cdfcfad7f7d486a88a6b27038154bfd6d6bfb1737` |
| 8 | `theorem` | [unitization_injective](../../../../mathematics/Algebra/Unitization/Variantc3bf32612a9677b9bf7fb2e950130bcf0785a12cd1766483c6c85f58ba86ca15.lean/declarations/unitization-injective--2966856078118bf65b7f9a96.md) | 127 | `result-track:2966856078118bf65b7f9a96f889acf52fcd8e1d30f9cda2b54125d319e31c47` |
| 9 | `def` | [unitizationAlgEquiv](../../../../mathematics/Algebra/Unitization/Variantc3bf32612a9677b9bf7fb2e950130bcf0785a12cd1766483c6c85f58ba86ca15.lean/declarations/unitizationalgequiv--9fe79ab56ec3e94f04d2a5cf.md) | 133 | `declaration-track:9fe79ab56ec3e94f04d2a5cf992bceccbd2c68c149858f3798b2adb8cc6e7e6f` |
| 10 | `def` | [unitization](../../../../mathematics/Algebra/Unitization/Variantc3bf32612a9677b9bf7fb2e950130bcf0785a12cd1766483c6c85f58ba86ca15.lean/declarations/unitization--c52fabcf8bffe17d8a5ead90.md) | 160 | `declaration-track:c52fabcf8bffe17d8a5ead904b803734d8061c8ccb0e4cbd82b29065fc65d9fe` |
| 11 | `theorem` | [unitization_apply](../../../../mathematics/Algebra/Unitization/Variantc3bf32612a9677b9bf7fb2e950130bcf0785a12cd1766483c6c85f58ba86ca15.lean/declarations/unitization-apply--81930fdc9cb601e4c70d9750.md) | 164 | `result-track:81930fdc9cb601e4c70d9750e41a1b106dee21347dc340502dc181317ccbbca0` |
| 12 | `theorem` | [unitization_range](../../../../mathematics/Algebra/Unitization/Variantc3bf32612a9677b9bf7fb2e950130bcf0785a12cd1766483c6c85f58ba86ca15.lean/declarations/unitization-range--09401dd43488e08440aae567.md) | 167 | `result-track:09401dd43488e08440aae567ed5f8c9ff2d335beac77f62f2f7008f0dd613952` |
| 13 | `def` | [unitization](../../../../mathematics/Algebra/Unitization/Variantc3bf32612a9677b9bf7fb2e950130bcf0785a12cd1766483c6c85f58ba86ca15.lean/declarations/unitization--5d4a84ee9d46bc5780cd9346.md) | 182 | `declaration-track:5d4a84ee9d46bc5780cd9346d2c52025d3ae27eb1da67da1d912a89cc9c0f8fc` |
| 14 | `theorem` | [unitization_apply](../../../../mathematics/Algebra/Unitization/Variantc3bf32612a9677b9bf7fb2e950130bcf0785a12cd1766483c6c85f58ba86ca15.lean/declarations/unitization-apply--768ee450abf96ad0769cfc12.md) | 186 | `result-track:768ee450abf96ad0769cfc120056a68e64611d43c75f566a992a3cce1b2c6a70` |
| 15 | `theorem` | [unitization_range](../../../../mathematics/Algebra/Unitization/Variantc3bf32612a9677b9bf7fb2e950130bcf0785a12cd1766483c6c85f58ba86ca15.lean/declarations/unitization-range--3f290a200b01094b59646cbe.md) | 189 | `result-track:3f290a200b01094b59646cbe09c5c1405ade18132ba009902f77e2b8feeb9ef1` |
| 16 | `theorem` | [starLift_range_le](../../../../mathematics/Algebra/Unitization/Variantc3bf32612a9677b9bf7fb2e950130bcf0785a12cd1766483c6c85f58ba86ca15.lean/declarations/starlift-range-le--d6d12e47a0c0fa8e83a998ec.md) | 204 | `result-track:d6d12e47a0c0fa8e83a998ec8e293531688ce83022940fb8e5c45ba3e091d9ae` |
| 17 | `theorem` | [starLift_range](../../../../mathematics/Algebra/Unitization/Variantc3bf32612a9677b9bf7fb2e950130bcf0785a12cd1766483c6c85f58ba86ca15.lean/declarations/starlift-range--6c41f6df4fadc316dcd33e6c.md) | 214 | `result-track:6c41f6df4fadc316dcd33e6cd8361e2eda79aa5b223aeec6e404b2818a7d8f79` |
| 18 | `def` | [unitization](../../../../mathematics/Algebra/Unitization/Variantc3bf32612a9677b9bf7fb2e950130bcf0785a12cd1766483c6c85f58ba86ca15.lean/declarations/unitization--105e8287f8b4248e8ac27778.md) | 231 | `declaration-track:105e8287f8b4248e8ac2777861717cc554ac09e07aef2a25df7fdc5cbda505fa` |
| 19 | `theorem` | [unitization_apply](../../../../mathematics/Algebra/Unitization/Variantc3bf32612a9677b9bf7fb2e950130bcf0785a12cd1766483c6c85f58ba86ca15.lean/declarations/unitization-apply--bf72d3d2f91d712bb4645be4.md) | 235 | `result-track:bf72d3d2f91d712bb4645be4873895aee9e5a548e758cd8a9c86e369690629bc` |
| 20 | `theorem` | [unitization_range](../../../../mathematics/Algebra/Unitization/Variantc3bf32612a9677b9bf7fb2e950130bcf0785a12cd1766483c6c85f58ba86ca15.lean/declarations/unitization-range--f8a9a29209b2a2e3c85fc4ab.md) | 238 | `result-track:f8a9a29209b2a2e3c85fc4abc60830972daf8ffa7a9c21a54f3d3f899f0c988a` |
| 21 | `theorem` | [unitization_injective](../../../../mathematics/Algebra/Unitization/Variantc3bf32612a9677b9bf7fb2e950130bcf0785a12cd1766483c6c85f58ba86ca15.lean/declarations/unitization-injective--9812a7f3d27e2d261f356b9c.md) | 252 | `result-track:9812a7f3d27e2d261f356b9caef2369ae3f6fd185648ea3ca6bdcb3298e240cf` |
| 22 | `def` | [unitizationStarAlgEquiv](../../../../mathematics/Algebra/Unitization/Variantc3bf32612a9677b9bf7fb2e950130bcf0785a12cd1766483c6c85f58ba86ca15.lean/declarations/unitizationstaralgequiv--5e677778f86330f73cf62178.md) | 258 | `declaration-track:5e677778f86330f73cf621785615261e18ad8d600c133a416f65ee52e6c7259a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
