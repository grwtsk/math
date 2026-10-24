# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.ZagierTwoSquares.Variantf2b939d74df2649dc2011bdaa8f6756d6b2f8271ee6eddf9662737ed83e62d18

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1a99d2537806ac146f77e005bac58fef72f6d7c7",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/ZagierTwoSquares/Variantf2b939d74df2649dc2011bdaa8f6756d6b2f8271ee6eddf9662737ed83e62d18.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ZagierTwoSquares/Variantf2b939d74df2649dc2011bdaa8f6756d6b2f8271ee6eddf9662737ed83e62d18.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ZagierTwoSquares/Variantf2b939d74df2649dc2011bdaa8f6756d6b2f8271ee6eddf9662737ed83e62d18.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1a99d2537806ac146f77e005bac58fef72f6d7c7`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/ZagierTwoSquares/Variantf2b939d74df2649dc2011bdaa8f6756d6b2f8271ee6eddf9662737ed83e62d18.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/ZagierTwoSquares/Variantf2b939d74df2649dc2011bdaa8f6756d6b2f8271ee6eddf9662737ed83e62d18.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [zagierSet](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ZagierTwoSquares/Variantf2b939d74df2649dc2011bdaa8f6756d6b2f8271ee6eddf9662737ed83e62d18.lean/declarations/zagierset--0d02f33a630076f21d4264b6.md) | 49 | `declaration-track:0d02f33a630076f21d4264b69ab63da5431cebb5179cd69766ae3d882c2456a4` |
| 2 | `lemma` | [zagierSet_lower_bound](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ZagierTwoSquares/Variantf2b939d74df2649dc2011bdaa8f6756d6b2f8271ee6eddf9662737ed83e62d18.lean/declarations/zagierset-lower-bound--476a40f7014ee03ff64f8f5d.md) | 51 | `result-track:476a40f7014ee03ff64f8f5d5f7f6987eb9866df25feda2ac7c39923158424e4` |
| 3 | `lemma` | [zagierSet_upper_bound](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ZagierTwoSquares/Variantf2b939d74df2649dc2011bdaa8f6756d6b2f8271ee6eddf9662737ed83e62d18.lean/declarations/zagierset-upper-bound--4a3235ef72cb0c3b1ca5ef94.md) | 68 | `result-track:4a3235ef72cb0c3b1ca5ef94cf81ee85787af4287133285ac0ca935ccb5ac483` |
| 4 | `lemma` | [zagierSet_subset](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ZagierTwoSquares/Variantf2b939d74df2649dc2011bdaa8f6756d6b2f8271ee6eddf9662737ed83e62d18.lean/declarations/zagierset-subset--0c7d5b5019b0df791b41d75e.md) | 74 | `result-track:0c7d5b5019b0df791b41d75edfbf8cff5d58beacae23948387cf0a08c122d2cc` |
| 5 | `instance` | [(anonymous)](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ZagierTwoSquares/Variantf2b939d74df2649dc2011bdaa8f6756d6b2f8271ee6eddf9662737ed83e62d18.lean/declarations/instance--83d8f059e6c4cb32abb1ea0d.md) | 80 | `declaration-track:83d8f059e6c4cb32abb1ea0d43c731e015c475c4885c8ae049f71be65f8b8ea3` |
| 6 | `def` | [obvInvo](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ZagierTwoSquares/Variantf2b939d74df2649dc2011bdaa8f6756d6b2f8271ee6eddf9662737ed83e62d18.lean/declarations/obvinvo--155e17e800e1129e38129c17.md) | 93 | `declaration-track:155e17e800e1129e38129c1788d33e53911750186dd5009ed698784931d5ca84` |
| 7 | `theorem` | [obvInvo_sq](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ZagierTwoSquares/Variantf2b939d74df2649dc2011bdaa8f6756d6b2f8271ee6eddf9662737ed83e62d18.lean/declarations/obvinvo-sq--9e6b490ad5b8d7fa0c77d7da.md) | 97 | `result-track:9e6b490ad5b8d7fa0c77d7da914b8faea776dbc5c680529aa7e5ed4e5698fd84` |
| 8 | `theorem` | [sq_add_sq_of_nonempty_fixedPoints](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ZagierTwoSquares/Variantf2b939d74df2649dc2011bdaa8f6756d6b2f8271ee6eddf9662737ed83e62d18.lean/declarations/sq-add-sq-of-nonempty-fixedpoints--640579edde28433edc0811de.md) | 101 | `result-track:640579edde28433edc0811de848f6cdb64e4208ddc5435cff6856ebe3430727a` |
| 9 | `def` | [complexInvo](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ZagierTwoSquares/Variantf2b939d74df2649dc2011bdaa8f6756d6b2f8271ee6eddf9662737ed83e62d18.lean/declarations/complexinvo--d836f51fb818c18c6cac10d7.md) | 113 | `declaration-track:d836f51fb818c18c6cac10d7e6f4d36f86d0412dbb5a65a7f967294782dc46ee` |
| 10 | `theorem` | [complexInvo_sq](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ZagierTwoSquares/Variantf2b939d74df2649dc2011bdaa8f6756d6b2f8271ee6eddf9662737ed83e62d18.lean/declarations/complexinvo-sq--c8a2a17ab8ee8e852d5a9fca.md) | 129 | `result-track:c8a2a17ab8ee8e852d5a9fcacad283b92ff251913e581ace20e45ea27fa1eaf6` |
| 11 | `theorem` | [eq_of_mem_fixedPoints](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ZagierTwoSquares/Variantf2b939d74df2649dc2011bdaa8f6756d6b2f8271ee6eddf9662737ed83e62d18.lean/declarations/eq-of-mem-fixedpoints--0dc3428ee5a0641e1150aca6.md) | 156 | `result-track:0dc3428ee5a0641e1150aca6c8115dd1a869cc4fdcadb059016cf5ba40599af9` |
| 12 | `def` | [singletonFixedPoint](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ZagierTwoSquares/Variantf2b939d74df2649dc2011bdaa8f6756d6b2f8271ee6eddf9662737ed83e62d18.lean/declarations/singletonfixedpoint--d8d1970b533e511875d65224.md) | 182 | `declaration-track:d8d1970b533e511875d65224c4872291d6e8b771f5d2aa5c806df1a6bd4e60fc` |
| 13 | `theorem` | [card_fixedPoints_eq_one](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ZagierTwoSquares/Variantf2b939d74df2649dc2011bdaa8f6756d6b2f8271ee6eddf9662737ed83e62d18.lean/declarations/card-fixedpoints-eq-one--c8ff469811338ed55dfb33da.md) | 187 | `result-track:c8ff469811338ed55dfb33da1ea93986fa3efd5abc8cd9021ac40745de0bf9e5` |
| 14 | `theorem` | [Nat.Prime.sq_add_sq'](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ZagierTwoSquares/Variantf2b939d74df2649dc2011bdaa8f6756d6b2f8271ee6eddf9662737ed83e62d18.lean/declarations/nat-prime-sq-add-sq--2d5d322610a632fc93486ddb.md) | 206 | `result-track:2d5d322610a632fc93486ddbad8e5af097450bd5b46d5bb9a7ffb934c24a9bd6` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
