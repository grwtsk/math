# Verification target: GRWTSK.Analysis.MeasureTheory.Inner.Variantffbaee660d838c270abf2a3d20c53a942942557e0ca7bea99f75610ef0213d86

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "af67bdd5c5a939f94b4bb538710881c6baa83ed2",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/MeasureTheory/Inner/Variantffbaee660d838c270abf2a3d20c53a942942557e0ca7bea99f75610ef0213d86.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/MeasureTheory/Inner/Variantffbaee660d838c270abf2a3d20c53a942942557e0ca7bea99f75610ef0213d86.lean/index.md) · [Full source](../../../../../mathematics/Analysis/MeasureTheory/Inner/Variantffbaee660d838c270abf2a3d20c53a942942557e0ca7bea99f75610ef0213d86.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `af67bdd5c5a939f94b4bb538710881c6baa83ed2`.

Source path: `GRWTSK/Analysis/MeasureTheory/Inner/Variantffbaee660d838c270abf2a3d20c53a942942557e0ca7bea99f75610ef0213d86.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/MeasureTheory/Inner/Variantffbaee660d838c270abf2a3d20c53a942942557e0ca7bea99f75610ef0213d86.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.InnerProductSpace.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Constructions.BorelSpace.Complex` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [Measurable.inner](../../../../../mathematics/Analysis/MeasureTheory/Inner/Variantffbaee660d838c270abf2a3d20c53a942942557e0ca7bea99f75610ef0213d86.lean/declarations/measurable-inner--2538e45f61b571effaafe684.md) | 31 | `result-track:2538e45f61b571effaafe6848fc53258f052a024eba31fce92f136cd0f7b94f0` |
| 2 | `theorem` | [Measurable.const_inner](../../../../../mathematics/Analysis/MeasureTheory/Inner/Variantffbaee660d838c270abf2a3d20c53a942942557e0ca7bea99f75610ef0213d86.lean/declarations/measurable-const-inner--f39e5ccdaafc1002b692e067.md) | 38 | `result-track:f39e5ccdaafc1002b692e0679a38990467bb2238029df1f0114c6c06e5487004` |
| 3 | `theorem` | [Measurable.inner_const](../../../../../mathematics/Analysis/MeasureTheory/Inner/Variantffbaee660d838c270abf2a3d20c53a942942557e0ca7bea99f75610ef0213d86.lean/declarations/measurable-inner-const--1af5dc411f452d6dd78c27f6.md) | 44 | `result-track:1af5dc411f452d6dd78c27f6e6ef3552e7dd0b598e92b9b2f84ffcc9f2d6043d` |
| 4 | `theorem` | [AEMeasurable.inner](../../../../../mathematics/Analysis/MeasureTheory/Inner/Variantffbaee660d838c270abf2a3d20c53a942942557e0ca7bea99f75610ef0213d86.lean/declarations/aemeasurable-inner--98f00d521a83804cdf10d290.md) | 50 | `result-track:98f00d521a83804cdf10d290d3dd25c156b994e3ffece22c00ff931ed11d2457` |
| 5 | `theorem` | [AEMeasurable.const_inner](../../../../../mathematics/Analysis/MeasureTheory/Inner/Variantffbaee660d838c270abf2a3d20c53a942942557e0ca7bea99f75610ef0213d86.lean/declarations/aemeasurable-const-inner--d41da9358ae0603df10b3e81.md) | 61 | `result-track:d41da9358ae0603df10b3e817ae2fc73dd654f894198486d2f910965f830cb02` |
| 6 | `theorem` | [AEMeasurable.inner_const](../../../../../mathematics/Analysis/MeasureTheory/Inner/Variantffbaee660d838c270abf2a3d20c53a942942557e0ca7bea99f75610ef0213d86.lean/declarations/aemeasurable-inner-const--90541ca11c6795186eb4edce.md) | 69 | `result-track:90541ca11c6795186eb4edcef8e6316d7da2fc57daf2dde38a9768eee6050e73` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
