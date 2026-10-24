# Verification target: GRWTSK.Analysis.FunctionalAnalysis.InnerProduct.Variant1a21586c8978dbba0b322c3e4d126c699b829f0d3ad9df59334f46694fb8889b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "55ea8dfd1356d33087ee606ef352e09a6a5d3e2a",
  "lexical_observation_count": 2,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/FunctionalAnalysis/InnerProduct/Variant1a21586c8978dbba0b322c3e4d126c699b829f0d3ad9df59334f46694fb8889b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/FunctionalAnalysis/InnerProduct/Variant1a21586c8978dbba0b322c3e4d126c699b829f0d3ad9df59334f46694fb8889b.lean/index.md) · [Full source](../../../../../mathematics/Analysis/FunctionalAnalysis/InnerProduct/Variant1a21586c8978dbba0b322c3e4d126c699b829f0d3ad9df59334f46694fb8889b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `55ea8dfd1356d33087ee606ef352e09a6a5d3e2a`.

Source path: `GRWTSK/Analysis/FunctionalAnalysis/InnerProduct/Variant1a21586c8978dbba0b322c3e4d126c699b829f0d3ad9df59334f46694fb8889b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/FunctionalAnalysis/InnerProduct/Variant1a21586c8978dbba0b322c3e4d126c699b829f0d3ad9df59334f46694fb8889b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Calculus.BumpFunction.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.InnerProductSpace.Calculus` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.SmoothTransition` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [ContDiffBumpBase.ofInnerProductSpace](../../../../../mathematics/Analysis/FunctionalAnalysis/InnerProduct/Variant1a21586c8978dbba0b322c3e4d126c699b829f0d3ad9df59334f46694fb8889b.lean/declarations/contdiffbumpbase-ofinnerproductspace--6b20b480e2d963ff7d3e04a0.md) | 28 | `declaration-track:6b20b480e2d963ff7d3e04a0f118f67d981c8e1c15c0648fa0b349102ac06999` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/Analysis/FunctionalAnalysis/InnerProduct/Variant1a21586c8978dbba0b322c3e4d126c699b829f0d3ad9df59334f46694fb8889b.lean/declarations/instance--db71250640b73e86d731a836.md) | 55 | `declaration-track:db71250640b73e86d731a836f5016132776416358ab727afbdbe233bd87c20e8` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
