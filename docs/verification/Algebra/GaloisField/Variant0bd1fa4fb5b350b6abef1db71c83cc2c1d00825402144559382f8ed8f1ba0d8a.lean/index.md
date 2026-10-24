# Verification target: GRWTSK.Algebra.GaloisField.Variant0bd1fa4fb5b350b6abef1db71c83cc2c1d00825402144559382f8ed8f1ba0d8a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "48b7d8120869d2915cfc8820a95242933d6db3e5",
  "lexical_observation_count": 20,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GaloisField/Variant0bd1fa4fb5b350b6abef1db71c83cc2c1d00825402144559382f8ed8f1ba0d8a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/GaloisField/Variant0bd1fa4fb5b350b6abef1db71c83cc2c1d00825402144559382f8ed8f1ba0d8a.lean/index.md) · [Full source](../../../../mathematics/Algebra/GaloisField/Variant0bd1fa4fb5b350b6abef1db71c83cc2c1d00825402144559382f8ed8f1ba0d8a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `48b7d8120869d2915cfc8820a95242933d6db3e5`.

Source path: `GRWTSK/Algebra/GaloisField/Variant0bd1fa4fb5b350b6abef1db71c83cc2c1d00825402144559382f8ed8f1ba0d8a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GaloisField/Variant0bd1fa4fb5b350b6abef1db71c83cc2c1d00825402144559382f8ed8f1ba0d8a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.CharP.Algebra` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Data.ZMod.Algebra` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.FieldTheory.Finite.Basic` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.FieldTheory.Galois` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.FieldTheory.SplittingField.IsSplittingField` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [FiniteField.isSplittingField_sub](../../../../mathematics/Algebra/GaloisField/Variant0bd1fa4fb5b350b6abef1db71c83cc2c1d00825402144559382f8ed8f1ba0d8a.lean/declarations/finitefield-issplittingfield-sub--e109e0e52fbc895f12f8c67a.md) | 49 | `declaration-track:e109e0e52fbc895f12f8c67a5b95c9f29fd5929b6cf1497a5f66a17b87156d17` |
| 2 | `theorem` | [galois_poly_separable](../../../../mathematics/Algebra/GaloisField/Variant0bd1fa4fb5b350b6abef1db71c83cc2c1d00825402144559382f8ed8f1ba0d8a.lean/declarations/galois-poly-separable--565c0ffd34bb2aa540e5821f.md) | 63 | `result-track:565c0ffd34bb2aa540e5821f88a7d124e655e987f0d240ac2023df2159d67841` |
| 3 | `def` | [GaloisField](../../../../mathematics/Algebra/GaloisField/Variant0bd1fa4fb5b350b6abef1db71c83cc2c1d00825402144559382f8ed8f1ba0d8a.lean/declarations/galoisfield--5811a8080168fc09240aad7d.md) | 76 | `declaration-track:5811a8080168fc09240aad7d60febf16f00a8df1d12e9b72baa12d26311ce98b` |
| 4 | `instance` | [(anonymous)](../../../../mathematics/Algebra/GaloisField/Variant0bd1fa4fb5b350b6abef1db71c83cc2c1d00825402144559382f8ed8f1ba0d8a.lean/declarations/instance--d6999d5638446c085c607a0a.md) | 80 | `declaration-track:d6999d5638446c085c607a0a63c881805ba4a8d2a31e05ca1c6a6150ecc0e05a` |
| 5 | `instance` | [(anonymous)](../../../../mathematics/Algebra/GaloisField/Variant0bd1fa4fb5b350b6abef1db71c83cc2c1d00825402144559382f8ed8f1ba0d8a.lean/declarations/instance--203537f667fb510c744cc4b2.md) | 83 | `declaration-track:203537f667fb510c744cc4b248151ab797a28a82bb61bcecfc65155e0d767f79` |
| 6 | `instance` | [(anonymous)](../../../../mathematics/Algebra/GaloisField/Variant0bd1fa4fb5b350b6abef1db71c83cc2c1d00825402144559382f8ed8f1ba0d8a.lean/declarations/instance--f6984d6689a74a39eadcd973.md) | 89 | `declaration-track:f6984d6689a74a39eadcd97384b8944c7d940dbea1fbcea8415051b8773b14b7` |
| 7 | `instance` | [(anonymous)](../../../../mathematics/Algebra/GaloisField/Variant0bd1fa4fb5b350b6abef1db71c83cc2c1d00825402144559382f8ed8f1ba0d8a.lean/declarations/instance--32a127c946dd3d2242c950fe.md) | 91 | `declaration-track:32a127c946dd3d2242c950feb4f6db9d660f99eb469b7f8a1fdce68195b5347a` |
| 8 | `instance` | [(anonymous)](../../../../mathematics/Algebra/GaloisField/Variant0bd1fa4fb5b350b6abef1db71c83cc2c1d00825402144559382f8ed8f1ba0d8a.lean/declarations/instance--e5e9f54af45373635a0ec69c.md) | 94 | `declaration-track:e5e9f54af45373635a0ec69caf8a7df63fabb6c1369d33ca7de32f9adb9767a0` |
| 9 | `instance` | [(anonymous)](../../../../mathematics/Algebra/GaloisField/Variant0bd1fa4fb5b350b6abef1db71c83cc2c1d00825402144559382f8ed8f1ba0d8a.lean/declarations/instance--b3c476ffbb03b4ff9ffa5fab.md) | 97 | `declaration-track:b3c476ffbb03b4ff9ffa5fab789fa2b6245203ed44a71d182e51425615d431c8` |
| 10 | `instance` | [(anonymous)](../../../../mathematics/Algebra/GaloisField/Variant0bd1fa4fb5b350b6abef1db71c83cc2c1d00825402144559382f8ed8f1ba0d8a.lean/declarations/instance--e838da90366716c06c68b4d1.md) | 100 | `declaration-track:e838da90366716c06c68b4d1c9873634395615a25837cafad63f42a779f6b2b2` |
| 11 | `theorem` | [finrank](../../../../mathematics/Algebra/GaloisField/Variant0bd1fa4fb5b350b6abef1db71c83cc2c1d00825402144559382f8ed8f1ba0d8a.lean/declarations/finrank--f1cedc700b52a1a3c9b953c3.md) | 104 | `result-track:f1cedc700b52a1a3c9b953c32a85b124a39d07de0bbf878747685cb4e67de1ff` |
| 12 | `theorem` | [card](../../../../mathematics/Algebra/GaloisField/Variant0bd1fa4fb5b350b6abef1db71c83cc2c1d00825402144559382f8ed8f1ba0d8a.lean/declarations/card--7ab0144a63d00bd0324278d6.md) | 154 | `result-track:7ab0144a63d00bd0324278d6239f02cf9b94d408e54c2c6908c80cc555664227` |
| 13 | `theorem` | [splits_zmod_X_pow_sub_X](../../../../mathematics/Algebra/GaloisField/Variant0bd1fa4fb5b350b6abef1db71c83cc2c1d00825402144559382f8ed8f1ba0d8a.lean/declarations/splits-zmod-x-pow-sub-x--11f2feed9a50ab02cebe6f51.md) | 159 | `result-track:11f2feed9a50ab02cebe6f51b582b2687d933c7831d39df33d332f600e48cb2d` |
| 14 | `def` | [equivZmodP](../../../../mathematics/Algebra/GaloisField/Variant0bd1fa4fb5b350b6abef1db71c83cc2c1d00825402144559382f8ed8f1ba0d8a.lean/declarations/equivzmodp--329828544a666614e9dd5cf5.md) | 172 | `declaration-track:329828544a666614e9dd5cf5c31b6e9d6a947fe91b886999553973bdabc53597` |
| 15 | `theorem` | [splits_X_pow_card_sub_X](../../../../mathematics/Algebra/GaloisField/Variant0bd1fa4fb5b350b6abef1db71c83cc2c1d00825402144559382f8ed8f1ba0d8a.lean/declarations/splits-x-pow-card-sub-x--b0942fe81cdacb8cf2e979eb.md) | 180 | `result-track:b0942fe81cdacb8cf2e979eb2ee2f6c27886d1dc2d8b2311831b5c10141a4555` |
| 16 | `theorem` | [isSplittingField_of_card_eq](../../../../mathematics/Algebra/GaloisField/Variant0bd1fa4fb5b350b6abef1db71c83cc2c1d00825402144559382f8ed8f1ba0d8a.lean/declarations/issplittingfield-of-card-eq--7183179fb1358b591ce0d3b2.md) | 185 | `result-track:7183179fb1358b591ce0d3b209cbf85d5ca35e7fc6a3126bb10bf8b8f8546e13` |
| 17 | `instance` | [(anonymous)](../../../../mathematics/Algebra/GaloisField/Variant0bd1fa4fb5b350b6abef1db71c83cc2c1d00825402144559382f8ed8f1ba0d8a.lean/declarations/instance--a55a46eebb775b6857ecfb95.md) | 190 | `declaration-track:a55a46eebb775b6857ecfb95afdc0562ba048ccf60b9c044b8515983d5412cbc` |
| 18 | `def` | [algEquivGaloisField](../../../../mathematics/Algebra/GaloisField/Variant0bd1fa4fb5b350b6abef1db71c83cc2c1d00825402144559382f8ed8f1ba0d8a.lean/declarations/algequivgaloisfield--a09c440b5ad0e6f26db70805.md) | 202 | `declaration-track:a09c440b5ad0e6f26db708054306c0fca6d6589621efc8e5863d2f30c140b70f` |
| 19 | `def` | [algEquivOfCardEq](../../../../mathematics/Algebra/GaloisField/Variant0bd1fa4fb5b350b6abef1db71c83cc2c1d00825402144559382f8ed8f1ba0d8a.lean/declarations/algequivofcardeq--3c22e679780a6d2aeb9bf4f8.md) | 215 | `declaration-track:3c22e679780a6d2aeb9bf4f825a572417990d35fc9eff9b09f232658f508675e` |
| 20 | `def` | [ringEquivOfCardEq](../../../../mathematics/Algebra/GaloisField/Variant0bd1fa4fb5b350b6abef1db71c83cc2c1d00825402144559382f8ed8f1ba0d8a.lean/declarations/ringequivofcardeq--83a02d7656f27c107eb30269.md) | 230 | `declaration-track:83a02d7656f27c107eb30269db14f2d72efb62c15fcf08741df9119f6b9d0260` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
