# Verification target: GRWTSK.Analysis.MeasureTheory.Inner.Variant97190d09fdb875475a16915ddf07b81922dc84dc9c60cf123a325c6afa851a1c

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7f8b6c921b0cf03171eaacf6f0d5cc0cea658710",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/MeasureTheory/Inner/Variant97190d09fdb875475a16915ddf07b81922dc84dc9c60cf123a325c6afa851a1c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/MeasureTheory/Inner/Variant97190d09fdb875475a16915ddf07b81922dc84dc9c60cf123a325c6afa851a1c.lean/index.md) · [Full source](../../../../../mathematics/Analysis/MeasureTheory/Inner/Variant97190d09fdb875475a16915ddf07b81922dc84dc9c60cf123a325c6afa851a1c.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7f8b6c921b0cf03171eaacf6f0d5cc0cea658710`.

Source path: `GRWTSK/Analysis/MeasureTheory/Inner/Variant97190d09fdb875475a16915ddf07b81922dc84dc9c60cf123a325c6afa851a1c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/MeasureTheory/Inner/Variant97190d09fdb875475a16915ddf07b81922dc84dc9c60cf123a325c6afa851a1c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.InnerProductSpace.Continuous` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Constructions.BorelSpace.Complex` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [Measurable.inner](../../../../../mathematics/Analysis/MeasureTheory/Inner/Variant97190d09fdb875475a16915ddf07b81922dc84dc9c60cf123a325c6afa851a1c.lean/declarations/measurable-inner--b6e45762bd3e8ebf58f7c8f5.md) | 20 | `result-track:b6e45762bd3e8ebf58f7c8f5f88f7f9c4d976c7dc6710ee6aad1d49bd31bb5bf` |
| 2 | `theorem` | [Measurable.const_inner](../../../../../mathematics/Analysis/MeasureTheory/Inner/Variant97190d09fdb875475a16915ddf07b81922dc84dc9c60cf123a325c6afa851a1c.lean/declarations/measurable-const-inner--dcfd8a99fc0ae969ab01ac2e.md) | 26 | `result-track:dcfd8a99fc0ae969ab01ac2edd6fdd3408df17a63c2efbb2a6d351bc103c1025` |
| 3 | `theorem` | [Measurable.inner_const](../../../../../mathematics/Analysis/MeasureTheory/Inner/Variant97190d09fdb875475a16915ddf07b81922dc84dc9c60cf123a325c6afa851a1c.lean/declarations/measurable-inner-const--77da24037413954966fdaebe.md) | 32 | `result-track:77da24037413954966fdaebec1f624d97e380643f8fe96ded8ce039e2f8beb58` |
| 4 | `theorem` | [AEMeasurable.inner](../../../../../mathematics/Analysis/MeasureTheory/Inner/Variant97190d09fdb875475a16915ddf07b81922dc84dc9c60cf123a325c6afa851a1c.lean/declarations/aemeasurable-inner--bce33d17be042882eb22d493.md) | 38 | `result-track:bce33d17be042882eb22d493a004d6bf8c1e4b8f8561c6e84794cbd31f7e8534` |
| 5 | `theorem` | [AEMeasurable.const_inner](../../../../../mathematics/Analysis/MeasureTheory/Inner/Variant97190d09fdb875475a16915ddf07b81922dc84dc9c60cf123a325c6afa851a1c.lean/declarations/aemeasurable-const-inner--1df734b4e34bc0beffc58517.md) | 47 | `result-track:1df734b4e34bc0beffc5851754a90ed08a0d691040484cba5a548109878236fa` |
| 6 | `theorem` | [AEMeasurable.inner_const](../../../../../mathematics/Analysis/MeasureTheory/Inner/Variant97190d09fdb875475a16915ddf07b81922dc84dc9c60cf123a325c6afa851a1c.lean/declarations/aemeasurable-inner-const--f443ad878891bf652c71a3c8.md) | 54 | `result-track:f443ad878891bf652c71a3c855054e486fc5909586809737d0a23433be1c36dc` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
