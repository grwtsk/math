# Verification target: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.Basic.Variant673c62c5d7189a18e426f442ae3e5cd89dc42a9b2297e6c6853ff5af9e45a221

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "40c1d93d03d90b2f90cb3141269af9bd2208fe9e",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Basic/Variant673c62c5d7189a18e426f442ae3e5cd89dc42a9b2297e6c6853ff5af9e45a221.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Basic/Variant673c62c5d7189a18e426f442ae3e5cd89dc42a9b2297e6c6853ff5af9e45a221.lean/index.md) · [Full source](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Basic/Variant673c62c5d7189a18e426f442ae3e5cd89dc42a9b2297e6c6853ff5af9e45a221.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `40c1d93d03d90b2f90cb3141269af9bd2208fe9e`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Basic/Variant673c62c5d7189a18e426f442ae3e5cd89dc42a9b2297e6c6853ff5af9e45a221.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Basic/Variant673c62c5d7189a18e426f442ae3e5cd89dc42a9b2297e6c6853ff5af9e45a221.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Zeta23.XiPrime.Seam` — import line 12; external provider; requires a separately pinned dependency.
- `Zeta23.Defs.Counting` — import line 13; external provider; requires a separately pinned dependency.
- `Zeta23.RvM.Halving` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [window_union](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Basic/Variant673c62c5d7189a18e426f442ae3e5cd89dc42a9b2297e6c6853ff5af9e45a221.lean/declarations/window-union--3016737ba5bd2a65cec986dd.md) | 27 | `result-track:3016737ba5bd2a65cec986dd5874115405807bfb365bd5c218832b427eca6ebb` |
| 2 | `lemma` | [N_add](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Basic/Variant673c62c5d7189a18e426f442ae3e5cd89dc42a9b2297e6c6853ff5af9e45a221.lean/declarations/n-add--cb7089163568a7a3db74f043.md) | 40 | `result-track:cb7089163568a7a3db74f0438545d9b60eaa5a908d41e72401f5f84876056cc5` |
| 3 | `lemma` | [N_mono](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Basic/Variant673c62c5d7189a18e426f442ae3e5cd89dc42a9b2297e6c6853ff5af9e45a221.lean/declarations/n-mono--856505552630580670a39276.md) | 48 | `result-track:856505552630580670a39276a6d9afcb51b71e3b5c2c492569f981c3fccfb353` |
| 4 | `lemma` | [one_le_log_add_three](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Basic/Variant673c62c5d7189a18e426f442ae3e5cd89dc42a9b2297e6c6853ff5af9e45a221.lean/declarations/one-le-log-add-three--53195a72f81b38b84441fb40.md) | 58 | `result-track:53195a72f81b38b84441fb4059aff846f2e29108ae4af2bc45ac79bb735217e0` |
| 5 | `lemma` | [continuousAt_logDeriv_of_analyticAt](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Basic/Variant673c62c5d7189a18e426f442ae3e5cd89dc42a9b2297e6c6853ff5af9e45a221.lean/declarations/continuousat-logderiv-of-analyticat--ef80316a65b08bbba84e98cf.md) | 64 | `result-track:ef80316a65b08bbba84e98cf68faa1e33f1bab2b89d3fd002a0af45f140e53f9` |
| 6 | `lemma` | [N_unit_windows](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Basic/Variant673c62c5d7189a18e426f442ae3e5cd89dc42a9b2297e6c6853ff5af9e45a221.lean/declarations/n-unit-windows--8253202076bdb552e949b689.md) | 70 | `result-track:8253202076bdb552e949b689d3fea7bef79f15ce8fef9edf96b9eb45223fc93a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
