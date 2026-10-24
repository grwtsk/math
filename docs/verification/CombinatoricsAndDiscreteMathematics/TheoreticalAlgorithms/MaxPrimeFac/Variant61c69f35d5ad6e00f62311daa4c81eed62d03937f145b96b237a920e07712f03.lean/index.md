# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.MaxPrimeFac.Variant61c69f35d5ad6e00f62311daa4c81eed62d03937f145b96b237a920e07712f03

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9b803f01a82b91a439d93213fa15d124293d0217",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MaxPrimeFac/Variant61c69f35d5ad6e00f62311daa4c81eed62d03937f145b96b237a920e07712f03.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MaxPrimeFac/Variant61c69f35d5ad6e00f62311daa4c81eed62d03937f145b96b237a920e07712f03.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MaxPrimeFac/Variant61c69f35d5ad6e00f62311daa4c81eed62d03937f145b96b237a920e07712f03.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9b803f01a82b91a439d93213fa15d124293d0217`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MaxPrimeFac/Variant61c69f35d5ad6e00f62311daa4c81eed62d03937f145b96b237a920e07712f03.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MaxPrimeFac/Variant61c69f35d5ad6e00f62311daa4c81eed62d03937f145b96b237a920e07712f03.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [maxPrimeFac](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MaxPrimeFac/Variant61c69f35d5ad6e00f62311daa4c81eed62d03937f145b96b237a920e07712f03.lean/declarations/maxprimefac--27f9dfa0ed84e0ea71411c73.md) | 39 | `declaration-track:27f9dfa0ed84e0ea71411c7394a56c89b78c0ca656de59cf7399e4daec32c509` |
| 2 | `lemma` | [maxPrimeFac_zero](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MaxPrimeFac/Variant61c69f35d5ad6e00f62311daa4c81eed62d03937f145b96b237a920e07712f03.lean/declarations/maxprimefac-zero--7cf63596dd96c58493bfaf07.md) | 41 | `result-track:7cf63596dd96c58493bfaf071abf09fe205957f8f395b84c146233dbfe9a2367` |
| 3 | `lemma` | [maxPrimeFac_one](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MaxPrimeFac/Variant61c69f35d5ad6e00f62311daa4c81eed62d03937f145b96b237a920e07712f03.lean/declarations/maxprimefac-one--5462ada34bdec75c558bf064.md) | 42 | `result-track:5462ada34bdec75c558bf064679bf29dd4e2ae6c5ddb91477d4f3b35e6c4ed4f` |
| 4 | `lemma` | [prime_maxPrimeFac_of_one_lt](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MaxPrimeFac/Variant61c69f35d5ad6e00f62311daa4c81eed62d03937f145b96b237a920e07712f03.lean/declarations/prime-maxprimefac-of-one-lt--18f0c16dc724eab22eab22b8.md) | 44 | `result-track:18f0c16dc724eab22eab22b849bf640de1e055633925436617296ea79d633da2` |
| 5 | `lemma` | [maxPrimeFac_dvd](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MaxPrimeFac/Variant61c69f35d5ad6e00f62311daa4c81eed62d03937f145b96b237a920e07712f03.lean/declarations/maxprimefac-dvd--2d49be798b494589ffdd2c5e.md) | 50 | `result-track:2d49be798b494589ffdd2c5ebc4e88be4e9593fa11ffcc686d086edc51167a96` |
| 6 | `lemma` | [le_maxPrimeFac](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MaxPrimeFac/Variant61c69f35d5ad6e00f62311daa4c81eed62d03937f145b96b237a920e07712f03.lean/declarations/le-maxprimefac--020adc2814ed5b1d9f0c727b.md) | 58 | `result-track:020adc2814ed5b1d9f0c727b47ce07a832461f352e48c9c7ee43ad441463633e` |
| 7 | `lemma` | [isGreatest_maxPrimeFac](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MaxPrimeFac/Variant61c69f35d5ad6e00f62311daa4c81eed62d03937f145b96b237a920e07712f03.lean/declarations/isgreatest-maxprimefac--ac688bbcd1a8a567f2ad85ce.md) | 66 | `result-track:ac688bbcd1a8a567f2ad85ce75facddde7ad67a0b84603acbad14008dab8e511` |
| 8 | `lemma` | [isLUB_maxPrimeFac](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MaxPrimeFac/Variant61c69f35d5ad6e00f62311daa4c81eed62d03937f145b96b237a920e07712f03.lean/declarations/islub-maxprimefac--058d76c38cdde613470e22c9.md) | 73 | `result-track:058d76c38cdde613470e22c9914721903e32c22bf1caec30df2a9f8970e1b510` |
| 9 | `lemma` | [maxPrimeFac_le_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MaxPrimeFac/Variant61c69f35d5ad6e00f62311daa4c81eed62d03937f145b96b237a920e07712f03.lean/declarations/maxprimefac-le-iff--71ddfe517c5024f065a9a2f3.md) | 77 | `result-track:71ddfe517c5024f065a9a2f3ce68c5844365e36f794f0bc4c9653a4099786bbc` |
| 10 | `lemma` | [one_le_maxPrimeFac_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MaxPrimeFac/Variant61c69f35d5ad6e00f62311daa4c81eed62d03937f145b96b237a920e07712f03.lean/declarations/one-le-maxprimefac-iff--e82e93df46b280318a5cecc5.md) | 82 | `result-track:e82e93df46b280318a5cecc58443198c6c818cca21ae53d86b55f0c1f3cc48c6` |
| 11 | `lemma` | [one_lt_maxPrimeFac_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MaxPrimeFac/Variant61c69f35d5ad6e00f62311daa4c81eed62d03937f145b96b237a920e07712f03.lean/declarations/one-lt-maxprimefac-iff--7af0a797d2adf4ec0edb7e11.md) | 87 | `result-track:7af0a797d2adf4ec0edb7e11af42e279ddbf0b7b620244db8ccdc7033c350b25` |
| 12 | `lemma` | [maxPrimeFac_mul](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MaxPrimeFac/Variant61c69f35d5ad6e00f62311daa4c81eed62d03937f145b96b237a920e07712f03.lean/declarations/maxprimefac-mul--444ffabbc24ac4d43d058541.md) | 93 | `result-track:444ffabbc24ac4d43d058541aacba7181198ddd296bdde7c50c2cff4b6315cee` |
| 13 | `lemma` | [maxPrimeFac_pow](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MaxPrimeFac/Variant61c69f35d5ad6e00f62311daa4c81eed62d03937f145b96b237a920e07712f03.lean/declarations/maxprimefac-pow--472d5bea29b211d542b47265.md) | 108 | `result-track:472d5bea29b211d542b47265704317d360bdc31d7190b6b92b7e1b21a591a598` |
| 14 | `lemma` | [Prime.maxPrimeFac_eq_self](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MaxPrimeFac/Variant61c69f35d5ad6e00f62311daa4c81eed62d03937f145b96b237a920e07712f03.lean/declarations/prime-maxprimefac-eq-self--2a1ddbaa9be63cf5115ff42c.md) | 116 | `result-track:2a1ddbaa9be63cf5115ff42ccb0554c0c234c6727d66d0e8c3eac008d3ae4c7b` |
| 15 | `lemma` | [maxPrimeFac_eq_self_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MaxPrimeFac/Variant61c69f35d5ad6e00f62311daa4c81eed62d03937f145b96b237a920e07712f03.lean/declarations/maxprimefac-eq-self-iff--cf0d359079353392c7e79282.md) | 123 | `result-track:cf0d359079353392c7e792823d721c30b6136ec5fa4ed9ba6ac5bc8cb4b39df8` |
| 16 | `lemma` | [maxPrimeFac_le](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MaxPrimeFac/Variant61c69f35d5ad6e00f62311daa4c81eed62d03937f145b96b237a920e07712f03.lean/declarations/maxprimefac-le--ead17c09893377ee98d980f0.md) | 135 | `result-track:ead17c09893377ee98d980f0c9dfb9b18e5bf559087381951747807cca4a15c0` |
| 17 | `lemma` | [maxPrimeFac_eq_sSup](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MaxPrimeFac/Variant61c69f35d5ad6e00f62311daa4c81eed62d03937f145b96b237a920e07712f03.lean/declarations/maxprimefac-eq-ssup--dc56a17f3329c3c0cc63709e.md) | 141 | `result-track:dc56a17f3329c3c0cc63709ea2b615d14212d563859e829cda785e2b9b8134e9` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
