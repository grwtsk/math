# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.Round.Variant2e03444285c5b244906ae8d0dd57e2e64bb1c15e3a90cd5e25ea9629ed91dd4a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "99d3a3c3d6465e76e3a4dc141f0e26e14183b92f",
  "lexical_observation_count": 26,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Round/Variant2e03444285c5b244906ae8d0dd57e2e64bb1c15e3a90cd5e25ea9629ed91dd4a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Round/Variant2e03444285c5b244906ae8d0dd57e2e64bb1c15e3a90cd5e25ea9629ed91dd4a.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Round/Variant2e03444285c5b244906ae8d0dd57e2e64bb1c15e3a90cd5e25ea9629ed91dd4a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `99d3a3c3d6465e76e3a4dc141f0e26e14183b92f`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Round/Variant2e03444285c5b244906ae8d0dd57e2e64bb1c15e3a90cd5e25ea9629ed91dd4a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Round/Variant2e03444285c5b244906ae8d0dd57e2e64bb1c15e3a90cd5e25ea9629ed91dd4a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `BitMatrix.Dynamics.Avalanche` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.CharP.Two` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.Units.Equiv` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.GroupWithZero.Units.Fintype` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.FieldTheory.Finite.Basic` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.OrderOfElement` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [digammaDenominator](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Round/Variant2e03444285c5b244906ae8d0dd57e2e64bb1c15e3a90cd5e25ea9629ed91dd4a.lean/declarations/digammadenominator--2d88b3a9673d2941e5ee127b.md) | 56 | `declaration-track:2d88b3a9673d2941e5ee127bed9ea289959045742ae0628f8cb23ffd040dd6c0` |
| 2 | `def` | [finiteDigamma?](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Round/Variant2e03444285c5b244906ae8d0dd57e2e64bb1c15e3a90cd5e25ea9629ed91dd4a.lean/declarations/finitedigamma--90d6e683889a8276edf8a097.md) | 60 | `declaration-track:90d6e683889a8276edf8a0973827139e97221b1f175e20819af4257f774e7c89` |
| 3 | `theorem` | [digammaDenominator_eq_zero_of_mem](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Round/Variant2e03444285c5b244906ae8d0dd57e2e64bb1c15e3a90cd5e25ea9629ed91dd4a.lean/declarations/digammadenominator-eq-zero-of-mem--030267d7019b5d4cd9e4d39c.md) | 69 | `result-track:030267d7019b5d4cd9e4d39cbbddcca677e5c7959dc49f2f3ded184af0b7c6d9` |
| 4 | `theorem` | [finiteDigamma_none_of_mem](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Round/Variant2e03444285c5b244906ae8d0dd57e2e64bb1c15e3a90cd5e25ea9629ed91dd4a.lean/declarations/finitedigamma-none-of-mem--83c524d53184ed5b1a9cf5bd.md) | 76 | `result-track:83c524d53184ed5b1a9cf5bd38f38fe31f87c9db3339456c9373dbeaa7734992` |
| 5 | `def` | [allNonzeroRoots](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Round/Variant2e03444285c5b244906ae8d0dd57e2e64bb1c15e3a90cd5e25ea9629ed91dd4a.lean/declarations/allnonzeroroots--18455662a180c155a54ff032.md) | 88 | `declaration-track:18455662a180c155a54ff032b7982d207af8ac0d27700d3438e159996ed236e8` |
| 6 | `theorem` | [finiteDigamma_allNonzero_none](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Round/Variant2e03444285c5b244906ae8d0dd57e2e64bb1c15e3a90cd5e25ea9629ed91dd4a.lean/declarations/finitedigamma-allnonzero-none--b6c46f102f333cacee615a6a.md) | 94 | `result-track:b6c46f102f333cacee615a6ab041e265b2d34c326c10fccfbc5526dcc497c464` |
| 7 | `theorem` | [powerMap_bijective](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Round/Variant2e03444285c5b244906ae8d0dd57e2e64bb1c15e3a90cd5e25ea9629ed91dd4a.lean/declarations/powermap-bijective--7fa54723bb3d91e12b7ab516.md) | 111 | `result-track:7fa54723bb3d91e12b7ab516b21a34919d38f7b91b444956d71ae9ff89c851f5` |
| 8 | `def` | [powerPermutation](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Round/Variant2e03444285c5b244906ae8d0dd57e2e64bb1c15e3a90cd5e25ea9629ed91dd4a.lean/declarations/powerpermutation--27141abe9e3fcf0ddc2cdaa0.md) | 156 | `declaration-track:27141abe9e3fcf0ddc2cdaa04553cb64a97877286482c74113603487d761b53d` |
| 9 | `theorem` | [powerPermutation_apply](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Round/Variant2e03444285c5b244906ae8d0dd57e2e64bb1c15e3a90cd5e25ea9629ed91dd4a.lean/declarations/powerpermutation-apply--5ff0ffdc9da8b481373e99bf.md) | 165 | `result-track:5ff0ffdc9da8b481373e99bf3778a811da35d13ed93a3b309f9bc6d9e726416e` |
| 10 | `def` | [inversionPermutation](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Round/Variant2e03444285c5b244906ae8d0dd57e2e64bb1c15e3a90cd5e25ea9629ed91dd4a.lean/declarations/inversionpermutation--842c3f7734179b513e5323a7.md) | 181 | `declaration-track:842c3f7734179b513e5323a7d046314f8ddb7d32d0ae655b846e6c5a1ab74cde` |
| 11 | `theorem` | [inversionPermutation_apply](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Round/Variant2e03444285c5b244906ae8d0dd57e2e64bb1c15e3a90cd5e25ea9629ed91dd4a.lean/declarations/inversionpermutation-apply--7e870a692f6158b83c1be91c.md) | 188 | `result-track:7e870a692f6158b83c1be91c2a50dfb4a9fecc42b21afcefaf272b1f9463ecfd` |
| 12 | `theorem` | [inversionPermutation_zero](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Round/Variant2e03444285c5b244906ae8d0dd57e2e64bb1c15e3a90cd5e25ea9629ed91dd4a.lean/declarations/inversionpermutation-zero--47537b69ca4e7ec8a279c068.md) | 193 | `result-track:47537b69ca4e7ec8a279c068bb8d63104e71651fe5f5587e9cbcde3499722741` |
| 13 | `theorem` | [inversionPermutation_involutive](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Round/Variant2e03444285c5b244906ae8d0dd57e2e64bb1c15e3a90cd5e25ea9629ed91dd4a.lean/declarations/inversionpermutation-involutive--8138a8da6cc9469fc1fa5610.md) | 198 | `result-track:8138a8da6cc9469fc1fa5610091f4b68c829f83626642542dcc4fcf95507e8e7` |
| 14 | `structure` | [FieldRound](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Round/Variant2e03444285c5b244906ae8d0dd57e2e64bb1c15e3a90cd5e25ea9629ed91dd4a.lean/declarations/fieldround--f8c7e9dd26a2f0e7ebaac917.md) | 208 | `declaration-track:f8c7e9dd26a2f0e7ebaac9170a37176087bfe318e6ad87fc59a85e3778f8bd47` |
| 15 | `def` | [toEquiv](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Round/Variant2e03444285c5b244906ae8d0dd57e2e64bb1c15e3a90cd5e25ea9629ed91dd4a.lean/declarations/toequiv--4afefc0713f4da807a842e3c.md) | 219 | `declaration-track:4afefc0713f4da807a842e3cc8cd2cec8aba719c7e2e40fcf14e733adbfd7eec` |
| 16 | `def` | [run](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Round/Variant2e03444285c5b244906ae8d0dd57e2e64bb1c15e3a90cd5e25ea9629ed91dd4a.lean/declarations/run--ed33b8a9d0af53e38d426ab9.md) | 224 | `declaration-track:ed33b8a9d0af53e38d426ab9870dbeb779387ebb828c207dd8e2f2cca976749f` |
| 17 | `theorem` | [run_apply](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Round/Variant2e03444285c5b244906ae8d0dd57e2e64bb1c15e3a90cd5e25ea9629ed91dd4a.lean/declarations/run-apply--46f8f7b25462f8709f4c9873.md) | 228 | `result-track:46f8f7b25462f8709f4c987359fb4ff4d74bb6dcd792f63c92b7e4127bedb46a` |
| 18 | `theorem` | [run_bijective](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Round/Variant2e03444285c5b244906ae8d0dd57e2e64bb1c15e3a90cd5e25ea9629ed91dd4a.lean/declarations/run-bijective--02c2613ddbc0d727341de885.md) | 234 | `result-track:02c2613ddbc0d727341de885ebadc1e7911127f6f4751fb238d823007811bb0d` |
| 19 | `def` | [inverse](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Round/Variant2e03444285c5b244906ae8d0dd57e2e64bb1c15e3a90cd5e25ea9629ed91dd4a.lean/declarations/inverse--b3398d34f67bc4b0082efc23.md) | 239 | `declaration-track:b3398d34f67bc4b0082efc23845426cea3c31b6ff716237ffa0db9c673ad1c6a` |
| 20 | `theorem` | [inverse_apply](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Round/Variant2e03444285c5b244906ae8d0dd57e2e64bb1c15e3a90cd5e25ea9629ed91dd4a.lean/declarations/inverse-apply--27b8007948ea1e2adcede927.md) | 245 | `result-track:27b8007948ea1e2adcede92703f7580aa25e90c44999fc006173179207795dd4` |
| 21 | `theorem` | [inverse_run](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Round/Variant2e03444285c5b244906ae8d0dd57e2e64bb1c15e3a90cd5e25ea9629ed91dd4a.lean/declarations/inverse-run--3d09b803f5f33d13c72894fe.md) | 254 | `result-track:3d09b803f5f33d13c72894fe846df51062e3bcb3772f20f282cb4564b83d5998` |
| 22 | `theorem` | [run_inverse](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Round/Variant2e03444285c5b244906ae8d0dd57e2e64bb1c15e3a90cd5e25ea9629ed91dd4a.lean/declarations/run-inverse--8aa6ac8a795253bccf22bdda.md) | 259 | `result-track:8aa6ac8a795253bccf22bdda3efa43246a72b080b639f6da5fdcacae1c6da858` |
| 23 | `def` | [ofPower](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Round/Variant2e03444285c5b244906ae8d0dd57e2e64bb1c15e3a90cd5e25ea9629ed91dd4a.lean/declarations/ofpower--1251f23a7313ec706b24893c.md) | 265 | `declaration-track:1251f23a7313ec706b24893c682ef813c9dc8cf1b999c9ddcf8e14a5f41869df` |
| 24 | `theorem` | [ofPower_bijective](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Round/Variant2e03444285c5b244906ae8d0dd57e2e64bb1c15e3a90cd5e25ea9629ed91dd4a.lean/declarations/ofpower-bijective--5a819c0b427375f080e64967.md) | 279 | `result-track:5a819c0b427375f080e64967e18bc625537d98041010a3667f6b8b19b6ba2e45` |
| 25 | `def` | [transportToBits](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Round/Variant2e03444285c5b244906ae8d0dd57e2e64bb1c15e3a90cd5e25ea9629ed91dd4a.lean/declarations/transporttobits--2f4bee86284b648e99c5433f.md) | 294 | `declaration-track:2f4bee86284b648e99c5433f08dbe795a63d45e6e24a3a93c9f4d5cacdf45fbb` |
| 26 | `theorem` | [transportToBits_bijective](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Round/Variant2e03444285c5b244906ae8d0dd57e2e64bb1c15e3a90cd5e25ea9629ed91dd4a.lean/declarations/transporttobits-bijective--c45ec4db4f59300dce39680e.md) | 302 | `result-track:c45ec4db4f59300dce39680e317e637179fadc7e006a98955495acda076f25a4` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
