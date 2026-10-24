# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.WithZero.Varianta887367e04407a9c64736f5841c2464fe867ccdfb607c90146459062b0233f40

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e4cfabef178e00a6c93f0a8829a067e90e17153c",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/WithZero/Varianta887367e04407a9c64736f5841c2464fe867ccdfb607c90146459062b0233f40.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/WithZero/Varianta887367e04407a9c64736f5841c2464fe867ccdfb607c90146459062b0233f40.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/WithZero/Varianta887367e04407a9c64736f5841c2464fe867ccdfb607c90146459062b0233f40.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e4cfabef178e00a6c93f0a8829a067e90e17153c`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/WithZero/Varianta887367e04407a9c64736f5841c2464fe867ccdfb607c90146459062b0233f40.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/WithZero/Varianta887367e04407a9c64736f5841c2464fe867ccdfb607c90146459062b0233f40.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.NNReal.Defs` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [toNNReal](../../../../mathematics/CombinatoricsAndDiscreteMathematics/WithZero/Varianta887367e04407a9c64736f5841c2464fe867ccdfb607c90146459062b0233f40.lean/declarations/tonnreal--b46b95a4d1e9034a092629e4.md) | 49 | `declaration-track:b46b95a4d1e9034a092629e436378b7a7fdb1637b3ca96d5fe93f644e2c9f93b` |
| 2 | `theorem` | [toNNReal_pos_apply](../../../../mathematics/CombinatoricsAndDiscreteMathematics/WithZero/Varianta887367e04407a9c64736f5841c2464fe867ccdfb607c90146459062b0233f40.lean/declarations/tonnreal-pos-apply--a26aa45da592a961fa540f2a.md) | 67 | `result-track:a26aa45da592a961fa540f2a5bdd58168b2730726b79fb11898277ed206f5a28` |
| 3 | `theorem` | [toNNReal_neg_apply](../../../../mathematics/CombinatoricsAndDiscreteMathematics/WithZero/Varianta887367e04407a9c64736f5841c2464fe867ccdfb607c90146459062b0233f40.lean/declarations/tonnreal-neg-apply--d53a06566010b3f43874edc1.md) | 72 | `result-track:d53a06566010b3f43874edc14c09ff493ffd160f0502407d3d90290bfba64eba` |
| 4 | `theorem` | [toNNReal_ne_zero](../../../../mathematics/CombinatoricsAndDiscreteMathematics/WithZero/Varianta887367e04407a9c64736f5841c2464fe867ccdfb607c90146459062b0233f40.lean/declarations/tonnreal-ne-zero--76d664518d2a231902ec2081.md) | 80 | `result-track:76d664518d2a231902ec2081b6d8d8152148a479da7975169dddb5f3edc3618e` |
| 5 | `theorem` | [toNNReal_pos](../../../../mathematics/CombinatoricsAndDiscreteMathematics/WithZero/Varianta887367e04407a9c64736f5841c2464fe867ccdfb607c90146459062b0233f40.lean/declarations/tonnreal-pos--e9217fb994693cd724ce0f01.md) | 84 | `result-track:e9217fb994693cd724ce0f019a9725fb45559592dfe3cfdefeaddc4fad7bd720` |
| 6 | `theorem` | [toNNReal_strictMono](../../../../mathematics/CombinatoricsAndDiscreteMathematics/WithZero/Varianta887367e04407a9c64736f5841c2464fe867ccdfb607c90146459062b0233f40.lean/declarations/tonnreal-strictmono--60e8e10da8ee56c1a8f18fdb.md) | 88 | `result-track:60e8e10da8ee56c1a8f18fdb6baacd95fed8c3c4181287ee6597ce1cf9d0bc2f` |
| 7 | `theorem` | [toNNReal_eq_one_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/WithZero/Varianta887367e04407a9c64736f5841c2464fe867ccdfb607c90146459062b0233f40.lean/declarations/tonnreal-eq-one-iff--c017b8258744be2a2d95cb1e.md) | 100 | `result-track:c017b8258744be2a2d95cb1e87ab5fa2710c7c0776ebfa189254af9b131afce2` |
| 8 | `theorem` | [toNNReal_lt_one_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/WithZero/Varianta887367e04407a9c64736f5841c2464fe867ccdfb607c90146459062b0233f40.lean/declarations/tonnreal-lt-one-iff--b9817ca51b7adddc362e42fd.md) | 108 | `result-track:b9817ca51b7adddc362e42fd211b44247e79274042f3f9d9a7cd79d82d560111` |
| 9 | `theorem` | [toNNReal_le_one_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/WithZero/Varianta887367e04407a9c64736f5841c2464fe867ccdfb607c90146459062b0233f40.lean/declarations/tonnreal-le-one-iff--21888a25e265302b5d26305d.md) | 112 | `result-track:21888a25e265302b5d26305dafa9c3c75656233ef77ee38fbd42843305cb142b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
