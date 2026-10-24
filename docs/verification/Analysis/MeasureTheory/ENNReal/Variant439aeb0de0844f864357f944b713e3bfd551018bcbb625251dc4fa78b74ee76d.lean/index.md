# Verification target: GRWTSK.Analysis.MeasureTheory.ENNReal.Variant439aeb0de0844f864357f944b713e3bfd551018bcbb625251dc4fa78b74ee76d

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5ff028375eaa79da97443fba06f4c1a2f634395f",
  "lexical_observation_count": 2,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/MeasureTheory/ENNReal/Variant439aeb0de0844f864357f944b713e3bfd551018bcbb625251dc4fa78b74ee76d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/MeasureTheory/ENNReal/Variant439aeb0de0844f864357f944b713e3bfd551018bcbb625251dc4fa78b74ee76d.lean/index.md) · [Full source](../../../../../mathematics/Analysis/MeasureTheory/ENNReal/Variant439aeb0de0844f864357f944b713e3bfd551018bcbb625251dc4fa78b74ee76d.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5ff028375eaa79da97443fba06f4c1a2f634395f`.

Source path: `GRWTSK/Analysis/MeasureTheory/ENNReal/Variant439aeb0de0844f864357f944b713e3bfd551018bcbb625251dc4fa78b74ee76d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/MeasureTheory/ENNReal/Variant439aeb0de0844f864357f944b713e3bfd551018bcbb625251dc4fa78b74ee76d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.MeasureTheory.Function.StronglyMeasurable.AEStronglyMeasurable` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.Lebesgue.Add` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [ENNReal.finStronglyMeasurable_of_measurable](../../../../../mathematics/Analysis/MeasureTheory/ENNReal/Variant439aeb0de0844f864357f944b713e3bfd551018bcbb625251dc4fa78b74ee76d.lean/declarations/ennreal-finstronglymeasurable-of-measurable--e04e14150f89ff0fb420cfd4.md) | 31 | `result-track:e04e14150f89ff0fb420cfd419727f92c98ec542616de5b287e0a5d45cb8ad56` |
| 2 | `lemma` | [ENNReal.aefinStronglyMeasurable_of_aemeasurable](../../../../../mathematics/Analysis/MeasureTheory/ENNReal/Variant439aeb0de0844f864357f944b713e3bfd551018bcbb625251dc4fa78b74ee76d.lean/declarations/ennreal-aefinstronglymeasurable-of-aemeasurable--e53f0342b254946280a34a4b.md) | 37 | `result-track:e53f0342b254946280a34a4b6bd49fd921d48a349a3a9394c2dfeab5c60b04e3` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
