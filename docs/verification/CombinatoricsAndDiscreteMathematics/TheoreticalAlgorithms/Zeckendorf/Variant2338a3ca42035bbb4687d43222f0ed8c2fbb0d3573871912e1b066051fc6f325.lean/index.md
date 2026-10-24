# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Zeckendorf.Variant2338a3ca42035bbb4687d43222f0ed8c2fbb0d3573871912e1b066051fc6f325

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8e0217a7dc2f1830d81f33ecae712e68ac06f03d",
  "lexical_observation_count": 24,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Zeckendorf/Variant2338a3ca42035bbb4687d43222f0ed8c2fbb0d3573871912e1b066051fc6f325.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Zeckendorf/Variant2338a3ca42035bbb4687d43222f0ed8c2fbb0d3573871912e1b066051fc6f325.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Zeckendorf/Variant2338a3ca42035bbb4687d43222f0ed8c2fbb0d3573871912e1b066051fc6f325.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8e0217a7dc2f1830d81f33ecae712e68ac06f03d`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Zeckendorf/Variant2338a3ca42035bbb4687d43222f0ed8c2fbb0d3573871912e1b066051fc6f325.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Zeckendorf/Variant2338a3ca42035bbb4687d43222f0ed8c2fbb0d3573871912e1b066051fc6f325.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Nat.Fib.Basic` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Zeckendorf/Variant2338a3ca42035bbb4687d43222f0ed8c2fbb0d3573871912e1b066051fc6f325.lean/declarations/instance--56fa81bdcfc900f1c25d6aa5.md) | 37 | `declaration-track:56fa81bdcfc900f1c25d6aa59ca0666c820f6091f4f5b99e67b9809cf8197684` |
| 2 | `def` | [IsZeckendorfRep](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Zeckendorf/Variant2338a3ca42035bbb4687d43222f0ed8c2fbb0d3573871912e1b066051fc6f325.lean/declarations/iszeckendorfrep--4d201de5b558be645135c805.md) | 48 | `declaration-track:4d201de5b558be645135c805108551642efa29327aa009bf2d6195b359d7a973` |
| 3 | `lemma` | [IsZeckendorfRep_nil](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Zeckendorf/Variant2338a3ca42035bbb4687d43222f0ed8c2fbb0d3573871912e1b066051fc6f325.lean/declarations/iszeckendorfrep-nil--8f44488f5d8021956ba4f83d.md) | 51 | `result-track:8f44488f5d8021956ba4f83d82755e8f4105fa2eff4bbb611458af2b82e40d99` |
| 4 | `lemma` | [IsZeckendorfRep.sum_fib_lt](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Zeckendorf/Variant2338a3ca42035bbb4687d43222f0ed8c2fbb0d3573871912e1b066051fc6f325.lean/declarations/iszeckendorfrep-sum-fib-lt--ab89ac835a2b38e329e3a9d8.md) | 53 | `result-track:ab89ac835a2b38e329e3a9d8ab2facf7cbc5b98c230ad0705fddd82a805fa9f6` |
| 5 | `def` | [greatestFib](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Zeckendorf/Variant2338a3ca42035bbb4687d43222f0ed8c2fbb0d3573871912e1b066051fc6f325.lean/declarations/greatestfib--d9fe587f995fce1d708efdb9.md) | 73 | `declaration-track:d9fe587f995fce1d708efdb9234c671dd1e797a776e2a8b399bf82acdb5bd247` |
| 6 | `lemma` | [fib_greatestFib_le](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Zeckendorf/Variant2338a3ca42035bbb4687d43222f0ed8c2fbb0d3573871912e1b066051fc6f325.lean/declarations/fib-greatestfib-le--ef55b8f0ed79dac277e8a174.md) | 75 | `result-track:ef55b8f0ed79dac277e8a17457fd7e0a0d00e05ec9f63976a91797d149dcc806` |
| 7 | `lemma` | [greatestFib_mono](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Zeckendorf/Variant2338a3ca42035bbb4687d43222f0ed8c2fbb0d3573871912e1b066051fc6f325.lean/declarations/greatestfib-mono--da2eed6290768d45def63694.md) | 78 | `result-track:da2eed6290768d45def63694fcdd9b15c2d031ed5b9230c2b339f78ce05b7571` |
| 8 | `lemma` | [le_greatestFib](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Zeckendorf/Variant2338a3ca42035bbb4687d43222f0ed8c2fbb0d3573871912e1b066051fc6f325.lean/declarations/le-greatestfib--6bb9531fd438d3fdf9e6c088.md) | 81 | `result-track:6bb9531fd438d3fdf9e6c0886004de3308da4ca3f7ac630b7cf3fbe138f9a233` |
| 9 | `lemma` | [greatestFib_lt](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Zeckendorf/Variant2338a3ca42035bbb4687d43222f0ed8c2fbb0d3573871912e1b066051fc6f325.lean/declarations/greatestfib-lt--89b004b8b76e5c71455abf8a.md) | 85 | `result-track:89b004b8b76e5c71455abf8aea4ce3d3630deb8deea5399a0666e3c417923c8f` |
| 10 | `lemma` | [lt_fib_greatestFib_add_one](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Zeckendorf/Variant2338a3ca42035bbb4687d43222f0ed8c2fbb0d3573871912e1b066051fc6f325.lean/declarations/lt-fib-greatestfib-add-one--e08bbedf5a88ec3824e60ac8.md) | 88 | `result-track:e08bbedf5a88ec3824e60ac84b81c78469cdb435464f1d94d8810ba44803b9d2` |
| 11 | `lemma` | [greatestFib_fib](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Zeckendorf/Variant2338a3ca42035bbb4687d43222f0ed8c2fbb0d3573871912e1b066051fc6f325.lean/declarations/greatestfib-fib--7a257090450949b9f1ccb3e8.md) | 91 | `result-track:7a257090450949b9f1ccb3e8ecf732e109858a6cdaa66e2a4896c78943a39f89` |
| 12 | `lemma` | [greatestFib_eq_zero](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Zeckendorf/Variant2338a3ca42035bbb4687d43222f0ed8c2fbb0d3573871912e1b066051fc6f325.lean/declarations/greatestfib-eq-zero--56cd53a618dd2b75979313c8.md) | 96 | `result-track:56cd53a618dd2b75979313c83d60015811f251ea9780e60f4e8e5f84bf58b563` |
| 13 | `lemma` | [greatestFib_ne_zero](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Zeckendorf/Variant2338a3ca42035bbb4687d43222f0ed8c2fbb0d3573871912e1b066051fc6f325.lean/declarations/greatestfib-ne-zero--89ded4ca4cbb208e148eb40a.md) | 99 | `result-track:89ded4ca4cbb208e148eb40a8b07dd8b17efc751e6c9eb83a1fc9560d3d6345e` |
| 14 | `lemma` | [greatestFib_pos](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Zeckendorf/Variant2338a3ca42035bbb4687d43222f0ed8c2fbb0d3573871912e1b066051fc6f325.lean/declarations/greatestfib-pos--edbbe017c2d05c192350a093.md) | 101 | `result-track:edbbe017c2d05c192350a09307e56ec765bfe5af4bb456a2c9a721fa078b8523` |
| 15 | `lemma` | [greatestFib_sub_fib_greatestFib_le_greatestFib](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Zeckendorf/Variant2338a3ca42035bbb4687d43222f0ed8c2fbb0d3573871912e1b066051fc6f325.lean/declarations/greatestfib-sub-fib-greatestfib-le-greatestfib--dee569cff83b3b8ae8063cc8.md) | 103 | `result-track:dee569cff83b3b8ae8063cc86b7cdddd03a2b54fb572dd812f9b3ee9bbd36033` |
| 16 | `lemma` | [zeckendorf_aux](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Zeckendorf/Variant2338a3ca42035bbb4687d43222f0ed8c2fbb0d3573871912e1b066051fc6f325.lean/declarations/zeckendorf-aux--cbb7992bec2aaf1789a3ce32.md) | 111 | `result-track:cbb7992bec2aaf1789a3ce322839fe15b1c94fd8cca05d7bbcf670709b1ca5df` |
| 17 | `def` | [zeckendorf](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Zeckendorf/Variant2338a3ca42035bbb4687d43222f0ed8c2fbb0d3573871912e1b066051fc6f325.lean/declarations/zeckendorf--2e774441dd09578a01ef21bd.md) | 118 | `declaration-track:2e774441dd09578a01ef21bdc52a18465eee40baaf9e85ec5b25ce77516c17b8` |
| 18 | `lemma` | [zeckendorf_zero](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Zeckendorf/Variant2338a3ca42035bbb4687d43222f0ed8c2fbb0d3573871912e1b066051fc6f325.lean/declarations/zeckendorf-zero--41284f0bd7d9677a033511a9.md) | 126 | `result-track:41284f0bd7d9677a033511a998f4f5a13a96e989c79d3c78291a31f39fe8f8ff` |
| 19 | `lemma` | [zeckendorf_succ](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Zeckendorf/Variant2338a3ca42035bbb4687d43222f0ed8c2fbb0d3573871912e1b066051fc6f325.lean/declarations/zeckendorf-succ--bd34ee3cb9aa73097fcf97e0.md) | 128 | `result-track:bd34ee3cb9aa73097fcf97e0a6ad1fdfb9f387a99ec1782c4e83777eb93d07f4` |
| 20 | `lemma` | [zeckendorf_of_pos](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Zeckendorf/Variant2338a3ca42035bbb4687d43222f0ed8c2fbb0d3573871912e1b066051fc6f325.lean/declarations/zeckendorf-of-pos--2dbd4f28458808799eb39d63.md) | 132 | `result-track:2dbd4f28458808799eb39d633fbe1aaaf84db12b8a3a3372e9bbdf35291025ff` |
| 21 | `lemma` | [isZeckendorfRep_zeckendorf](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Zeckendorf/Variant2338a3ca42035bbb4687d43222f0ed8c2fbb0d3573871912e1b066051fc6f325.lean/declarations/iszeckendorfrep-zeckendorf--5ba81076e318c7de79c76d1c.md) | 136 | `result-track:5ba81076e318c7de79c76d1cda14025057e549a07352bb5a6c54aa67c954e957` |
| 22 | `lemma` | [zeckendorf_sum_fib](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Zeckendorf/Variant2338a3ca42035bbb4687d43222f0ed8c2fbb0d3573871912e1b066051fc6f325.lean/declarations/zeckendorf-sum-fib--b01114e1a703387d524e9008.md) | 150 | `result-track:b01114e1a703387d524e9008127f4c76f7362b7a3b0a274af6965c81c28e4763` |
| 23 | `lemma` | [sum_zeckendorf_fib](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Zeckendorf/Variant2338a3ca42035bbb4687d43222f0ed8c2fbb0d3573871912e1b066051fc6f325.lean/declarations/sum-zeckendorf-fib--a4c623a6d5b9ed137430f2f2.md) | 167 | `result-track:a4c623a6d5b9ed137430f2f2dd9990bda4bddda5e6435db07945a030e7d2fe17` |
| 24 | `def` | [zeckendorfEquiv](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Zeckendorf/Variant2338a3ca42035bbb4687d43222f0ed8c2fbb0d3573871912e1b066051fc6f325.lean/declarations/zeckendorfequiv--9bb45d667805eaa548f4ad43.md) | 173 | `declaration-track:9bb45d667805eaa548f4ad432f3b14a0350eb364c091f018cd2c79872372cb03` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
