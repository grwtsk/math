# Verification target: GRWTSK.NumberTheory.DiophantineEquations.Pell.Variant3f873f1ecd01b0d395ccb4510134634d2fc627d8bf4707c2b2eaefb3ac65f811

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a68df8142d5d37c001d93e02ba9b380c647ff34d",
  "lexical_observation_count": 63,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/DiophantineEquations/Pell/Variant3f873f1ecd01b0d395ccb4510134634d2fc627d8bf4707c2b2eaefb3ac65f811.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/DiophantineEquations/Pell/Variant3f873f1ecd01b0d395ccb4510134634d2fc627d8bf4707c2b2eaefb3ac65f811.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/DiophantineEquations/Pell/Variant3f873f1ecd01b0d395ccb4510134634d2fc627d8bf4707c2b2eaefb3ac65f811.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a68df8142d5d37c001d93e02ba9b380c647ff34d`.

Source path: `GRWTSK/NumberTheory/DiophantineEquations/Pell/Variant3f873f1ecd01b0d395ccb4510134634d2fc627d8bf4707c2b2eaefb3ac65f811.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/DiophantineEquations/Pell/Variant3f873f1ecd01b0d395ccb4510134634d2fc627d8bf4707c2b2eaefb3ac65f811.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Tactic.Qify` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.ZMod.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.DiophantineApproximation` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.Zsqrtd.Basic` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [is_pell_solution_iff_mem_unitary](../../../../../mathematics/NumberTheory/DiophantineEquations/Pell/Variant3f873f1ecd01b0d395ccb4510134634d2fc627d8bf4707c2b2eaefb3ac65f811.lean/declarations/is-pell-solution-iff-mem-unitary--9a793d6b96c7532bbae3101e.md) | 83 | `result-track:9a793d6b96c7532bbae3101e0b27c5a27399d82a6da27d91d0cb9b62d2baddfc` |
| 2 | `def` | [Solution₁](../../../../../mathematics/NumberTheory/DiophantineEquations/Pell/Variant3f873f1ecd01b0d395ccb4510134634d2fc627d8bf4707c2b2eaefb3ac65f811.lean/declarations/solution--bf2c408ec7b7cc3b327f8db7.md) | 93 | `declaration-track:bf2c408ec7b7cc3b327f8db79b7db6efad13acfe45c9257ed17e43ff0f99483a` |
| 3 | `instance` | [instCommGroup](../../../../../mathematics/NumberTheory/DiophantineEquations/Pell/Variant3f873f1ecd01b0d395ccb4510134634d2fc627d8bf4707c2b2eaefb3ac65f811.lean/declarations/instcommgroup--bb8c891b63468e6780132ebd.md) | 103 | `declaration-track:bb8c891b63468e6780132ebd05c9f15427bd673881c544c18a182ddca757cacf` |
| 4 | `instance` | [instHasDistribNeg](../../../../../mathematics/NumberTheory/DiophantineEquations/Pell/Variant3f873f1ecd01b0d395ccb4510134634d2fc627d8bf4707c2b2eaefb3ac65f811.lean/declarations/insthasdistribneg--c9a7737332e309acad21c4a3.md) | 107 | `declaration-track:c9a7737332e309acad21c4a341038def1961d648dc74c12092e5b81bbb57ee40` |
| 5 | `instance` | [instInhabited](../../../../../mathematics/NumberTheory/DiophantineEquations/Pell/Variant3f873f1ecd01b0d395ccb4510134634d2fc627d8bf4707c2b2eaefb3ac65f811.lean/declarations/instinhabited--2dc6b9ef555f8363b47a3455.md) | 111 | `declaration-track:2dc6b9ef555f8363b47a3455b8803698b050bed133091b848adb585225501528` |
| 6 | `instance` | [(anonymous)](../../../../../mathematics/NumberTheory/DiophantineEquations/Pell/Variant3f873f1ecd01b0d395ccb4510134634d2fc627d8bf4707c2b2eaefb3ac65f811.lean/declarations/instance--62b8b50b75a515b6b6938299.md) | 115 | `declaration-track:62b8b50b75a515b6b6938299ee1b3e92965aefb2ad98d4141fb113cd107112b5` |
| 7 | `def` | [x](../../../../../mathematics/NumberTheory/DiophantineEquations/Pell/Variant3f873f1ecd01b0d395ccb4510134634d2fc627d8bf4707c2b2eaefb3ac65f811.lean/declarations/x--220e7bd9ab4d9914a3ab39e8.md) | 118 | `declaration-track:220e7bd9ab4d9914a3ab39e8440fb34d8ec60083c27c31617c62a5e70470a8d9` |
| 8 | `def` | [y](../../../../../mathematics/NumberTheory/DiophantineEquations/Pell/Variant3f873f1ecd01b0d395ccb4510134634d2fc627d8bf4707c2b2eaefb3ac65f811.lean/declarations/y--14afe238fd0f52f40febbf68.md) | 123 | `declaration-track:14afe238fd0f52f40febbf68d40cd4753fa7d005384df3b49e3b6ca546a8ebe8` |
| 9 | `theorem` | [prop](../../../../../mathematics/NumberTheory/DiophantineEquations/Pell/Variant3f873f1ecd01b0d395ccb4510134634d2fc627d8bf4707c2b2eaefb3ac65f811.lean/declarations/prop--a6c911ed3bec52c5a6bf0682.md) | 128 | `result-track:a6c911ed3bec52c5a6bf0682b6acf575a973180fa341b54924dc81e3c2ab6fb1` |
| 10 | `theorem` | [prop_x](../../../../../mathematics/NumberTheory/DiophantineEquations/Pell/Variant3f873f1ecd01b0d395ccb4510134634d2fc627d8bf4707c2b2eaefb3ac65f811.lean/declarations/prop-x--80a0b7fa25866ca11bcb681d.md) | 133 | `result-track:80a0b7fa25866ca11bcb681d0517db8306c8fa9832148cc58e1d3391d3d3d675` |
| 11 | `theorem` | [prop_y](../../../../../mathematics/NumberTheory/DiophantineEquations/Pell/Variant3f873f1ecd01b0d395ccb4510134634d2fc627d8bf4707c2b2eaefb3ac65f811.lean/declarations/prop-y--761f5054c8cbfd4830054e2d.md) | 137 | `result-track:761f5054c8cbfd4830054e2d837e797d83d5596a6766df00d380dfa71c017c63` |
| 12 | `theorem` | [ext](../../../../../mathematics/NumberTheory/DiophantineEquations/Pell/Variant3f873f1ecd01b0d395ccb4510134634d2fc627d8bf4707c2b2eaefb3ac65f811.lean/declarations/ext--9d1dff3ab0e063374624b207.md) | 142 | `result-track:9d1dff3ab0e063374624b20708309000717c82766eb7f6f20c95182bb3d1c038` |
| 13 | `def` | [mk](../../../../../mathematics/NumberTheory/DiophantineEquations/Pell/Variant3f873f1ecd01b0d395ccb4510134634d2fc627d8bf4707c2b2eaefb3ac65f811.lean/declarations/mk--9af5a3bba00a44ab0f7f26ba.md) | 147 | `declaration-track:9af5a3bba00a44ab0f7f26ba1f9ef4f18eb8c0d1c0d79cd20c7347742e174b23` |
| 14 | `theorem` | [x_mk](../../../../../mathematics/NumberTheory/DiophantineEquations/Pell/Variant3f873f1ecd01b0d395ccb4510134634d2fc627d8bf4707c2b2eaefb3ac65f811.lean/declarations/x-mk--27cb91c9c3d89622462f7387.md) | 153 | `result-track:27cb91c9c3d89622462f7387756a423655ef9ccdf36fbd5bab67bec14ec6b7e5` |
| 15 | `theorem` | [y_mk](../../../../../mathematics/NumberTheory/DiophantineEquations/Pell/Variant3f873f1ecd01b0d395ccb4510134634d2fc627d8bf4707c2b2eaefb3ac65f811.lean/declarations/y-mk--d882912a5519089638ed8f5c.md) | 158 | `result-track:d882912a5519089638ed8f5c1d89fa29bb4eefdf9ad46367da8c5ee058b9f4cb` |
| 16 | `theorem` | [coe_mk](../../../../../mathematics/NumberTheory/DiophantineEquations/Pell/Variant3f873f1ecd01b0d395ccb4510134634d2fc627d8bf4707c2b2eaefb3ac65f811.lean/declarations/coe-mk--941fd8d6b4bf6cecff03b9c0.md) | 163 | `result-track:941fd8d6b4bf6cecff03b9c002bb7432df041f80ea164557d3c4fce4447e03b0` |
| 17 | `theorem` | [x_one](../../../../../mathematics/NumberTheory/DiophantineEquations/Pell/Variant3f873f1ecd01b0d395ccb4510134634d2fc627d8bf4707c2b2eaefb3ac65f811.lean/declarations/x-one--96f9fb49fdd2f1e4ab62224b.md) | 168 | `result-track:96f9fb49fdd2f1e4ab62224b792616fa16d37e53cc7abb61682b576e5567c6c7` |
| 18 | `theorem` | [y_one](../../../../../mathematics/NumberTheory/DiophantineEquations/Pell/Variant3f873f1ecd01b0d395ccb4510134634d2fc627d8bf4707c2b2eaefb3ac65f811.lean/declarations/y-one--c4d2dbf32eece2b5d91e94e3.md) | 173 | `result-track:c4d2dbf32eece2b5d91e94e3bcbfe24cd1cafe0da92e52a29d4027568489b115` |
| 19 | `theorem` | [x_mul](../../../../../mathematics/NumberTheory/DiophantineEquations/Pell/Variant3f873f1ecd01b0d395ccb4510134634d2fc627d8bf4707c2b2eaefb3ac65f811.lean/declarations/x-mul--cb3c16d7ebd5e5514c7daea7.md) | 178 | `result-track:cb3c16d7ebd5e5514c7daea7a8b386bfec64011764fa181a28e765f9959cacbf` |
| 20 | `theorem` | [y_mul](../../../../../mathematics/NumberTheory/DiophantineEquations/Pell/Variant3f873f1ecd01b0d395ccb4510134634d2fc627d8bf4707c2b2eaefb3ac65f811.lean/declarations/y-mul--df54dc7fcbe6e5405f5cea20.md) | 184 | `result-track:df54dc7fcbe6e5405f5cea20c3e8d7bad6902baacb60b6968d46988b6d164d26` |
| 21 | `theorem` | [x_inv](../../../../../mathematics/NumberTheory/DiophantineEquations/Pell/Variant3f873f1ecd01b0d395ccb4510134634d2fc627d8bf4707c2b2eaefb3ac65f811.lean/declarations/x-inv--93f6d663a972d1ffca2ee3cb.md) | 189 | `result-track:93f6d663a972d1ffca2ee3cb2aaf08325283550c2c18607895a2b103f820de1b` |
| 22 | `theorem` | [y_inv](../../../../../mathematics/NumberTheory/DiophantineEquations/Pell/Variant3f873f1ecd01b0d395ccb4510134634d2fc627d8bf4707c2b2eaefb3ac65f811.lean/declarations/y-inv--a91d5b464ae39e5bba324c82.md) | 194 | `result-track:a91d5b464ae39e5bba324c82ddd1d5685fa2b080230fb74a1aff289d58ff3335` |
| 23 | `theorem` | [x_neg](../../../../../mathematics/NumberTheory/DiophantineEquations/Pell/Variant3f873f1ecd01b0d395ccb4510134634d2fc627d8bf4707c2b2eaefb3ac65f811.lean/declarations/x-neg--ee51a0e1bb7d99661298582d.md) | 199 | `result-track:ee51a0e1bb7d99661298582dd7d0548a2c4d134246260a70595641dba14b9fb6` |
| 24 | `theorem` | [y_neg](../../../../../mathematics/NumberTheory/DiophantineEquations/Pell/Variant3f873f1ecd01b0d395ccb4510134634d2fc627d8bf4707c2b2eaefb3ac65f811.lean/declarations/y-neg--5c0782644cd5d0f0d3dc58d5.md) | 204 | `result-track:5c0782644cd5d0f0d3dc58d5177957fb074de0dc69a5c95fa5d43c8837df45e7` |
| 25 | `theorem` | [eq_zero_of_d_neg](../../../../../mathematics/NumberTheory/DiophantineEquations/Pell/Variant3f873f1ecd01b0d395ccb4510134634d2fc627d8bf4707c2b2eaefb3ac65f811.lean/declarations/eq-zero-of-d-neg--41fb7f88afa8cce8d17a45b1.md) | 209 | `result-track:41fb7f88afa8cce8d17a45b14433fd0cc8e2f6617358dd72d0cf6f418a49829f` |
| 26 | `theorem` | [x_ne_zero](../../../../../mathematics/NumberTheory/DiophantineEquations/Pell/Variant3f873f1ecd01b0d395ccb4510134634d2fc627d8bf4707c2b2eaefb3ac65f811.lean/declarations/x-ne-zero--747fbd568f8dbba931b53f8f.md) | 220 | `result-track:747fbd568f8dbba931b53f8fda77ec0c9f0e987abe0daa6b994f9e27a2f10dac` |
| 27 | `theorem` | [y_ne_zero_of_one_lt_x](../../../../../mathematics/NumberTheory/DiophantineEquations/Pell/Variant3f873f1ecd01b0d395ccb4510134634d2fc627d8bf4707c2b2eaefb3ac65f811.lean/declarations/y-ne-zero-of-one-lt-x--9177f66998e08a5ecd3b886f.md) | 228 | `result-track:9177f66998e08a5ecd3b886f988371beb30ef9fa58ee944e94a333874d1b3164` |
| 28 | `theorem` | [d_pos_of_one_lt_x](../../../../../mathematics/NumberTheory/DiophantineEquations/Pell/Variant3f873f1ecd01b0d395ccb4510134634d2fc627d8bf4707c2b2eaefb3ac65f811.lean/declarations/d-pos-of-one-lt-x--a965f94ec30e14604a545d2a.md) | 236 | `result-track:a965f94ec30e14604a545d2a8e18b4666097b1abcfd9679b5bf999f6721ace4f` |
| 29 | `theorem` | [d_nonsquare_of_one_lt_x](../../../../../mathematics/NumberTheory/DiophantineEquations/Pell/Variant3f873f1ecd01b0d395ccb4510134634d2fc627d8bf4707c2b2eaefb3ac65f811.lean/declarations/d-nonsquare-of-one-lt-x--254be75273133b1567f78b10.md) | 243 | `result-track:254be75273133b1567f78b10827431909b0425ed5d03c2bd6b687a14ef09b267` |
| 30 | `theorem` | [eq_one_of_x_eq_one](../../../../../mathematics/NumberTheory/DiophantineEquations/Pell/Variant3f873f1ecd01b0d395ccb4510134634d2fc627d8bf4707c2b2eaefb3ac65f811.lean/declarations/eq-one-of-x-eq-one--1d9ff29ed4bf1ef94838446f.md) | 251 | `result-track:1d9ff29ed4bf1ef94838446f06e45c8bc2c531ff1955d2eb0a7e18f11aa206c8` |
| 31 | `theorem` | [eq_one_or_neg_one_iff_y_eq_zero](../../../../../mathematics/NumberTheory/DiophantineEquations/Pell/Variant3f873f1ecd01b0d395ccb4510134634d2fc627d8bf4707c2b2eaefb3ac65f811.lean/declarations/eq-one-or-neg-one-iff-y-eq-zero--8b81d3df019914bc812bca20.md) | 258 | `result-track:8b81d3df019914bc812bca2097fd6ba1a6eef2830adf96827b8d6f6d1ad3bb84` |
| 32 | `theorem` | [x_mul_pos](../../../../../mathematics/NumberTheory/DiophantineEquations/Pell/Variant3f873f1ecd01b0d395ccb4510134634d2fc627d8bf4707c2b2eaefb3ac65f811.lean/declarations/x-mul-pos--57a6d05af77d7f4221bca202.md) | 266 | `result-track:57a6d05af77d7f4221bca20263e661323040e78a98ce89d60644dc9531e9adeb` |
| 33 | `theorem` | [y_mul_pos](../../../../../mathematics/NumberTheory/DiophantineEquations/Pell/Variant3f873f1ecd01b0d395ccb4510134634d2fc627d8bf4707c2b2eaefb3ac65f811.lean/declarations/y-mul-pos--16cb79e2d0ac9436634c226f.md) | 283 | `result-track:16cb79e2d0ac9436634c226f2a9cae56b71517b0acc810fdcfe288c009c29a1e` |
| 34 | `theorem` | [x_pow_pos](../../../../../mathematics/NumberTheory/DiophantineEquations/Pell/Variant3f873f1ecd01b0d395ccb4510134634d2fc627d8bf4707c2b2eaefb3ac65f811.lean/declarations/x-pow-pos--056b779d8c86dfa144b1dcca.md) | 291 | `result-track:056b779d8c86dfa144b1dccac75ea8004700baaed4ece6231d99a43019ef6614` |
| 35 | `theorem` | [y_pow_succ_pos](../../../../../mathematics/NumberTheory/DiophantineEquations/Pell/Variant3f873f1ecd01b0d395ccb4510134634d2fc627d8bf4707c2b2eaefb3ac65f811.lean/declarations/y-pow-succ-pos--5eb9a14d4eb5cda9766fecbe.md) | 300 | `result-track:5eb9a14d4eb5cda9766fecbea08a5bde4162946edd9eecde0c85a2a6529e5808` |
| 36 | `theorem` | [y_zpow_pos](../../../../../mathematics/NumberTheory/DiophantineEquations/Pell/Variant3f873f1ecd01b0d395ccb4510134634d2fc627d8bf4707c2b2eaefb3ac65f811.lean/declarations/y-zpow-pos--e808db0c968060fc588a61e1.md) | 310 | `result-track:e808db0c968060fc588a61e1c3d71429ad825023d8d2f84e38a61440b19dc1b3` |
| 37 | `theorem` | [x_zpow_pos](../../../../../mathematics/NumberTheory/DiophantineEquations/Pell/Variant3f873f1ecd01b0d395ccb4510134634d2fc627d8bf4707c2b2eaefb3ac65f811.lean/declarations/x-zpow-pos--93a32887121d98a803fe0893.md) | 319 | `result-track:93a32887121d98a803fe0893390cecd914efa9d04bf4511699faa126f4c0bafd` |
| 38 | `theorem` | [sign_y_zpow_eq_sign_of_x_pos_of_y_pos](../../../../../mathematics/NumberTheory/DiophantineEquations/Pell/Variant3f873f1ecd01b0d395ccb4510134634d2fc627d8bf4707c2b2eaefb3ac65f811.lean/declarations/sign-y-zpow-eq-sign-of-x-pos-of-y-pos--e1e11612445a544d71300c69.md) | 331 | `result-track:e1e11612445a544d71300c696cd7fd14f685739e159cf56691931cf49725f4b1` |
| 39 | `theorem` | [exists_pos_variant](../../../../../mathematics/NumberTheory/DiophantineEquations/Pell/Variant3f873f1ecd01b0d395ccb4510134634d2fc627d8bf4707c2b2eaefb3ac65f811.lean/declarations/exists-pos-variant--759b17c53f8947bf2d021c34.md) | 343 | `result-track:759b17c53f8947bf2d021c34c1ba42175a56aedc4e7cdec75f45f77d7bac525a` |
| 40 | `theorem` | [exists_of_not_isSquare](../../../../../mathematics/NumberTheory/DiophantineEquations/Pell/Variant3f873f1ecd01b0d395ccb4510134634d2fc627d8bf4707c2b2eaefb3ac65f811.lean/declarations/exists-of-not-issquare--10fba232252b0053e24431f4.md) | 369 | `result-track:10fba232252b0053e24431f4ee7817fe343c45405835843caa3fddd687b7d99f` |
| 41 | `theorem` | [exists_iff_not_isSquare](../../../../../mathematics/NumberTheory/DiophantineEquations/Pell/Variant3f873f1ecd01b0d395ccb4510134634d2fc627d8bf4707c2b2eaefb3ac65f811.lean/declarations/exists-iff-not-issquare--28ac8d30610f630e7c6714d2.md) | 441 | `result-track:28ac8d30610f630e7c6714d293d3cc119ac1ad6594ab65b6dcd03ccac7ecbf54` |
| 42 | `theorem` | [exists_nontrivial_of_not_isSquare](../../../../../mathematics/NumberTheory/DiophantineEquations/Pell/Variant3f873f1ecd01b0d395ccb4510134634d2fc627d8bf4707c2b2eaefb3ac65f811.lean/declarations/exists-nontrivial-of-not-issquare--6c2f945c14f4a0ef75e3af0f.md) | 453 | `result-track:6c2f945c14f4a0ef75e3af0f16d3cea0eefe66f9bb6cd09cd715aa87fac50b9f` |
| 43 | `theorem` | [exists_pos_of_not_isSquare](../../../../../mathematics/NumberTheory/DiophantineEquations/Pell/Variant3f873f1ecd01b0d395ccb4510134634d2fc627d8bf4707c2b2eaefb3ac65f811.lean/declarations/exists-pos-of-not-issquare--f685e9147efa3cd1b9222c14.md) | 462 | `result-track:f685e9147efa3cd1b9222c145941b9d0a9f4e41ec96cb46254a251803eef1df2` |
| 44 | `def` | [IsFundamental](../../../../../mathematics/NumberTheory/DiophantineEquations/Pell/Variant3f873f1ecd01b0d395ccb4510134634d2fc627d8bf4707c2b2eaefb3ac65f811.lean/declarations/isfundamental--52cbbf31f4b9fcf1056f4995.md) | 486 | `declaration-track:52cbbf31f4b9fcf1056f4995607c73ff18869e953bcf2ef1129e61d65e7b4519` |
| 45 | `theorem` | [x_pos](../../../../../mathematics/NumberTheory/DiophantineEquations/Pell/Variant3f873f1ecd01b0d395ccb4510134634d2fc627d8bf4707c2b2eaefb3ac65f811.lean/declarations/x-pos--857932edf9343e7ed86a8c31.md) | 495 | `result-track:857932edf9343e7ed86a8c311c68324f8fc787c2211342ff6507f50178ab0c3a` |
| 46 | `theorem` | [d_pos](../../../../../mathematics/NumberTheory/DiophantineEquations/Pell/Variant3f873f1ecd01b0d395ccb4510134634d2fc627d8bf4707c2b2eaefb3ac65f811.lean/declarations/d-pos--f9843e1d62af72c9813ae66e.md) | 500 | `result-track:f9843e1d62af72c9813ae66e52a180ec47ad5e840c1eb230778318d283eea88b` |
| 47 | `theorem` | [d_nonsquare](../../../../../mathematics/NumberTheory/DiophantineEquations/Pell/Variant3f873f1ecd01b0d395ccb4510134634d2fc627d8bf4707c2b2eaefb3ac65f811.lean/declarations/d-nonsquare--18c9a4e54b404c6c0a653446.md) | 505 | `result-track:18c9a4e54b404c6c0a653446591421bdd09871042171ca59174853edb1dc97c2` |
| 48 | `theorem` | [subsingleton](../../../../../mathematics/NumberTheory/DiophantineEquations/Pell/Variant3f873f1ecd01b0d395ccb4510134634d2fc627d8bf4707c2b2eaefb3ac65f811.lean/declarations/subsingleton--0a41491b056bf8673c944cf8.md) | 510 | `result-track:0a41491b056bf8673c944cf8bb5f01ffebdf83cae1a6ef181bf354e832cdda4c` |
| 49 | `theorem` | [exists_of_not_isSquare](../../../../../mathematics/NumberTheory/DiophantineEquations/Pell/Variant3f873f1ecd01b0d395ccb4510134634d2fc627d8bf4707c2b2eaefb3ac65f811.lean/declarations/exists-of-not-issquare--6abc22def6d7c05d3f35217e.md) | 518 | `result-track:6abc22def6d7c05d3f35217e5525c5c61c648a2d900326f7ce6feaad46b43a6b` |
| 50 | `theorem` | [y_strictMono](../../../../../mathematics/NumberTheory/DiophantineEquations/Pell/Variant3f873f1ecd01b0d395ccb4510134634d2fc627d8bf4707c2b2eaefb3ac65f811.lean/declarations/y-strictmono--091977c683c8b3791b81e181.md) | 544 | `result-track:091977c683c8b3791b81e18115087a0e8b33b9a7441602f9374cd0449cac8490` |
| 51 | `theorem` | [zpow_y_lt_iff_lt](../../../../../mathematics/NumberTheory/DiophantineEquations/Pell/Variant3f873f1ecd01b0d395ccb4510134634d2fc627d8bf4707c2b2eaefb3ac65f811.lean/declarations/zpow-y-lt-iff-lt--fa4c774ec1a7da3dc99a1d33.md) | 566 | `result-track:fa4c774ec1a7da3dc99a1d335fb684f578112c3bc45f3a7a220697d14ab561b9` |
| 52 | `theorem` | [zpow_eq_one_iff](../../../../../mathematics/NumberTheory/DiophantineEquations/Pell/Variant3f873f1ecd01b0d395ccb4510134634d2fc627d8bf4707c2b2eaefb3ac65f811.lean/declarations/zpow-eq-one-iff--9d0073dcee5099af1b73feb7.md) | 574 | `result-track:9d0073dcee5099af1b73feb7ffb0934302fc48a6ff0c9a4ca3e4d36782b39786` |
| 53 | `theorem` | [zpow_ne_neg_zpow](../../../../../mathematics/NumberTheory/DiophantineEquations/Pell/Variant3f873f1ecd01b0d395ccb4510134634d2fc627d8bf4707c2b2eaefb3ac65f811.lean/declarations/zpow-ne-neg-zpow--4c631d06c001fd9d1262cbd8.md) | 581 | `result-track:4c631d06c001fd9d1262cbd82bddda722816a23e8a2a58be248cbd32a0de931a` |
| 54 | `theorem` | [x_le_x](../../../../../mathematics/NumberTheory/DiophantineEquations/Pell/Variant3f873f1ecd01b0d395ccb4510134634d2fc627d8bf4707c2b2eaefb3ac65f811.lean/declarations/x-le-x--d3545ab873134ada5303abaf.md) | 591 | `result-track:d3545ab873134ada5303abaf56fbc9206d9a3c8a86bf85b61053abc639339815` |
| 55 | `theorem` | [y_le_y](../../../../../mathematics/NumberTheory/DiophantineEquations/Pell/Variant3f873f1ecd01b0d395ccb4510134634d2fc627d8bf4707c2b2eaefb3ac65f811.lean/declarations/y-le-y--48bef46cb916186112720390.md) | 598 | `result-track:48bef46cb916186112720390eec41e6cfe78422bc24ae603e4101c1f92f3245f` |
| 56 | `theorem` | [x_mul_y_le_y_mul_x](../../../../../mathematics/NumberTheory/DiophantineEquations/Pell/Variant3f873f1ecd01b0d395ccb4510134634d2fc627d8bf4707c2b2eaefb3ac65f811.lean/declarations/x-mul-y-le-y-mul-x--be4fcfc42643f2d33a68507d.md) | 608 | `result-track:be4fcfc42643f2d33a68507d52403dec980afc14f8c36f2fdbb4fa8a28c06331` |
| 57 | `theorem` | [mul_inv_y_nonneg](../../../../../mathematics/NumberTheory/DiophantineEquations/Pell/Variant3f873f1ecd01b0d395ccb4510134634d2fc627d8bf4707c2b2eaefb3ac65f811.lean/declarations/mul-inv-y-nonneg--df467ddcfde6efaa0275de9a.md) | 620 | `result-track:df467ddcfde6efaa0275de9a0325559c390c77f5bea224a113eadf1ee7c164a7` |
| 58 | `theorem` | [mul_inv_x_pos](../../../../../mathematics/NumberTheory/DiophantineEquations/Pell/Variant3f873f1ecd01b0d395ccb4510134634d2fc627d8bf4707c2b2eaefb3ac65f811.lean/declarations/mul-inv-x-pos--51a54bd7e796eee02504a3d4.md) | 628 | `result-track:51a54bd7e796eee02504a3d4e4543d3176c17a2e479e8e6b016238c904ef52bb` |
| 59 | `theorem` | [mul_inv_x_lt_x](../../../../../mathematics/NumberTheory/DiophantineEquations/Pell/Variant3f873f1ecd01b0d395ccb4510134634d2fc627d8bf4707c2b2eaefb3ac65f811.lean/declarations/mul-inv-x-lt-x--a321302cac54294022381c7d.md) | 641 | `result-track:a321302cac54294022381c7d7a49ad330f9b02b59be2fd4d54958b5f2db89d98` |
| 60 | `theorem` | [eq_pow_of_nonneg](../../../../../mathematics/NumberTheory/DiophantineEquations/Pell/Variant3f873f1ecd01b0d395ccb4510134634d2fc627d8bf4707c2b2eaefb3ac65f811.lean/declarations/eq-pow-of-nonneg--353760a1376a5c7d7d4f43b4.md) | 663 | `result-track:353760a1376a5c7d7d4f43b4a693790d937348ee3cb6088dfa8a20ef10dde823` |
| 61 | `theorem` | [eq_zpow_or_neg_zpow](../../../../../mathematics/NumberTheory/DiophantineEquations/Pell/Variant3f873f1ecd01b0d395ccb4510134634d2fc627d8bf4707c2b2eaefb3ac65f811.lean/declarations/eq-zpow-or-neg-zpow--1c06ee0250a44daeede70dfc.md) | 693 | `result-track:1c06ee0250a44daeede70dfc2f273a6c18d1418b7c5d284d79daa8b583d93656` |
| 62 | `theorem` | [existsUnique_pos_generator](../../../../../mathematics/NumberTheory/DiophantineEquations/Pell/Variant3f873f1ecd01b0d395ccb4510134634d2fc627d8bf4707c2b2eaefb3ac65f811.lean/declarations/existsunique-pos-generator--a4396c4015c3081a1f2df66c.md) | 712 | `result-track:a4396c4015c3081a1f2df66c0f05eeabdf2d8d8cfb988deda62c77b0e7743a08` |
| 63 | `theorem` | [pos_generator_iff_fundamental](../../../../../mathematics/NumberTheory/DiophantineEquations/Pell/Variant3f873f1ecd01b0d395ccb4510134634d2fc627d8bf4707c2b2eaefb3ac65f811.lean/declarations/pos-generator-iff-fundamental--afbdb50de121a786c2e8120f.md) | 740 | `result-track:afbdb50de121a786c2e8120fe61454a0a88920c395810d96810bf9390c46e827` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
