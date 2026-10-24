# Verification target: GRWTSK.NumberTheory.AutomorphicForms.ModularForms.UniformConvergence.Variant8a2298bcfa90cbd4898e238a0682dbd6569d697c7f7802d81b3d26128de09332

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f8f2c11e167477ed5a48678c5acf6e98eac293db",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AutomorphicForms/ModularForms/UniformConvergence/Variant8a2298bcfa90cbd4898e238a0682dbd6569d697c7f7802d81b3d26128de09332.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/NumberTheory/AutomorphicForms/ModularForms/UniformConvergence/Variant8a2298bcfa90cbd4898e238a0682dbd6569d697c7f7802d81b3d26128de09332.lean/index.md) · [Full source](../../../../../../mathematics/NumberTheory/AutomorphicForms/ModularForms/UniformConvergence/Variant8a2298bcfa90cbd4898e238a0682dbd6569d697c7f7802d81b3d26128de09332.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f8f2c11e167477ed5a48678c5acf6e98eac293db`.

Source path: `GRWTSK/NumberTheory/AutomorphicForms/ModularForms/UniformConvergence/Variant8a2298bcfa90cbd4898e238a0682dbd6569d697c7f7802d81b3d26128de09332.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AutomorphicForms/ModularForms/UniformConvergence/Variant8a2298bcfa90cbd4898e238a0682dbd6569d697c7f7802d81b3d26128de09332.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Complex.UpperHalfPlane.Topology` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.NormedSpace.FunctionSeries` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.PSeries` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Interval.Finset.Box` — import line 15; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.ModularForms.EisensteinSeries.Defs` — import line 16; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [norm_eq_max_natAbs](../../../../../../mathematics/NumberTheory/AutomorphicForms/ModularForms/UniformConvergence/Variant8a2298bcfa90cbd4898e238a0682dbd6569d697c7f7802d81b3d26128de09332.lean/declarations/norm-eq-max-natabs--76c31ee3a4bfaf2dc8a1818b.md) | 49 | `result-track:76c31ee3a4bfaf2dc8a1818b8681e6b8ea34ac0d66f0095b275647e4c7db95d9` |
| 2 | `def` | [r1](../../../../../../mathematics/NumberTheory/AutomorphicForms/ModularForms/UniformConvergence/Variant8a2298bcfa90cbd4898e238a0682dbd6569d697c7f7802d81b3d26128de09332.lean/declarations/r1--9933a808f649906072d7ad0a.md) | 58 | `declaration-track:9933a808f649906072d7ad0a8ccdd6a3e2de7768724870816b5c8245653f14db` |
| 3 | `lemma` | [r1_eq](../../../../../../mathematics/NumberTheory/AutomorphicForms/ModularForms/UniformConvergence/Variant8a2298bcfa90cbd4898e238a0682dbd6569d697c7f7802d81b3d26128de09332.lean/declarations/r1-eq--780d538fb1cc31ee82ed998c.md) | 60 | `result-track:780d538fb1cc31ee82ed998c5e5686841ce893b6741d6ebb0adbad716372fabf` |
| 4 | `lemma` | [r1_pos](../../../../../../mathematics/NumberTheory/AutomorphicForms/ModularForms/UniformConvergence/Variant8a2298bcfa90cbd4898e238a0682dbd6569d697c7f7802d81b3d26128de09332.lean/declarations/r1-pos--cbb6ec9938c233c2aa4414cb.md) | 63 | `result-track:cbb6ec9938c233c2aa4414cbeadab0b1079acdde74e97741d46c3debc8285aea` |
| 5 | `lemma` | [r1_aux_bound](../../../../../../mathematics/NumberTheory/AutomorphicForms/ModularForms/UniformConvergence/Variant8a2298bcfa90cbd4898e238a0682dbd6569d697c7f7802d81b3d26128de09332.lean/declarations/r1-aux-bound--3a45e439ad682b5bf29659fb.md) | 68 | `result-track:3a45e439ad682b5bf29659fb15528b8f2c706f2d1770b45b3cd8b31d2d914933` |
| 6 | `def` | [r](../../../../../../mathematics/NumberTheory/AutomorphicForms/ModularForms/UniformConvergence/Variant8a2298bcfa90cbd4898e238a0682dbd6569d697c7f7802d81b3d26128de09332.lean/declarations/r--e692fa4d5725960f396184f4.md) | 79 | `declaration-track:e692fa4d5725960f396184f4cc756ffe79994baa444cbaf55d7358bdcd41a017` |
| 7 | `lemma` | [r_pos](../../../../../../mathematics/NumberTheory/AutomorphicForms/ModularForms/UniformConvergence/Variant8a2298bcfa90cbd4898e238a0682dbd6569d697c7f7802d81b3d26128de09332.lean/declarations/r-pos--7efe0b13ad512312d7c837e5.md) | 81 | `result-track:7efe0b13ad512312d7c837e504789c0b1b4762f36c188c89d9bfa4b402feee5e` |
| 8 | `lemma` | [r_lower_bound_on_verticalStrip](../../../../../../mathematics/NumberTheory/AutomorphicForms/ModularForms/UniformConvergence/Variant8a2298bcfa90cbd4898e238a0682dbd6569d697c7f7802d81b3d26128de09332.lean/declarations/r-lower-bound-on-verticalstrip--601acae9d16ed076a4897a1e.md) | 84 | `result-track:601acae9d16ed076a4897a1ee1f44d046de0905ea2591bf5be7b91dcab4b77d7` |
| 9 | `lemma` | [auxbound1](../../../../../../mathematics/NumberTheory/AutomorphicForms/ModularForms/UniformConvergence/Variant8a2298bcfa90cbd4898e238a0682dbd6569d697c7f7802d81b3d26128de09332.lean/declarations/auxbound1--5b9a95e625d98ea785ed1bff.md) | 93 | `result-track:5b9a95e625d98ea785ed1bfff76efffafe995e1bb56486e270f501b5504fcc49` |
| 10 | `lemma` | [auxbound2](../../../../../../mathematics/NumberTheory/AutomorphicForms/ModularForms/UniformConvergence/Variant8a2298bcfa90cbd4898e238a0682dbd6569d697c7f7802d81b3d26128de09332.lean/declarations/auxbound2--eae4dd2dbf0c4c274276de5c.md) | 101 | `result-track:eae4dd2dbf0c4c274276de5cbd09ef8a31e5d716acaa74fd811b378d844c2349` |
| 11 | `lemma` | [div_max_sq_ge_one](../../../../../../mathematics/NumberTheory/AutomorphicForms/ModularForms/UniformConvergence/Variant8a2298bcfa90cbd4898e238a0682dbd6569d697c7f7802d81b3d26128de09332.lean/declarations/div-max-sq-ge-one--e2c5d1a380a74879198d19e5.md) | 107 | `result-track:e2c5d1a380a74879198d19e5fdc9042c88d40bbe4caf58ac40fe8d333162e956` |
| 12 | `lemma` | [r_mul_max_le](../../../../../../mathematics/NumberTheory/AutomorphicForms/ModularForms/UniformConvergence/Variant8a2298bcfa90cbd4898e238a0682dbd6569d697c7f7802d81b3d26128de09332.lean/declarations/r-mul-max-le--147e431e0df04dce7b1f16ed.md) | 121 | `result-track:147e431e0df04dce7b1f16ed3457abeef4702e50d3943292a223cbda378bc801` |
| 13 | `lemma` | [summand_bound](../../../../../../mathematics/NumberTheory/AutomorphicForms/ModularForms/UniformConvergence/Variant8a2298bcfa90cbd4898e238a0682dbd6569d697c7f7802d81b3d26128de09332.lean/declarations/summand-bound--1eaad833816bd9044fb52ff7.md) | 133 | `result-track:1eaad833816bd9044fb52ff7ffbdba059d352148802285cfaa25abf7c685e5f1` |
| 14 | `lemma` | [summand_bound_of_mem_verticalStrip](../../../../../../mathematics/NumberTheory/AutomorphicForms/ModularForms/UniformConvergence/Variant8a2298bcfa90cbd4898e238a0682dbd6569d697c7f7802d81b3d26128de09332.lean/declarations/summand-bound-of-mem-verticalstrip--48ab05c13ecb17e6037150f6.md) | 145 | `result-track:48ab05c13ecb17e6037150f6980b02665da6bc048f45fdd7dbe656d415d2f1b7` |
| 15 | `lemma` | [summable_one_div_norm_rpow](../../../../../../mathematics/NumberTheory/AutomorphicForms/ModularForms/UniformConvergence/Variant8a2298bcfa90cbd4898e238a0682dbd6569d697c7f7802d81b3d26128de09332.lean/declarations/summable-one-div-norm-rpow--2acebe598ce445fe7b6d054b.md) | 158 | `result-track:2acebe598ce445fe7b6d054beed7ffe515b6c1deb390212f491fc65d9d6f7b91` |
| 16 | `theorem` | [eisensteinSeries_tendstoLocallyUniformly](../../../../../../mathematics/NumberTheory/AutomorphicForms/ModularForms/UniformConvergence/Variant8a2298bcfa90cbd4898e238a0682dbd6569d697c7f7802d81b3d26128de09332.lean/declarations/eisensteinseries-tendstolocallyuniformly--fb49a60663b48bc936602072.md) | 177 | `result-track:fb49a60663b48bc9366020725ce16c1226b79ded76acc2126a210b2e973cc000` |
| 17 | `lemma` | [eisensteinSeries_tendstoLocallyUniformlyOn](../../../../../../mathematics/NumberTheory/AutomorphicForms/ModularForms/UniformConvergence/Variant8a2298bcfa90cbd4898e238a0682dbd6569d697c7f7802d81b3d26128de09332.lean/declarations/eisensteinseries-tendstolocallyuniformlyon--5b519eb3b27f24d13625037b.md) | 193 | `result-track:5b519eb3b27f24d13625037b37693af6ba4da813ef3dc92f739d01fd351a8e70` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
