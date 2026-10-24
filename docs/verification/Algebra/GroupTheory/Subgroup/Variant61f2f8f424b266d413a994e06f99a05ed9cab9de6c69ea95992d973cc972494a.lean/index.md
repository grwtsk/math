# Verification target: GRWTSK.Algebra.GroupTheory.Subgroup.Variant61f2f8f424b266d413a994e06f99a05ed9cab9de6c69ea95992d973cc972494a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "418ab985a5217742a4261de5487571c8bf60ed34",
  "lexical_observation_count": 25,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Subgroup/Variant61f2f8f424b266d413a994e06f99a05ed9cab9de6c69ea95992d973cc972494a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/Subgroup/Variant61f2f8f424b266d413a994e06f99a05ed9cab9de6c69ea95992d973cc972494a.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/Subgroup/Variant61f2f8f424b266d413a994e06f99a05ed9cab9de6c69ea95992d973cc972494a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `418ab985a5217742a4261de5487571c8bf60ed34`.

Source path: `GRWTSK/Algebra/GroupTheory/Subgroup/Variant61f2f8f424b266d413a994e06f99a05ed9cab9de6c69ea95992d973cc972494a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Subgroup/Variant61f2f8f424b266d413a994e06f99a05ed9cab9de6c69ea95992d973cc972494a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.Subgroup.Pointwise` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.GroupWithZero.Submonoid.Pointwise` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [smul_mem_pointwise_smul_iff₀](../../../../../mathematics/Algebra/GroupTheory/Subgroup/Variant61f2f8f424b266d413a994e06f99a05ed9cab9de6c69ea95992d973cc972494a.lean/declarations/smul-mem-pointwise-smul-iff--89b65daeb243b47e82fd89b7.md) | 33 | `result-track:89b65daeb243b47e82fd89b70005f2d11748f1d13bcbc57c2a24c3c453ee5147` |
| 2 | `lemma` | [mem_pointwise_smul_iff_inv_smul_mem₀](../../../../../mathematics/Algebra/GroupTheory/Subgroup/Variant61f2f8f424b266d413a994e06f99a05ed9cab9de6c69ea95992d973cc972494a.lean/declarations/mem-pointwise-smul-iff-inv-smul-mem--2a38a8ce7bbe4f78cec97439.md) | 37 | `result-track:2a38a8ce7bbe4f78cec9743965d439ed2bfb7a212a47b6c02c91bd9e3d6445a4` |
| 3 | `lemma` | [mem_inv_pointwise_smul_iff₀](../../../../../mathematics/Algebra/GroupTheory/Subgroup/Variant61f2f8f424b266d413a994e06f99a05ed9cab9de6c69ea95992d973cc972494a.lean/declarations/mem-inv-pointwise-smul-iff--278de36282dccf6b0dfe3d76.md) | 41 | `result-track:278de36282dccf6b0dfe3d7698c59dbb01e99a678ac5023799cf6fed4fcf9a86` |
| 4 | `lemma` | [pointwise_smul_le_pointwise_smul_iff₀](../../../../../mathematics/Algebra/GroupTheory/Subgroup/Variant61f2f8f424b266d413a994e06f99a05ed9cab9de6c69ea95992d973cc972494a.lean/declarations/pointwise-smul-le-pointwise-smul-iff--cbfff5ac53f8ecd3a97a6b06.md) | 46 | `result-track:cbfff5ac53f8ecd3a97a6b067da3a73bdbc09e82494f45e194751cf15abf0f0a` |
| 5 | `lemma` | [pointwise_smul_le_iff₀](../../../../../mathematics/Algebra/GroupTheory/Subgroup/Variant61f2f8f424b266d413a994e06f99a05ed9cab9de6c69ea95992d973cc972494a.lean/declarations/pointwise-smul-le-iff--5b9323c5e5c915f178b6fda6.md) | 49 | `result-track:5b9323c5e5c915f178b6fda6bae822de3c9bd1f46447a3fe9d76134703a4606f` |
| 6 | `lemma` | [le_pointwise_smul_iff₀](../../../../../mathematics/Algebra/GroupTheory/Subgroup/Variant61f2f8f424b266d413a994e06f99a05ed9cab9de6c69ea95992d973cc972494a.lean/declarations/le-pointwise-smul-iff--ba37bbb18bbbe3d9a77f3c03.md) | 50 | `result-track:ba37bbb18bbbe3d9a77f3c033a351252abef9b29d8683e772b6d5dabbdb7ff5a` |
| 7 | `def` | [pointwiseMulAction](../../../../../mathematics/Algebra/GroupTheory/Subgroup/Variant61f2f8f424b266d413a994e06f99a05ed9cab9de6c69ea95992d973cc972494a.lean/declarations/pointwisemulaction--96fec081f6173fea5f0819b7.md) | 62 | `declaration-track:96fec081f6173fea5f0819b741dd4505c88feedfc8602d49c6b9a11d6194882d` |
| 8 | `lemma` | [pointwise_smul_def](../../../../../mathematics/Algebra/GroupTheory/Subgroup/Variant61f2f8f424b266d413a994e06f99a05ed9cab9de6c69ea95992d973cc972494a.lean/declarations/pointwise-smul-def--d2767184855fe705836a3bfa.md) | 72 | `result-track:d2767184855fe705836a3bfa3eb826cc4cdc4c2ca396181025265fef3d7ad1e1` |
| 9 | `lemma` | [coe_pointwise_smul](../../../../../mathematics/Algebra/GroupTheory/Subgroup/Variant61f2f8f424b266d413a994e06f99a05ed9cab9de6c69ea95992d973cc972494a.lean/declarations/coe-pointwise-smul--d498d95890d4765c56ad957d.md) | 77 | `result-track:d498d95890d4765c56ad957da786a574aeae35a1206567fa39b2b1a3046b410f` |
| 10 | `lemma` | [pointwise_smul_toAddSubmonoid](../../../../../mathematics/Algebra/GroupTheory/Subgroup/Variant61f2f8f424b266d413a994e06f99a05ed9cab9de6c69ea95992d973cc972494a.lean/declarations/pointwise-smul-toaddsubmonoid--bd5dcf3826e48d462bfe1996.md) | 81 | `result-track:bd5dcf3826e48d462bfe199622a983ac13e61e6da2e889196d24ead1c3c3218b` |
| 11 | `lemma` | [smul_mem_pointwise_smul](../../../../../mathematics/Algebra/GroupTheory/Subgroup/Variant61f2f8f424b266d413a994e06f99a05ed9cab9de6c69ea95992d973cc972494a.lean/declarations/smul-mem-pointwise-smul--60c06eb20a1e56156a611ff4.md) | 85 | `result-track:60c06eb20a1e56156a611ff407b23efb52a4da70d3150fdba9cf62f017344eda` |
| 12 | `lemma` | [mem_smul_pointwise_iff_exists](../../../../../mathematics/Algebra/GroupTheory/Subgroup/Variant61f2f8f424b266d413a994e06f99a05ed9cab9de6c69ea95992d973cc972494a.lean/declarations/mem-smul-pointwise-iff-exists--c08056612f59cfb353f7527a.md) | 88 | `result-track:c08056612f59cfb353f7527ac2e6096c09e8c3da8b2c061dda45011890ef9ed8` |
| 13 | `instance` | [pointwise_isCentralScalar](../../../../../mathematics/Algebra/GroupTheory/Subgroup/Variant61f2f8f424b266d413a994e06f99a05ed9cab9de6c69ea95992d973cc972494a.lean/declarations/pointwise-iscentralscalar--18ee65ba3bc16cf63a138b8e.md) | 92 | `declaration-track:18ee65ba3bc16cf63a138b8e11efb4e5e2d77dda54ccd6441db8dbbd2a70ea0b` |
| 14 | `lemma` | [smul_mem_pointwise_smul_iff](../../../../../mathematics/Algebra/GroupTheory/Subgroup/Variant61f2f8f424b266d413a994e06f99a05ed9cab9de6c69ea95992d973cc972494a.lean/declarations/smul-mem-pointwise-smul-iff--3d9c1bd87a92510b58edfcac.md) | 113 | `result-track:3d9c1bd87a92510b58edfcac2ad8f6088de3a2ce516fd67a41745359ff0af116` |
| 15 | `lemma` | [mem_pointwise_smul_iff_inv_smul_mem](../../../../../mathematics/Algebra/GroupTheory/Subgroup/Variant61f2f8f424b266d413a994e06f99a05ed9cab9de6c69ea95992d973cc972494a.lean/declarations/mem-pointwise-smul-iff-inv-smul-mem--471cddda38f9090d74ebec29.md) | 115 | `result-track:471cddda38f9090d74ebec296d0230e44e19c6f89c3d82c1de8e763cd2816079` |
| 16 | `lemma` | [mem_inv_pointwise_smul_iff](../../../../../mathematics/Algebra/GroupTheory/Subgroup/Variant61f2f8f424b266d413a994e06f99a05ed9cab9de6c69ea95992d973cc972494a.lean/declarations/mem-inv-pointwise-smul-iff--691713dcefa89bc5cd789275.md) | 118 | `result-track:691713dcefa89bc5cd78927531a1cda68bc3ea73e64b6dc9d1fce02f704f1a64` |
| 17 | `lemma` | [pointwise_smul_le_pointwise_smul_iff](../../../../../mathematics/Algebra/GroupTheory/Subgroup/Variant61f2f8f424b266d413a994e06f99a05ed9cab9de6c69ea95992d973cc972494a.lean/declarations/pointwise-smul-le-pointwise-smul-iff--62b130da0b78f82e3448d898.md) | 121 | `result-track:62b130da0b78f82e3448d8983df893237798fc8306e26f1138203a0682a8f81c` |
| 18 | `lemma` | [pointwise_smul_le_iff](../../../../../mathematics/Algebra/GroupTheory/Subgroup/Variant61f2f8f424b266d413a994e06f99a05ed9cab9de6c69ea95992d973cc972494a.lean/declarations/pointwise-smul-le-iff--274ede63e307c7ef7a35a027.md) | 123 | `result-track:274ede63e307c7ef7a35a0278f3be079661165fe89ac474dab7f16846bba737f` |
| 19 | `lemma` | [le_pointwise_smul_iff](../../../../../mathematics/Algebra/GroupTheory/Subgroup/Variant61f2f8f424b266d413a994e06f99a05ed9cab9de6c69ea95992d973cc972494a.lean/declarations/le-pointwise-smul-iff--f7bac43b80d32e168268c266.md) | 124 | `result-track:f7bac43b80d32e168268c266f1b4bd855c62506f1895fa770768e116167cea01` |
| 20 | `lemma` | [smul_mem_pointwise_smul_iff₀](../../../../../mathematics/Algebra/GroupTheory/Subgroup/Variant61f2f8f424b266d413a994e06f99a05ed9cab9de6c69ea95992d973cc972494a.lean/declarations/smul-mem-pointwise-smul-iff--b52b26e7b52b987a74dcf9f5.md) | 132 | `result-track:b52b26e7b52b987a74dcf9f5ed6e24988a01fdba855b1b489ebe3ec986c5e7c1` |
| 21 | `lemma` | [mem_pointwise_smul_iff_inv_smul_mem₀](../../../../../mathematics/Algebra/GroupTheory/Subgroup/Variant61f2f8f424b266d413a994e06f99a05ed9cab9de6c69ea95992d973cc972494a.lean/declarations/mem-pointwise-smul-iff-inv-smul-mem--b207f79453408d50deaf5f8a.md) | 136 | `result-track:b207f79453408d50deaf5f8aea3ab0bd941db51648e18152b7e69bf249d467e4` |
| 22 | `lemma` | [mem_inv_pointwise_smul_iff₀](../../../../../mathematics/Algebra/GroupTheory/Subgroup/Variant61f2f8f424b266d413a994e06f99a05ed9cab9de6c69ea95992d973cc972494a.lean/declarations/mem-inv-pointwise-smul-iff--cd8dd8f41b1b896a30624144.md) | 140 | `result-track:cd8dd8f41b1b896a3062414453b7de03f71ccd160133902fb0c51cba75dca9f9` |
| 23 | `lemma` | [pointwise_smul_le_pointwise_smul_iff₀](../../../../../mathematics/Algebra/GroupTheory/Subgroup/Variant61f2f8f424b266d413a994e06f99a05ed9cab9de6c69ea95992d973cc972494a.lean/declarations/pointwise-smul-le-pointwise-smul-iff--775df210f3c371a2c8c6ee18.md) | 145 | `result-track:775df210f3c371a2c8c6ee185663aab4cf3ec9d4e72ffa5d553df03d555d23db` |
| 24 | `lemma` | [pointwise_smul_le_iff₀](../../../../../mathematics/Algebra/GroupTheory/Subgroup/Variant61f2f8f424b266d413a994e06f99a05ed9cab9de6c69ea95992d973cc972494a.lean/declarations/pointwise-smul-le-iff--077a208894a528f046fd8eb3.md) | 148 | `result-track:077a208894a528f046fd8eb3c8c9e655bca2b57a0dfac34f825f33401a87f510` |
| 25 | `lemma` | [le_pointwise_smul_iff₀](../../../../../mathematics/Algebra/GroupTheory/Subgroup/Variant61f2f8f424b266d413a994e06f99a05ed9cab9de6c69ea95992d973cc972494a.lean/declarations/le-pointwise-smul-iff--ef36edb9228e719b7aa1b713.md) | 149 | `result-track:ef36edb9228e719b7aa1b713b917d6e93499131f9d3f0fd21a06e9163bd24424` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
