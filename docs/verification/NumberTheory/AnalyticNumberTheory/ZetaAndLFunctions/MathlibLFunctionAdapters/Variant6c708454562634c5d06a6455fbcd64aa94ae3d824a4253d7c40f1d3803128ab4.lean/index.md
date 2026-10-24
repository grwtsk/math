# Verification target: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.MathlibLFunctionAdapters.Variant6c708454562634c5d06a6455fbcd64aa94ae3d824a4253d7c40f1d3803128ab4

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "df91d7524159d3a3852e3f9fb1c787f8d4426abf",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/MathlibLFunctionAdapters/Variant6c708454562634c5d06a6455fbcd64aa94ae3d824a4253d7c40f1d3803128ab4.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/MathlibLFunctionAdapters/Variant6c708454562634c5d06a6455fbcd64aa94ae3d824a4253d7c40f1d3803128ab4.lean/index.md) · [Full source](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/MathlibLFunctionAdapters/Variant6c708454562634c5d06a6455fbcd64aa94ae3d824a4253d7c40f1d3803128ab4.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `df91d7524159d3a3852e3f9fb1c787f8d4426abf`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/MathlibLFunctionAdapters/Variant6c708454562634c5d06a6455fbcd64aa94ae3d824a4253d7c40f1d3803128ab4.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/MathlibLFunctionAdapters/Variant6c708454562634c5d06a6455fbcd64aa94ae3d824a4253d7c40f1d3803128ab4.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Tactic` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [canonicalCompletedLFunction](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/MathlibLFunctionAdapters/Variant6c708454562634c5d06a6455fbcd64aa94ae3d824a4253d7c40f1d3803128ab4.lean/declarations/canonicalcompletedlfunction--dcd9cbc14b0298f0a110529f.md) | 42 | `declaration-track:dcd9cbc14b0298f0a110529fccb3b22e577bfe0134a73660c4e56f6bf362ab76` |
| 2 | `theorem` | [canonicalCompletedLFunction_one_sub](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/MathlibLFunctionAdapters/Variant6c708454562634c5d06a6455fbcd64aa94ae3d824a4253d7c40f1d3803128ab4.lean/declarations/canonicalcompletedlfunction-one-sub--4daaa531b2057c420b60fce9.md) | 49 | `result-track:4daaa531b2057c420b60fce9e7b2fd4c8f687d318ad2b350b53d4bbf2d43a0e9` |
| 3 | `theorem` | [gammaFactor_ne_zero_of_re_pos](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/MathlibLFunctionAdapters/Variant6c708454562634c5d06a6455fbcd64aa94ae3d824a4253d7c40f1d3803128ab4.lean/declarations/gammafactor-ne-zero-of-re-pos--6ce2e30b2704935c5a98ffe9.md) | 60 | `result-track:6ce2e30b2704935c5a98ffe9ee3145c0920fac46302c1ebb019c493d82852047` |
| 4 | `theorem` | [canonicalCompletedLFunction_zero_iff_LFunction_zero](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/MathlibLFunctionAdapters/Variant6c708454562634c5d06a6455fbcd64aa94ae3d824a4253d7c40f1d3803128ab4.lean/declarations/canonicalcompletedlfunction-zero-iff-lfunction-zero--260a7d0de009187fcfa357e2.md) | 74 | `result-track:260a7d0de009187fcfa357e2b2d9cafc9aafa53503bfb5599b5b3df9dd6c4439` |
| 5 | `def` | [poleRemovedLFunction](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/MathlibLFunctionAdapters/Variant6c708454562634c5d06a6455fbcd64aa94ae3d824a4253d7c40f1d3803128ab4.lean/declarations/poleremovedlfunction--6bb6e391fd84241ea5332cd7.md) | 92 | `declaration-track:6bb6e391fd84241ea5332cd7d4c74263fc54bfe3c1bdb1f996d3ffd9f5596b8b` |
| 6 | `theorem` | [poleRemovedLFunction_eq_LFunction_of_ne_one](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/MathlibLFunctionAdapters/Variant6c708454562634c5d06a6455fbcd64aa94ae3d824a4253d7c40f1d3803128ab4.lean/declarations/poleremovedlfunction-eq-lfunction-of-ne-one--1a8641e2078e7767f3814107.md) | 102 | `result-track:1a8641e2078e7767f38141076eb46589422dd7a76fa44357aa2ea202facf3a98` |
| 7 | `theorem` | [poleRemovedLFunction_one](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/MathlibLFunctionAdapters/Variant6c708454562634c5d06a6455fbcd64aa94ae3d824a4253d7c40f1d3803128ab4.lean/declarations/poleremovedlfunction-one--bd9da29dd67080b64849a07f.md) | 109 | `result-track:bd9da29dd67080b64849a07f8e0910dfb8e731bcbde832acdad31019ccdcfde1` |
| 8 | `theorem` | [differentiable_poleRemovedLFunction](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/MathlibLFunctionAdapters/Variant6c708454562634c5d06a6455fbcd64aa94ae3d824a4253d7c40f1d3803128ab4.lean/declarations/differentiable-poleremovedlfunction--02a95260cd87340278aa01b0.md) | 118 | `result-track:02a95260cd87340278aa01b0d09f07ea392fc9298f5c3ec62efe02ba928ddb98` |
| 9 | `theorem` | [poleRemovedLFunction_zero_iff_LFunction_zero](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/MathlibLFunctionAdapters/Variant6c708454562634c5d06a6455fbcd64aa94ae3d824a4253d7c40f1d3803128ab4.lean/declarations/poleremovedlfunction-zero-iff-lfunction-zero--d88dd901337aaf02493d34ed.md) | 131 | `result-track:d88dd901337aaf02493d34edb10bd50d151a3669b34210ac8b65b4391b820658` |
| 10 | `theorem` | [poleRemovedLFunction_ne_zero_of_one_lt_re](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/MathlibLFunctionAdapters/Variant6c708454562634c5d06a6455fbcd64aa94ae3d824a4253d7c40f1d3803128ab4.lean/declarations/poleremovedlfunction-ne-zero-of-one-lt-re--7b4b72c3caf6de526c7568e5.md) | 149 | `result-track:7b4b72c3caf6de526c7568e5197b9786b5964c53410bb8120313e699c05979c4` |
| 11 | `theorem` | [lSeriesTerm_inverse_eq_star](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/MathlibLFunctionAdapters/Variant6c708454562634c5d06a6455fbcd64aa94ae3d824a4253d7c40f1d3803128ab4.lean/declarations/lseriesterm-inverse-eq-star--0844fb84642dad2cb7ddd115.md) | 162 | `result-track:0844fb84642dad2cb7ddd11594be1c89b3112da0c9d9dd3f1874ae939859d0a2` |
| 12 | `theorem` | [LSeries_inverse_eq_star](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/MathlibLFunctionAdapters/Variant6c708454562634c5d06a6455fbcd64aa94ae3d824a4253d7c40f1d3803128ab4.lean/declarations/lseries-inverse-eq-star--3bc1661fc2e11bfc2d80ea6d.md) | 184 | `result-track:3bc1661fc2e11bfc2d80ea6d5c190dde698b9396436d24917b0f55d4df3f874b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
