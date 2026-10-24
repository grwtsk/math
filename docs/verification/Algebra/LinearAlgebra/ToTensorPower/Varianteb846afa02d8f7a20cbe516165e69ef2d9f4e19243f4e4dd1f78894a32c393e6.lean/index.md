# Verification target: GRWTSK.Algebra.LinearAlgebra.ToTensorPower.Varianteb846afa02d8f7a20cbe516165e69ef2d9f4e19243f4e4dd1f78894a32c393e6

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "64051b67ab79d96a68efd4fbb63feafb2bf2d574",
  "lexical_observation_count": 18,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/ToTensorPower/Varianteb846afa02d8f7a20cbe516165e69ef2d9f4e19243f4e4dd1f78894a32c393e6.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/ToTensorPower/Varianteb846afa02d8f7a20cbe516165e69ef2d9f4e19243f4e4dd1f78894a32c393e6.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/ToTensorPower/Varianteb846afa02d8f7a20cbe516165e69ef2d9f4e19243f4e4dd1f78894a32c393e6.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `64051b67ab79d96a68efd4fbb63feafb2bf2d574`.

Source path: `GRWTSK/Algebra/LinearAlgebra/ToTensorPower/Varianteb846afa02d8f7a20cbe516165e69ef2d9f4e19243f4e4dd1f78894a32c393e6.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/ToTensorPower/Varianteb846afa02d8f7a20cbe516165e69ef2d9f4e19243f4e4dd1f78894a32c393e6.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.LinearAlgebra.TensorAlgebra.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.TensorPower.Basic` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [toTensorAlgebra](../../../../../mathematics/Algebra/LinearAlgebra/ToTensorPower/Varianteb846afa02d8f7a20cbe516165e69ef2d9f4e19243f4e4dd1f78894a32c393e6.lean/declarations/totensoralgebra--ee8277925487a5eb54ed886b.md) | 33 | `declaration-track:ee8277925487a5eb54ed886b57cffdc59391526b09fc017c2c5c6a8becabf0d3` |
| 2 | `theorem` | [toTensorAlgebra_tprod](../../../../../mathematics/Algebra/LinearAlgebra/ToTensorPower/Varianteb846afa02d8f7a20cbe516165e69ef2d9f4e19243f4e4dd1f78894a32c393e6.lean/declarations/totensoralgebra-tprod--060f70256e32588dae6a087b.md) | 37 | `result-track:060f70256e32588dae6a087b2e6d17b62c60bc09d3a7dbfcd98e349bfb99254d` |
| 3 | `theorem` | [toTensorAlgebra_gOne](../../../../../mathematics/Algebra/LinearAlgebra/ToTensorPower/Varianteb846afa02d8f7a20cbe516165e69ef2d9f4e19243f4e4dd1f78894a32c393e6.lean/declarations/totensoralgebra-gone--66025c31c90ef4030ed8221c.md) | 42 | `result-track:66025c31c90ef4030ed8221ca756990a1291049775e6600f97c25084b584c096` |
| 4 | `theorem` | [toTensorAlgebra_gMul](../../../../../mathematics/Algebra/LinearAlgebra/ToTensorPower/Varianteb846afa02d8f7a20cbe516165e69ef2d9f4e19243f4e4dd1f78894a32c393e6.lean/declarations/totensoralgebra-gmul--57421313c5f82c6409212934.md) | 47 | `result-track:57421313c5f82c6409212934bdf6de3427c751bacfa0dbf440b01e801641c29f` |
| 5 | `theorem` | [toTensorAlgebra_galgebra_toFun](../../../../../mathematics/Algebra/LinearAlgebra/ToTensorPower/Varianteb846afa02d8f7a20cbe516165e69ef2d9f4e19243f4e4dd1f78894a32c393e6.lean/declarations/totensoralgebra-galgebra-tofun--924093833c90a4855f9865ff.md) | 70 | `result-track:924093833c90a4855f9865ff9f5a6ceb415ebea9aefd3e4ecc82019a6179ea2f` |
| 6 | `def` | [ofDirectSum](../../../../../mathematics/Algebra/LinearAlgebra/ToTensorPower/Varianteb846afa02d8f7a20cbe516165e69ef2d9f4e19243f4e4dd1f78894a32c393e6.lean/declarations/ofdirectsum--bae934fbda1a9b8a7365dc01.md) | 81 | `declaration-track:bae934fbda1a9b8a7365dc012b44518216737ba97dce1c6b9efc72da84fc0e25` |
| 7 | `theorem` | [ofDirectSum_of_tprod](../../../../../mathematics/Algebra/LinearAlgebra/ToTensorPower/Varianteb846afa02d8f7a20cbe516165e69ef2d9f4e19243f4e4dd1f78894a32c393e6.lean/declarations/ofdirectsum-of-tprod--c32412bbc82e4e85e1033037.md) | 86 | `result-track:c32412bbc82e4e85e1033037b7a2cdbf18317e9d8063dc1e0ea9a2e824c5c506` |
| 8 | `def` | [toDirectSum](../../../../../mathematics/Algebra/LinearAlgebra/ToTensorPower/Varianteb846afa02d8f7a20cbe516165e69ef2d9f4e19243f4e4dd1f78894a32c393e6.lean/declarations/todirectsum--a95f8d4be1ee5d8adaef11d0.md) | 93 | `declaration-track:a95f8d4be1ee5d8adaef11d0689968af9e3194169a11441ad42cc33ff9645807` |
| 9 | `theorem` | [toDirectSum_ι](../../../../../mathematics/Algebra/LinearAlgebra/ToTensorPower/Varianteb846afa02d8f7a20cbe516165e69ef2d9f4e19243f4e4dd1f78894a32c393e6.lean/declarations/todirectsum--8ad57238b36b74446d7abc24.md) | 99 | `result-track:8ad57238b36b74446d7abc244e2e75d7e399f6215db1602e8b66e5f995d1f32a` |
| 10 | `theorem` | [ofDirectSum_comp_toDirectSum](../../../../../mathematics/Algebra/LinearAlgebra/ToTensorPower/Varianteb846afa02d8f7a20cbe516165e69ef2d9f4e19243f4e4dd1f78894a32c393e6.lean/declarations/ofdirectsum-comp-todirectsum--074e6f8b25931a34f2c8f0ce.md) | 104 | `result-track:074e6f8b25931a34f2c8f0ce1a47ba1b6c877ff54b4758753717dfa22a447200` |
| 11 | `theorem` | [ofDirectSum_toDirectSum](../../../../../mathematics/Algebra/LinearAlgebra/ToTensorPower/Varianteb846afa02d8f7a20cbe516165e69ef2d9f4e19243f4e4dd1f78894a32c393e6.lean/declarations/ofdirectsum-todirectsum--10b1966ae8d169e9ab99fbf8.md) | 110 | `result-track:10b1966ae8d169e9ab99fbf8eb0beac2d5525dcc04378f8834b40b8d9a98f0e6` |
| 12 | `theorem` | [mk_reindex_cast](../../../../../mathematics/Algebra/LinearAlgebra/ToTensorPower/Varianteb846afa02d8f7a20cbe516165e69ef2d9f4e19243f4e4dd1f78894a32c393e6.lean/declarations/mk-reindex-cast--082210863f1ef68267357acb.md) | 117 | `result-track:082210863f1ef68267357acb71daf156d2f6b419b9dbcf88a3931cc65f5c44b8` |
| 13 | `theorem` | [mk_reindex_fin_cast](../../../../../mathematics/Algebra/LinearAlgebra/ToTensorPower/Varianteb846afa02d8f7a20cbe516165e69ef2d9f4e19243f4e4dd1f78894a32c393e6.lean/declarations/mk-reindex-fin-cast--45bcfff06ca8b9b32d852112.md) | 124 | `result-track:45bcfff06ca8b9b32d852112c81692b0d3231e5d997a8c2365002bfc7be2ab4d` |
| 14 | `theorem` | [_root_.GRWTSK.Algebra.LinearAlgebra.ToTensorAlgebra.Variantbc031111305b499cd3451581964e194e7eecf2eaa479d63540055169d03dae35.TensorPower.list_prod_gradedMonoid_mk_single](../../../../../mathematics/Algebra/LinearAlgebra/ToTensorPower/Varianteb846afa02d8f7a20cbe516165e69ef2d9f4e19243f4e4dd1f78894a32c393e6.lean/declarations/root-grwtsk-algebra-linearalgebra-totensoralgebra-variantbc031111305b499--b32c48f6e82959b16247eebf.md) | 131 | `result-track:b32c48f6e82959b16247eebf6dcdd9e9912aa61ff6c70ac215fad054a2f17f47` |
| 15 | `theorem` | [toDirectSum_tensorPower_tprod](../../../../../mathematics/Algebra/LinearAlgebra/ToTensorPower/Varianteb846afa02d8f7a20cbe516165e69ef2d9f4e19243f4e4dd1f78894a32c393e6.lean/declarations/todirectsum-tensorpower-tprod--de155db8dfaa43c047b0e6d5.md) | 149 | `result-track:de155db8dfaa43c047b0e6d54e9a41283150c8984eefda82cf5c7eab9c017547` |
| 16 | `theorem` | [toDirectSum_comp_ofDirectSum](../../../../../mathematics/Algebra/LinearAlgebra/ToTensorPower/Varianteb846afa02d8f7a20cbe516165e69ef2d9f4e19243f4e4dd1f78894a32c393e6.lean/declarations/todirectsum-comp-ofdirectsum--880378965c18a518df2cffcd.md) | 158 | `result-track:880378965c18a518df2cffcd44694cb2efcd6d8e2e78e5f90ead1c80cff4b1f1` |
| 17 | `theorem` | [toDirectSum_ofDirectSum](../../../../../mathematics/Algebra/LinearAlgebra/ToTensorPower/Varianteb846afa02d8f7a20cbe516165e69ef2d9f4e19243f4e4dd1f78894a32c393e6.lean/declarations/todirectsum-ofdirectsum--a74bf695e44631b59d10d313.md) | 164 | `result-track:a74bf695e44631b59d10d313cbcd9bfb8eed9f4188c0415edc042531fc1703a4` |
| 18 | `def` | [equivDirectSum](../../../../../mathematics/Algebra/LinearAlgebra/ToTensorPower/Varianteb846afa02d8f7a20cbe516165e69ef2d9f4e19243f4e4dd1f78894a32c393e6.lean/declarations/equivdirectsum--4faf6d01ca2c6eaa81a4996f.md) | 170 | `declaration-track:4faf6d01ca2c6eaa81a4996f396a80ff9b2087fbcdac3d3860f698969bfc8111` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
