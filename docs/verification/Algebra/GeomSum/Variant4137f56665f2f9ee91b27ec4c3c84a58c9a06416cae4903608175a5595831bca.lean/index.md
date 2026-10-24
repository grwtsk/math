# Verification target: GRWTSK.Algebra.GeomSum.Variant4137f56665f2f9ee91b27ec4c3c84a58c9a06416cae4903608175a5595831bca

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "fe41c03ad05d99d5b7fdd3fe49f44bd1e630dd77",
  "lexical_observation_count": 60,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GeomSum/Variant4137f56665f2f9ee91b27ec4c3c84a58c9a06416cae4903608175a5595831bca.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/GeomSum/Variant4137f56665f2f9ee91b27ec4c3c84a58c9a06416cae4903608175a5595831bca.lean/index.md) · [Full source](../../../../mathematics/Algebra/GeomSum/Variant4137f56665f2f9ee91b27ec4c3c84a58c9a06416cae4903608175a5595831bca.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `fe41c03ad05d99d5b7fdd3fe49f44bd1e630dd77`.

Source path: `GRWTSK/Algebra/GeomSum/Variant4137f56665f2f9ee91b27ec4c3c84a58c9a06416cae4903608175a5595831bca.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GeomSum/Variant4137f56665f2f9ee91b27ec4c3c84a58c9a06416cae4903608175a5595831bca.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.BigOperators.Order` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.BigOperators.Ring` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.BigOperators.Intervals` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Abel` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.Parity` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [geom_sum_succ](../../../../mathematics/Algebra/GeomSum/Variant4137f56665f2f9ee91b27ec4c3c84a58c9a06416cae4903608175a5595831bca.lean/declarations/geom-sum-succ--8cc7df31ae8889cdd3e0c26a.md) | 46 | `result-track:8cc7df31ae8889cdd3e0c26ac9b04e76d0ae41177b068062356b61715c7771ef` |
| 2 | `theorem` | [geom_sum_succ'](../../../../mathematics/Algebra/GeomSum/Variant4137f56665f2f9ee91b27ec4c3c84a58c9a06416cae4903608175a5595831bca.lean/declarations/geom-sum-succ--dbc82a688263a8bd436ee9eb.md) | 51 | `result-track:dbc82a688263a8bd436ee9eb639cf9de3c2ec312e7e96ce8c1d390f736093282` |
| 3 | `theorem` | [geom_sum_zero](../../../../mathematics/Algebra/GeomSum/Variant4137f56665f2f9ee91b27ec4c3c84a58c9a06416cae4903608175a5595831bca.lean/declarations/geom-sum-zero--60bff9adc96836171ffe8fbf.md) | 56 | `result-track:60bff9adc96836171ffe8fbf8f827ebd577e4f48f1804a5bb464788f9ebc691d` |
| 4 | `theorem` | [geom_sum_one](../../../../mathematics/Algebra/GeomSum/Variant4137f56665f2f9ee91b27ec4c3c84a58c9a06416cae4903608175a5595831bca.lean/declarations/geom-sum-one--6806c1e595fc58355b63a930.md) | 60 | `result-track:6806c1e595fc58355b63a930fdf4ed388c6a8561933596b9a09bbb4328ff810d` |
| 5 | `theorem` | [geom_sum_two](../../../../mathematics/Algebra/GeomSum/Variant4137f56665f2f9ee91b27ec4c3c84a58c9a06416cae4903608175a5595831bca.lean/declarations/geom-sum-two--6d22bfa44566f545c3bc5711.md) | 64 | `result-track:6d22bfa44566f545c3bc57119cf71a583eabdc850102b49d91771e58b95664c6` |
| 6 | `theorem` | [zero_geom_sum](../../../../mathematics/Algebra/GeomSum/Variant4137f56665f2f9ee91b27ec4c3c84a58c9a06416cae4903608175a5595831bca.lean/declarations/zero-geom-sum--46671c3414597b4d86cee169.md) | 68 | `result-track:46671c3414597b4d86cee169a68ea36d12381a71cbfd767022387aed67364001` |
| 7 | `theorem` | [one_geom_sum](../../../../mathematics/Algebra/GeomSum/Variant4137f56665f2f9ee91b27ec4c3c84a58c9a06416cae4903608175a5595831bca.lean/declarations/one-geom-sum--40933a7f1f669c54bd11b47f.md) | 76 | `result-track:40933a7f1f669c54bd11b47f368f854fde37dff4673d4468c35e7d869773af9c` |
| 8 | `theorem` | [op_geom_sum](../../../../mathematics/Algebra/GeomSum/Variant4137f56665f2f9ee91b27ec4c3c84a58c9a06416cae4903608175a5595831bca.lean/declarations/op-geom-sum--e2e95e36ac0419e45efbc17d.md) | 81 | `result-track:e2e95e36ac0419e45efbc17dfc4963f23bdceb11b514d11290a4f96d11547ba1` |
| 9 | `theorem` | [op_geom_sum₂](../../../../mathematics/Algebra/GeomSum/Variant4137f56665f2f9ee91b27ec4c3c84a58c9a06416cae4903608175a5595831bca.lean/declarations/op-geom-sum--19b8bf80c4f5a1fb8bb7831e.md) | 87 | `result-track:19b8bf80c4f5a1fb8bb7831ededb3b79c34325ee40713becb8a0cec1534ac412` |
| 10 | `theorem` | [geom_sum₂_with_one](../../../../mathematics/Algebra/GeomSum/Variant4137f56665f2f9ee91b27ec4c3c84a58c9a06416cae4903608175a5595831bca.lean/declarations/geom-sum-with-one--5ec5f142be8434b4d04f9825.md) | 97 | `result-track:5ec5f142be8434b4d04f9825361f6bb4fd2461877230ebee75565cdeadd8405e` |
| 11 | `theorem` | [Commute.geom_sum₂_mul_add](../../../../mathematics/Algebra/GeomSum/Variant4137f56665f2f9ee91b27ec4c3c84a58c9a06416cae4903608175a5595831bca.lean/declarations/commute-geom-sum-mul-add--626e9dc3abac35ed2d5da700.md) | 103 | `result-track:626e9dc3abac35ed2d5da700f77dc5d56ccc6f86225b7ac5be4e8d6f576e1c76` |
| 12 | `theorem` | [neg_one_geom_sum](../../../../mathematics/Algebra/GeomSum/Variant4137f56665f2f9ee91b27ec4c3c84a58c9a06416cae4903608175a5595831bca.lean/declarations/neg-one-geom-sum--3611f6170c09cd8fe1aa0180.md) | 132 | `result-track:3611f6170c09cd8fe1aa0180b9ddee69946d2a197ff534e2388b9f6b16a6828d` |
| 13 | `theorem` | [geom_sum₂_self](../../../../mathematics/Algebra/GeomSum/Variant4137f56665f2f9ee91b27ec4c3c84a58c9a06416cae4903608175a5595831bca.lean/declarations/geom-sum-self--a6791ad4d98723a8c8292514.md) | 142 | `result-track:a6791ad4d98723a8c8292514590d416964124d48aeb7120fc42bfabd5e739c4a` |
| 14 | `theorem` | [geom_sum₂_mul_add](../../../../mathematics/Algebra/GeomSum/Variant4137f56665f2f9ee91b27ec4c3c84a58c9a06416cae4903608175a5595831bca.lean/declarations/geom-sum-mul-add--463607533813c718862a1f37.md) | 156 | `result-track:463607533813c718862a1f3776b27fc794da23093ccf41bad7eeb71c397b38ef` |
| 15 | `theorem` | [geom_sum_mul_add](../../../../mathematics/Algebra/GeomSum/Variant4137f56665f2f9ee91b27ec4c3c84a58c9a06416cae4903608175a5595831bca.lean/declarations/geom-sum-mul-add--9e6ee7bc60ccee6c590df827.md) | 161 | `result-track:9e6ee7bc60ccee6c590df82742b4dabba7eac2350dad530f39e61a038a4ebdf1` |
| 16 | `theorem` | [Commute.geom_sum₂_mul](../../../../mathematics/Algebra/GeomSum/Variant4137f56665f2f9ee91b27ec4c3c84a58c9a06416cae4903608175a5595831bca.lean/declarations/commute-geom-sum-mul--f7598101ebda1cd9b132339e.md) | 168 | `result-track:f7598101ebda1cd9b132339e2b3e24b40e886e6ad89b6f47319a8e8e8d64e6b0` |
| 17 | `theorem` | [Commute.mul_neg_geom_sum₂](../../../../mathematics/Algebra/GeomSum/Variant4137f56665f2f9ee91b27ec4c3c84a58c9a06416cae4903608175a5595831bca.lean/declarations/commute-mul-neg-geom-sum--132ed0d0e44e744119e2c0f8.md) | 175 | `result-track:132ed0d0e44e744119e2c0f8d189a4e2b6c69d1937eb5f9aa1fe7c4e07429e71` |
| 18 | `theorem` | [Commute.mul_geom_sum₂](../../../../mathematics/Algebra/GeomSum/Variant4137f56665f2f9ee91b27ec4c3c84a58c9a06416cae4903608175a5595831bca.lean/declarations/commute-mul-geom-sum--ec797fa5ac53d5733b984ebe.md) | 182 | `result-track:ec797fa5ac53d5733b984ebeb70a93972fa9719c4cb19eec11a7dfe2b911faa3` |
| 19 | `theorem` | [geom_sum₂_mul](../../../../mathematics/Algebra/GeomSum/Variant4137f56665f2f9ee91b27ec4c3c84a58c9a06416cae4903608175a5595831bca.lean/declarations/geom-sum-mul--74d9568b53768ccbc14907d1.md) | 187 | `result-track:74d9568b53768ccbc14907d1e7db7687004580c1583e5c4663d3eb764d99a7b2` |
| 20 | `theorem` | [sub_dvd_pow_sub_pow](../../../../mathematics/Algebra/GeomSum/Variant4137f56665f2f9ee91b27ec4c3c84a58c9a06416cae4903608175a5595831bca.lean/declarations/sub-dvd-pow-sub-pow--55e9514a21bb23645fadcf65.md) | 192 | `result-track:55e9514a21bb23645fadcf6545aae225ef69dba098ee9bc1cb5983034e58b0e8` |
| 21 | `theorem` | [nat_sub_dvd_pow_sub_pow](../../../../mathematics/Algebra/GeomSum/Variant4137f56665f2f9ee91b27ec4c3c84a58c9a06416cae4903608175a5595831bca.lean/declarations/nat-sub-dvd-pow-sub-pow--eae468874448e719855bcecc.md) | 196 | `result-track:eae468874448e719855bcecc65486d622bd8685278c9ec98c16606b26959490d` |
| 22 | `theorem` | [Odd.add_dvd_pow_add_pow](../../../../mathematics/Algebra/GeomSum/Variant4137f56665f2f9ee91b27ec4c3c84a58c9a06416cae4903608175a5595831bca.lean/declarations/odd-add-dvd-pow-add-pow--4da28f385bcea6ce418a6561.md) | 204 | `result-track:4da28f385bcea6ce418a6561995b5322b68f0dfc314341e12bd394d43bdeb671` |
| 23 | `theorem` | [Odd.nat_add_dvd_pow_add_pow](../../../../mathematics/Algebra/GeomSum/Variant4137f56665f2f9ee91b27ec4c3c84a58c9a06416cae4903608175a5595831bca.lean/declarations/odd-nat-add-dvd-pow-add-pow--c8783c22d0e119986cc9e2bb.md) | 211 | `result-track:c8783c22d0e119986cc9e2bb327c8fc9c749723e75eff439284b04efe18dfa5f` |
| 24 | `theorem` | [geom_sum_mul](../../../../mathematics/Algebra/GeomSum/Variant4137f56665f2f9ee91b27ec4c3c84a58c9a06416cae4903608175a5595831bca.lean/declarations/geom-sum-mul--1416be3433e0af6dcb8def87.md) | 215 | `result-track:1416be3433e0af6dcb8def876159dfcca815c717f66033e7af9d9f208a2b3e96` |
| 25 | `theorem` | [mul_geom_sum](../../../../mathematics/Algebra/GeomSum/Variant4137f56665f2f9ee91b27ec4c3c84a58c9a06416cae4903608175a5595831bca.lean/declarations/mul-geom-sum--726b08f32fc3a51b64b6bb76.md) | 221 | `result-track:726b08f32fc3a51b64b6bb7678035d717a8e6481f8f13748ec942cbb20c1d912` |
| 26 | `theorem` | [geom_sum_mul_neg](../../../../mathematics/Algebra/GeomSum/Variant4137f56665f2f9ee91b27ec4c3c84a58c9a06416cae4903608175a5595831bca.lean/declarations/geom-sum-mul-neg--ab3c35ed2bc6e8d1dad48f77.md) | 225 | `result-track:ab3c35ed2bc6e8d1dad48f7781971ff78e6d9242d03e0edb9d480a049b3e12c4` |
| 27 | `theorem` | [mul_neg_geom_sum](../../../../mathematics/Algebra/GeomSum/Variant4137f56665f2f9ee91b27ec4c3c84a58c9a06416cae4903608175a5595831bca.lean/declarations/mul-neg-geom-sum--a7ab4e6a717d6b20134e1d45.md) | 232 | `result-track:a7ab4e6a717d6b20134e1d45b8a3beebf1934417ac4e1ade031738fd445f14a1` |
| 28 | `theorem` | [Commute.geom_sum₂_comm](../../../../mathematics/Algebra/GeomSum/Variant4137f56665f2f9ee91b27ec4c3c84a58c9a06416cae4903608175a5595831bca.lean/declarations/commute-geom-sum-comm--56c2d259446e957025dd02ca.md) | 236 | `result-track:56c2d259446e957025dd02ca702f95b130772ea8aa1af049cade18269231ef8d` |
| 29 | `theorem` | [geom_sum₂_comm](../../../../mathematics/Algebra/GeomSum/Variant4137f56665f2f9ee91b27ec4c3c84a58c9a06416cae4903608175a5595831bca.lean/declarations/geom-sum-comm--cc6ef66c9324a953be2e123c.md) | 246 | `result-track:cc6ef66c9324a953be2e123c3cbf979df81acc6b0514b33ba6b1c9043421e4a3` |
| 30 | `theorem` | [Commute.geom_sum₂](../../../../mathematics/Algebra/GeomSum/Variant4137f56665f2f9ee91b27ec4c3c84a58c9a06416cae4903608175a5595831bca.lean/declarations/commute-geom-sum--1fc15308d92b4bcd267e5196.md) | 251 | `result-track:1fc15308d92b4bcd267e51968f1a4caa6079cdc95ea6fe9014ef75ce6bf73215` |
| 31 | `theorem` | [geom₂_sum](../../../../mathematics/Algebra/GeomSum/Variant4137f56665f2f9ee91b27ec4c3c84a58c9a06416cae4903608175a5595831bca.lean/declarations/geom-sum--5dae9f3f4260284d450c4f85.md) | 257 | `result-track:5dae9f3f4260284d450c4f85103aad3966c0c4e519658a0ce505a843fc5bfffa` |
| 32 | `theorem` | [geom_sum_eq](../../../../mathematics/Algebra/GeomSum/Variant4137f56665f2f9ee91b27ec4c3c84a58c9a06416cae4903608175a5595831bca.lean/declarations/geom-sum-eq--1139b82979e43efe59fac848.md) | 262 | `result-track:1139b82979e43efe59fac848c76d0c84e39abd8240c6ae9c9c816edf2adf4eaf` |
| 33 | `theorem` | [Commute.mul_geom_sum₂_Ico](../../../../mathematics/Algebra/GeomSum/Variant4137f56665f2f9ee91b27ec4c3c84a58c9a06416cae4903608175a5595831bca.lean/declarations/commute-mul-geom-sum-ico--78b61f252096c0f6da4d467d.md) | 268 | `result-track:78b61f252096c0f6da4d467d745fa6bd8bb789f63c023bbed0c4946392954bf8` |
| 34 | `theorem` | [Commute.geom_sum₂_succ_eq](../../../../mathematics/Algebra/GeomSum/Variant4137f56665f2f9ee91b27ec4c3c84a58c9a06416cae4903608175a5595831bca.lean/declarations/commute-geom-sum-succ-eq--e684fad667359d4f135934f8.md) | 288 | `result-track:e684fad667359d4f135934f8079e72efb1a623f32e6efc905e8a73938e0b3352` |
| 35 | `theorem` | [geom_sum₂_succ_eq](../../../../mathematics/Algebra/GeomSum/Variant4137f56665f2f9ee91b27ec4c3c84a58c9a06416cae4903608175a5595831bca.lean/declarations/geom-sum-succ-eq--cc4e4b696028afbf9d729817.md) | 302 | `result-track:cc4e4b696028afbf9d729817bfca1e47a407a8c6132a1678a9c282c857aaa93c` |
| 36 | `theorem` | [mul_geom_sum₂_Ico](../../../../mathematics/Algebra/GeomSum/Variant4137f56665f2f9ee91b27ec4c3c84a58c9a06416cae4903608175a5595831bca.lean/declarations/mul-geom-sum-ico--b5462f99d5d4a4a317c709ed.md) | 308 | `result-track:b5462f99d5d4a4a317c709ed7547c109ab971e560b89b58b35216e9195de4fd8` |
| 37 | `theorem` | [Commute.geom_sum₂_Ico_mul](../../../../mathematics/Algebra/GeomSum/Variant4137f56665f2f9ee91b27ec4c3c84a58c9a06416cae4903608175a5595831bca.lean/declarations/commute-geom-sum-ico-mul--d0220c93880f196bfe5bb6b1.md) | 313 | `result-track:d0220c93880f196bfe5bb6b11a1c68a4b5c9d31b9a314c6747ebb7604afa9b75` |
| 38 | `theorem` | [geom_sum_Ico_mul](../../../../mathematics/Algebra/GeomSum/Variant4137f56665f2f9ee91b27ec4c3c84a58c9a06416cae4903608175a5595831bca.lean/declarations/geom-sum-ico-mul--8ca66cc3ccb518912fad3db6.md) | 328 | `result-track:8ca66cc3ccb518912fad3db610db6015e1e1e57a674d1d440f67d902fa171fa5` |
| 39 | `theorem` | [geom_sum_Ico_mul_neg](../../../../mathematics/Algebra/GeomSum/Variant4137f56665f2f9ee91b27ec4c3c84a58c9a06416cae4903608175a5595831bca.lean/declarations/geom-sum-ico-mul-neg--e5d608912accdf6d43dee736.md) | 333 | `result-track:e5d608912accdf6d43dee73685cb314ff44b60bb5308878b38fd549e800f22a2` |
| 40 | `theorem` | [Commute.geom_sum₂_Ico](../../../../mathematics/Algebra/GeomSum/Variant4137f56665f2f9ee91b27ec4c3c84a58c9a06416cae4903608175a5595831bca.lean/declarations/commute-geom-sum-ico--4cb56c314da461ec08c41b94.md) | 338 | `result-track:4cb56c314da461ec08c41b9416af76bafb1cb4cdbb979fa7b3c610e2693a5110` |
| 41 | `theorem` | [geom_sum₂_Ico](../../../../mathematics/Algebra/GeomSum/Variant4137f56665f2f9ee91b27ec4c3c84a58c9a06416cae4903608175a5595831bca.lean/declarations/geom-sum-ico--53068e0c894821ac26b117b0.md) | 345 | `result-track:53068e0c894821ac26b117b0e4c338c95f08661f6f413bf1e6893b03cb1fc5d2` |
| 42 | `theorem` | [geom_sum_Ico](../../../../mathematics/Algebra/GeomSum/Variant4137f56665f2f9ee91b27ec4c3c84a58c9a06416cae4903608175a5595831bca.lean/declarations/geom-sum-ico--6fe18b0dbb8f216c17158e9a.md) | 350 | `result-track:6fe18b0dbb8f216c17158e9a0ccbe7da806a409a04b10c023ce10fe1ad13009e` |
| 43 | `theorem` | [geom_sum_Ico'](../../../../mathematics/Algebra/GeomSum/Variant4137f56665f2f9ee91b27ec4c3c84a58c9a06416cae4903608175a5595831bca.lean/declarations/geom-sum-ico--20d172cded523caeffb5ba3a.md) | 355 | `result-track:20d172cded523caeffb5ba3a00dd8c35a7738126f250b0ef247f054e7ce29d30` |
| 44 | `theorem` | [geom_sum_Ico_le_of_lt_one](../../../../mathematics/Algebra/GeomSum/Variant4137f56665f2f9ee91b27ec4c3c84a58c9a06416cae4903608175a5595831bca.lean/declarations/geom-sum-ico-le-of-lt-one--3012a4f1c10c99e2b360f421.md) | 361 | `result-track:3012a4f1c10c99e2b360f4212cba3973a746e89aee91c59b0740499699f54cea` |
| 45 | `theorem` | [geom_sum_inv](../../../../mathematics/Algebra/GeomSum/Variant4137f56665f2f9ee91b27ec4c3c84a58c9a06416cae4903608175a5595831bca.lean/declarations/geom-sum-inv--8644b433b0f4c6be2a38ab16.md) | 373 | `result-track:8644b433b0f4c6be2a38ab1683a885ef39f7ba55f6acff1f1733857dc1019a9b` |
| 46 | `theorem` | [RingHom.map_geom_sum](../../../../mathematics/Algebra/GeomSum/Variant4137f56665f2f9ee91b27ec4c3c84a58c9a06416cae4903608175a5595831bca.lean/declarations/ringhom-map-geom-sum--cf875f4fcc04bfdfb1a55f75.md) | 391 | `result-track:cf875f4fcc04bfdfb1a55f755f08c0d30283f8da66921c469de330d193c01d9f` |
| 47 | `theorem` | [RingHom.map_geom_sum₂](../../../../mathematics/Algebra/GeomSum/Variant4137f56665f2f9ee91b27ec4c3c84a58c9a06416cae4903608175a5595831bca.lean/declarations/ringhom-map-geom-sum--a4ba59190a1c42aa80b5a238.md) | 395 | `result-track:a4ba59190a1c42aa80b5a2382497e21698e6ef8619275a36d2eac73f43e863cd` |
| 48 | `theorem` | [Nat.pred_mul_geom_sum_le](../../../../mathematics/Algebra/GeomSum/Variant4137f56665f2f9ee91b27ec4c3c84a58c9a06416cae4903608175a5595831bca.lean/declarations/nat-pred-mul-geom-sum-le--3c5ffadfc6e302dbdced0671.md) | 403 | `result-track:3c5ffadfc6e302dbdced0671248313f3be10c2f19997298a5824d02d462cc99b` |
| 49 | `theorem` | [Nat.geom_sum_le](../../../../mathematics/Algebra/GeomSum/Variant4137f56665f2f9ee91b27ec4c3c84a58c9a06416cae4903608175a5595831bca.lean/declarations/nat-geom-sum-le--d058dbb610670bcd86bd4b6a.md) | 418 | `result-track:d058dbb610670bcd86bd4b6adb203a079223eee0d34f9fa828c73f46f9e6a7bd` |
| 50 | `theorem` | [Nat.geom_sum_Ico_le](../../../../mathematics/Algebra/GeomSum/Variant4137f56665f2f9ee91b27ec4c3c84a58c9a06416cae4903608175a5595831bca.lean/declarations/nat-geom-sum-ico-le--4308ba32dff519261afdb923.md) | 428 | `result-track:4308ba32dff519261afdb9235cb42ce0f942046cbaeac98de6a7ab3fe6483f7c` |
| 51 | `theorem` | [geom_sum_pos](../../../../mathematics/Algebra/GeomSum/Variant4137f56665f2f9ee91b27ec4c3c84a58c9a06416cae4903608175a5595831bca.lean/declarations/geom-sum-pos--d6e6b6a7955de628d0201409.md) | 450 | `result-track:d6e6b6a7955de628d02014095af938608384dd553625eac17ff9a88986580ff2` |
| 52 | `theorem` | [geom_sum_pos_and_lt_one](../../../../mathematics/Algebra/GeomSum/Variant4137f56665f2f9ee91b27ec4c3c84a58c9a06416cae4903608175a5595831bca.lean/declarations/geom-sum-pos-and-lt-one--7c3d9a382a97cc56cfa9f6a8.md) | 455 | `result-track:7c3d9a382a97cc56cfa9f6a88c488f2fc182818cc9dac68e6751c65abb4ddec4` |
| 53 | `theorem` | [geom_sum_alternating_of_le_neg_one](../../../../mathematics/Algebra/GeomSum/Variant4137f56665f2f9ee91b27ec4c3c84a58c9a06416cae4903608175a5595831bca.lean/declarations/geom-sum-alternating-of-le-neg-one--40603e17cb87c859a2b1bded.md) | 468 | `result-track:40603e17cb87c859a2b1bded7e1aae8a0f6ee88c6fcb5da8afc1e474cf3ebb05` |
| 54 | `theorem` | [geom_sum_alternating_of_lt_neg_one](../../../../mathematics/Algebra/GeomSum/Variant4137f56665f2f9ee91b27ec4c3c84a58c9a06416cae4903608175a5595831bca.lean/declarations/geom-sum-alternating-of-lt-neg-one--f316c16d6b3ced6e09d4ea49.md) | 482 | `result-track:f316c16d6b3ced6e09d4ea49583aad865f37f416185149fed08578433930bf21` |
| 55 | `theorem` | [geom_sum_pos'](../../../../mathematics/Algebra/GeomSum/Variant4137f56665f2f9ee91b27ec4c3c84a58c9a06416cae4903608175a5595831bca.lean/declarations/geom-sum-pos--2e277059f3ebcb8aca87bd1b.md) | 504 | `result-track:2e277059f3ebcb8aca87bd1bdb728f09365589712f55c76c3d72d2b67a6f399f` |
| 56 | `theorem` | [Odd.geom_sum_pos](../../../../mathematics/Algebra/GeomSum/Variant4137f56665f2f9ee91b27ec4c3c84a58c9a06416cae4903608175a5595831bca.lean/declarations/odd-geom-sum-pos--398e5e74e95c10c79f197b92.md) | 514 | `result-track:398e5e74e95c10c79f197b926129dc75249f19e2865aa4bc57c5b2e2b007c21e` |
| 57 | `theorem` | [geom_sum_pos_iff](../../../../mathematics/Algebra/GeomSum/Variant4137f56665f2f9ee91b27ec4c3c84a58c9a06416cae4903608175a5595831bca.lean/declarations/geom-sum-pos-iff--6f91b89bf2eed8e435446482.md) | 527 | `result-track:6f91b89bf2eed8e43544648265aaa76ad990f5ec053cb624392baf387216779d` |
| 58 | `theorem` | [geom_sum_ne_zero](../../../../mathematics/Algebra/GeomSum/Variant4137f56665f2f9ee91b27ec4c3c84a58c9a06416cae4903608175a5595831bca.lean/declarations/geom-sum-ne-zero--bb4384bf547d844b88e14f3d.md) | 538 | `result-track:bb4384bf547d844b88e14f3d9c3440483e06dfdb25fcff76e5ef4a05127f1f65` |
| 59 | `theorem` | [geom_sum_eq_zero_iff_neg_one](../../../../mathematics/Algebra/GeomSum/Variant4137f56665f2f9ee91b27ec4c3c84a58c9a06416cae4903608175a5595831bca.lean/declarations/geom-sum-eq-zero-iff-neg-one--3cc6635fa06126fc65047dc2.md) | 553 | `result-track:3cc6635fa06126fc65047dc2f12481c56553006f091fa18503f681b3dfd9a540` |
| 60 | `theorem` | [geom_sum_neg_iff](../../../../mathematics/Algebra/GeomSum/Variant4137f56665f2f9ee91b27ec4c3c84a58c9a06416cae4903608175a5595831bca.lean/declarations/geom-sum-neg-iff--5b83823eca091713f13724a2.md) | 564 | `result-track:5b83823eca091713f13724a226298dc86f372217f4e352102905a43f95ee7eb8` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
