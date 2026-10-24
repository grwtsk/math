# Verification target: GRWTSK.Analysis.AsymptoticAnalysis.CompareExp.Variant5c72573030ca157748b5a99652c3baaf5f4b987650cd1bdb0d54a3ea694d00b5

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "122b458ae1a11a0811df73d714b1180c3e49a1b3",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/AsymptoticAnalysis/CompareExp/Variant5c72573030ca157748b5a99652c3baaf5f4b987650cd1bdb0d54a3ea694d00b5.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/AsymptoticAnalysis/CompareExp/Variant5c72573030ca157748b5a99652c3baaf5f4b987650cd1bdb0d54a3ea694d00b5.lean/index.md) · [Full source](../../../../../mathematics/Analysis/AsymptoticAnalysis/CompareExp/Variant5c72573030ca157748b5a99652c3baaf5f4b987650cd1bdb0d54a3ea694d00b5.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `122b458ae1a11a0811df73d714b1180c3e49a1b3`.

Source path: `GRWTSK/Analysis/AsymptoticAnalysis/CompareExp/Variant5c72573030ca157748b5a99652c3baaf5f4b987650cd1bdb0d54a3ea694d00b5.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/AsymptoticAnalysis/CompareExp/Variant5c72573030ca157748b5a99652c3baaf5f4b987650cd1bdb0d54a3ea694d00b5.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.SpecialFunctions.Pow.Asymptotics` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Asymptotics.AsymptoticEquivalent` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Asymptotics.SpecificAsymptotics` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [IsExpCmpFilter](../../../../../mathematics/Analysis/AsymptoticAnalysis/CompareExp/Variant5c72573030ca157748b5a99652c3baaf5f4b987650cd1bdb0d54a3ea694d00b5.lean/declarations/isexpcmpfilter--b08dcad05579015c4d2f74d5.md) | 45 | `declaration-track:b08dcad05579015c4d2f74d54f021e0177f0f4ce00226aab1d4eda9264debd20` |
| 2 | `theorem` | [of_isBigO_im_re_rpow](../../../../../mathematics/Analysis/AsymptoticAnalysis/CompareExp/Variant5c72573030ca157748b5a99652c3baaf5f4b987650cd1bdb0d54a3ea694d00b5.lean/declarations/of-isbigo-im-re-rpow--dc668a69cde55783f8253497.md) | 59 | `result-track:dc668a69cde55783f8253497849c236a3d002f68db8a806316ca60c608ad8667` |
| 3 | `theorem` | [of_isBigO_im_re_pow](../../../../../mathematics/Analysis/AsymptoticAnalysis/CompareExp/Variant5c72573030ca157748b5a99652c3baaf5f4b987650cd1bdb0d54a3ea694d00b5.lean/declarations/of-isbigo-im-re-pow--99570c76fba52a1ed6a6a90b.md) | 72 | `result-track:99570c76fba52a1ed6a6a90baaa421c6f1e0d423e862a0210563adb41aa71776` |
| 4 | `theorem` | [of_boundedUnder_abs_im](../../../../../mathematics/Analysis/AsymptoticAnalysis/CompareExp/Variant5c72573030ca157748b5a99652c3baaf5f4b987650cd1bdb0d54a3ea694d00b5.lean/declarations/of-boundedunder-abs-im--bc48ac7d6e0d99f41f9b459d.md) | 78 | `result-track:bc48ac7d6e0d99f41f9b459d13d1e2f07d4f01a9ad8369f9cadbb442feece3f5` |
| 5 | `theorem` | [of_boundedUnder_im](../../../../../mathematics/Analysis/AsymptoticAnalysis/CompareExp/Variant5c72573030ca157748b5a99652c3baaf5f4b987650cd1bdb0d54a3ea694d00b5.lean/declarations/of-boundedunder-im--4c48c159efde0cd28413fa95.md) | 85 | `result-track:4c48c159efde0cd28413fa9594f3626fd30e189caf92b5fdf530738007128252` |
| 6 | `theorem` | [eventually_ne](../../../../../mathematics/Analysis/AsymptoticAnalysis/CompareExp/Variant5c72573030ca157748b5a99652c3baaf5f4b987650cd1bdb0d54a3ea694d00b5.lean/declarations/eventually-ne--3265945690aec8f65e92a9fe.md) | 95 | `result-track:3265945690aec8f65e92a9feea398d0453d67ae8eac064ece33311d0fc6a3a12` |
| 7 | `theorem` | [tendsto_abs_re](../../../../../mathematics/Analysis/AsymptoticAnalysis/CompareExp/Variant5c72573030ca157748b5a99652c3baaf5f4b987650cd1bdb0d54a3ea694d00b5.lean/declarations/tendsto-abs-re--e77a537c913af7b83729961f.md) | 99 | `result-track:e77a537c913af7b83729961f9aec5f6df9c4964a78c6b03cc0b6aacc4277ba24` |
| 8 | `theorem` | [tendsto_abs](../../../../../mathematics/Analysis/AsymptoticAnalysis/CompareExp/Variant5c72573030ca157748b5a99652c3baaf5f4b987650cd1bdb0d54a3ea694d00b5.lean/declarations/tendsto-abs--4c1cc5993c394cbe4d8a66c6.md) | 103 | `result-track:4c1cc5993c394cbe4d8a66c6c32f887fe5a94e50acc7847c51c6329463d1d463` |
| 9 | `theorem` | [isLittleO_log_re_re](../../../../../mathematics/Analysis/AsymptoticAnalysis/CompareExp/Variant5c72573030ca157748b5a99652c3baaf5f4b987650cd1bdb0d54a3ea694d00b5.lean/declarations/islittleo-log-re-re--19a90129741e6469eeb0e6e7.md) | 107 | `result-track:19a90129741e6469eeb0e6e79b4b4173d056fb0e043e307e906c72b9b7256d57` |
| 10 | `theorem` | [isLittleO_im_pow_exp_re](../../../../../mathematics/Analysis/AsymptoticAnalysis/CompareExp/Variant5c72573030ca157748b5a99652c3baaf5f4b987650cd1bdb0d54a3ea694d00b5.lean/declarations/islittleo-im-pow-exp-re--a6898c122d43dd87c4ed7af6.md) | 111 | `result-track:a6898c122d43dd87c4ed7af65e2e24f4804cfac2bdf63df4daef7a8642ed096d` |
| 11 | `theorem` | [abs_im_pow_eventuallyLE_exp_re](../../../../../mathematics/Analysis/AsymptoticAnalysis/CompareExp/Variant5c72573030ca157748b5a99652c3baaf5f4b987650cd1bdb0d54a3ea694d00b5.lean/declarations/abs-im-pow-eventuallyle-exp-re--7838acf0f08e370042d2a52c.md) | 126 | `result-track:7838acf0f08e370042d2a52c4a50e195bc3d3a10d6729d57f37ac7e41068b29b` |
| 12 | `theorem` | [isLittleO_log_abs_re](../../../../../mathematics/Analysis/AsymptoticAnalysis/CompareExp/Variant5c72573030ca157748b5a99652c3baaf5f4b987650cd1bdb0d54a3ea694d00b5.lean/declarations/islittleo-log-abs-re--ad1b710a95f024a8e29a4aa9.md) | 134 | `result-track:ad1b710a95f024a8e29a4aa9f0f935654d1e9b803b4a3629ba59ca90e3b15c9e` |
| 13 | `theorem` | [isLittleO_cpow_exp](../../../../../mathematics/Analysis/AsymptoticAnalysis/CompareExp/Variant5c72573030ca157748b5a99652c3baaf5f4b987650cd1bdb0d54a3ea694d00b5.lean/declarations/islittleo-cpow-exp--d885565259b7dc7ab6b22287.md) | 170 | `result-track:d885565259b7dc7ab6b222875ba8cd75cc96e3a887ec90f74df6324ce346b7d3` |
| 14 | `theorem` | [isLittleO_cpow_mul_exp](../../../../../mathematics/Analysis/AsymptoticAnalysis/CompareExp/Variant5c72573030ca157748b5a99652c3baaf5f4b987650cd1bdb0d54a3ea694d00b5.lean/declarations/islittleo-cpow-mul-exp--bc265e48e8f620aa3012ab2c.md) | 188 | `result-track:bc265e48e8f620aa3012ab2c50d19e9e81c3173dc06b0f6f704cdff5b88cba56` |
| 15 | `theorem` | [isLittleO_exp_cpow](../../../../../mathematics/Analysis/AsymptoticAnalysis/CompareExp/Variant5c72573030ca157748b5a99652c3baaf5f4b987650cd1bdb0d54a3ea694d00b5.lean/declarations/islittleo-exp-cpow--70c20a43081c0603e7eaf5fc.md) | 205 | `result-track:70c20a43081c0603e7eaf5fcc8bed5d7cef6ad0d021396a7043cabb0fa20a0dd` |
| 16 | `theorem` | [isLittleO_pow_mul_exp](../../../../../mathematics/Analysis/AsymptoticAnalysis/CompareExp/Variant5c72573030ca157748b5a99652c3baaf5f4b987650cd1bdb0d54a3ea694d00b5.lean/declarations/islittleo-pow-mul-exp--cd3244d39b9959c6c9a21db1.md) | 212 | `result-track:cd3244d39b9959c6c9a21db17986619c745338604d06c2d88c26e32b2f5a43e0` |
| 17 | `theorem` | [isLittleO_zpow_mul_exp](../../../../../mathematics/Analysis/AsymptoticAnalysis/CompareExp/Variant5c72573030ca157748b5a99652c3baaf5f4b987650cd1bdb0d54a3ea694d00b5.lean/declarations/islittleo-zpow-mul-exp--ddbe1ca1a726a57ec277854d.md) | 220 | `result-track:ddbe1ca1a726a57ec277854d09c9deb142979c8893c4cad4e6e294c230984c6d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
