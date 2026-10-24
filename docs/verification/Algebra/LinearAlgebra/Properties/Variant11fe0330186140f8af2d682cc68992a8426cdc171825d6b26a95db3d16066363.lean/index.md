# Verification target: GRWTSK.Algebra.LinearAlgebra.Properties.Variant11fe0330186140f8af2d682cc68992a8426cdc171825d6b26a95db3d16066363

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "40681f592b9648400ded4751c49b81f69c55a0c2",
  "lexical_observation_count": 56,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Properties/Variant11fe0330186140f8af2d682cc68992a8426cdc171825d6b26a95db3d16066363.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Properties/Variant11fe0330186140f8af2d682cc68992a8426cdc171825d6b26a95db3d16066363.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Properties/Variant11fe0330186140f8af2d682cc68992a8426cdc171825d6b26a95db3d16066363.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `40681f592b9648400ded4751c49b81f69c55a0c2`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Properties/Variant11fe0330186140f8af2d682cc68992a8426cdc171825d6b26a95db3d16066363.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Properties/Variant11fe0330186140f8af2d682cc68992a8426cdc171825d6b26a95db3d16066363.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.LinearAlgebra.BilinearForm.Hom` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Dual.Lemmas` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [IsRefl](../../../../../mathematics/Algebra/LinearAlgebra/Properties/Variant11fe0330186140f8af2d682cc68992a8426cdc171825d6b26a95db3d16066363.lean/declarations/isrefl--3a8ca27d5e86509fb7c52bfc.md) | 62 | `declaration-track:3a8ca27d5e86509fb7c52bfcd96101adc15f6f2002b29a530812ad2f2f138d66` |
| 2 | `theorem` | [eq_zero](../../../../../mathematics/Algebra/LinearAlgebra/Properties/Variant11fe0330186140f8af2d682cc68992a8426cdc171825d6b26a95db3d16066363.lean/declarations/eq-zero--e1ead67632190b1d22503b9f.md) | 66 | `result-track:e1ead67632190b1d22503b9fcced38680cd5c7cdd08d9533a25947d45ae6e224` |
| 3 | `theorem` | [neg](../../../../../mathematics/Algebra/LinearAlgebra/Properties/Variant11fe0330186140f8af2d682cc68992a8426cdc171825d6b26a95db3d16066363.lean/declarations/neg--0ab162f350e5deeadc1ea4f8.md) | 68 | `result-track:0ab162f350e5deeadc1ea4f8c29b77c8b64a5f8d7bbf76adce6112daa8824e0f` |
| 4 | `theorem` | [smul](../../../../../mathematics/Algebra/LinearAlgebra/Properties/Variant11fe0330186140f8af2d682cc68992a8426cdc171825d6b26a95db3d16066363.lean/declarations/smul--aa334db19d4363936ad610d7.md) | 71 | `result-track:aa334db19d4363936ad610d7ad820a0a185ad433e8bd5a897d079a6a03e31380` |
| 5 | `theorem` | [groupSMul](../../../../../mathematics/Algebra/LinearAlgebra/Properties/Variant11fe0330186140f8af2d682cc68992a8426cdc171825d6b26a95db3d16066363.lean/declarations/groupsmul--92555fe41a173985b8b992af.md) | 77 | `result-track:92555fe41a173985b8b992aff438f0e1bcd1de6b0f0e0639e78d780bf87fd711` |
| 6 | `theorem` | [isRefl_zero](../../../../../mathematics/Algebra/LinearAlgebra/Properties/Variant11fe0330186140f8af2d682cc68992a8426cdc171825d6b26a95db3d16066363.lean/declarations/isrefl-zero--0df75db0da1854e4e05653e2.md) | 84 | `result-track:0df75db0da1854e4e05653e23f57973ef106432a3fc728ac427891fbe5c6a7c5` |
| 7 | `theorem` | [isRefl_neg](../../../../../mathematics/Algebra/LinearAlgebra/Properties/Variant11fe0330186140f8af2d682cc68992a8426cdc171825d6b26a95db3d16066363.lean/declarations/isrefl-neg--30c18d97b9d64ed9521d68c0.md) | 87 | `result-track:30c18d97b9d64ed9521d68c00c32726fad78ae63f586ce945eea051864fa10ff` |
| 8 | `def` | [IsSymm](../../../../../mathematics/Algebra/LinearAlgebra/Properties/Variant11fe0330186140f8af2d682cc68992a8426cdc171825d6b26a95db3d16066363.lean/declarations/issymm--796f323bb80a98f563bf4304.md) | 91 | `declaration-track:796f323bb80a98f563bf43040b48880bc1b1dbc9345a8a0de764da719f37c518` |
| 9 | `theorem` | [eq](../../../../../mathematics/Algebra/LinearAlgebra/Properties/Variant11fe0330186140f8af2d682cc68992a8426cdc171825d6b26a95db3d16066363.lean/declarations/eq--0c7c65dc120cb9b890f119de.md) | 95 | `result-track:0c7c65dc120cb9b890f119de1eaef09058149c28c1797683caab0887df4d9207` |
| 10 | `theorem` | [isRefl](../../../../../mathematics/Algebra/LinearAlgebra/Properties/Variant11fe0330186140f8af2d682cc68992a8426cdc171825d6b26a95db3d16066363.lean/declarations/isrefl--6fad8ece04f1a109f2f29662.md) | 98 | `result-track:6fad8ece04f1a109f2f296621c05b5d4a29c3819a188705b28f01593143eebf5` |
| 11 | `theorem` | [add](../../../../../mathematics/Algebra/LinearAlgebra/Properties/Variant11fe0330186140f8af2d682cc68992a8426cdc171825d6b26a95db3d16066363.lean/declarations/add--20a7bc74fffe575586b52f40.md) | 100 | `result-track:20a7bc74fffe575586b52f4014bfb903c7b3d4ea6b6a58dae9a975ed526bc31f` |
| 12 | `theorem` | [sub](../../../../../mathematics/Algebra/LinearAlgebra/Properties/Variant11fe0330186140f8af2d682cc68992a8426cdc171825d6b26a95db3d16066363.lean/declarations/sub--1e39c30c9ef3fe24076674c2.md) | 103 | `result-track:1e39c30c9ef3fe24076674c279b4108f1907b300933dc1e2b419f8aa7d7f443d` |
| 13 | `theorem` | [neg](../../../../../mathematics/Algebra/LinearAlgebra/Properties/Variant11fe0330186140f8af2d682cc68992a8426cdc171825d6b26a95db3d16066363.lean/declarations/neg--2f503c414495467462cc322a.md) | 106 | `result-track:2f503c414495467462cc322ac2e58afcaf3e92890697cf7eecb71db11facdd8f` |
| 14 | `theorem` | [smul](../../../../../mathematics/Algebra/LinearAlgebra/Properties/Variant11fe0330186140f8af2d682cc68992a8426cdc171825d6b26a95db3d16066363.lean/declarations/smul--1c712d60026c504f27b100bf.md) | 109 | `result-track:1c712d60026c504f27b100bf55baa9d73c8554538f0ee61902a35c927930e7d2` |
| 15 | `theorem` | [restrict](../../../../../mathematics/Algebra/LinearAlgebra/Properties/Variant11fe0330186140f8af2d682cc68992a8426cdc171825d6b26a95db3d16066363.lean/declarations/restrict--ac7f475986798ff51eea421c.md) | 114 | `result-track:ac7f475986798ff51eea421cc3ce608f42232b38937a85c27b243ec7d22afb21` |
| 16 | `theorem` | [isSymm_zero](../../../../../mathematics/Algebra/LinearAlgebra/Properties/Variant11fe0330186140f8af2d682cc68992a8426cdc171825d6b26a95db3d16066363.lean/declarations/issymm-zero--a87bd374cbae4d4fca7e16f8.md) | 120 | `result-track:a87bd374cbae4d4fca7e16f82f3686a9c04110761e35dbdd062e34fdad71e734` |
| 17 | `theorem` | [isSymm_neg](../../../../../mathematics/Algebra/LinearAlgebra/Properties/Variant11fe0330186140f8af2d682cc68992a8426cdc171825d6b26a95db3d16066363.lean/declarations/issymm-neg--5f9e4807331c1ae182755cbb.md) | 123 | `result-track:5f9e4807331c1ae182755cbbb9825487a97e250d295084c04188c7154efc5e1e` |
| 18 | `theorem` | [isSymm_iff_flip](../../../../../mathematics/Algebra/LinearAlgebra/Properties/Variant11fe0330186140f8af2d682cc68992a8426cdc171825d6b26a95db3d16066363.lean/declarations/issymm-iff-flip--c01cabac5e4567b21f79ba2c.md) | 126 | `result-track:c01cabac5e4567b21f79ba2c7d7471983d8db5dc2458c92a46d2274c4c884252` |
| 19 | `def` | [IsAlt](../../../../../mathematics/Algebra/LinearAlgebra/Properties/Variant11fe0330186140f8af2d682cc68992a8426cdc171825d6b26a95db3d16066363.lean/declarations/isalt--575b38fe04afff74d43dd953.md) | 130 | `declaration-track:575b38fe04afff74d43dd95373c31775653079edf55ff655c7d5854dc994f1fd` |
| 20 | `theorem` | [self_eq_zero](../../../../../mathematics/Algebra/LinearAlgebra/Properties/Variant11fe0330186140f8af2d682cc68992a8426cdc171825d6b26a95db3d16066363.lean/declarations/self-eq-zero--2fee62340fee8720278dde50.md) | 134 | `result-track:2fee62340fee8720278dde5037f675638052424a2575930c31729a38c0089719` |
| 21 | `theorem` | [neg_eq](../../../../../mathematics/Algebra/LinearAlgebra/Properties/Variant11fe0330186140f8af2d682cc68992a8426cdc171825d6b26a95db3d16066363.lean/declarations/neg-eq--3fc2d51adfd9d68b6e33de01.md) | 136 | `result-track:3fc2d51adfd9d68b6e33de01fc244a7e21a5d3a226873edfc625978e655db9ad` |
| 22 | `theorem` | [isRefl](../../../../../mathematics/Algebra/LinearAlgebra/Properties/Variant11fe0330186140f8af2d682cc68992a8426cdc171825d6b26a95db3d16066363.lean/declarations/isrefl--0f301866e7f13c611baec89b.md) | 138 | `result-track:0f301866e7f13c611baec89badd9c0d783e13d894a18a9afe1acf843247e4949` |
| 23 | `theorem` | [eq_of_add_add_eq_zero](../../../../../mathematics/Algebra/LinearAlgebra/Properties/Variant11fe0330186140f8af2d682cc68992a8426cdc171825d6b26a95db3d16066363.lean/declarations/eq-of-add-add-eq-zero--75d26c6b57916ebaca6c94c3.md) | 140 | `result-track:75d26c6b57916ebaca6c94c3680670482de9308f4cc8d2424ca07969bf096b96` |
| 24 | `theorem` | [add](../../../../../mathematics/Algebra/LinearAlgebra/Properties/Variant11fe0330186140f8af2d682cc68992a8426cdc171825d6b26a95db3d16066363.lean/declarations/add--1fcf9ba8e4c1658bbeb339fd.md) | 143 | `result-track:1fcf9ba8e4c1658bbeb339fd95b5631cd07328c51653b70c9377324f85e92086` |
| 25 | `theorem` | [sub](../../../../../mathematics/Algebra/LinearAlgebra/Properties/Variant11fe0330186140f8af2d682cc68992a8426cdc171825d6b26a95db3d16066363.lean/declarations/sub--ee6dfeda2f2fd20f3152166d.md) | 146 | `result-track:ee6dfeda2f2fd20f3152166dfec103e97f0c55f52f1e47f5f20cf0eec9e479c5` |
| 26 | `theorem` | [neg](../../../../../mathematics/Algebra/LinearAlgebra/Properties/Variant11fe0330186140f8af2d682cc68992a8426cdc171825d6b26a95db3d16066363.lean/declarations/neg--f067685a0e6b8f479c24833c.md) | 149 | `result-track:f067685a0e6b8f479c24833cb37b1a14a2a01b15229d448d03971c40a577b5fc` |
| 27 | `theorem` | [smul](../../../../../mathematics/Algebra/LinearAlgebra/Properties/Variant11fe0330186140f8af2d682cc68992a8426cdc171825d6b26a95db3d16066363.lean/declarations/smul--4543afc1c72bebd4acae8c4a.md) | 152 | `result-track:4543afc1c72bebd4acae8c4a16e60ac9c684bd7195b84163e2a810cdf524801a` |
| 28 | `theorem` | [isAlt_zero](../../../../../mathematics/Algebra/LinearAlgebra/Properties/Variant11fe0330186140f8af2d682cc68992a8426cdc171825d6b26a95db3d16066363.lean/declarations/isalt-zero--8f88945199b4e39dc3fafbea.md) | 159 | `result-track:8f88945199b4e39dc3fafbea8105792f948953500dc2e13a48a86dddc01a770c` |
| 29 | `theorem` | [isAlt_neg](../../../../../mathematics/Algebra/LinearAlgebra/Properties/Variant11fe0330186140f8af2d682cc68992a8426cdc171825d6b26a95db3d16066363.lean/declarations/isalt-neg--aadf346cac4fa9c5a240acec.md) | 162 | `result-track:aadf346cac4fa9c5a240acec9d68d9b88c10ff2aa3cb02397e6929238782e953` |
| 30 | `def` | [Nondegenerate](../../../../../mathematics/Algebra/LinearAlgebra/Properties/Variant11fe0330186140f8af2d682cc68992a8426cdc171825d6b26a95db3d16066363.lean/declarations/nondegenerate--7c394d91553b5ca3cc2e5719.md) | 177 | `declaration-track:7c394d91553b5ca3cc2e57190bc9719044a9827dc54054959f11dfcb251bf8d5` |
| 31 | `theorem` | [not_nondegenerate_zero](../../../../../mathematics/Algebra/LinearAlgebra/Properties/Variant11fe0330186140f8af2d682cc68992a8426cdc171825d6b26a95db3d16066363.lean/declarations/not-nondegenerate-zero--4817e1a48c74aa3a077aeb30.md) | 185 | `result-track:4817e1a48c74aa3a077aeb30a3de3a69d161f6f0977729b08e463d0aa382cc90` |
| 32 | `theorem` | [Nondegenerate.ne_zero](../../../../../mathematics/Algebra/LinearAlgebra/Properties/Variant11fe0330186140f8af2d682cc68992a8426cdc171825d6b26a95db3d16066363.lean/declarations/nondegenerate-ne-zero--7711e525f93adf49e08880fb.md) | 194 | `result-track:7711e525f93adf49e08880fbbdade88fc1acbea5d21e82636c6f052e8cb4f6b3` |
| 33 | `theorem` | [Nondegenerate.congr](../../../../../mathematics/Algebra/LinearAlgebra/Properties/Variant11fe0330186140f8af2d682cc68992a8426cdc171825d6b26a95db3d16066363.lean/declarations/nondegenerate-congr--7d740d36891ea738a7c72875.md) | 197 | `result-track:7d740d36891ea738a7c728755a533f13b7cf66240dfa335a318921c7d0393330` |
| 34 | `theorem` | [nondegenerate_congr_iff](../../../../../mathematics/Algebra/LinearAlgebra/Properties/Variant11fe0330186140f8af2d682cc68992a8426cdc171825d6b26a95db3d16066363.lean/declarations/nondegenerate-congr-iff--061da070e731cec3f8404b1d.md) | 203 | `result-track:061da070e731cec3f8404b1d6ead3aee0d6c32a362ce6b0eb0d98267d647e358` |
| 35 | `theorem` | [nondegenerate_iff_ker_eq_bot](../../../../../mathematics/Algebra/LinearAlgebra/Properties/Variant11fe0330186140f8af2d682cc68992a8426cdc171825d6b26a95db3d16066363.lean/declarations/nondegenerate-iff-ker-eq-bot--ca81849866e979b121ffebb8.md) | 210 | `result-track:ca81849866e979b121ffebb87580b5ebe122b19120df6ba637d5685bb345a614` |
| 36 | `theorem` | [Nondegenerate.ker_eq_bot](../../../../../mathematics/Algebra/LinearAlgebra/Properties/Variant11fe0330186140f8af2d682cc68992a8426cdc171825d6b26a95db3d16066363.lean/declarations/nondegenerate-ker-eq-bot--e3cd012ef894ea508a5f650c.md) | 215 | `result-track:e3cd012ef894ea508a5f650ce0a08cc7e5631d610e6a705861f9953d8761f5db` |
| 37 | `theorem` | [compLeft_injective](../../../../../mathematics/Algebra/LinearAlgebra/Properties/Variant11fe0330186140f8af2d682cc68992a8426cdc171825d6b26a95db3d16066363.lean/declarations/compleft-injective--3c84a0aca4799003324a5302.md) | 218 | `result-track:3c84a0aca4799003324a5302e802385e1efc99b159f9c8f13ebfa1f6475977c3` |
| 38 | `theorem` | [isAdjointPair_unique_of_nondegenerate](../../../../../mathematics/Algebra/LinearAlgebra/Properties/Variant11fe0330186140f8af2d682cc68992a8426cdc171825d6b26a95db3d16066363.lean/declarations/isadjointpair-unique-of-nondegenerate--c081891681538d8a68aa1338.md) | 225 | `result-track:c081891681538d8a68aa13388d6ee7d4843d9f3eb90d1e2844d96c9cbc646d07` |
| 39 | `def` | [toDual](../../../../../mathematics/Algebra/LinearAlgebra/Properties/Variant11fe0330186140f8af2d682cc68992a8426cdc171825d6b26a95db3d16066363.lean/declarations/todual--a027ecce013fddaf823d9fa8.md) | 236 | `declaration-track:a027ecce013fddaf823d9fa8193479bb8e4f6abd1a7705caf5cf368608d09a8d` |
| 40 | `theorem` | [toDual_def](../../../../../mathematics/Algebra/LinearAlgebra/Properties/Variant11fe0330186140f8af2d682cc68992a8426cdc171825d6b26a95db3d16066363.lean/declarations/todual-def--10f4666e6c041ee9a411a82c.md) | 240 | `result-track:10f4666e6c041ee9a411a82c875cf3fd5be6f15d4144477c293f812b541d0e72` |
| 41 | `lemma` | [apply_toDual_symm_apply](../../../../../mathematics/Algebra/LinearAlgebra/Properties/Variant11fe0330186140f8af2d682cc68992a8426cdc171825d6b26a95db3d16066363.lean/declarations/apply-todual-symm-apply--f6bffd168496aaecbfd09141.md) | 244 | `result-track:f6bffd168496aaecbfd091414acee837064bbba750f0082bf524bfa1390f1046` |
| 42 | `lemma` | [Nondegenerate.flip](../../../../../mathematics/Algebra/LinearAlgebra/Properties/Variant11fe0330186140f8af2d682cc68992a8426cdc171825d6b26a95db3d16066363.lean/declarations/nondegenerate-flip--0891b907c40c872a7aaeb2d3.md) | 250 | `result-track:0891b907c40c872a7aaeb2d36f4e7e66746116a63d368f91b857353eaa1c4458` |
| 43 | `lemma` | [nonDegenerateFlip_iff](../../../../../mathematics/Algebra/LinearAlgebra/Properties/Variant11fe0330186140f8af2d682cc68992a8426cdc171825d6b26a95db3d16066363.lean/declarations/nondegenerateflip-iff--3a2aeb8b0da20344decfff8b.md) | 258 | `result-track:3a2aeb8b0da20344decfff8be8609774bbe6699d4abef029694c19440c17d8cd` |
| 44 | `def` | [dualBasis](../../../../../mathematics/Algebra/LinearAlgebra/Properties/Variant11fe0330186140f8af2d682cc68992a8426cdc171825d6b26a95db3d16066363.lean/declarations/dualbasis--f18f5e30d563900276534fe7.md) | 270 | `declaration-track:f18f5e30d563900276534fe7f679ac741a51dc02336a73686435e9992dc3c775` |
| 45 | `theorem` | [dualBasis_repr_apply](../../../../../mathematics/Algebra/LinearAlgebra/Properties/Variant11fe0330186140f8af2d682cc68992a8426cdc171825d6b26a95db3d16066363.lean/declarations/dualbasis-repr-apply--058d609a49fdd7c96a117cf3.md) | 276 | `result-track:058d609a49fdd7c96a117cf3123b03e67450703a66f8abacf1112ccf31095e83` |
| 46 | `theorem` | [apply_dualBasis_left](../../../../../mathematics/Algebra/LinearAlgebra/Properties/Variant11fe0330186140f8af2d682cc68992a8426cdc171825d6b26a95db3d16066363.lean/declarations/apply-dualbasis-left--12beab9680e0593b2e78d60b.md) | 285 | `result-track:12beab9680e0593b2e78d60b2b9d15819c9209575159b7d7afb358accf403a02` |
| 47 | `theorem` | [apply_dualBasis_right](../../../../../mathematics/Algebra/LinearAlgebra/Properties/Variant11fe0330186140f8af2d682cc68992a8426cdc171825d6b26a95db3d16066363.lean/declarations/apply-dualbasis-right--1c39fe8ac16e24ced7e0c2d2.md) | 291 | `result-track:1c39fe8ac16e24ced7e0c2d24a57e9d1cb345e2c38da48f76ea05f2cc67be239` |
| 48 | `lemma` | [dualBasis_dualBasis_flip](../../../../../mathematics/Algebra/LinearAlgebra/Properties/Variant11fe0330186140f8af2d682cc68992a8426cdc171825d6b26a95db3d16066363.lean/declarations/dualbasis-dualbasis-flip--eb9340b402afefa8225b7d0e.md) | 296 | `result-track:eb9340b402afefa8225b7d0e3ea48db0cf3f685a5b48e78b5f72f75c8a2e45a6` |
| 49 | `lemma` | [dualBasis_flip_dualBasis](../../../../../mathematics/Algebra/LinearAlgebra/Properties/Variant11fe0330186140f8af2d682cc68992a8426cdc171825d6b26a95db3d16066363.lean/declarations/dualbasis-flip-dualbasis--1d28c08c548952c905b25e3a.md) | 305 | `result-track:1d28c08c548952c905b25e3a7cd3af79e7455ee2fe583910c35d59762b8af686` |
| 50 | `lemma` | [dualBasis_dualBasis](../../../../../mathematics/Algebra/LinearAlgebra/Properties/Variant11fe0330186140f8af2d682cc68992a8426cdc171825d6b26a95db3d16066363.lean/declarations/dualbasis-dualbasis--fc19ffd2904788da91842ea4.md) | 311 | `result-track:fc19ffd2904788da91842ea4e3b1c121722b865c6c7ebf8b894ae6f7fa8db358` |
| 51 | `def` | [symmCompOfNondegenerate](../../../../../mathematics/Algebra/LinearAlgebra/Properties/Variant11fe0330186140f8af2d682cc68992a8426cdc171825d6b26a95db3d16066363.lean/declarations/symmcompofnondegenerate--d588a194667a52c75ff780bc.md) | 325 | `declaration-track:d588a194667a52c75ff780bcc9b8653c4a295dc6b16f5e85d8835ce48cdcfeba` |
| 52 | `theorem` | [comp_symmCompOfNondegenerate_apply](../../../../../mathematics/Algebra/LinearAlgebra/Properties/Variant11fe0330186140f8af2d682cc68992a8426cdc171825d6b26a95db3d16066363.lean/declarations/comp-symmcompofnondegenerate-apply--18a3b67b1c94b435293c587f.md) | 329 | `result-track:18a3b67b1c94b435293c587fe9c7240845ddcca8ab929d011dc62f697c5ce04d` |
| 53 | `theorem` | [symmCompOfNondegenerate_left_apply](../../../../../mathematics/Algebra/LinearAlgebra/Properties/Variant11fe0330186140f8af2d682cc68992a8426cdc171825d6b26a95db3d16066363.lean/declarations/symmcompofnondegenerate-left-apply--e7e01a9a73e6907b19dedb40.md) | 337 | `result-track:e7e01a9a73e6907b19dedb40af585ff786afa70b4aaf49f96862b6e61ceceacb` |
| 54 | `def` | [leftAdjointOfNondegenerate](../../../../../mathematics/Algebra/LinearAlgebra/Properties/Variant11fe0330186140f8af2d682cc68992a8426cdc171825d6b26a95db3d16066363.lean/declarations/leftadjointofnondegenerate--e203461cce0221e548cfbec4.md) | 344 | `declaration-track:e203461cce0221e548cfbec4784f65b252c5d4961936580e3911476cc25c33c9` |
| 55 | `theorem` | [isAdjointPairLeftAdjointOfNondegenerate](../../../../../mathematics/Algebra/LinearAlgebra/Properties/Variant11fe0330186140f8af2d682cc68992a8426cdc171825d6b26a95db3d16066363.lean/declarations/isadjointpairleftadjointofnondegenerate--4afe5736e26caea67a3aabca.md) | 348 | `result-track:4afe5736e26caea67a3aabca696e10e0fc5b50804df84409dfcb7f4fd0b6ebec` |
| 56 | `theorem` | [isAdjointPair_iff_eq_of_nondegenerate](../../../../../mathematics/Algebra/LinearAlgebra/Properties/Variant11fe0330186140f8af2d682cc68992a8426cdc171825d6b26a95db3d16066363.lean/declarations/isadjointpair-iff-eq-of-nondegenerate--a0ecc99cd0d9749b307e4ed4.md) | 354 | `result-track:a0ecc99cd0d9749b307e4ed473b654ae6286bc55ce1ab3168fe85f1445d23476` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
