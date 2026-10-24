# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Lex.Variantd1b3f2ab22fc0b6628041329600515ed90f843da14c66608557ac8b20bd618b5

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c24c947bbab158977493ec769d9440081fa24e8e",
  "lexical_observation_count": 21,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lex/Variantd1b3f2ab22fc0b6628041329600515ed90f843da14c66608557ac8b20bd618b5.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lex/Variantd1b3f2ab22fc0b6628041329600515ed90f843da14c66608557ac8b20bd618b5.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lex/Variantd1b3f2ab22fc0b6628041329600515ed90f843da14c66608557ac8b20bd618b5.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c24c947bbab158977493ec769d9440081fa24e8e`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lex/Variantd1b3f2ab22fc0b6628041329600515ed90f843da14c66608557ac8b20bd618b5.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lex/Variantd1b3f2ab22fc0b6628041329600515ed90f843da14c66608557ac8b20bd618b5.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Order.RelClasses` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [Lex](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lex/Variantd1b3f2ab22fc0b6628041329600515ed90f843da14c66608557ac8b20bd618b5.lean/declarations/lex--5e25524302a867737e015494.md) | 51 | `declaration-track:5e25524302a867737e015494e1637e473fc7e94b160eb54bf5eb0415d364de97` |
| 2 | `theorem` | [cons_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lex/Variantd1b3f2ab22fc0b6628041329600515ed90f843da14c66608557ac8b20bd618b5.lean/declarations/cons-iff--5b663024f1891ccad22a37cd.md) | 62 | `result-track:5b663024f1891ccad22a37cdb92f5fe4979fb926e9aca2cb6f2e2a598ce9940a` |
| 3 | `theorem` | [not_nil_right](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lex/Variantd1b3f2ab22fc0b6628041329600515ed90f843da14c66608557ac8b20bd618b5.lean/declarations/not-nil-right--3c632ffa29b1deef244c5b8b.md) | 68 | `result-track:3c632ffa29b1deef244c5b8b12bcce9acd9ab41a44cc19e2b0dad88646c34384` |
| 4 | `theorem` | [nil_left_or_eq_nil](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lex/Variantd1b3f2ab22fc0b6628041329600515ed90f843da14c66608557ac8b20bd618b5.lean/declarations/nil-left-or-eq-nil--e8ecabbc95e4111bab66db87.md) | 72 | `result-track:e8ecabbc95e4111bab66db872ad9af1a079b07aa39af5037040dce20a83425fe` |
| 5 | `theorem` | [singleton_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lex/Variantd1b3f2ab22fc0b6628041329600515ed90f843da14c66608557ac8b20bd618b5.lean/declarations/singleton-iff--f9fdc9dad66655a7653ce7a3.md) | 78 | `result-track:f9fdc9dad66655a7653ce7a36d59f3224322577c7e32b30242ca25a3574314ac` |
| 6 | `instance` | [isOrderConnected](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lex/Variantd1b3f2ab22fc0b6628041329600515ed90f843da14c66608557ac8b20bd618b5.lean/declarations/isorderconnected--7a63728fc6548547e463d8db.md) | 81 | `declaration-track:7a63728fc6548547e463d8db09ed348c60ec281674b148a9a95df81f3459b0fb` |
| 7 | `instance` | [isTrichotomous](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lex/Variantd1b3f2ab22fc0b6628041329600515ed90f843da14c66608557ac8b20bd618b5.lean/declarations/istrichotomous--c7d2b947416923199075ef33.md) | 100 | `declaration-track:c7d2b947416923199075ef338ef77ba35bd5ea5fa333c7548040e0e0e6eb072b` |
| 8 | `instance` | [isAsymm](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lex/Variantd1b3f2ab22fc0b6628041329600515ed90f843da14c66608557ac8b20bd618b5.lean/declarations/isasymm--a8b5890c9097236561c5afe9.md) | 117 | `declaration-track:a8b5890c9097236561c5afe9501b3b9ff636f110fa2efec73d5e0af9287a5547` |
| 9 | `instance` | [isStrictTotalOrder](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lex/Variantd1b3f2ab22fc0b6628041329600515ed90f843da14c66608557ac8b20bd618b5.lean/declarations/isstricttotalorder--dadb97e6e7e87493abd52172.md) | 129 | `declaration-track:dadb97e6e7e87493abd5217239167ea610ff294e56a6d3991c25690dd80a0c1c` |
| 10 | `instance` | [decidableRel](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lex/Variantd1b3f2ab22fc0b6628041329600515ed90f843da14c66608557ac8b20bd618b5.lean/declarations/decidablerel--3d73bfbf6c0b74577c867555.md) | 134 | `declaration-track:3d73bfbf6c0b74577c867555cb64ec8470894f82eadee883c3aa71837d0ed13a` |
| 11 | `theorem` | [append_right](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lex/Variantd1b3f2ab22fc0b6628041329600515ed90f843da14c66608557ac8b20bd618b5.lean/declarations/append-right--d0e1ef34772802bfaeee4674.md) | 148 | `result-track:d0e1ef34772802bfaeee4674875cd699ba29109e4ae95de5adc4f66e201f733f` |
| 12 | `theorem` | [append_left](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lex/Variantd1b3f2ab22fc0b6628041329600515ed90f843da14c66608557ac8b20bd618b5.lean/declarations/append-left--a77ec9e5b688ac30ca9a7147.md) | 154 | `result-track:a77ec9e5b688ac30ca9a7147443b8d915421fd76434e8c87d652b97ded89a3ca` |
| 13 | `theorem` | [imp](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lex/Variantd1b3f2ab22fc0b6628041329600515ed90f843da14c66608557ac8b20bd618b5.lean/declarations/imp--2eb64d9468cf5e0110824a5c.md) | 159 | `result-track:2eb64d9468cf5e0110824a5c1be181d556e71237149b11d12831d95add7b49c8` |
| 14 | `theorem` | [to_ne](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lex/Variantd1b3f2ab22fc0b6628041329600515ed90f843da14c66608557ac8b20bd618b5.lean/declarations/to-ne--8b5c5541643b6a46b4a832bf.md) | 165 | `result-track:8b5c5541643b6a46b4a832bf84a480f9a4f97197e6dd22d957dd43e134d12342` |
| 15 | `theorem` | [_root_.GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Lex.Variantf76015e4b3ac64122cc697865a4cba9f8070b0bf930f41191c3cf30697145205.Decidable.List.Lex.ne_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lex/Variantd1b3f2ab22fc0b6628041329600515ed90f843da14c66608557ac8b20bd618b5.lean/declarations/root-grwtsk-combinatoricsanddiscretemathematics-theoreticalalgorithms-le--db675a4a09f328ed1a4562c4.md) | 170 | `result-track:db675a4a09f328ed1a4562c420a4cfe66c6a612f0f7c517fe383af238e878527` |
| 16 | `theorem` | [ne_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lex/Variantd1b3f2ab22fc0b6628041329600515ed90f843da14c66608557ac8b20bd618b5.lean/declarations/ne-iff--e0f1be5cee94eb7f1c12d447.md) | 184 | `result-track:e0f1be5cee94eb7f1c12d4470581a6079f0d64636ebf82c6f2003ae22b0b8a70` |
| 17 | `instance` | [LT'](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lex/Variantd1b3f2ab22fc0b6628041329600515ed90f843da14c66608557ac8b20bd618b5.lean/declarations/lt--dbaa9533b1f31975ea0a00aa.md) | 192 | `declaration-track:dbaa9533b1f31975ea0a00aad4c4d62e62eb7faf759e48b2ebf2a39a5c3200e2` |
| 18 | `theorem` | [nil_lt_cons](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lex/Variantd1b3f2ab22fc0b6628041329600515ed90f843da14c66608557ac8b20bd618b5.lean/declarations/nil-lt-cons--cf1551acb901f1430f71c09c.md) | 196 | `result-track:cf1551acb901f1430f71c09cdd1b4d0c272c2bf623b9f16f7956f070a1739c02` |
| 19 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lex/Variantd1b3f2ab22fc0b6628041329600515ed90f843da14c66608557ac8b20bd618b5.lean/declarations/instance--11a1f4605a3f3cc26dc95313.md) | 200 | `declaration-track:11a1f4605a3f3cc26dc953136eaf53dc9da4301bef3ed953e4c4867f50d3ac70` |
| 20 | `instance` | [LE'](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lex/Variantd1b3f2ab22fc0b6628041329600515ed90f843da14c66608557ac8b20bd618b5.lean/declarations/le--deaa07b2c7eef6738474fdfa.md) | 204 | `declaration-track:deaa07b2c7eef6738474fdfa6eda14158dc282e67f3dd64c2b6804be6db57c57` |
| 21 | `theorem` | [lt_iff_lex_lt](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lex/Variantd1b3f2ab22fc0b6628041329600515ed90f843da14c66608557ac8b20bd618b5.lean/declarations/lt-iff-lex-lt--b204b1829807401c2b8ac782.md) | 208 | `result-track:b204b1829807401c2b8ac782825c12d78c52858a8742acfc1e0b858cab17d834` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
