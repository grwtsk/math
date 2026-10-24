# Verification target: GRWTSK.Algebra.Imo2024Q1.Variantf52fb91baf3375a9402b62b9566e7cfebda6cb523a171c5cb52504826595eaaa

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a44c97d1eff00f97d8851576fea953c8f88e29df",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Imo2024Q1/Variantf52fb91baf3375a9402b62b9566e7cfebda6cb523a171c5cb52504826595eaaa.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Imo2024Q1/Variantf52fb91baf3375a9402b62b9566e7cfebda6cb523a171c5cb52504826595eaaa.lean/index.md) · [Full source](../../../../mathematics/Algebra/Imo2024Q1/Variantf52fb91baf3375a9402b62b9566e7cfebda6cb523a171c5cb52504826595eaaa.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a44c97d1eff00f97d8851576fea953c8f88e29df`.

Source path: `GRWTSK/Algebra/Imo2024Q1/Variantf52fb91baf3375a9402b62b9566e7cfebda6cb523a171c5cb52504826595eaaa.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Imo2024Q1/Variantf52fb91baf3375a9402b62b9566e7cfebda6cb523a171c5cb52504826595eaaa.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.BigOperators.Intervals` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.BigOperators.Ring.Finset` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.BigOperators.Group.LocallyFinite` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.ToIntervalMod` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Real.Archimedean` — import line 15; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Peel` — import line 16; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Recall` — import line 17; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [Condition](../../../../mathematics/Algebra/Imo2024Q1/Variantf52fb91baf3375a9402b62b9566e7cfebda6cb523a171c5cb52504826595eaaa.lean/declarations/condition--f85e07c5809822f89da9e9fd.md) | 42 | `declaration-track:f85e07c5809822f89da9e9fd9e3fb87a18f457255e2b74b21b5abbcfc4081269` |
| 2 | `def` | [solutionSet](../../../../mathematics/Algebra/Imo2024Q1/Variantf52fb91baf3375a9402b62b9566e7cfebda6cb523a171c5cb52504826595eaaa.lean/declarations/solutionset--ec671f336091ab08db60ba37.md) | 45 | `declaration-track:ec671f336091ab08db60ba373430080f8aa219eb6e6f24b367b3c4755f4e9638` |
| 3 | `lemma` | [condition_two_mul_int](../../../../mathematics/Algebra/Imo2024Q1/Variantf52fb91baf3375a9402b62b9566e7cfebda6cb523a171c5cb52504826595eaaa.lean/declarations/condition-two-mul-int--cfac30f49e9a503da221e83d.md) | 47 | `result-track:cfac30f49e9a503da221e83d98b8ddccfa11afe0ecfa86663edbeaaadf425c63` |
| 4 | `lemma` | [condition_sub_two_mul_int_iff](../../../../mathematics/Algebra/Imo2024Q1/Variantf52fb91baf3375a9402b62b9566e7cfebda6cb523a171c5cb52504826595eaaa.lean/declarations/condition-sub-two-mul-int-iff--186544212c9ec9c53e5246b6.md) | 57 | `result-track:186544212c9ec9c53e5246b67a9561c1034aed478b598e1d8beeb6c5a5cfc9d3` |
| 5 | `lemma` | [condition_toIcoMod_iff](../../../../mathematics/Algebra/Imo2024Q1/Variantf52fb91baf3375a9402b62b9566e7cfebda6cb523a171c5cb52504826595eaaa.lean/declarations/condition-toicomod-iff--5511ad48a429ddc309c88a8e.md) | 68 | `result-track:5511ad48a429ddc309c88a8e825be47b58079428262712cbfcd127ec06446a5e` |
| 6 | `lemma` | [mem_Ico_one_of_mem_Ioo](../../../../mathematics/Algebra/Imo2024Q1/Variantf52fb91baf3375a9402b62b9566e7cfebda6cb523a171c5cb52504826595eaaa.lean/declarations/mem-ico-one-of-mem-ioo--8fc8b01407767930659d312e.md) | 77 | `result-track:8fc8b01407767930659d312ed9c5e5eae8da4eba6af6c5bb59f1915312d43f03` |
| 7 | `lemma` | [mem_Ico_n_of_mem_Ioo](../../../../mathematics/Algebra/Imo2024Q1/Variantf52fb91baf3375a9402b62b9566e7cfebda6cb523a171c5cb52504826595eaaa.lean/declarations/mem-ico-n-of-mem-ioo--bc6ef5701df6490990adc7e7.md) | 107 | `result-track:bc6ef5701df6490990adc7e7681a0a4adf70ef7c63cbfe6e029379b6373844ed` |
| 8 | `lemma` | [not_condition_of_mem_Ioo](../../../../mathematics/Algebra/Imo2024Q1/Variantf52fb91baf3375a9402b62b9566e7cfebda6cb523a171c5cb52504826595eaaa.lean/declarations/not-condition-of-mem-ioo--bc51be71122ef241b9d2a4cb.md) | 155 | `result-track:bc51be71122ef241b9d2a4cb37e3e2d02d36e0f7090056feb614476e336d0d89` |
| 9 | `lemma` | [condition_iff_of_mem_Ico](../../../../mathematics/Algebra/Imo2024Q1/Variantf52fb91baf3375a9402b62b9566e7cfebda6cb523a171c5cb52504826595eaaa.lean/declarations/condition-iff-of-mem-ico--83da1503dea0441b21a75106.md) | 169 | `result-track:83da1503dea0441b21a75106a1042ff15089aded31a746aef953ecafcc387954` |
| 10 | `theorem` | [result](../../../../mathematics/Algebra/Imo2024Q1/Variantf52fb91baf3375a9402b62b9566e7cfebda6cb523a171c5cb52504826595eaaa.lean/declarations/result--6ee1b913b39721e7df9dc8ab.md) | 182 | `result-track:6ee1b913b39721e7df9dc8abf6c9c116fc62166557fca25297b7a6a1359778f5` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
