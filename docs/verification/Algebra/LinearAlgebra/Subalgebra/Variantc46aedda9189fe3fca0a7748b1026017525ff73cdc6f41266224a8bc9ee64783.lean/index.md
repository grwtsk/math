# Verification target: GRWTSK.Algebra.LinearAlgebra.Subalgebra.Variantc46aedda9189fe3fca0a7748b1026017525ff73cdc6f41266224a8bc9ee64783

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "fc74da92bcc1479fe0c7c4843e837133f2bce00c",
  "lexical_observation_count": 31,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Subalgebra/Variantc46aedda9189fe3fca0a7748b1026017525ff73cdc6f41266224a8bc9ee64783.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Subalgebra/Variantc46aedda9189fe3fca0a7748b1026017525ff73cdc6f41266224a8bc9ee64783.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Subalgebra/Variantc46aedda9189fe3fca0a7748b1026017525ff73cdc6f41266224a8bc9ee64783.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `fc74da92bcc1479fe0c7c4843e837133f2bce00c`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Subalgebra/Variantc46aedda9189fe3fca0a7748b1026017525ff73cdc6f41266224a8bc9ee64783.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Subalgebra/Variantc46aedda9189fe3fca0a7748b1026017525ff73cdc6f41266224a8bc9ee64783.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.LinearAlgebra.TensorProduct.Submodule` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.TensorProduct.Basic` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [lTensorBot](../../../../../mathematics/Algebra/LinearAlgebra/Subalgebra/Variantc46aedda9189fe3fca0a7748b1026017525ff73cdc6f41266224a8bc9ee64783.lean/declarations/ltensorbot--f4c0f511113b8414936f563f.md) | 64 | `declaration-track:f4c0f511113b8414936f563f0219f7bdae8f929ad2ab548e4b5908aa6d865fbb` |
| 2 | `theorem` | [lTensorBot_tmul](../../../../../mathematics/Algebra/LinearAlgebra/Subalgebra/Variantc46aedda9189fe3fca0a7748b1026017525ff73cdc6f41266224a8bc9ee64783.lean/declarations/ltensorbot-tmul--cdb7c04102d9deff9c29cd16.md) | 81 | `result-track:cdb7c04102d9deff9c29cd16ba75ecf143eb491062e877ad0851ea20185dbe26` |
| 3 | `theorem` | [lTensorBot_one_tmul](../../../../../mathematics/Algebra/LinearAlgebra/Subalgebra/Variantc46aedda9189fe3fca0a7748b1026017525ff73cdc6f41266224a8bc9ee64783.lean/declarations/ltensorbot-one-tmul--eebe27d853cf13103cf65efd.md) | 85 | `result-track:eebe27d853cf13103cf65efd05dcef865d2b7fe859b8b6a7704163051449860b` |
| 4 | `theorem` | [lTensorBot_symm_apply](../../../../../mathematics/Algebra/LinearAlgebra/Subalgebra/Variantc46aedda9189fe3fca0a7748b1026017525ff73cdc6f41266224a8bc9ee64783.lean/declarations/ltensorbot-symm-apply--bce1a82f19824daedbdf8c3f.md) | 89 | `result-track:bce1a82f19824daedbdf8c3f467d1d5c6e576dc086f26b0e84abd16f3ff97a47` |
| 5 | `def` | [rTensorBot](../../../../../mathematics/Algebra/LinearAlgebra/Subalgebra/Variantc46aedda9189fe3fca0a7748b1026017525ff73cdc6f41266224a8bc9ee64783.lean/declarations/rtensorbot--f63e89063bc95f72572a2bb4.md) | 97 | `declaration-track:f63e89063bc95f72572a2bb4a86aba34b274d13a91cb25c27e418524b899ec9a` |
| 6 | `theorem` | [rTensorBot_tmul](../../../../../mathematics/Algebra/LinearAlgebra/Subalgebra/Variantc46aedda9189fe3fca0a7748b1026017525ff73cdc6f41266224a8bc9ee64783.lean/declarations/rtensorbot-tmul--6291033043696fb64b7fafb2.md) | 112 | `result-track:6291033043696fb64b7fafb2a3fc6e3c1ffee9e10c24401feae9d801dc4fa864` |
| 7 | `theorem` | [rTensorBot_tmul_one](../../../../../mathematics/Algebra/LinearAlgebra/Subalgebra/Variantc46aedda9189fe3fca0a7748b1026017525ff73cdc6f41266224a8bc9ee64783.lean/declarations/rtensorbot-tmul-one--9b1abd911092a7ff23489ee4.md) | 116 | `result-track:9b1abd911092a7ff23489ee4d70caa09a8a8c4813e6e6736251670a9b46acb6e` |
| 8 | `theorem` | [rTensorBot_symm_apply](../../../../../mathematics/Algebra/LinearAlgebra/Subalgebra/Variantc46aedda9189fe3fca0a7748b1026017525ff73cdc6f41266224a8bc9ee64783.lean/declarations/rtensorbot-symm-apply--a7b577842b980fa30ac2dca7.md) | 120 | `result-track:a7b577842b980fa30ac2dca729d6aed34b3acd8217c97d3a2c45d79e3b5e1a58` |
| 9 | `theorem` | [comm_trans_lTensorBot](../../../../../mathematics/Algebra/LinearAlgebra/Subalgebra/Variantc46aedda9189fe3fca0a7748b1026017525ff73cdc6f41266224a8bc9ee64783.lean/declarations/comm-trans-ltensorbot--9f2ad417768d632da48d30d0.md) | 125 | `result-track:9f2ad417768d632da48d30d0dedabacdfa11f40941049e11c442c0738f964aa3` |
| 10 | `theorem` | [comm_trans_rTensorBot](../../../../../mathematics/Algebra/LinearAlgebra/Subalgebra/Variantc46aedda9189fe3fca0a7748b1026017525ff73cdc6f41266224a8bc9ee64783.lean/declarations/comm-trans-rtensorbot--0f360d47b6a1a1bcd4a6f55e.md) | 130 | `result-track:0f360d47b6a1a1bcd4a6f55e7bff4927262ef5a210f1b58da9b9c85cf0ec1033` |
| 11 | `def` | [linearEquivIncludeRange](../../../../../mathematics/Algebra/LinearAlgebra/Subalgebra/Variantc46aedda9189fe3fca0a7748b1026017525ff73cdc6f41266224a8bc9ee64783.lean/declarations/linearequivincluderange--6f601d4cbf3fd54e7c0e4847.md) | 143 | `declaration-track:6f601d4cbf3fd54e7c0e4847ba74463a447f7f1764a21b8238d37ff9193fe031` |
| 12 | `theorem` | [linearEquivIncludeRange_toLinearMap](../../../../../mathematics/Algebra/LinearAlgebra/Subalgebra/Variantc46aedda9189fe3fca0a7748b1026017525ff73cdc6f41266224a8bc9ee64783.lean/declarations/linearequivincluderange-tolinearmap--5217fc147cbb860bf34c1363.md) | 161 | `result-track:5217fc147cbb860bf34c1363f48194882665b372434780d5b3e2477693fa9e7c` |
| 13 | `theorem` | [linearEquivIncludeRange_symm_toLinearMap](../../../../../mathematics/Algebra/LinearAlgebra/Subalgebra/Variantc46aedda9189fe3fca0a7748b1026017525ff73cdc6f41266224a8bc9ee64783.lean/declarations/linearequivincluderange-symm-tolinearmap--30cece6748083bed78789939.md) | 166 | `result-track:30cece6748083bed787899396dfbe4e0d84634236e0c722e6786dd8c5dc4c954` |
| 14 | `theorem` | [linearEquivIncludeRange_tmul](../../../../../mathematics/Algebra/LinearAlgebra/Subalgebra/Variantc46aedda9189fe3fca0a7748b1026017525ff73cdc6f41266224a8bc9ee64783.lean/declarations/linearequivincluderange-tmul--1567c82ea241de082376b9d9.md) | 171 | `result-track:1567c82ea241de082376b9d963a02a49bedb954f5d20f77984a7ff2fb13a2a5a` |
| 15 | `theorem` | [linearEquivIncludeRange_symm_tmul](../../../../../mathematics/Algebra/LinearAlgebra/Subalgebra/Variantc46aedda9189fe3fca0a7748b1026017525ff73cdc6f41266224a8bc9ee64783.lean/declarations/linearequivincluderange-symm-tmul--d19f7a302df755843c8e2456.md) | 177 | `result-track:d19f7a302df755843c8e245615bf909979722b6b9c4314df1dbc63b56ab5013c` |
| 16 | `def` | [algEquivIncludeRange](../../../../../mathematics/Algebra/LinearAlgebra/Subalgebra/Variantc46aedda9189fe3fca0a7748b1026017525ff73cdc6f41266224a8bc9ee64783.lean/declarations/algequivincluderange--3be3380be8fcb03977f4bd87.md) | 182 | `declaration-track:3be3380be8fcb03977f4bd87a70c5f112f6a3799333a188774783fecbc7a53a4` |
| 17 | `theorem` | [algEquivIncludeRange_toAlgHom](../../../../../mathematics/Algebra/LinearAlgebra/Subalgebra/Variantc46aedda9189fe3fca0a7748b1026017525ff73cdc6f41266224a8bc9ee64783.lean/declarations/algequivincluderange-toalghom--0229b9c0d851b0d2c364380d.md) | 187 | `result-track:0229b9c0d851b0d2c364380d0b24b89b8c3694f5bdea0e78243150072876aeba` |
| 18 | `theorem` | [algEquivIncludeRange_tmul](../../../../../mathematics/Algebra/LinearAlgebra/Subalgebra/Variantc46aedda9189fe3fca0a7748b1026017525ff73cdc6f41266224a8bc9ee64783.lean/declarations/algequivincluderange-tmul--b12342f42d91d089104cc000.md) | 192 | `result-track:b12342f42d91d089104cc000517ec9f91c4f5f624b6963dfc596afa9669acbae` |
| 19 | `theorem` | [algEquivIncludeRange_symm_tmul](../../../../../mathematics/Algebra/LinearAlgebra/Subalgebra/Variantc46aedda9189fe3fca0a7748b1026017525ff73cdc6f41266224a8bc9ee64783.lean/declarations/algequivincluderange-symm-tmul--d3174b630de27d6f0501cb38.md) | 198 | `result-track:d3174b630de27d6f0501cb3834a0af6a2e65aea1c5c49da42a3b458e53e7a047` |
| 20 | `def` | [Subalgebra.mulMap](../../../../../mathematics/Algebra/LinearAlgebra/Subalgebra/Variantc46aedda9189fe3fca0a7748b1026017525ff73cdc6f41266224a8bc9ee64783.lean/declarations/subalgebra-mulmap--785f517263156d2054522065.md) | 214 | `declaration-track:785f517263156d2054522065b55606997dc8f0048b18ce988fb996c4bd2e246e` |
| 21 | `theorem` | [Algebra.TensorProduct.algEquivIncludeRange_symm_toAlgHom](../../../../../mathematics/Algebra/LinearAlgebra/Subalgebra/Variantc46aedda9189fe3fca0a7748b1026017525ff73cdc6f41266224a8bc9ee64783.lean/declarations/algebra-tensorproduct-algequivincluderange-symm-toalghom--c0475a93e625a7fa7100573f.md) | 217 | `result-track:c0475a93e625a7fa7100573fe04ca39054ac467b49b41fd8a183df31cd634eb2` |
| 22 | `theorem` | [mulMap_tmul](../../../../../mathematics/Algebra/LinearAlgebra/Subalgebra/Variantc46aedda9189fe3fca0a7748b1026017525ff73cdc6f41266224a8bc9ee64783.lean/declarations/mulmap-tmul--43168f4db2b2fa4843ee3224.md) | 224 | `result-track:43168f4db2b2fa4843ee322410a1f653ff24314e34d4fe24e1950af06d42095c` |
| 23 | `theorem` | [mulMap_map_comp_eq](../../../../../mathematics/Algebra/LinearAlgebra/Subalgebra/Variantc46aedda9189fe3fca0a7748b1026017525ff73cdc6f41266224a8bc9ee64783.lean/declarations/mulmap-map-comp-eq--e5efa993a6a5aa1704f81859.md) | 226 | `result-track:e5efa993a6a5aa1704f81859767deca60cea94d7108a2c99566bc2117d88c8d2` |
| 24 | `theorem` | [mulMap_toLinearMap](../../../../../mathematics/Algebra/LinearAlgebra/Subalgebra/Variantc46aedda9189fe3fca0a7748b1026017525ff73cdc6f41266224a8bc9ee64783.lean/declarations/mulmap-tolinearmap--ca23e3cf29f8fd1990ac1994.md) | 232 | `result-track:ca23e3cf29f8fd1990ac19942c71a3a8544e7424b20729a9f236121118cda0b6` |
| 25 | `theorem` | [mulMap_comm](../../../../../mathematics/Algebra/LinearAlgebra/Subalgebra/Variantc46aedda9189fe3fca0a7748b1026017525ff73cdc6f41266224a8bc9ee64783.lean/declarations/mulmap-comm--8789d47e6f9c0e857eeaad40.md) | 235 | `result-track:8789d47e6f9c0e857eeaad40bed26e68e4813271e90060ca76ed91a3186226af` |
| 26 | `theorem` | [mulMap_range](../../../../../mathematics/Algebra/LinearAlgebra/Subalgebra/Variantc46aedda9189fe3fca0a7748b1026017525ff73cdc6f41266224a8bc9ee64783.lean/declarations/mulmap-range--eec23e90a6822e8cf419af4b.md) | 238 | `result-track:eec23e90a6822e8cf419af4b80a217d554fadd1defa82079627625a4daf0c3b8` |
| 27 | `theorem` | [mulMap_bot_left_eq](../../../../../mathematics/Algebra/LinearAlgebra/Subalgebra/Variantc46aedda9189fe3fca0a7748b1026017525ff73cdc6f41266224a8bc9ee64783.lean/declarations/mulmap-bot-left-eq--4514421d749e8fa9e6b320cb.md) | 241 | `result-track:4514421d749e8fa9e6b320cb7ad4ab6b58d7292c62fa49bdd26348ff2726ae79` |
| 28 | `theorem` | [mulMap_bot_right_eq](../../../../../mathematics/Algebra/LinearAlgebra/Subalgebra/Variantc46aedda9189fe3fca0a7748b1026017525ff73cdc6f41266224a8bc9ee64783.lean/declarations/mulmap-bot-right-eq--787faf4bb606643a42720599.md) | 244 | `result-track:787faf4bb606643a42720599100f59585f2a5f6f200ca30f171ff390a5ef8092` |
| 29 | `def` | [mulMap'](../../../../../mathematics/Algebra/LinearAlgebra/Subalgebra/Variantc46aedda9189fe3fca0a7748b1026017525ff73cdc6f41266224a8bc9ee64783.lean/declarations/mulmap--2999148fb447f632bdd24d61.md) | 251 | `declaration-track:2999148fb447f632bdd24d618ffa97f7f7627541c4e7e59b8d7b479dfb66263e` |
| 30 | `theorem` | [val_mulMap'_tmul](../../../../../mathematics/Algebra/LinearAlgebra/Subalgebra/Variantc46aedda9189fe3fca0a7748b1026017525ff73cdc6f41266224a8bc9ee64783.lean/declarations/val-mulmap-tmul--5a79698549ac01a23e7c633b.md) | 256 | `result-track:5a79698549ac01a23e7c633b11f5c7757be6544f5ad4630f1b0a7960333fc5fb` |
| 31 | `theorem` | [mulMap'_surjective](../../../../../mathematics/Algebra/LinearAlgebra/Subalgebra/Variantc46aedda9189fe3fca0a7748b1026017525ff73cdc6f41266224a8bc9ee64783.lean/declarations/mulmap-surjective--81232ce61ac2429e089056f0.md) | 258 | `result-track:81232ce61ac2429e089056f03372dcca7353b9789ac8d2ad857880fea239d272` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
