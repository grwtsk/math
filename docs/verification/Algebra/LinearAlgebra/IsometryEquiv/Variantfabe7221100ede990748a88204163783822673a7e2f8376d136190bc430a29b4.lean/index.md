# Verification target: GRWTSK.Algebra.LinearAlgebra.IsometryEquiv.Variantfabe7221100ede990748a88204163783822673a7e2f8376d136190bc430a29b4

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ca6a0a9f4917086437d6e0e26679d94fdfaee094",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/IsometryEquiv/Variantfabe7221100ede990748a88204163783822673a7e2f8376d136190bc430a29b4.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/IsometryEquiv/Variantfabe7221100ede990748a88204163783822673a7e2f8376d136190bc430a29b4.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/IsometryEquiv/Variantfabe7221100ede990748a88204163783822673a7e2f8376d136190bc430a29b4.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ca6a0a9f4917086437d6e0e26679d94fdfaee094`.

Source path: `GRWTSK/Algebra/LinearAlgebra/IsometryEquiv/Variantfabe7221100ede990748a88204163783822673a7e2f8376d136190bc430a29b4.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/IsometryEquiv/Variantfabe7221100ede990748a88204163783822673a7e2f8376d136190bc430a29b4.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.LinearAlgebra.QuadraticForm.Basic` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [IsometryEquiv](../../../../../mathematics/Algebra/LinearAlgebra/IsometryEquiv/Variantfabe7221100ede990748a88204163783822673a7e2f8376d136190bc430a29b4.lean/declarations/isometryequiv--0e1d3dc925b959d362b88d5b.md) | 46 | `declaration-track:0e1d3dc925b959d362b88d5bb41c522110013f624e3810fbfaabb77a8164393c` |
| 2 | `def` | [Equivalent](../../../../../mathematics/Algebra/LinearAlgebra/IsometryEquiv/Variantfabe7221100ede990748a88204163783822673a7e2f8376d136190bc430a29b4.lean/declarations/equivalent--fb9912243e9ab59a1cc2b6b5.md) | 54 | `declaration-track:fb9912243e9ab59a1cc2b6b5a6f0d0adc7bebbaabecd1247ecba498d5b27fe53` |
| 3 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/IsometryEquiv/Variantfabe7221100ede990748a88204163783822673a7e2f8376d136190bc430a29b4.lean/declarations/instance--fef1807e39de9883f8e3085d.md) | 62 | `declaration-track:fef1807e39de9883f8e3085de6228138fd6ca2610e6d77f71955b228d192583e` |
| 4 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/IsometryEquiv/Variantfabe7221100ede990748a88204163783822673a7e2f8376d136190bc430a29b4.lean/declarations/instance--c99c95b961552a0a68961169.md) | 72 | `declaration-track:c99c95b961552a0a689611699adda089ea2ff6f4aa435b4becffe6b80bfc4ccd` |
| 5 | `theorem` | [coe_toLinearEquiv](../../../../../mathematics/Algebra/LinearAlgebra/IsometryEquiv/Variantfabe7221100ede990748a88204163783822673a7e2f8376d136190bc430a29b4.lean/declarations/coe-tolinearequiv--74f3b60dccdd4fa68cf4d5c5.md) | 79 | `result-track:74f3b60dccdd4fa68cf4d5c522508ee6dce136ef7b782400e32bb887de16124d` |
| 6 | `theorem` | [map_app](../../../../../mathematics/Algebra/LinearAlgebra/IsometryEquiv/Variantfabe7221100ede990748a88204163783822673a7e2f8376d136190bc430a29b4.lean/declarations/map-app--6120d7b5920fa750b6bbe6ad.md) | 84 | `result-track:6120d7b5920fa750b6bbe6ad5012a47acdeac42c87e9fd96d283c5f1232ebb96` |
| 7 | `def` | [refl](../../../../../mathematics/Algebra/LinearAlgebra/IsometryEquiv/Variantfabe7221100ede990748a88204163783822673a7e2f8376d136190bc430a29b4.lean/declarations/refl--af6cc77b385f6aac5522cecd.md) | 90 | `declaration-track:af6cc77b385f6aac5522cecd1433be1aa1bf01ab00f95301751517a89f861113` |
| 8 | `def` | [symm](../../../../../mathematics/Algebra/LinearAlgebra/IsometryEquiv/Variantfabe7221100ede990748a88204163783822673a7e2f8376d136190bc430a29b4.lean/declarations/symm--bdc05aae119e2100751535e6.md) | 96 | `declaration-track:bdc05aae119e2100751535e6430124e7a08d784d990acf84c6bb0ad1a7d3958f` |
| 9 | `def` | [trans](../../../../../mathematics/Algebra/LinearAlgebra/IsometryEquiv/Variantfabe7221100ede990748a88204163783822673a7e2f8376d136190bc430a29b4.lean/declarations/trans--0f92a01454ce45c8325174e0.md) | 103 | `declaration-track:0f92a01454ce45c8325174e08ac07a103a0a8ac6ea681b23028fcaee4cc22918` |
| 10 | `theorem` | [refl](../../../../../mathematics/Algebra/LinearAlgebra/IsometryEquiv/Variantfabe7221100ede990748a88204163783822673a7e2f8376d136190bc430a29b4.lean/declarations/refl--80f349a0a2d7c1e159149f35.md) | 115 | `result-track:80f349a0a2d7c1e159149f357eb9a9af010a66291e8c9ecc33a4a7375e6ed5d4` |
| 11 | `theorem` | [symm](../../../../../mathematics/Algebra/LinearAlgebra/IsometryEquiv/Variantfabe7221100ede990748a88204163783822673a7e2f8376d136190bc430a29b4.lean/declarations/symm--e29ed12867e2e86f7b415b7f.md) | 120 | `result-track:e29ed12867e2e86f7b415b7f54589c5950ccaf250dde691d69810f228494f3a7` |
| 12 | `theorem` | [trans](../../../../../mathematics/Algebra/LinearAlgebra/IsometryEquiv/Variantfabe7221100ede990748a88204163783822673a7e2f8376d136190bc430a29b4.lean/declarations/trans--a007346b975c73aa4e625406.md) | 125 | `result-track:a007346b975c73aa4e625406b5bd78b120e3cb7b9f07d8f12f43cdade280c987` |
| 13 | `def` | [isometryEquivOfCompLinearEquiv](../../../../../mathematics/Algebra/LinearAlgebra/IsometryEquiv/Variantfabe7221100ede990748a88204163783822673a7e2f8376d136190bc430a29b4.lean/declarations/isometryequivofcomplinearequiv--0cbcf0337f782e44dfc1b32d.md) | 134 | `declaration-track:0cbcf0337f782e44dfc1b32de6435f6ee9327eecb6c253a08ca49d1494ada581` |
| 14 | `def` | [isometryEquivBasisRepr](../../../../../mathematics/Algebra/LinearAlgebra/IsometryEquiv/Variantfabe7221100ede990748a88204163783822673a7e2f8376d136190bc430a29b4.lean/declarations/isometryequivbasisrepr--2fafe9ea2f7f5cb3fa158c50.md) | 144 | `declaration-track:2fafe9ea2f7f5cb3fa158c50878d7e41bd27bbb4a7579f342fd6bad3a56d8aa8` |
| 15 | `def` | [isometryEquivWeightedSumSquares](../../../../../mathematics/Algebra/LinearAlgebra/IsometryEquiv/Variantfabe7221100ede990748a88204163783822673a7e2f8376d136190bc430a29b4.lean/declarations/isometryequivweightedsumsquares--412305fa6b3fbdd141414c2b.md) | 153 | `declaration-track:412305fa6b3fbdd141414c2bc304f9656605117d1000bb9855bf6173d3f40954` |
| 16 | `theorem` | [equivalent_weightedSumSquares](../../../../../mathematics/Algebra/LinearAlgebra/IsometryEquiv/Variantfabe7221100ede990748a88204163783822673a7e2f8376d136190bc430a29b4.lean/declarations/equivalent-weightedsumsquares--8e5a2ce6e9102d37087706b3.md) | 167 | `result-track:8e5a2ce6e9102d37087706b3e9fcaab7421657b5611a8cf730939d5501dae7b2` |
| 17 | `theorem` | [equivalent_weightedSumSquares_units_of_nondegenerate'](../../../../../mathematics/Algebra/LinearAlgebra/IsometryEquiv/Variantfabe7221100ede990748a88204163783822673a7e2f8376d136190bc430a29b4.lean/declarations/equivalent-weightedsumsquares-units-of-nondegenerate--dcda44bb4c1cf5f0b26934ed.md) | 173 | `result-track:dcda44bb4c1cf5f0b26934edaf0421fe61531a62729a9ea636ca2fed2f94a23f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
