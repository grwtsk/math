# Verification target: GRWTSK.Algebra.LinearAlgebra.PID.Variantab79b67381b36ef5a94ef06b482042483452a3b18d13d2275c333eb6bfa799fb

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "393373167928c6a90d2d42a212fc7b66a0e98b6d",
  "lexical_observation_count": 41,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/PID/Variantab79b67381b36ef5a94ef06b482042483452a3b18d13d2275c333eb6bfa799fb.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/PID/Variantab79b67381b36ef5a94ef06b482042483452a3b18d13d2275c333eb6bfa799fb.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/PID/Variantab79b67381b36ef5a94ef06b482042483452a3b18d13d2275c333eb6bfa799fb.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `393373167928c6a90d2d42a212fc7b66a0e98b6d`.

Source path: `GRWTSK/Algebra/LinearAlgebra/PID/Variantab79b67381b36ef5a94ef06b482042483452a3b18d13d2275c333eb6bfa799fb.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/PID/Variantab79b67381b36ef5a94ef06b482042483452a3b18d13d2275c333eb6bfa799fb.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.LinearAlgebra.Dimension.StrongRankCondition` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.FreeModule.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Matrix.ToLin` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [eq_bot_of_generator_maximal_map_eq_zero](../../../../../mathematics/Algebra/LinearAlgebra/PID/Variantab79b67381b36ef5a94ef06b482042483452a3b18d13d2275c333eb6bfa799fb.lean/declarations/eq-bot-of-generator-maximal-map-eq-zero--02b15770be7c7fa41c3b0420.md) | 58 | `result-track:02b15770be7c7fa41c3b04203e8392e0f2b7f3036b68056399f99292cedb34db` |
| 2 | `theorem` | [eq_bot_of_generator_maximal_submoduleImage_eq_zero](../../../../../mathematics/Algebra/LinearAlgebra/PID/Variantab79b67381b36ef5a94ef06b482042483452a3b18d13d2275c333eb6bfa799fb.lean/declarations/eq-bot-of-generator-maximal-submoduleimage-eq-zero--affbf4cfef1aae8370855f16.md) | 70 | `result-track:affbf4cfef1aae8370855f162005f6f365782c63b4b387f8640b17e04390fdc2` |
| 3 | `theorem` | [dvd_generator_iff](../../../../../mathematics/Algebra/LinearAlgebra/PID/Variantab79b67381b36ef5a94ef06b482042483452a3b18d13d2275c333eb6bfa799fb.lean/declarations/dvd-generator-iff--3249f1e8bd66c3b4260ced8d.md) | 90 | `result-track:3249f1e8bd66c3b4260ced8d9b2320f970c3d685e69ea41eff35c98054ad27f9` |
| 4 | `theorem` | [generator_maximal_submoduleImage_dvd](../../../../../mathematics/Algebra/LinearAlgebra/PID/Variantab79b67381b36ef5a94ef06b482042483452a3b18d13d2275c333eb6bfa799fb.lean/declarations/generator-maximal-submoduleimage-dvd--64b5e23c98dff2ba82cb3a22.md) | 112 | `result-track:64b5e23c98dff2ba82cb3a2202e6f5b8df4433a590c40e03ff2af280ed59afbc` |
| 5 | `theorem` | [Submodule.basis_of_pid_aux](../../../../../mathematics/Algebra/LinearAlgebra/PID/Variantab79b67381b36ef5a94ef06b482042483452a3b18d13d2275c333eb6bfa799fb.lean/declarations/submodule-basis-of-pid-aux--f2102ae191f99fcef4ebe9e0.md) | 155 | `result-track:f2102ae191f99fcef4ebe9e04f80597bce48245c6b4f7ad064b2cc7a754f6128` |
| 6 | `theorem` | [Submodule.nonempty_basis_of_pid](../../../../../mathematics/Algebra/LinearAlgebra/PID/Variantab79b67381b36ef5a94ef06b482042483452a3b18d13d2275c333eb6bfa799fb.lean/declarations/submodule-nonempty-basis-of-pid--d3eaf5d74452dfb9ddcf117a.md) | 284 | `result-track:d3eaf5d74452dfb9ddcf117a048f0e85971f5108e9e9447bdda2c2f6424c4f46` |
| 7 | `def` | [Submodule.basisOfPid](../../../../../mathematics/Algebra/LinearAlgebra/PID/Variantab79b67381b36ef5a94ef06b482042483452a3b18d13d2275c333eb6bfa799fb.lean/declarations/submodule-basisofpid--87a2d273068dcd4c0143e9d9.md) | 304 | `declaration-track:87a2d273068dcd4c0143e9d9bc99fbb26bd27cf62898a1aa34a71c09c65de7b5` |
| 8 | `theorem` | [Submodule.basisOfPid_bot](../../../../../mathematics/Algebra/LinearAlgebra/PID/Variantab79b67381b36ef5a94ef06b482042483452a3b18d13d2275c333eb6bfa799fb.lean/declarations/submodule-basisofpid-bot--64e9786efe847a05b7d7a859.md) | 308 | `result-track:64e9786efe847a05b7d7a859a8aaeb1e763075152729d8de6236c352447ec565` |
| 9 | `def` | [Submodule.basisOfPidOfLE](../../../../../mathematics/Algebra/LinearAlgebra/PID/Variantab79b67381b36ef5a94ef06b482042483452a3b18d13d2275c333eb6bfa799fb.lean/declarations/submodule-basisofpidofle--bfe0d8b7070fa45cf83895b8.md) | 320 | `declaration-track:bfe0d8b7070fa45cf83895b8441dd5f958dbb8b9236fe5f4de1c20aad5f6e6f0` |
| 10 | `def` | [Submodule.basisOfPidOfLESpan](../../../../../mathematics/Algebra/LinearAlgebra/PID/Variantab79b67381b36ef5a94ef06b482042483452a3b18d13d2275c333eb6bfa799fb.lean/declarations/submodule-basisofpidoflespan--552c7d92b66e53b2a90a1652.md) | 327 | `declaration-track:552c7d92b66e53b2a90a16521cd1ba690f706f89c4b350537aaa22f0c6fbcc0c` |
| 11 | `def` | [Module.basisOfFiniteTypeTorsionFree](../../../../../mathematics/Algebra/LinearAlgebra/PID/Variantab79b67381b36ef5a94ef06b482042483452a3b18d13d2275c333eb6bfa799fb.lean/declarations/module-basisoffinitetypetorsionfree--072bed076f0ae018acf5f895.md) | 333 | `declaration-track:072bed076f0ae018acf5f8954ea889e14ad0cec6a04311db06c69dd5ce3b9aba` |
| 12 | `theorem` | [Module.free_of_finite_type_torsion_free](../../../../../mathematics/Algebra/LinearAlgebra/PID/Variantab79b67381b36ef5a94ef06b482042483452a3b18d13d2275c333eb6bfa799fb.lean/declarations/module-free-of-finite-type-torsion-free--b327ec8e87409a67cd6fe440.md) | 381 | `result-track:b327ec8e87409a67cd6fe44007602e8e7cc8bd7b3715e8d9cc84ec58f91bfaca` |
| 13 | `def` | [Module.basisOfFiniteTypeTorsionFree'](../../../../../mathematics/Algebra/LinearAlgebra/PID/Variantab79b67381b36ef5a94ef06b482042483452a3b18d13d2275c333eb6bfa799fb.lean/declarations/module-basisoffinitetypetorsionfree--5c61ccc1bed1fbae3ab6d74b.md) | 388 | `declaration-track:5c61ccc1bed1fbae3ab6d74b983b052702c8f84179a103a91a0e50749b1f6ca2` |
| 14 | `instance` | [Module.free_of_finite_type_torsion_free'](../../../../../mathematics/Algebra/LinearAlgebra/PID/Variantab79b67381b36ef5a94ef06b482042483452a3b18d13d2275c333eb6bfa799fb.lean/declarations/module-free-of-finite-type-torsion-free--2cff20909b58c072f60018f9.md) | 392 | `declaration-track:2cff20909b58c072f60018f9ae328f759053cd854ba09b1c10317bd8dcd544af` |
| 15 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/PID/Variantab79b67381b36ef5a94ef06b482042483452a3b18d13d2275c333eb6bfa799fb.lean/declarations/instance--ff0a27e9d6b45df52e999a86.md) | 397 | `declaration-track:ff0a27e9d6b45df52e999a86fde1c05d46fa0704453d2387a6975bca8bf95648` |
| 16 | `theorem` | [Module.free_iff_noZeroSMulDivisors](../../../../../mathematics/Algebra/LinearAlgebra/PID/Variantab79b67381b36ef5a94ef06b482042483452a3b18d13d2275c333eb6bfa799fb.lean/declarations/module-free-iff-nozerosmuldivisors--1a18c1024d3e8509ce09c918.md) | 404 | `result-track:1a18c1024d3e8509ce09c9184ae7c0e12fff98ff9c1e56997bc1eb75a7a0cc9e` |
| 17 | `structure` | [Basis.SmithNormalForm](../../../../../mathematics/Algebra/LinearAlgebra/PID/Variantab79b67381b36ef5a94ef06b482042483452a3b18d13d2275c333eb6bfa799fb.lean/declarations/basis-smithnormalform--891e3a99c93904d3c0e6e94e.md) | 415 | `declaration-track:891e3a99c93904d3c0e6e94e0ff3d7459543d93d82d6facded672689e346e310` |
| 18 | `lemma` | [repr_eq_zero_of_notMem_range](../../../../../mathematics/Algebra/LinearAlgebra/PID/Variantab79b67381b36ef5a94ef06b482042483452a3b18d13d2275c333eb6bfa799fb.lean/declarations/repr-eq-zero-of-notmem-range--d71a8b595623d89c7489123e.md) | 431 | `result-track:d71a8b595623d89c7489123ed91a80772c310faf81a9b1fcbeee6c4195e25c24` |
| 19 | `lemma` | [le_ker_coord_of_notMem_range](../../../../../mathematics/Algebra/LinearAlgebra/PID/Variantab79b67381b36ef5a94ef06b482042483452a3b18d13d2275c333eb6bfa799fb.lean/declarations/le-ker-coord-of-notmem-range--42dc5b52050982b1e30b1e88.md) | 441 | `result-track:42dc5b52050982b1e30b1e88780c670b47ff3b238be4b77d58bb5f281357c62c` |
| 20 | `lemma` | [repr_apply_embedding_eq_repr_smul](../../../../../mathematics/Algebra/LinearAlgebra/PID/Variantab79b67381b36ef5a94ef06b482042483452a3b18d13d2275c333eb6bfa799fb.lean/declarations/repr-apply-embedding-eq-repr-smul--497872fa509b8e544ae25539.md) | 448 | `result-track:497872fa509b8e544ae2553956a8a2da86cc795f216baaac350c5e6ac6dd487b` |
| 21 | `lemma` | [repr_comp_embedding_eq_smul](../../../../../mathematics/Algebra/LinearAlgebra/PID/Variantab79b67381b36ef5a94ef06b482042483452a3b18d13d2275c333eb6bfa799fb.lean/declarations/repr-comp-embedding-eq-smul--96ed6627cc3ba03fc7474de5.md) | 463 | `result-track:96ed6627cc3ba03fc7474de57cd0792c3b649c12d4e63c7256e84449930ed046` |
| 22 | `lemma` | [coord_apply_embedding_eq_smul_coord](../../../../../mathematics/Algebra/LinearAlgebra/PID/Variantab79b67381b36ef5a94ef06b482042483452a3b18d13d2275c333eb6bfa799fb.lean/declarations/coord-apply-embedding-eq-smul-coord--b91d2ed39c315e551c4b4281.md) | 468 | `result-track:b91d2ed39c315e551c4b42818659f95161eb639a00c22dcf22417cf32c395542` |
| 23 | `lemma` | [toMatrix_restrict_eq_toMatrix](../../../../../mathematics/Algebra/LinearAlgebra/PID/Variantab79b67381b36ef5a94ef06b482042483452a3b18d13d2275c333eb6bfa799fb.lean/declarations/tomatrix-restrict-eq-tomatrix--d5f2e2bea7afbc7c2ccc47b7.md) | 477 | `result-track:d5f2e2bea7afbc7c2ccc47b75f40b7fe9d1eaa6bc43c8358851bc98a21e7ee7e` |
| 24 | `theorem` | [Submodule.exists_smith_normal_form_of_le](../../../../../mathematics/Algebra/LinearAlgebra/PID/Variantab79b67381b36ef5a94ef06b482042483452a3b18d13d2275c333eb6bfa799fb.lean/declarations/submodule-exists-smith-normal-form-of-le--e5d8200525b28037477d3fa4.md) | 500 | `result-track:e5d8200525b28037477d3fa486ab83cd61a529f1391501b712cf082e9356b4d0` |
| 25 | `def` | [Submodule.smithNormalFormOfLE](../../../../../mathematics/Algebra/LinearAlgebra/PID/Variantab79b67381b36ef5a94ef06b482042483452a3b18d13d2275c333eb6bfa799fb.lean/declarations/submodule-smithnormalformofle--68aff06ba64dd7254e3aeb23.md) | 528 | `declaration-track:68aff06ba64dd7254e3aeb239d12cb3e7e864d9c735da3ed0f55d514ed5b8f71` |
| 26 | `def` | [Submodule.smithNormalForm](../../../../../mathematics/Algebra/LinearAlgebra/PID/Variantab79b67381b36ef5a94ef06b482042483452a3b18d13d2275c333eb6bfa799fb.lean/declarations/submodule-smithnormalform--955d29070819a1be0a114f61.md) | 547 | `declaration-track:955d29070819a1be0a114f619effbe7c3de0d8d1f794d5879f9618a6502fde86` |
| 27 | `def` | [Submodule.smithNormalFormOfRankEq](../../../../../mathematics/Algebra/LinearAlgebra/PID/Variantab79b67381b36ef5a94ef06b482042483452a3b18d13d2275c333eb6bfa799fb.lean/declarations/submodule-smithnormalformofrankeq--ea025fac96a7aee30ee49b38.md) | 569 | `declaration-track:ea025fac96a7aee30ee49b38e0b26b3e61594d95adf897c56428490d8a3b7bea` |
| 28 | `theorem` | [Submodule.exists_smith_normal_form_of_rank_eq](../../../../../mathematics/Algebra/LinearAlgebra/PID/Variantab79b67381b36ef5a94ef06b482042483452a3b18d13d2275c333eb6bfa799fb.lean/declarations/submodule-exists-smith-normal-form-of-rank-eq--f7d62c7ea256dddfe31c78b5.md) | 590 | `result-track:f7d62c7ea256dddfe31c78b5ebe45f5aa4e1b17ba60bdd2fb39cbd0a8ee63fb8` |
| 29 | `def` | [Submodule.smithNormalFormTopBasis](../../../../../mathematics/Algebra/LinearAlgebra/PID/Variantab79b67381b36ef5a94ef06b482042483452a3b18d13d2275c333eb6bfa799fb.lean/declarations/submodule-smithnormalformtopbasis--416cd169eb48c7e191135fe7.md) | 613 | `declaration-track:416cd169eb48c7e191135fe798c390a28f44a7fc4ee429dd502b840c295a911f` |
| 30 | `def` | [Submodule.smithNormalFormBotBasis](../../../../../mathematics/Algebra/LinearAlgebra/PID/Variantab79b67381b36ef5a94ef06b482042483452a3b18d13d2275c333eb6bfa799fb.lean/declarations/submodule-smithnormalformbotbasis--869b4cde6af8fc45ea611132.md) | 626 | `declaration-track:869b4cde6af8fc45ea6111328e28a201c3844780aec5715787c722679b936374` |
| 31 | `def` | [Submodule.smithNormalFormCoeffs](../../../../../mathematics/Algebra/LinearAlgebra/PID/Variantab79b67381b36ef5a94ef06b482042483452a3b18d13d2275c333eb6bfa799fb.lean/declarations/submodule-smithnormalformcoeffs--d5223935909847bdb14ab5b3.md) | 639 | `declaration-track:d5223935909847bdb14ab5b3ea6a793f352180f24d4db504ff47dc20caff7ddb` |
| 32 | `theorem` | [Submodule.smithNormalFormBotBasis_def](../../../../../mathematics/Algebra/LinearAlgebra/PID/Variantab79b67381b36ef5a94ef06b482042483452a3b18d13d2275c333eb6bfa799fb.lean/declarations/submodule-smithnormalformbotbasis-def--46c7225a1f7f2a42126fe207.md) | 644 | `result-track:46c7225a1f7f2a42126fe2071d34b70af3d8e79b244115911d0e27a0fc166b18` |
| 33 | `theorem` | [Submodule.smithNormalFormCoeffs_ne_zero](../../../../../mathematics/Algebra/LinearAlgebra/PID/Variantab79b67381b36ef5a94ef06b482042483452a3b18d13d2275c333eb6bfa799fb.lean/declarations/submodule-smithnormalformcoeffs-ne-zero--f0c81a897a0195c49c408a3c.md) | 651 | `result-track:f0c81a897a0195c49c408a3c1175104c1fa41b3b86e7d36ab771a7597250845f` |
| 34 | `theorem` | [Ideal.finrank_eq_finrank](../../../../../mathematics/Algebra/LinearAlgebra/PID/Variantab79b67381b36ef5a94ef06b482042483452a3b18d13d2275c333eb6bfa799fb.lean/declarations/ideal-finrank-eq-finrank--61dc7f1365aaf0f20ef9e001.md) | 665 | `result-track:61dc7f1365aaf0f20ef9e001e2e0b6b20283b975b8c3b206b53917b8a491c0f9` |
| 35 | `def` | [Ideal.smithNormalForm](../../../../../mathematics/Algebra/LinearAlgebra/PID/Variantab79b67381b36ef5a94ef06b482042483452a3b18d13d2275c333eb6bfa799fb.lean/declarations/ideal-smithnormalform--28bed867b6b8aacf46392158.md) | 682 | `declaration-track:28bed867b6b8aacf4639215852d31d039feb356eab961504aae47d7d64014782` |
| 36 | `theorem` | [Ideal.exists_smith_normal_form](../../../../../mathematics/Algebra/LinearAlgebra/PID/Variantab79b67381b36ef5a94ef06b482042483452a3b18d13d2275c333eb6bfa799fb.lean/declarations/ideal-exists-smith-normal-form--d948ff60dc97ea1fcf735348.md) | 699 | `result-track:d948ff60dc97ea1fcf7353482b66f20009a0b93c002d6c9863c6030d6b6413f3` |
| 37 | `def` | [Ideal.ringBasis](../../../../../mathematics/Algebra/LinearAlgebra/PID/Variantab79b67381b36ef5a94ef06b482042483452a3b18d13d2275c333eb6bfa799fb.lean/declarations/ideal-ringbasis--4408d2af27751eb96bc78e2e.md) | 711 | `declaration-track:4408d2af27751eb96bc78e2efd88b8f1991e7d23f6876c74de8d8c13191eb39d` |
| 38 | `def` | [Ideal.selfBasis](../../../../../mathematics/Algebra/LinearAlgebra/PID/Variantab79b67381b36ef5a94ef06b482042483452a3b18d13d2275c333eb6bfa799fb.lean/declarations/ideal-selfbasis--a7aa06c959d6afd1394d6b16.md) | 722 | `declaration-track:a7aa06c959d6afd1394d6b16d93a15909e9a7c64adb87fa34030177356f8245a` |
| 39 | `def` | [Ideal.smithCoeffs](../../../../../mathematics/Algebra/LinearAlgebra/PID/Variantab79b67381b36ef5a94ef06b482042483452a3b18d13d2275c333eb6bfa799fb.lean/declarations/ideal-smithcoeffs--9538b6ece47a52d052c6151b.md) | 733 | `declaration-track:9538b6ece47a52d052c6151b089a34b48a30e3678e233179b40f75633b61d91f` |
| 40 | `theorem` | [Ideal.selfBasis_def](../../../../../mathematics/Algebra/LinearAlgebra/PID/Variantab79b67381b36ef5a94ef06b482042483452a3b18d13d2275c333eb6bfa799fb.lean/declarations/ideal-selfbasis-def--46d582e115d9747ed5b0a71c.md) | 742 | `result-track:46d582e115d9747ed5b0a71c4bb9af1e2d5e5bd15876109f9a8e4b7d91937388` |
| 41 | `theorem` | [Ideal.smithCoeffs_ne_zero](../../../../../mathematics/Algebra/LinearAlgebra/PID/Variantab79b67381b36ef5a94ef06b482042483452a3b18d13d2275c333eb6bfa799fb.lean/declarations/ideal-smithcoeffs-ne-zero--dc985b9c9d65cb7dc4e52bda.md) | 747 | `result-track:dc985b9c9d65cb7dc4e52bda1b751277b587e0d7824ac89c9927cb6c5397068d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
