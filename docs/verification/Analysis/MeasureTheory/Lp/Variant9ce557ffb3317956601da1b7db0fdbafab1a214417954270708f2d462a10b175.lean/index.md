# Verification target: GRWTSK.Analysis.MeasureTheory.Lp.Variant9ce557ffb3317956601da1b7db0fdbafab1a214417954270708f2d462a10b175

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "08d4edf8f482af9838b4be25c8832fd232a39f06",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/MeasureTheory/Lp/Variant9ce557ffb3317956601da1b7db0fdbafab1a214417954270708f2d462a10b175.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/MeasureTheory/Lp/Variant9ce557ffb3317956601da1b7db0fdbafab1a214417954270708f2d462a10b175.lean/index.md) · [Full source](../../../../../mathematics/Analysis/MeasureTheory/Lp/Variant9ce557ffb3317956601da1b7db0fdbafab1a214417954270708f2d462a10b175.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `08d4edf8f482af9838b4be25c8832fd232a39f06`.

Source path: `GRWTSK/Analysis/MeasureTheory/Lp/Variant9ce557ffb3317956601da1b7db0fdbafab1a214417954270708f2d462a10b175.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/MeasureTheory/Lp/Variant9ce557ffb3317956601da1b7db0fdbafab1a214417954270708f2d462a10b175.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.MeasureTheory.Function.SimpleFuncDenseLp` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Function.StronglyMeasurable.Lemmas` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [MemLp.finStronglyMeasurable_of_stronglyMeasurable](../../../../../mathematics/Analysis/MeasureTheory/Lp/Variant9ce557ffb3317956601da1b7db0fdbafab1a214417954270708f2d462a10b175.lean/declarations/memlp-finstronglymeasurable-of-stronglymeasurable--0e67939847870bbce2c88692.md) | 39 | `result-track:0e67939847870bbce2c88692637cc99a1205590b57e5e326013da01cbfb2734f` |
| 2 | `theorem` | [MemLp.aefinStronglyMeasurable](../../../../../mathematics/Analysis/MeasureTheory/Lp/Variant9ce557ffb3317956601da1b7db0fdbafab1a214417954270708f2d462a10b175.lean/declarations/memlp-aefinstronglymeasurable--a87634e672f57ded6e601909.md) | 59 | `result-track:a87634e672f57ded6e601909d1e91a778447336a5ac13473c86f785ca1ac8474` |
| 3 | `theorem` | [Integrable.aefinStronglyMeasurable](../../../../../mathematics/Analysis/MeasureTheory/Lp/Variant9ce557ffb3317956601da1b7db0fdbafab1a214417954270708f2d462a10b175.lean/declarations/integrable-aefinstronglymeasurable--015c5b94ba1d868929139182.md) | 70 | `result-track:015c5b94ba1d868929139182a9ff06f5b117c3ae10df7d2320ed630316557e38` |
| 4 | `theorem` | [Lp.finStronglyMeasurable](../../../../../mathematics/Analysis/MeasureTheory/Lp/Variant9ce557ffb3317956601da1b7db0fdbafab1a214417954270708f2d462a10b175.lean/declarations/lp-finstronglymeasurable--ba4ac6fa93ccc1208121f576.md) | 73 | `result-track:ba4ac6fa93ccc1208121f5769499a2d6b7911b0cbaddf1367c940ef861bee0a6` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
