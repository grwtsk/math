# Verification target: GRWTSK.Analysis.AsymptoticAnalysis.TsumUniformlyOn.Variante5708e42d1d98f9bc1ba4dc0e8131eb931e2445fa70c6c04c29c9235603900f4

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1dd793d5695e36e8deb41f7c9937aeec1d206950",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/AsymptoticAnalysis/TsumUniformlyOn/Variante5708e42d1d98f9bc1ba4dc0e8131eb931e2445fa70c6c04c29c9235603900f4.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/AsymptoticAnalysis/TsumUniformlyOn/Variante5708e42d1d98f9bc1ba4dc0e8131eb931e2445fa70c6c04c29c9235603900f4.lean/index.md) · [Full source](../../../../../mathematics/Analysis/AsymptoticAnalysis/TsumUniformlyOn/Variante5708e42d1d98f9bc1ba4dc0e8131eb931e2445fa70c6c04c29c9235603900f4.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1dd793d5695e36e8deb41f7c9937aeec1d206950`.

Source path: `GRWTSK/Analysis/AsymptoticAnalysis/TsumUniformlyOn/Variante5708e42d1d98f9bc1ba4dc0e8131eb931e2445fa70c6c04c29c9235603900f4.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/AsymptoticAnalysis/TsumUniformlyOn/Variante5708e42d1d98f9bc1ba4dc0e8131eb931e2445fa70c6c04c29c9235603900f4.lean.json)

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
| 1 | `theorem` | [HasSumUniformlyOn.of_norm_le_summable](../../../../../mathematics/Analysis/AsymptoticAnalysis/TsumUniformlyOn/Variante5708e42d1d98f9bc1ba4dc0e8131eb931e2445fa70c6c04c29c9235603900f4.lean/declarations/hassumuniformlyon-of-norm-le-summable--794f7762e3f3e829e7af391e.md) | 35 | `result-track:794f7762e3f3e829e7af391ee37e4ab8365bced263907a3a3c782c407609bfee` |
| 2 | `theorem` | [HasSumUniformlyOn.of_norm_le_summable_eventually](../../../../../mathematics/Analysis/AsymptoticAnalysis/TsumUniformlyOn/Variante5708e42d1d98f9bc1ba4dc0e8131eb931e2445fa70c6c04c29c9235603900f4.lean/declarations/hassumuniformlyon-of-norm-le-summable-eventually--11e725e9b5197286ca1ae02b.md) | 39 | `result-track:11e725e9b5197286ca1ae02b1296f31d7088b43320278a3a060ce4617beb3693` |
| 3 | `lemma` | [SummableLocallyUniformlyOn.of_locally_bounded_eventually](../../../../../mathematics/Analysis/AsymptoticAnalysis/TsumUniformlyOn/Variante5708e42d1d98f9bc1ba4dc0e8131eb931e2445fa70c6c04c29c9235603900f4.lean/declarations/summablelocallyuniformlyon-of-locally-bounded-eventually--3dc6dc0e3ff68d0c927e6a8e.md) | 45 | `result-track:3dc6dc0e3ff68d0c927e6a8e76b9939c8d919b37874483916b113e28549794bf` |
| 4 | `lemma` | [SummableLocallyUniformlyOn_of_locally_bounded](../../../../../mathematics/Analysis/AsymptoticAnalysis/TsumUniformlyOn/Variante5708e42d1d98f9bc1ba4dc0e8131eb931e2445fa70c6c04c29c9235603900f4.lean/declarations/summablelocallyuniformlyon-of-locally-bounded--e7e15e7f9eaa101e7bcbd005.md) | 56 | `result-track:e7e15e7f9eaa101e7bcbd005c4a2be48290bfd68c57c30749312efadb3cbfdf6` |
| 5 | `theorem` | [derivWithin_tsum](../../../../../mathematics/Analysis/AsymptoticAnalysis/TsumUniformlyOn/Variante5708e42d1d98f9bc1ba4dc0e8131eb931e2445fa70c6c04c29c9235603900f4.lean/declarations/derivwithin-tsum--6658b45335f4ddb1ec9fd847.md) | 72 | `result-track:6658b45335f4ddb1ec9fd847f0b203e8da98c0584c73a5b6ea3eb6582db2ebdc` |
| 6 | `theorem` | [iteratedDerivWithin_tsum](../../../../../mathematics/Analysis/AsymptoticAnalysis/TsumUniformlyOn/Variante5708e42d1d98f9bc1ba4dc0e8131eb931e2445fa70c6c04c29c9235603900f4.lean/declarations/iteratedderivwithin-tsum--95888971c2703960f73a1238.md) | 93 | `result-track:95888971c2703960f73a1238fcb5b8ecd9dab2a033d433baee0319ae30ab226e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
