# Verification target: GRWTSK.Algebra.NegOnePow.Variant091591a0143cc1b6a46777fef488a12b512966aab0054b2e0315a4266a304f78

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5f79d903ee5f5cc399e1cc39d5f66cb17188a007",
  "lexical_observation_count": 20,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/NegOnePow/Variant091591a0143cc1b6a46777fef488a12b512966aab0054b2e0315a4266a304f78.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/NegOnePow/Variant091591a0143cc1b6a46777fef488a12b512966aab0054b2e0315a4266a304f78.lean/index.md) · [Full source](../../../../mathematics/Algebra/NegOnePow/Variant091591a0143cc1b6a46777fef488a12b512966aab0054b2e0315a4266a304f78.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5f79d903ee5f5cc399e1cc39d5f66cb17188a007`.

Source path: `GRWTSK/Algebra/NegOnePow/Variant091591a0143cc1b6a46777fef488a12b512966aab0054b2e0315a4266a304f78.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/NegOnePow/Variant091591a0143cc1b6a46777fef488a12b512966aab0054b2e0315a4266a304f78.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Ring.Int.Parity` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Ring.Int.Units` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Data.ZMod.IntUnitsPower` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [negOnePow](../../../../mathematics/Algebra/NegOnePow/Variant091591a0143cc1b6a46777fef488a12b512966aab0054b2e0315a4266a304f78.lean/declarations/negonepow--d203007a9c719c0f8da2dcab.md) | 34 | `declaration-track:d203007a9c719c0f8da2dcabb59d74c6a3ae1e251454f44b7feb5291f244d20a` |
| 2 | `lemma` | [negOnePow_def](../../../../mathematics/Algebra/NegOnePow/Variant091591a0143cc1b6a46777fef488a12b512966aab0054b2e0315a4266a304f78.lean/declarations/negonepow-def--4d8b15f583b6f867e983d358.md) | 36 | `result-track:4d8b15f583b6f867e983d358416cb60ca4cea5e24d80d6c3fa3a5f1141944750` |
| 3 | `lemma` | [negOnePow_add](../../../../mathematics/Algebra/NegOnePow/Variant091591a0143cc1b6a46777fef488a12b512966aab0054b2e0315a4266a304f78.lean/declarations/negonepow-add--7c4f4021bc53d8fd387c5b3f.md) | 38 | `result-track:7c4f4021bc53d8fd387c5b3f61a2081f8a91b71adc20da8cf89d16e370dceb67` |
| 4 | `lemma` | [negOnePow_zero](../../../../mathematics/Algebra/NegOnePow/Variant091591a0143cc1b6a46777fef488a12b512966aab0054b2e0315a4266a304f78.lean/declarations/negonepow-zero--41ee1ca2dcac08bdc8f829d4.md) | 43 | `result-track:41ee1ca2dcac08bdc8f829d4c8f6c63f0b275750fa8aa536f0efb918ee306eaa` |
| 5 | `lemma` | [negOnePow_one](../../../../mathematics/Algebra/NegOnePow/Variant091591a0143cc1b6a46777fef488a12b512966aab0054b2e0315a4266a304f78.lean/declarations/negonepow-one--2db8e337507a695dc6e979a5.md) | 46 | `result-track:2db8e337507a695dc6e979a5983a7911269da537e0e09ee3abdd72e24bc36f25` |
| 6 | `lemma` | [negOnePow_succ](../../../../mathematics/Algebra/NegOnePow/Variant091591a0143cc1b6a46777fef488a12b512966aab0054b2e0315a4266a304f78.lean/declarations/negonepow-succ--c6d1df06f040c08e9cf87637.md) | 48 | `result-track:c6d1df06f040c08e9cf8763742fcbeb19847d0c630ce85e26ac4f8b55970a0a7` |
| 7 | `lemma` | [negOnePow_even](../../../../mathematics/Algebra/NegOnePow/Variant091591a0143cc1b6a46777fef488a12b512966aab0054b2e0315a4266a304f78.lean/declarations/negonepow-even--844750f18807d8710043b20b.md) | 51 | `result-track:844750f18807d8710043b20bea27c5e6f48ed2e45a6261b240bcf5b7bd02f97a` |
| 8 | `lemma` | [negOnePow_two_mul](../../../../mathematics/Algebra/NegOnePow/Variant091591a0143cc1b6a46777fef488a12b512966aab0054b2e0315a4266a304f78.lean/declarations/negonepow-two-mul--fd3893961f859b5bb3fe1778.md) | 56 | `result-track:fd3893961f859b5bb3fe1778dafbeb0450611dd73fc38ac80c2cfba6bae5e4f8` |
| 9 | `lemma` | [negOnePow_odd](../../../../mathematics/Algebra/NegOnePow/Variant091591a0143cc1b6a46777fef488a12b512966aab0054b2e0315a4266a304f78.lean/declarations/negonepow-odd--e4e1c1fe6c9c5ae8bdfcc8b3.md) | 59 | `result-track:e4e1c1fe6c9c5ae8bdfcc8b3f46c7b779dd7c24fa0f3846ab2ebc717e08ac34c` |
| 10 | `lemma` | [negOnePow_two_mul_add_one](../../../../mathematics/Algebra/NegOnePow/Variant091591a0143cc1b6a46777fef488a12b512966aab0054b2e0315a4266a304f78.lean/declarations/negonepow-two-mul-add-one--135bad113348d31b0d9ff547.md) | 64 | `result-track:135bad113348d31b0d9ff5473f59aee227005d70666cb73b73fd5d6e8b0bbf58` |
| 11 | `lemma` | [negOnePow_eq_one_iff](../../../../mathematics/Algebra/NegOnePow/Variant091591a0143cc1b6a46777fef488a12b512966aab0054b2e0315a4266a304f78.lean/declarations/negonepow-eq-one-iff--720fb0b2e3baf411f1e56884.md) | 67 | `result-track:720fb0b2e3baf411f1e56884dd52fa74d25fbb2011fb8dd007df0b2e6dfceba1` |
| 12 | `lemma` | [negOnePow_eq_neg_one_iff](../../../../mathematics/Algebra/NegOnePow/Variant091591a0143cc1b6a46777fef488a12b512966aab0054b2e0315a4266a304f78.lean/declarations/negonepow-eq-neg-one-iff--1007377a1bc5a7ae7566a6fb.md) | 76 | `result-track:1007377a1bc5a7ae7566a6fba1507d0af1285697845f4f708760523e3d6a72e0` |
| 13 | `theorem` | [abs_negOnePow](../../../../mathematics/Algebra/NegOnePow/Variant091591a0143cc1b6a46777fef488a12b512966aab0054b2e0315a4266a304f78.lean/declarations/abs-negonepow--848ba2f1e4bb0dd3e4071135.md) | 86 | `result-track:848ba2f1e4bb0dd3e4071135825b3c5951579fbf6544457319e2c57a1dff09ee` |
| 14 | `lemma` | [negOnePow_neg](../../../../mathematics/Algebra/NegOnePow/Variant091591a0143cc1b6a46777fef488a12b512966aab0054b2e0315a4266a304f78.lean/declarations/negonepow-neg--2f1a106bff9e9cb92df5beed.md) | 90 | `result-track:2f1a106bff9e9cb92df5beed388112775b8f66eadcc17471306c2c9bb18f7c5f` |
| 15 | `lemma` | [negOnePow_abs](../../../../mathematics/Algebra/NegOnePow/Variant091591a0143cc1b6a46777fef488a12b512966aab0054b2e0315a4266a304f78.lean/declarations/negonepow-abs--f00d5e4863d37ae3a6466c48.md) | 95 | `result-track:f00d5e4863d37ae3a6466c480f1852e9c420e5227e6f09a4124692227cddb034` |
| 16 | `lemma` | [negOnePow_sub](../../../../mathematics/Algebra/NegOnePow/Variant091591a0143cc1b6a46777fef488a12b512966aab0054b2e0315a4266a304f78.lean/declarations/negonepow-sub--51fa961fc1f641896b8a7922.md) | 98 | `result-track:51fa961fc1f641896b8a79226c2018b8435c38869c3bccfb3955c37035a32a6d` |
| 17 | `lemma` | [negOnePow_eq_iff](../../../../mathematics/Algebra/NegOnePow/Variant091591a0143cc1b6a46777fef488a12b512966aab0054b2e0315a4266a304f78.lean/declarations/negonepow-eq-iff--32eb54bbff8f877fa4445d6d.md) | 102 | `result-track:32eb54bbff8f877fa4445d6dc14e6b8eac9975c92c4c5d221d2a8b3422db6567` |
| 18 | `lemma` | [negOnePow_mul_self](../../../../mathematics/Algebra/NegOnePow/Variant091591a0143cc1b6a46777fef488a12b512966aab0054b2e0315a4266a304f78.lean/declarations/negonepow-mul-self--c783f2d9284c56568889d6e9.md) | 113 | `result-track:c783f2d9284c56568889d6e9b53143ca907d07f691f8be35a28778a5f046cd2f` |
| 19 | `lemma` | [cast_negOnePow_natCast](../../../../mathematics/Algebra/NegOnePow/Variant091591a0143cc1b6a46777fef488a12b512966aab0054b2e0315a4266a304f78.lean/declarations/cast-negonepow-natcast--cd064302ab0aa9ea5a2a53d0.md) | 116 | `result-track:cd064302ab0aa9ea5a2a53d007153e312c296fbe8322fa76b518c40abbc638d8` |
| 20 | `lemma` | [coe_negOnePow_natCast](../../../../mathematics/Algebra/NegOnePow/Variant091591a0143cc1b6a46777fef488a12b512966aab0054b2e0315a4266a304f78.lean/declarations/coe-negonepow-natcast--59b38b5ec7288ab48114c313.md) | 119 | `result-track:59b38b5ec7288ab48114c3133e338d7b77bda1282027c8bd840d4d30d772ce2f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
