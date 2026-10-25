# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.ExactPermutationMatrix.Variant0323ff970530f4e86d16c23b9b722e8fa9e4e4e72c2d4868df5136dfc813bcb7

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "bc36fd64350981ecf4760e9c85f7c545cd0769ad",
  "lexical_observation_count": 36,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/ExactPermutationMatrix/Variant0323ff970530f4e86d16c23b9b722e8fa9e4e4e72c2d4868df5136dfc813bcb7.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ExactPermutationMatrix/Variant0323ff970530f4e86d16c23b9b722e8fa9e4e4e72c2d4868df5136dfc813bcb7.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ExactPermutationMatrix/Variant0323ff970530f4e86d16c23b9b722e8fa9e4e4e72c2d4868df5136dfc813bcb7.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `bc36fd64350981ecf4760e9c85f7c545cd0769ad`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/ExactPermutationMatrix/Variant0323ff970530f4e86d16c23b9b722e8fa9e4e4e72c2d4868df5136dfc813bcb7.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/ExactPermutationMatrix/Variant0323ff970530f4e86d16c23b9b722e8fa9e4e4e72c2d4868df5136dfc813bcb7.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.ZMod.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Matrix.ToLin` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [permutationMatrix](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ExactPermutationMatrix/Variant0323ff970530f4e86d16c23b9b722e8fa9e4e4e72c2d4868df5136dfc813bcb7.lean/declarations/permutationmatrix--f8cff98170b5324b1ed16219.md) | 33 | `declaration-track:f8cff98170b5324b1ed16219ef114672bbfccdbf6812c15da97a5db0792fdb17` |
| 2 | `def` | [ExactlyOneInEveryRow](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ExactPermutationMatrix/Variant0323ff970530f4e86d16c23b9b722e8fa9e4e4e72c2d4868df5136dfc813bcb7.lean/declarations/exactlyoneineveryrow--ffea217bc3ca9a99bd6284be.md) | 41 | `declaration-track:ffea217bc3ca9a99bd6284be464a1dc55ddbf9a4d17a4bd03d7d36d983f1405e` |
| 3 | `def` | [ExactlyOneInEveryColumn](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ExactPermutationMatrix/Variant0323ff970530f4e86d16c23b9b722e8fa9e4e4e72c2d4868df5136dfc813bcb7.lean/declarations/exactlyoneineverycolumn--7dfa05ddebb0e2b374cd3aeb.md) | 48 | `declaration-track:7dfa05ddebb0e2b374cd3aeb544f5ba7f8a6830ccc1cd916750636bbbcb8543a` |
| 4 | `def` | [IsOneHotPermutationMatrix](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ExactPermutationMatrix/Variant0323ff970530f4e86d16c23b9b722e8fa9e4e4e72c2d4868df5136dfc813bcb7.lean/declarations/isonehotpermutationmatrix--204445d2e24e7cc57d0b029d.md) | 55 | `declaration-track:204445d2e24e7cc57d0b029d99ebc70c41cc0dd613e4558aa33f8b9039f227e2` |
| 5 | `abbrev` | [OneHotPermutationMatrix](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ExactPermutationMatrix/Variant0323ff970530f4e86d16c23b9b722e8fa9e4e4e72c2d4868df5136dfc813bcb7.lean/declarations/onehotpermutationmatrix--5abb35d1a29dce39b811bcec.md) | 62 | `declaration-track:5abb35d1a29dce39b811bcec88d5eb60c78485e8445d413db5eab7d636b67fed` |
| 6 | `structure` | [ExactPermutationMatrix](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ExactPermutationMatrix/Variant0323ff970530f4e86d16c23b9b722e8fa9e4e4e72c2d4868df5136dfc813bcb7.lean/declarations/exactpermutationmatrix--c96ca143a1df311dd5548415.md) | 66 | `declaration-track:c96ca143a1df311dd5548415c1d913c44daafd7bf5f69784d842fedb540b3489` |
| 7 | `theorem` | [ext](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ExactPermutationMatrix/Variant0323ff970530f4e86d16c23b9b722e8fa9e4e4e72c2d4868df5136dfc813bcb7.lean/declarations/ext--b814b8dfb9b6d3e6fb76124a.md) | 79 | `result-track:b814b8dfb9b6d3e6fb76124ab02e5d40a4fe59e65265774104cb7d7642834c4a` |
| 8 | `def` | [ofPerm](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ExactPermutationMatrix/Variant0323ff970530f4e86d16c23b9b722e8fa9e4e4e72c2d4868df5136dfc813bcb7.lean/declarations/ofperm--dd32e2394c8c45eae20eb9a7.md) | 94 | `declaration-track:dd32e2394c8c45eae20eb9a7dd2380eaff1d5498e89773cb4d8c452010a7eb14` |
| 9 | `theorem` | [ofPerm_matrix](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ExactPermutationMatrix/Variant0323ff970530f4e86d16c23b9b722e8fa9e4e4e72c2d4868df5136dfc813bcb7.lean/declarations/ofperm-matrix--35fc50dee73a44c47a47e918.md) | 101 | `result-track:35fc50dee73a44c47a47e918d1fb930dde264a8e45b63e3ee99a1ecc89c1f407` |
| 10 | `theorem` | [ofPerm_permutation](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ExactPermutationMatrix/Variant0323ff970530f4e86d16c23b9b722e8fa9e4e4e72c2d4868df5136dfc813bcb7.lean/declarations/ofperm-permutation--6be529fdeaf7ee9a5a8eab81.md) | 107 | `result-track:6be529fdeaf7ee9a5a8eab81301617b3e0335432e5f6abc7114d7df5eee974b6` |
| 11 | `theorem` | [existsUnique_one_in_row](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ExactPermutationMatrix/Variant0323ff970530f4e86d16c23b9b722e8fa9e4e4e72c2d4868df5136dfc813bcb7.lean/declarations/existsunique-one-in-row--492ddb9f2a8748bae47a2c58.md) | 113 | `result-track:492ddb9f2a8748bae47a2c58f360947f5ecf1a7fa43abc3ec907cec823e21cdc` |
| 12 | `theorem` | [existsUnique_one_in_column](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ExactPermutationMatrix/Variant0323ff970530f4e86d16c23b9b722e8fa9e4e4e72c2d4868df5136dfc813bcb7.lean/declarations/existsunique-one-in-column--8fb210ad1e379098123a7aaf.md) | 128 | `result-track:8fb210ad1e379098123a7aaf34a829f5fffa3159c2e31f0c03f63309e9fb3709` |
| 13 | `def` | [permEquivExactPermutationMatrix](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ExactPermutationMatrix/Variant0323ff970530f4e86d16c23b9b722e8fa9e4e4e72c2d4868df5136dfc813bcb7.lean/declarations/permequivexactpermutationmatrix--d31a6777f2ca6be019756da4.md) | 144 | `declaration-track:d31a6777f2ca6be019756da4326856ca439db26bc31e1e0a7b6ce85183f9d710` |
| 14 | `theorem` | [permEquiv_apply](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ExactPermutationMatrix/Variant0323ff970530f4e86d16c23b9b722e8fa9e4e4e72c2d4868df5136dfc813bcb7.lean/declarations/permequiv-apply--621d8468694025f9b3bdc8a2.md) | 154 | `result-track:621d8468694025f9b3bdc8a2e58f42f3195cb0db1295a9c97d5908f991588480` |
| 15 | `theorem` | [permEquiv_symm_apply](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ExactPermutationMatrix/Variant0323ff970530f4e86d16c23b9b722e8fa9e4e4e72c2d4868df5136dfc813bcb7.lean/declarations/permequiv-symm-apply--2c0ef2adb231ecd700842c26.md) | 160 | `result-track:2c0ef2adb231ecd700842c26bfc646ae5b3eb01c291a37ffa5a665b2cf0a2f48` |
| 16 | `theorem` | [permutationMatrix_exactlyOneInEveryRow](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ExactPermutationMatrix/Variant0323ff970530f4e86d16c23b9b722e8fa9e4e4e72c2d4868df5136dfc813bcb7.lean/declarations/permutationmatrix-exactlyoneineveryrow--37ff179eea479ef4da662c3e.md) | 173 | `result-track:37ff179eea479ef4da662c3e3cef97c410da77baf3ab9db97749ad55dbea25a8` |
| 17 | `theorem` | [permutationMatrix_exactlyOneInEveryColumn](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ExactPermutationMatrix/Variant0323ff970530f4e86d16c23b9b722e8fa9e4e4e72c2d4868df5136dfc813bcb7.lean/declarations/permutationmatrix-exactlyoneineverycolumn--aa142b0e2311dfe235885155.md) | 182 | `result-track:aa142b0e2311dfe23588515508ea95224f604c5c44c7ed4b181938e111ae9442` |
| 18 | `def` | [ofPerm](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ExactPermutationMatrix/Variant0323ff970530f4e86d16c23b9b722e8fa9e4e4e72c2d4868df5136dfc813bcb7.lean/declarations/ofperm--f235c728df627ac9b548e5ef.md) | 191 | `declaration-track:f235c728df627ac9b548e5efec3cbd8dbfcc95126031523054d635fc2b8d660b` |
| 19 | `theorem` | [ofPerm_val](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ExactPermutationMatrix/Variant0323ff970530f4e86d16c23b9b722e8fa9e4e4e72c2d4868df5136dfc813bcb7.lean/declarations/ofperm-val--f66f0b432c672d8859279ca0.md) | 198 | `result-track:f66f0b432c672d8859279ca0e86d40b03e4fd3859b9f3b648e35333e4d0a2515` |
| 20 | `def` | [rowIndex](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ExactPermutationMatrix/Variant0323ff970530f4e86d16c23b9b722e8fa9e4e4e72c2d4868df5136dfc813bcb7.lean/declarations/rowindex--a39a96f29bfbcc496b02d2ae.md) | 205 | `declaration-track:a39a96f29bfbcc496b02d2ae8b3a6920e650daed0c4ed7318a639df9dbc61157` |
| 21 | `theorem` | [rowIndex_spec](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ExactPermutationMatrix/Variant0323ff970530f4e86d16c23b9b722e8fa9e4e4e72c2d4868df5136dfc813bcb7.lean/declarations/rowindex-spec--abacd412b0966a62002a6f11.md) | 213 | `result-track:abacd412b0966a62002a6f1103400b837ba07297f00dd59a5657539bf9a85ce4` |
| 22 | `theorem` | [rowIndex_eq_of_entry_one](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ExactPermutationMatrix/Variant0323ff970530f4e86d16c23b9b722e8fa9e4e4e72c2d4868df5136dfc813bcb7.lean/declarations/rowindex-eq-of-entry-one--76ef341feeebde69f669974e.md) | 221 | `result-track:76ef341feeebde69f669974ef14da7a00f189eafc305e290b4932d6ba31eb52e` |
| 23 | `def` | [columnIndex](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ExactPermutationMatrix/Variant0323ff970530f4e86d16c23b9b722e8fa9e4e4e72c2d4868df5136dfc813bcb7.lean/declarations/columnindex--cf5f0768f42bc85009c7ddab.md) | 230 | `declaration-track:cf5f0768f42bc85009c7ddab260620c459e1d0a350922af2b77b1718c1656f7f` |
| 24 | `theorem` | [columnIndex_spec](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ExactPermutationMatrix/Variant0323ff970530f4e86d16c23b9b722e8fa9e4e4e72c2d4868df5136dfc813bcb7.lean/declarations/columnindex-spec--68c0c717b88d2593df832289.md) | 238 | `result-track:68c0c717b88d2593df8322896ef4588b92eef0339749896d7ebbb5fc187bbbf6` |
| 25 | `theorem` | [columnIndex_eq_of_entry_one](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ExactPermutationMatrix/Variant0323ff970530f4e86d16c23b9b722e8fa9e4e4e72c2d4868df5136dfc813bcb7.lean/declarations/columnindex-eq-of-entry-one--4f72048f6b334f43fe0d0e8c.md) | 246 | `result-track:4f72048f6b334f43fe0d0e8ca975b612059f5e9d717441355dd39778b8c4918d` |
| 26 | `def` | [toPerm](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ExactPermutationMatrix/Variant0323ff970530f4e86d16c23b9b722e8fa9e4e4e72c2d4868df5136dfc813bcb7.lean/declarations/toperm--84e7633d4e21de68390dbb45.md) | 255 | `declaration-track:84e7633d4e21de68390dbb45921a971c34a737462ec1738167b523ece0f23ba9` |
| 27 | `theorem` | [toPerm_apply](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ExactPermutationMatrix/Variant0323ff970530f4e86d16c23b9b722e8fa9e4e4e72c2d4868df5136dfc813bcb7.lean/declarations/toperm-apply--d5cbdf8e918211f914ddb030.md) | 269 | `result-track:d5cbdf8e918211f914ddb0306f98e76f8abc3c26e48d0609a7c177abc1d13a31` |
| 28 | `theorem` | [toPerm_symm_apply](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ExactPermutationMatrix/Variant0323ff970530f4e86d16c23b9b722e8fa9e4e4e72c2d4868df5136dfc813bcb7.lean/declarations/toperm-symm-apply--a27fe6bdf4930d8e4f602f52.md) | 277 | `result-track:a27fe6bdf4930d8e4f602f5266f46d57447fd8936ea3d66fa06a0655b2438bb3` |
| 29 | `theorem` | [zmodTwo_eq_zero_or_one](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ExactPermutationMatrix/Variant0323ff970530f4e86d16c23b9b722e8fa9e4e4e72c2d4868df5136dfc813bcb7.lean/declarations/zmodtwo-eq-zero-or-one--de88adffc6a32f3fa81393e0.md) | 284 | `result-track:de88adffc6a32f3fa81393e0e8d8ba378b5bfe9e55019e10527a072ce8ece827` |
| 30 | `theorem` | [matrix_eq_permutationMatrix_toPerm](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ExactPermutationMatrix/Variant0323ff970530f4e86d16c23b9b722e8fa9e4e4e72c2d4868df5136dfc813bcb7.lean/declarations/matrix-eq-permutationmatrix-toperm--7840adbf95c8830455e6c51f.md) | 298 | `result-track:7840adbf95c8830455e6c51f59adfa3f7f757935053f647604051b18879c30e6` |
| 31 | `theorem` | [toPerm_ofPerm](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ExactPermutationMatrix/Variant0323ff970530f4e86d16c23b9b722e8fa9e4e4e72c2d4868df5136dfc813bcb7.lean/declarations/toperm-ofperm--44ff8dcfef090736cb153c24.md) | 317 | `result-track:44ff8dcfef090736cb153c24c45a1e5457a12c4d1e59518723aaaffdade8d2ce` |
| 32 | `def` | [permEquivOneHotPermutationMatrix](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ExactPermutationMatrix/Variant0323ff970530f4e86d16c23b9b722e8fa9e4e4e72c2d4868df5136dfc813bcb7.lean/declarations/permequivonehotpermutationmatrix--8e7758d2ce704740657a2dc1.md) | 329 | `declaration-track:8e7758d2ce704740657a2dc12c75541a3c279e97b0422567957293d891c4fa0a` |
| 33 | `theorem` | [permEquivOneHot_apply](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ExactPermutationMatrix/Variant0323ff970530f4e86d16c23b9b722e8fa9e4e4e72c2d4868df5136dfc813bcb7.lean/declarations/permequivonehot-apply--6d389da07c84236a999e0893.md) | 339 | `result-track:6d389da07c84236a999e0893b6439b02102078178fa3129185d4f672b105b163` |
| 34 | `theorem` | [permEquivOneHot_symm_apply](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ExactPermutationMatrix/Variant0323ff970530f4e86d16c23b9b722e8fa9e4e4e72c2d4868df5136dfc813bcb7.lean/declarations/permequivonehot-symm-apply--bd57ccef8f493e39adf1fb08.md) | 345 | `result-track:bd57ccef8f493e39adf1fb08bbafe7d9937f8fd5578def34cd6042844aba685e` |
| 35 | `theorem` | [permEquivOneHot_symm_apply_apply](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ExactPermutationMatrix/Variant0323ff970530f4e86d16c23b9b722e8fa9e4e4e72c2d4868df5136dfc813bcb7.lean/declarations/permequivonehot-symm-apply-apply--97f17a0252b7902a44dcea5c.md) | 352 | `result-track:97f17a0252b7902a44dcea5c67bf0573c72b28ccf552fe08c2c11e79575a7c9c` |
| 36 | `theorem` | [permEquivOneHot_apply_symm_apply](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ExactPermutationMatrix/Variant0323ff970530f4e86d16c23b9b722e8fa9e4e4e72c2d4868df5136dfc813bcb7.lean/declarations/permequivonehot-apply-symm-apply--0a978f99c15cd68435b0c415.md) | 360 | `result-track:0a978f99c15cd68435b0c4151ba097f7e5182e78d5ad921641c2ced84829cac4` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
