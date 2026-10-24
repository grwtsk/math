# Verification target: GRWTSK.Analysis.SpecialFunctions.CongruenceSubgroups.Variant91072a11c7831078cdc6e8bd06bef27e9c1dfc4b5a4b653487f82722c1922f56

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "84e90e46cf3976afed65352dd9329ade01056a2b",
  "lexical_observation_count": 37,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/SpecialFunctions/CongruenceSubgroups/Variant91072a11c7831078cdc6e8bd06bef27e9c1dfc4b5a4b653487f82722c1922f56.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/SpecialFunctions/CongruenceSubgroups/Variant91072a11c7831078cdc6e8bd06bef27e9c1dfc4b5a4b653487f82722c1922f56.lean/index.md) · [Full source](../../../../../mathematics/Analysis/SpecialFunctions/CongruenceSubgroups/Variant91072a11c7831078cdc6e8bd06bef27e9c1dfc4b5a4b653487f82722c1922f56.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `84e90e46cf3976afed65352dd9329ade01056a2b`.

Source path: `GRWTSK/Analysis/SpecialFunctions/CongruenceSubgroups/Variant91072a11c7831078cdc6e8bd06bef27e9c1dfc4b5a4b653487f82722c1922f56.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/SpecialFunctions/CongruenceSubgroups/Variant91072a11c7831078cdc6e8bd06bef27e9c1dfc4b5a4b653487f82722c1922f56.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Real.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Matrix.Integer` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Matrix.GeneralLinearGroup.Defs` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [SL_reduction_mod_hom_val](../../../../../mathematics/Analysis/SpecialFunctions/CongruenceSubgroups/Variant91072a11c7831078cdc6e8bd06bef27e9c1dfc4b5a4b653487f82722c1922f56.lean/declarations/sl-reduction-mod-hom-val--b34a1f44fc141b3a60c4834a.md) | 30 | `result-track:b34a1f44fc141b3a60c4834afc131468bdfef6fbb0eed4bdcc4deb31b14f5763` |
| 2 | `def` | [Gamma](../../../../../mathematics/Analysis/SpecialFunctions/CongruenceSubgroups/Variant91072a11c7831078cdc6e8bd06bef27e9c1dfc4b5a4b653487f82722c1922f56.lean/declarations/gamma--0ca0745df7206c993fec61ea.md) | 38 | `declaration-track:0ca0745df7206c993fec61eab8b3cf1ad22ea48c6626dfaf3772141331170e58` |
| 3 | `theorem` | [Gamma_mem'](../../../../../mathematics/Analysis/SpecialFunctions/CongruenceSubgroups/Variant91072a11c7831078cdc6e8bd06bef27e9c1dfc4b5a4b653487f82722c1922f56.lean/declarations/gamma-mem--1b955a6bec6b93ca221c358f.md) | 43 | `result-track:1b955a6bec6b93ca221c358f5e297f55f7a642720ba443ca9a77b3bb2745e258` |
| 4 | `theorem` | [Gamma_mem](../../../../../mathematics/Analysis/SpecialFunctions/CongruenceSubgroups/Variant91072a11c7831078cdc6e8bd06bef27e9c1dfc4b5a4b653487f82722c1922f56.lean/declarations/gamma-mem--b23a69a129d91d63d9fbc4db.md) | 47 | `result-track:b23a69a129d91d63d9fbc4dbb458f12625c9694ae0384d97812eb4bab5fc5126` |
| 5 | `theorem` | [Gamma_normal](../../../../../mathematics/Analysis/SpecialFunctions/CongruenceSubgroups/Variant91072a11c7831078cdc6e8bd06bef27e9c1dfc4b5a4b653487f82722c1922f56.lean/declarations/gamma-normal--a7c9fea9b4615afefe57865e.md) | 59 | `result-track:a7c9fea9b4615afefe57865ef055a8934461dda51155e895e35f03b6ed97f100` |
| 6 | `theorem` | [Gamma_one_top](../../../../../mathematics/Analysis/SpecialFunctions/CongruenceSubgroups/Variant91072a11c7831078cdc6e8bd06bef27e9c1dfc4b5a4b653487f82722c1922f56.lean/declarations/gamma-one-top--f8f1ce5d3d17f1fe86d0c3fe.md) | 62 | `result-track:f8f1ce5d3d17f1fe86d0c3fecb6ad5937d0233b766508b29af26081d8e51711f` |
| 7 | `lemma` | [mem_Gamma_one](../../../../../mathematics/Analysis/SpecialFunctions/CongruenceSubgroups/Variant91072a11c7831078cdc6e8bd06bef27e9c1dfc4b5a4b653487f82722c1922f56.lean/declarations/mem-gamma-one--5bec3e683b0b36135bf8b9da.md) | 66 | `result-track:5bec3e683b0b36135bf8b9dacffac4912661d8e5a5c68d3227611c88072dda82` |
| 8 | `theorem` | [Gamma_zero_bot](../../../../../mathematics/Analysis/SpecialFunctions/CongruenceSubgroups/Variant91072a11c7831078cdc6e8bd06bef27e9c1dfc4b5a4b653487f82722c1922f56.lean/declarations/gamma-zero-bot--c46b3af9a84e7bba8b089ca6.md) | 69 | `result-track:c46b3af9a84e7bba8b089ca60552c705b85d80121867d97c67dc97892d1cc535` |
| 9 | `lemma` | [ModularGroup_T_pow_mem_Gamma](../../../../../mathematics/Analysis/SpecialFunctions/CongruenceSubgroups/Variant91072a11c7831078cdc6e8bd06bef27e9c1dfc4b5a4b653487f82722c1922f56.lean/declarations/modulargroup-t-pow-mem-gamma--8666dd4b77b798b9ebcaa346.md) | 71 | `result-track:8666dd4b77b798b9ebcaa346dd3d44159ab922e5f91afe6545f208ff765eae10` |
| 10 | `instance` | [instFiniteIndexGamma](../../../../../mathematics/Analysis/SpecialFunctions/CongruenceSubgroups/Variant91072a11c7831078cdc6e8bd06bef27e9c1dfc4b5a4b653487f82722c1922f56.lean/declarations/instfiniteindexgamma--19cda43e0d23f5823b5e588e.md) | 79 | `declaration-track:19cda43e0d23f5823b5e588e8ad7e7779249c5919d7fbdcf0462274ca96c21d3` |
| 11 | `def` | [Gamma0](../../../../../mathematics/Analysis/SpecialFunctions/CongruenceSubgroups/Variant91072a11c7831078cdc6e8bd06bef27e9c1dfc4b5a4b653487f82722c1922f56.lean/declarations/gamma0--db16f39817948f12619201b1.md) | 83 | `declaration-track:db16f39817948f12619201b1e1366886fb6cc6a666f568fa57e35c1d298f3b38` |
| 12 | `theorem` | [Gamma0_mem](../../../../../mathematics/Analysis/SpecialFunctions/CongruenceSubgroups/Variant91072a11c7831078cdc6e8bd06bef27e9c1dfc4b5a4b653487f82722c1922f56.lean/declarations/gamma0-mem--27406699520906cf297077c6.md) | 102 | `result-track:27406699520906cf297077c651dee76f251bacc4532976f641e761f77fe0f5b9` |
| 13 | `def` | [Gamma0Map](../../../../../mathematics/Analysis/SpecialFunctions/CongruenceSubgroups/Variant91072a11c7831078cdc6e8bd06bef27e9c1dfc4b5a4b653487f82722c1922f56.lean/declarations/gamma0map--9a51cd33a81454e1c09f4263.md) | 107 | `declaration-track:9a51cd33a81454e1c09f42635ba2b4b817543251c571603972cbf4c58362e519` |
| 14 | `def` | [Gamma1'](../../../../../mathematics/Analysis/SpecialFunctions/CongruenceSubgroups/Variant91072a11c7831078cdc6e8bd06bef27e9c1dfc4b5a4b653487f82722c1922f56.lean/declarations/gamma1--d16a97687bd0dea908375b17.md) | 117 | `declaration-track:d16a97687bd0dea908375b17323ab623ad911e70e902cb4756ca3192f6e0291d` |
| 15 | `theorem` | [Gamma1_mem'](../../../../../mathematics/Analysis/SpecialFunctions/CongruenceSubgroups/Variant91072a11c7831078cdc6e8bd06bef27e9c1dfc4b5a4b653487f82722c1922f56.lean/declarations/gamma1-mem--c819d9e2b97e62b41e203572.md) | 121 | `result-track:c819d9e2b97e62b41e203572704c0c2315d6a1e463348b9e8eb9b664c2dc0542` |
| 16 | `theorem` | [Gamma1_to_Gamma0_mem](../../../../../mathematics/Analysis/SpecialFunctions/CongruenceSubgroups/Variant91072a11c7831078cdc6e8bd06bef27e9c1dfc4b5a4b653487f82722c1922f56.lean/declarations/gamma1-to-gamma0-mem--bf4ba6e9f8721575d8864b5d.md) | 124 | `result-track:bf4ba6e9f8721575d8864b5d7d439f6e31f4a8880dfbf2dafe7907fe3e9928b5` |
| 17 | `def` | [Gamma1](../../../../../mathematics/Analysis/SpecialFunctions/CongruenceSubgroups/Variant91072a11c7831078cdc6e8bd06bef27e9c1dfc4b5a4b653487f82722c1922f56.lean/declarations/gamma1--521d769d3ea571e30b46e907.md) | 144 | `declaration-track:521d769d3ea571e30b46e907cca5d276fed4044c877b667c15364fc3f6e7bb25` |
| 18 | `theorem` | [Gamma1_mem](../../../../../mathematics/Analysis/SpecialFunctions/CongruenceSubgroups/Variant91072a11c7831078cdc6e8bd06bef27e9c1dfc4b5a4b653487f82722c1922f56.lean/declarations/gamma1-mem--00336f0a2082efaea6d02464.md) | 148 | `result-track:00336f0a2082efaea6d02464902edc97fd8ff5a5db0696cc280c9a7b4ba63eae` |
| 19 | `theorem` | [Gamma1_in_Gamma0](../../../../../mathematics/Analysis/SpecialFunctions/CongruenceSubgroups/Variant91072a11c7831078cdc6e8bd06bef27e9c1dfc4b5a4b653487f82722c1922f56.lean/declarations/gamma1-in-gamma0--3a411ffbae1e6c495d979a34.md) | 168 | `result-track:3a411ffbae1e6c495d979a3423fb106f0d07f75f7ab055a280a4cd507e3d723e` |
| 20 | `def` | [IsCongruenceSubgroup](../../../../../mathematics/Analysis/SpecialFunctions/CongruenceSubgroups/Variant91072a11c7831078cdc6e8bd06bef27e9c1dfc4b5a4b653487f82722c1922f56.lean/declarations/iscongruencesubgroup--bc120b557542254df244d8ec.md) | 177 | `declaration-track:bc120b557542254df244d8ec1c68479645d1e70c2827330f9298cd6b5f20072b` |
| 21 | `theorem` | [isCongruenceSubgroup_trans](../../../../../mathematics/Analysis/SpecialFunctions/CongruenceSubgroups/Variant91072a11c7831078cdc6e8bd06bef27e9c1dfc4b5a4b653487f82722c1922f56.lean/declarations/iscongruencesubgroup-trans--684f90883d7cb09e9d827a1f.md) | 180 | `result-track:684f90883d7cb09e9d827a1f06dff5ed05c7872fe4d4096b616b6a6d9cec1024` |
| 22 | `theorem` | [Gamma_is_cong_sub](../../../../../mathematics/Analysis/SpecialFunctions/CongruenceSubgroups/Variant91072a11c7831078cdc6e8bd06bef27e9c1dfc4b5a4b653487f82722c1922f56.lean/declarations/gamma-is-cong-sub--e9d8d8dd7eeb907bcfef7679.md) | 185 | `result-track:e9d8d8dd7eeb907bcfef7679ebfb7325b495b061a2725c5ea211f3df5af1f79e` |
| 23 | `theorem` | [Gamma1_is_congruence](../../../../../mathematics/Analysis/SpecialFunctions/CongruenceSubgroups/Variant91072a11c7831078cdc6e8bd06bef27e9c1dfc4b5a4b653487f82722c1922f56.lean/declarations/gamma1-is-congruence--f41e0c443aecc2ca26ff8df1.md) | 188 | `result-track:f41e0c443aecc2ca26ff8df123480136ee07787fbcf0a77ce2aba145298f3190` |
| 24 | `theorem` | [Gamma0_is_congruence](../../../../../mathematics/Analysis/SpecialFunctions/CongruenceSubgroups/Variant91072a11c7831078cdc6e8bd06bef27e9c1dfc4b5a4b653487f82722c1922f56.lean/declarations/gamma0-is-congruence--6c94815633ba21da9bbe0061.md) | 192 | `result-track:6c94815633ba21da9bbe0061b5c50d3db0dfff5eae948a3ad72616d80cfcd5d7` |
| 25 | `lemma` | [IsCongruenceSubgroup.finiteIndex](../../../../../mathematics/Analysis/SpecialFunctions/CongruenceSubgroups/Variant91072a11c7831078cdc6e8bd06bef27e9c1dfc4b5a4b653487f82722c1922f56.lean/declarations/iscongruencesubgroup-finiteindex--914daddfdaef53ad018111b1.md) | 195 | `result-track:914daddfdaef53ad018111b1544887f4d1428087f3be4db7a1d1988c20d2cd82` |
| 26 | `instance` | [instFiniteIndexGamma0](../../../../../mathematics/Analysis/SpecialFunctions/CongruenceSubgroups/Variant91072a11c7831078cdc6e8bd06bef27e9c1dfc4b5a4b653487f82722c1922f56.lean/declarations/instfiniteindexgamma0--5486a6fcc4dcd53651c3a137.md) | 201 | `declaration-track:5486a6fcc4dcd53651c3a137ab9d0c9d8b0c7af1bc6ba1c2b21cd3ceef0674a1` |
| 27 | `instance` | [instFiniteIndexGamma1](../../../../../mathematics/Analysis/SpecialFunctions/CongruenceSubgroups/Variant91072a11c7831078cdc6e8bd06bef27e9c1dfc4b5a4b653487f82722c1922f56.lean/declarations/instfiniteindexgamma1--305d58d267025924360cf8c0.md) | 204 | `declaration-track:305d58d267025924360cf8c0cb93b4f0fbcf465afd1061aa1628b702afd452af` |
| 28 | `def` | [conjGL](../../../../../mathematics/Analysis/SpecialFunctions/CongruenceSubgroups/Variant91072a11c7831078cdc6e8bd06bef27e9c1dfc4b5a4b653487f82722c1922f56.lean/declarations/conjgl--e2736fbe5acc87bcbdaad9fc.md) | 214 | `declaration-track:e2736fbe5acc87bcbdaad9fcde4c6a88bd155d82e2af498bddb58f71ed580ae3` |
| 29 | `lemma` | [mem_conjGL](../../../../../mathematics/Analysis/SpecialFunctions/CongruenceSubgroups/Variant91072a11c7831078cdc6e8bd06bef27e9c1dfc4b5a4b653487f82722c1922f56.lean/declarations/mem-conjgl--e087be0672464167c0fec10e.md) | 219 | `result-track:e087be0672464167c0fec10e43be0af5adcaaf7af727179e2a592e176c12f499` |
| 30 | `lemma` | [mem_conjGL'](../../../../../mathematics/Analysis/SpecialFunctions/CongruenceSubgroups/Variant91072a11c7831078cdc6e8bd06bef27e9c1dfc4b5a4b653487f82722c1922f56.lean/declarations/mem-conjgl--0b9dace36ff645d35d38ad1c.md) | 223 | `result-track:0b9dace36ff645d35d38ad1c79a622aee839c08454d2eb446b84dbae7ff1cb07` |
| 31 | `lemma` | [conjGL_coe](../../../../../mathematics/Analysis/SpecialFunctions/CongruenceSubgroups/Variant91072a11c7831078cdc6e8bd06bef27e9c1dfc4b5a4b653487f82722c1922f56.lean/declarations/conjgl-coe--d278f7ce53bbc1939338aec5.md) | 230 | `result-track:d278f7ce53bbc1939338aec5dbce3fb7c549a53889f73ef2f5d9d63d84fb04a9` |
| 32 | `theorem` | [Gamma_cong_eq_self](../../../../../mathematics/Analysis/SpecialFunctions/CongruenceSubgroups/Variant91072a11c7831078cdc6e8bd06bef27e9c1dfc4b5a4b653487f82722c1922f56.lean/declarations/gamma-cong-eq-self--a0791b834beceb2a4c099bde.md) | 241 | `result-track:a0791b834beceb2a4c099bdefc5be3b243a5b122ff4489cf241241fae22f3a6f` |
| 33 | `theorem` | [conj_cong_is_cong](../../../../../mathematics/Analysis/SpecialFunctions/CongruenceSubgroups/Variant91072a11c7831078cdc6e8bd06bef27e9c1dfc4b5a4b653487f82722c1922f56.lean/declarations/conj-cong-is-cong--d527db15d38c89e24d4b20b3.md) | 244 | `result-track:d527db15d38c89e24d4b20b310652ad48d86b8079b6cde570aa3637180bbeb0b` |
| 34 | `theorem` | [exists_Gamma_le_conj](../../../../../mathematics/Analysis/SpecialFunctions/CongruenceSubgroups/Variant91072a11c7831078cdc6e8bd06bef27e9c1dfc4b5a4b653487f82722c1922f56.lean/declarations/exists-gamma-le-conj--6a5fc5e83c41ee4fdadd66b6.md) | 253 | `result-track:6a5fc5e83c41ee4fdadd66b67db276ab945ad5c8aa4079dd789a1a37488e2492` |
| 35 | `theorem` | [exists_Gamma_le_conj'](../../../../../mathematics/Analysis/SpecialFunctions/CongruenceSubgroups/Variant91072a11c7831078cdc6e8bd06bef27e9c1dfc4b5a4b653487f82722c1922f56.lean/declarations/exists-gamma-le-conj--279338193c060fd59cbabc40.md) | 305 | `result-track:279338193c060fd59cbabc400ab9a8be55e0505ea5909e935c50bcc460ea9a93` |
| 36 | `lemma` | [finiteIndex_conjGL](../../../../../mathematics/Analysis/SpecialFunctions/CongruenceSubgroups/Variant91072a11c7831078cdc6e8bd06bef27e9c1dfc4b5a4b653487f82722c1922f56.lean/declarations/finiteindex-conjgl--cc0f90b94a48bd5d3bbe6a9f.md) | 321 | `result-track:cc0f90b94a48bd5d3bbe6a9f36fa6015710bb69051731ce302efa03fe04b2f37` |
| 37 | `lemma` | [IsCongruenceSubgroup.conjGL](../../../../../mathematics/Analysis/SpecialFunctions/CongruenceSubgroups/Variant91072a11c7831078cdc6e8bd06bef27e9c1dfc4b5a4b653487f82722c1922f56.lean/declarations/iscongruencesubgroup-conjgl--4c543bae5b995c986825a857.md) | 345 | `result-track:4c543bae5b995c986825a85716c82bf2826142fdde28dc78c444716dbab2bfee` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
