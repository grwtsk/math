# Verification target: GRWTSK.NumberTheory.DiophantineEquations.Pell.Variant76498059c000506808554965423880faca0c6def5f4bf48f85173fb5e1803940

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "91c03851fa8c4a2b26e030fb2f66e8da20a71f30",
  "lexical_observation_count": 63,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/DiophantineEquations/Pell/Variant76498059c000506808554965423880faca0c6def5f4bf48f85173fb5e1803940.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/DiophantineEquations/Pell/Variant76498059c000506808554965423880faca0c6def5f4bf48f85173fb5e1803940.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/DiophantineEquations/Pell/Variant76498059c000506808554965423880faca0c6def5f4bf48f85173fb5e1803940.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `91c03851fa8c4a2b26e030fb2f66e8da20a71f30`.

Source path: `GRWTSK/NumberTheory/DiophantineEquations/Pell/Variant76498059c000506808554965423880faca0c6def5f4bf48f85173fb5e1803940.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/DiophantineEquations/Pell/Variant76498059c000506808554965423880faca0c6def5f4bf48f85173fb5e1803940.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Tactic.Qify` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Data.ZMod.Basic` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.DiophantineApproximation` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.Zsqrtd.Basic` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [is_pell_solution_iff_mem_unitary](../../../../../mathematics/NumberTheory/DiophantineEquations/Pell/Variant76498059c000506808554965423880faca0c6def5f4bf48f85173fb5e1803940.lean/declarations/is-pell-solution-iff-mem-unitary--f07cd6e195e03eab5e6eb07b.md) | 91 | `result-track:f07cd6e195e03eab5e6eb07b6bb8fbc646de31968082981bb6763f41b4b6fbcb` |
| 2 | `def` | [Solution₁](../../../../../mathematics/NumberTheory/DiophantineEquations/Pell/Variant76498059c000506808554965423880faca0c6def5f4bf48f85173fb5e1803940.lean/declarations/solution--34a94d1e567ca651e2758876.md) | 101 | `declaration-track:34a94d1e567ca651e275887682da3aae3d5c811347e0de1f7616b7124b2f2fd2` |
| 3 | `instance` | [instCommGroup](../../../../../mathematics/NumberTheory/DiophantineEquations/Pell/Variant76498059c000506808554965423880faca0c6def5f4bf48f85173fb5e1803940.lean/declarations/instcommgroup--589bdc59e6f7129e84a5d7f0.md) | 111 | `declaration-track:589bdc59e6f7129e84a5d7f0f2375063f7593de1e8d06837614076f5e14f6476` |
| 4 | `instance` | [instHasDistribNeg](../../../../../mathematics/NumberTheory/DiophantineEquations/Pell/Variant76498059c000506808554965423880faca0c6def5f4bf48f85173fb5e1803940.lean/declarations/insthasdistribneg--dad987490bcb25a2c5a93029.md) | 115 | `declaration-track:dad987490bcb25a2c5a930297d53fe34652780da2816d6e684998a5c5e7010b7` |
| 5 | `instance` | [instInhabited](../../../../../mathematics/NumberTheory/DiophantineEquations/Pell/Variant76498059c000506808554965423880faca0c6def5f4bf48f85173fb5e1803940.lean/declarations/instinhabited--cd4d861fb5cf0b42ff8c5f0a.md) | 119 | `declaration-track:cd4d861fb5cf0b42ff8c5f0acc8f6156a75e8caa41cac1369b9db1d8faab0230` |
| 6 | `instance` | [(anonymous)](../../../../../mathematics/NumberTheory/DiophantineEquations/Pell/Variant76498059c000506808554965423880faca0c6def5f4bf48f85173fb5e1803940.lean/declarations/instance--ab33e79efe72ef846bc91e86.md) | 123 | `declaration-track:ab33e79efe72ef846bc91e86a2b24b618397b2ef15cc15e169a16ffe9581ec8e` |
| 7 | `def` | [x](../../../../../mathematics/NumberTheory/DiophantineEquations/Pell/Variant76498059c000506808554965423880faca0c6def5f4bf48f85173fb5e1803940.lean/declarations/x--be08897e436a9974612eb9c8.md) | 126 | `declaration-track:be08897e436a9974612eb9c865a966d7e4462f72bf0f761c32d47127e30b46f8` |
| 8 | `def` | [y](../../../../../mathematics/NumberTheory/DiophantineEquations/Pell/Variant76498059c000506808554965423880faca0c6def5f4bf48f85173fb5e1803940.lean/declarations/y--2a42131a27b306533a9b7739.md) | 131 | `declaration-track:2a42131a27b306533a9b77397b2c1939280eacb95726c40c1d40164f478a066c` |
| 9 | `theorem` | [prop](../../../../../mathematics/NumberTheory/DiophantineEquations/Pell/Variant76498059c000506808554965423880faca0c6def5f4bf48f85173fb5e1803940.lean/declarations/prop--d95d2021059a9ca3efdf5aee.md) | 136 | `result-track:d95d2021059a9ca3efdf5aee4214cea50b4b831b3f03f9fdc9a23bb2dd3b1b5f` |
| 10 | `theorem` | [prop_x](../../../../../mathematics/NumberTheory/DiophantineEquations/Pell/Variant76498059c000506808554965423880faca0c6def5f4bf48f85173fb5e1803940.lean/declarations/prop-x--98abf815d06b9ae133152554.md) | 141 | `result-track:98abf815d06b9ae133152554cc8bcddc98f5cbcb3269bedf6f72507eb179e06e` |
| 11 | `theorem` | [prop_y](../../../../../mathematics/NumberTheory/DiophantineEquations/Pell/Variant76498059c000506808554965423880faca0c6def5f4bf48f85173fb5e1803940.lean/declarations/prop-y--1277166fb0d0c649a791bd8c.md) | 145 | `result-track:1277166fb0d0c649a791bd8cee3eb2c2492882b1de469a2533b183bf2a320e42` |
| 12 | `theorem` | [ext](../../../../../mathematics/NumberTheory/DiophantineEquations/Pell/Variant76498059c000506808554965423880faca0c6def5f4bf48f85173fb5e1803940.lean/declarations/ext--17ca5fb4275f56d6cb578c31.md) | 150 | `result-track:17ca5fb4275f56d6cb578c31e0cc240bf97dcc312cb73e0b81f23b7d56be39b4` |
| 13 | `def` | [mk](../../../../../mathematics/NumberTheory/DiophantineEquations/Pell/Variant76498059c000506808554965423880faca0c6def5f4bf48f85173fb5e1803940.lean/declarations/mk--d4129a5bfae5d6b0a412815d.md) | 155 | `declaration-track:d4129a5bfae5d6b0a412815d40dea545b839f109203c273b1466be595bc4b5e3` |
| 14 | `theorem` | [x_mk](../../../../../mathematics/NumberTheory/DiophantineEquations/Pell/Variant76498059c000506808554965423880faca0c6def5f4bf48f85173fb5e1803940.lean/declarations/x-mk--0132587cf4c8396439900396.md) | 161 | `result-track:0132587cf4c839643990039699085629bbad966bc4222af832e05833adcf1b90` |
| 15 | `theorem` | [y_mk](../../../../../mathematics/NumberTheory/DiophantineEquations/Pell/Variant76498059c000506808554965423880faca0c6def5f4bf48f85173fb5e1803940.lean/declarations/y-mk--f474c887f1ad83b6a775d784.md) | 166 | `result-track:f474c887f1ad83b6a775d78470a58cd1e369269ab8a51babcc703e84082ec3f5` |
| 16 | `theorem` | [coe_mk](../../../../../mathematics/NumberTheory/DiophantineEquations/Pell/Variant76498059c000506808554965423880faca0c6def5f4bf48f85173fb5e1803940.lean/declarations/coe-mk--c00e59e2bd2ee5e0760b0c3b.md) | 171 | `result-track:c00e59e2bd2ee5e0760b0c3b1fbbbdd56c04a51212dd9829bb31ad274000319d` |
| 17 | `theorem` | [x_one](../../../../../mathematics/NumberTheory/DiophantineEquations/Pell/Variant76498059c000506808554965423880faca0c6def5f4bf48f85173fb5e1803940.lean/declarations/x-one--98dd636fb00c2873d25b8890.md) | 176 | `result-track:98dd636fb00c2873d25b8890bd7c0199d9944ee2c1f6b93691f80412d2e05d9c` |
| 18 | `theorem` | [y_one](../../../../../mathematics/NumberTheory/DiophantineEquations/Pell/Variant76498059c000506808554965423880faca0c6def5f4bf48f85173fb5e1803940.lean/declarations/y-one--c8ef7b90de4eb1e3e4ea0d69.md) | 181 | `result-track:c8ef7b90de4eb1e3e4ea0d695844767ea53dc3482d0beaf591af109960c5216c` |
| 19 | `theorem` | [x_mul](../../../../../mathematics/NumberTheory/DiophantineEquations/Pell/Variant76498059c000506808554965423880faca0c6def5f4bf48f85173fb5e1803940.lean/declarations/x-mul--93ed4344b830f07545e7f47c.md) | 186 | `result-track:93ed4344b830f07545e7f47cc4c0c90bf8e560acb4029635ba1a9591be51527a` |
| 20 | `theorem` | [y_mul](../../../../../mathematics/NumberTheory/DiophantineEquations/Pell/Variant76498059c000506808554965423880faca0c6def5f4bf48f85173fb5e1803940.lean/declarations/y-mul--118e6c18ef695a4d11f08c4b.md) | 192 | `result-track:118e6c18ef695a4d11f08c4bff6da680294aee6c93cad69f028f7724aaf52729` |
| 21 | `theorem` | [x_inv](../../../../../mathematics/NumberTheory/DiophantineEquations/Pell/Variant76498059c000506808554965423880faca0c6def5f4bf48f85173fb5e1803940.lean/declarations/x-inv--9d5ef10fc69d92010c1d30c2.md) | 197 | `result-track:9d5ef10fc69d92010c1d30c2df722294b61b69e0a2aee674d8522893b5a640a1` |
| 22 | `theorem` | [y_inv](../../../../../mathematics/NumberTheory/DiophantineEquations/Pell/Variant76498059c000506808554965423880faca0c6def5f4bf48f85173fb5e1803940.lean/declarations/y-inv--729bf59604131b6d4f4a993c.md) | 202 | `result-track:729bf59604131b6d4f4a993c950e2e7bd3355e13403200949494ed282294d5e2` |
| 23 | `theorem` | [x_neg](../../../../../mathematics/NumberTheory/DiophantineEquations/Pell/Variant76498059c000506808554965423880faca0c6def5f4bf48f85173fb5e1803940.lean/declarations/x-neg--6e2d5c40058c3c4e56f22352.md) | 207 | `result-track:6e2d5c40058c3c4e56f2235250ac6dd67630dd907c9d4cf6cecd7c116657bbf1` |
| 24 | `theorem` | [y_neg](../../../../../mathematics/NumberTheory/DiophantineEquations/Pell/Variant76498059c000506808554965423880faca0c6def5f4bf48f85173fb5e1803940.lean/declarations/y-neg--e3cded9c2ae1ebbdc408ee9d.md) | 212 | `result-track:e3cded9c2ae1ebbdc408ee9d4c6f649002a743790541251b92fb41c740670db0` |
| 25 | `theorem` | [eq_zero_of_d_neg](../../../../../mathematics/NumberTheory/DiophantineEquations/Pell/Variant76498059c000506808554965423880faca0c6def5f4bf48f85173fb5e1803940.lean/declarations/eq-zero-of-d-neg--ac2790cc294dc8b90746441c.md) | 217 | `result-track:ac2790cc294dc8b90746441cd1753ffa611e76a06a02fb9b4388610af602e3b5` |
| 26 | `theorem` | [x_ne_zero](../../../../../mathematics/NumberTheory/DiophantineEquations/Pell/Variant76498059c000506808554965423880faca0c6def5f4bf48f85173fb5e1803940.lean/declarations/x-ne-zero--41f7a5a011bb754325256e54.md) | 228 | `result-track:41f7a5a011bb754325256e54dc1c4048d6eccbaf0296e7cca55bf4aee661a7aa` |
| 27 | `theorem` | [y_ne_zero_of_one_lt_x](../../../../../mathematics/NumberTheory/DiophantineEquations/Pell/Variant76498059c000506808554965423880faca0c6def5f4bf48f85173fb5e1803940.lean/declarations/y-ne-zero-of-one-lt-x--aad14bcf86c37c787d47cad6.md) | 236 | `result-track:aad14bcf86c37c787d47cad61078f80fc1db1b9d2119299150ae68cc51d13e4f` |
| 28 | `theorem` | [d_pos_of_one_lt_x](../../../../../mathematics/NumberTheory/DiophantineEquations/Pell/Variant76498059c000506808554965423880faca0c6def5f4bf48f85173fb5e1803940.lean/declarations/d-pos-of-one-lt-x--0c985358dbe6dac26cfc41e6.md) | 244 | `result-track:0c985358dbe6dac26cfc41e6c96e4f9710f387b8f4eee9994250a49d0be5e02c` |
| 29 | `theorem` | [d_nonsquare_of_one_lt_x](../../../../../mathematics/NumberTheory/DiophantineEquations/Pell/Variant76498059c000506808554965423880faca0c6def5f4bf48f85173fb5e1803940.lean/declarations/d-nonsquare-of-one-lt-x--b67f41d15ec573a11f667b1b.md) | 251 | `result-track:b67f41d15ec573a11f667b1b4694f83e5a4ca1586c4126295040a2b80598e277` |
| 30 | `theorem` | [eq_one_of_x_eq_one](../../../../../mathematics/NumberTheory/DiophantineEquations/Pell/Variant76498059c000506808554965423880faca0c6def5f4bf48f85173fb5e1803940.lean/declarations/eq-one-of-x-eq-one--d3d702ae6577baf2d7296ae7.md) | 259 | `result-track:d3d702ae6577baf2d7296ae7734436d36904c6247547cca954ea61c9f4831ec5` |
| 31 | `theorem` | [eq_one_or_neg_one_iff_y_eq_zero](../../../../../mathematics/NumberTheory/DiophantineEquations/Pell/Variant76498059c000506808554965423880faca0c6def5f4bf48f85173fb5e1803940.lean/declarations/eq-one-or-neg-one-iff-y-eq-zero--01e3dc114316ae6a1211f266.md) | 266 | `result-track:01e3dc114316ae6a1211f266a380b48be88ccbbb403bdea692ccf38c6ab9c822` |
| 32 | `theorem` | [x_mul_pos](../../../../../mathematics/NumberTheory/DiophantineEquations/Pell/Variant76498059c000506808554965423880faca0c6def5f4bf48f85173fb5e1803940.lean/declarations/x-mul-pos--772437d5761f319a846b0a7c.md) | 274 | `result-track:772437d5761f319a846b0a7c9c734988f555bfaaba73a5c38fcfd9d88a2c9a43` |
| 33 | `theorem` | [y_mul_pos](../../../../../mathematics/NumberTheory/DiophantineEquations/Pell/Variant76498059c000506808554965423880faca0c6def5f4bf48f85173fb5e1803940.lean/declarations/y-mul-pos--f2a04be2dbee8873c9ebbb01.md) | 291 | `result-track:f2a04be2dbee8873c9ebbb01d8027653880293d48257c1396abafdac33f0474c` |
| 34 | `theorem` | [x_pow_pos](../../../../../mathematics/NumberTheory/DiophantineEquations/Pell/Variant76498059c000506808554965423880faca0c6def5f4bf48f85173fb5e1803940.lean/declarations/x-pow-pos--441b583f2ac58aa5efb43ca9.md) | 299 | `result-track:441b583f2ac58aa5efb43ca9eb66a79b6ec02cb5f981ab191aa1d411d055ade5` |
| 35 | `theorem` | [y_pow_succ_pos](../../../../../mathematics/NumberTheory/DiophantineEquations/Pell/Variant76498059c000506808554965423880faca0c6def5f4bf48f85173fb5e1803940.lean/declarations/y-pow-succ-pos--2316016f4c5eeadb44ee2053.md) | 308 | `result-track:2316016f4c5eeadb44ee2053f4f8577a6274ddae3010812d9653a7c472086224` |
| 36 | `theorem` | [y_zpow_pos](../../../../../mathematics/NumberTheory/DiophantineEquations/Pell/Variant76498059c000506808554965423880faca0c6def5f4bf48f85173fb5e1803940.lean/declarations/y-zpow-pos--5794b99a4b5954c47c33956d.md) | 318 | `result-track:5794b99a4b5954c47c33956d5d936a426b652aa4d5df3a7e99f2417cdb5d3dd6` |
| 37 | `theorem` | [x_zpow_pos](../../../../../mathematics/NumberTheory/DiophantineEquations/Pell/Variant76498059c000506808554965423880faca0c6def5f4bf48f85173fb5e1803940.lean/declarations/x-zpow-pos--9c9c7d0ed21d2e73184cf103.md) | 327 | `result-track:9c9c7d0ed21d2e73184cf10393392e93deefd5a52ccfac385ccc44109476fd74` |
| 38 | `theorem` | [sign_y_zpow_eq_sign_of_x_pos_of_y_pos](../../../../../mathematics/NumberTheory/DiophantineEquations/Pell/Variant76498059c000506808554965423880faca0c6def5f4bf48f85173fb5e1803940.lean/declarations/sign-y-zpow-eq-sign-of-x-pos-of-y-pos--d04efed84250a1e8f93a9453.md) | 339 | `result-track:d04efed84250a1e8f93a9453c3c97fce9e9ddd93e8602ae444a249ccec07b417` |
| 39 | `theorem` | [exists_pos_variant](../../../../../mathematics/NumberTheory/DiophantineEquations/Pell/Variant76498059c000506808554965423880faca0c6def5f4bf48f85173fb5e1803940.lean/declarations/exists-pos-variant--6afef012bed6ac9866ebb205.md) | 351 | `result-track:6afef012bed6ac9866ebb2052d54570c3dddba601fb0cfafe9e97b4c73c139db` |
| 40 | `theorem` | [exists_of_not_isSquare](../../../../../mathematics/NumberTheory/DiophantineEquations/Pell/Variant76498059c000506808554965423880faca0c6def5f4bf48f85173fb5e1803940.lean/declarations/exists-of-not-issquare--5dc019b28e816ecd809de3e5.md) | 377 | `result-track:5dc019b28e816ecd809de3e5b620e43bff4f6884d34f832996e7fe5d0f7c58f2` |
| 41 | `theorem` | [exists_iff_not_isSquare](../../../../../mathematics/NumberTheory/DiophantineEquations/Pell/Variant76498059c000506808554965423880faca0c6def5f4bf48f85173fb5e1803940.lean/declarations/exists-iff-not-issquare--c4e84e754356ae9b125eb875.md) | 449 | `result-track:c4e84e754356ae9b125eb8752924cc47d12964ecc1a3682d5cdf77cd565d1a1b` |
| 42 | `theorem` | [exists_nontrivial_of_not_isSquare](../../../../../mathematics/NumberTheory/DiophantineEquations/Pell/Variant76498059c000506808554965423880faca0c6def5f4bf48f85173fb5e1803940.lean/declarations/exists-nontrivial-of-not-issquare--595e8f5b9c31c466846976f3.md) | 461 | `result-track:595e8f5b9c31c466846976f3521222126a107363b430f53fea23af2683017917` |
| 43 | `theorem` | [exists_pos_of_not_isSquare](../../../../../mathematics/NumberTheory/DiophantineEquations/Pell/Variant76498059c000506808554965423880faca0c6def5f4bf48f85173fb5e1803940.lean/declarations/exists-pos-of-not-issquare--2edb90b83880da3d68775c54.md) | 470 | `result-track:2edb90b83880da3d68775c54abb4608746f5b6a286a06445fc85804c76eb4e60` |
| 44 | `def` | [IsFundamental](../../../../../mathematics/NumberTheory/DiophantineEquations/Pell/Variant76498059c000506808554965423880faca0c6def5f4bf48f85173fb5e1803940.lean/declarations/isfundamental--6611b93b169515035d1e8d1e.md) | 494 | `declaration-track:6611b93b169515035d1e8d1ec5925de1cb934d64561263e6ff40e04b7b5d2f8e` |
| 45 | `theorem` | [x_pos](../../../../../mathematics/NumberTheory/DiophantineEquations/Pell/Variant76498059c000506808554965423880faca0c6def5f4bf48f85173fb5e1803940.lean/declarations/x-pos--58c8996db1cc10ad9488f0bc.md) | 503 | `result-track:58c8996db1cc10ad9488f0bc1f011401a9f25c57e0f7d7fd164d711b798e8373` |
| 46 | `theorem` | [d_pos](../../../../../mathematics/NumberTheory/DiophantineEquations/Pell/Variant76498059c000506808554965423880faca0c6def5f4bf48f85173fb5e1803940.lean/declarations/d-pos--cbb9fa1440666717310deca6.md) | 508 | `result-track:cbb9fa1440666717310deca6bd23a4f848d63b56da7e9e31557a5bf9f460281f` |
| 47 | `theorem` | [d_nonsquare](../../../../../mathematics/NumberTheory/DiophantineEquations/Pell/Variant76498059c000506808554965423880faca0c6def5f4bf48f85173fb5e1803940.lean/declarations/d-nonsquare--918bd5e16ad57c624bb7efad.md) | 513 | `result-track:918bd5e16ad57c624bb7efad815263ccb6f392ddc57637283d63b775962f0490` |
| 48 | `theorem` | [subsingleton](../../../../../mathematics/NumberTheory/DiophantineEquations/Pell/Variant76498059c000506808554965423880faca0c6def5f4bf48f85173fb5e1803940.lean/declarations/subsingleton--a0996c694439865422acbffa.md) | 518 | `result-track:a0996c694439865422acbffad7d54b77c130a705e0dc7430fe8259769b2ca045` |
| 49 | `theorem` | [exists_of_not_isSquare](../../../../../mathematics/NumberTheory/DiophantineEquations/Pell/Variant76498059c000506808554965423880faca0c6def5f4bf48f85173fb5e1803940.lean/declarations/exists-of-not-issquare--5071ab7536ee6da7c6a86a79.md) | 526 | `result-track:5071ab7536ee6da7c6a86a7954ce7f6c5cec5fe6a5f0f1531850fb9c773fdb5c` |
| 50 | `theorem` | [y_strictMono](../../../../../mathematics/NumberTheory/DiophantineEquations/Pell/Variant76498059c000506808554965423880faca0c6def5f4bf48f85173fb5e1803940.lean/declarations/y-strictmono--4dbf4326198e16eb658fd740.md) | 552 | `result-track:4dbf4326198e16eb658fd7400d69417cc88cbb21b004e9ede6b68f84104f1b8c` |
| 51 | `theorem` | [zpow_y_lt_iff_lt](../../../../../mathematics/NumberTheory/DiophantineEquations/Pell/Variant76498059c000506808554965423880faca0c6def5f4bf48f85173fb5e1803940.lean/declarations/zpow-y-lt-iff-lt--e45329f298359853bdeeac87.md) | 574 | `result-track:e45329f298359853bdeeac875719828ee51656a3a5ae6aa31a515479aeb20d69` |
| 52 | `theorem` | [zpow_eq_one_iff](../../../../../mathematics/NumberTheory/DiophantineEquations/Pell/Variant76498059c000506808554965423880faca0c6def5f4bf48f85173fb5e1803940.lean/declarations/zpow-eq-one-iff--8e837a304590f8f90b503bcc.md) | 582 | `result-track:8e837a304590f8f90b503bcc0fbd0c784693dc6017b19784072b8977008764f9` |
| 53 | `theorem` | [zpow_ne_neg_zpow](../../../../../mathematics/NumberTheory/DiophantineEquations/Pell/Variant76498059c000506808554965423880faca0c6def5f4bf48f85173fb5e1803940.lean/declarations/zpow-ne-neg-zpow--de028359ca37e4a982a6b2cb.md) | 589 | `result-track:de028359ca37e4a982a6b2cbabb3932af8c19b953f596d62ec37a6824ae76260` |
| 54 | `theorem` | [x_le_x](../../../../../mathematics/NumberTheory/DiophantineEquations/Pell/Variant76498059c000506808554965423880faca0c6def5f4bf48f85173fb5e1803940.lean/declarations/x-le-x--ee698fcc5bec02c97392448e.md) | 599 | `result-track:ee698fcc5bec02c97392448e9b94755db206786cccd62912b7de42a497f06a65` |
| 55 | `theorem` | [y_le_y](../../../../../mathematics/NumberTheory/DiophantineEquations/Pell/Variant76498059c000506808554965423880faca0c6def5f4bf48f85173fb5e1803940.lean/declarations/y-le-y--5a6f68ce13088a83cc568706.md) | 606 | `result-track:5a6f68ce13088a83cc568706f52b422456bf77024084e2ea2e26a3dbbdbeebac` |
| 56 | `theorem` | [x_mul_y_le_y_mul_x](../../../../../mathematics/NumberTheory/DiophantineEquations/Pell/Variant76498059c000506808554965423880faca0c6def5f4bf48f85173fb5e1803940.lean/declarations/x-mul-y-le-y-mul-x--692d628793d5f6990fc756d1.md) | 616 | `result-track:692d628793d5f6990fc756d108d261c5f07ff03ad4bf6f8e05bb1c56bef0fd89` |
| 57 | `theorem` | [mul_inv_y_nonneg](../../../../../mathematics/NumberTheory/DiophantineEquations/Pell/Variant76498059c000506808554965423880faca0c6def5f4bf48f85173fb5e1803940.lean/declarations/mul-inv-y-nonneg--aa23ab35e52a5f324434a9c3.md) | 628 | `result-track:aa23ab35e52a5f324434a9c33f9d62a67268b73686a4822ca85176eea67cee51` |
| 58 | `theorem` | [mul_inv_x_pos](../../../../../mathematics/NumberTheory/DiophantineEquations/Pell/Variant76498059c000506808554965423880faca0c6def5f4bf48f85173fb5e1803940.lean/declarations/mul-inv-x-pos--63e79269c1268a4c8d7698b8.md) | 636 | `result-track:63e79269c1268a4c8d7698b808c498a083d880499f76c4cb30d13e9488e93bd5` |
| 59 | `theorem` | [mul_inv_x_lt_x](../../../../../mathematics/NumberTheory/DiophantineEquations/Pell/Variant76498059c000506808554965423880faca0c6def5f4bf48f85173fb5e1803940.lean/declarations/mul-inv-x-lt-x--398891ada2700d328042339c.md) | 649 | `result-track:398891ada2700d328042339caf0c7874c4bb9f2b6b23a7eeb6bbd98ea9722b88` |
| 60 | `theorem` | [eq_pow_of_nonneg](../../../../../mathematics/NumberTheory/DiophantineEquations/Pell/Variant76498059c000506808554965423880faca0c6def5f4bf48f85173fb5e1803940.lean/declarations/eq-pow-of-nonneg--0c75c7e46390921005d0a2aa.md) | 671 | `result-track:0c75c7e46390921005d0a2aae679dcdfcae0bf35cd3f8511fdba2c44ea2dd0ca` |
| 61 | `theorem` | [eq_zpow_or_neg_zpow](../../../../../mathematics/NumberTheory/DiophantineEquations/Pell/Variant76498059c000506808554965423880faca0c6def5f4bf48f85173fb5e1803940.lean/declarations/eq-zpow-or-neg-zpow--bbf228780b71e180b7ee1251.md) | 701 | `result-track:bbf228780b71e180b7ee125142d4e376eacfbf7b1ea1830bbc137fc11b9564ca` |
| 62 | `theorem` | [existsUnique_pos_generator](../../../../../mathematics/NumberTheory/DiophantineEquations/Pell/Variant76498059c000506808554965423880faca0c6def5f4bf48f85173fb5e1803940.lean/declarations/existsunique-pos-generator--547026db1e30c88ac9dfcc37.md) | 720 | `result-track:547026db1e30c88ac9dfcc37867630c37085755356bfcf94d4b9c44686b4c0aa` |
| 63 | `theorem` | [pos_generator_iff_fundamental](../../../../../mathematics/NumberTheory/DiophantineEquations/Pell/Variant76498059c000506808554965423880faca0c6def5f4bf48f85173fb5e1803940.lean/declarations/pos-generator-iff-fundamental--cac52772248fb498785cdcf0.md) | 748 | `result-track:cac52772248fb498785cdcf08bcea08edfae457f3cadc29250827a6feec61d63` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
