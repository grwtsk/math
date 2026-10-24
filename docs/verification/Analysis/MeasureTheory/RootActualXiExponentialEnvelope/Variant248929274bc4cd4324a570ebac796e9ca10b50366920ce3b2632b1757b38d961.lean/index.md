# Verification target: GRWTSK.Analysis.MeasureTheory.RootActualXiExponentialEnvelope.Variant248929274bc4cd4324a570ebac796e9ca10b50366920ce3b2632b1757b38d961

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7ddd6f31012efda2856bc2cd88c25c3126c81f6d",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/MeasureTheory/RootActualXiExponentialEnvelope/Variant248929274bc4cd4324a570ebac796e9ca10b50366920ce3b2632b1757b38d961.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/MeasureTheory/RootActualXiExponentialEnvelope/Variant248929274bc4cd4324a570ebac796e9ca10b50366920ce3b2632b1757b38d961.lean/index.md) · [Full source](../../../../../mathematics/Analysis/MeasureTheory/RootActualXiExponentialEnvelope/Variant248929274bc4cd4324a570ebac796e9ca10b50366920ce3b2632b1757b38d961.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7ddd6f31012efda2856bc2cd88c25c3126c81f6d`.

Source path: `GRWTSK/Analysis/MeasureTheory/RootActualXiExponentialEnvelope/Variant248929274bc4cd4324a570ebac796e9ca10b50366920ce3b2632b1757b38d961.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/MeasureTheory/RootActualXiExponentialEnvelope/Variant248929274bc4cd4324a570ebac796e9ca10b50366920ce3b2632b1757b38d961.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `RootActualXiTailPrimitive` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.ExpDecay` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [actualXiExponentialEnvelopeConstant](../../../../../mathematics/Analysis/MeasureTheory/RootActualXiExponentialEnvelope/Variant248929274bc4cd4324a570ebac796e9ca10b50366920ce3b2632b1757b38d961.lean/declarations/actualxiexponentialenvelopeconstant--2fd021c6753bb6bb02a38f57.md) | 20 | `declaration-track:2fd021c6753bb6bb02a38f5726171788824daa2e0c6cd84a8512fafbc2e78d23` |
| 2 | `theorem` | [coefficient_nonneg](../../../../../mathematics/Analysis/MeasureTheory/RootActualXiExponentialEnvelope/Variant248929274bc4cd4324a570ebac796e9ca10b50366920ce3b2632b1757b38d961.lean/declarations/coefficient-nonneg--4a2dff2ba25d61e4e80f658e.md) | 23 | `result-track:4a2dff2ba25d61e4e80f658e49875a042bbd7492fe19972f816f377eea606735` |
| 3 | `theorem` | [actualXiTailTimeDensity_abs_le](../../../../../mathematics/Analysis/MeasureTheory/RootActualXiExponentialEnvelope/Variant248929274bc4cd4324a570ebac796e9ca10b50366920ce3b2632b1757b38d961.lean/declarations/actualxitailtimedensity-abs-le--02511f1df3ef4efb75ee72dd.md) | 28 | `result-track:02511f1df3ef4efb75ee72dd24ceaf02d498846e9000b8a6508a26955bd8ac0b` |
| 4 | `theorem` | [actualAnchoredXiTailPrimitive_abs_le](../../../../../mathematics/Analysis/MeasureTheory/RootActualXiExponentialEnvelope/Variant248929274bc4cd4324a570ebac796e9ca10b50366920ce3b2632b1757b38d961.lean/declarations/actualanchoredxitailprimitive-abs-le--4a211ccffaff22232b2ee5a2.md) | 50 | `result-track:4a211ccffaff22232b2ee5a20d42c9e63adc2aa66c54331a0ba496ddf5f578c7` |
| 5 | `theorem` | [primitive_continuousOn_Ici](../../../../../mathematics/Analysis/MeasureTheory/RootActualXiExponentialEnvelope/Variant248929274bc4cd4324a570ebac796e9ca10b50366920ce3b2632b1757b38d961.lean/declarations/primitive-continuouson-ici--bb6a7baa5743eadd91aa0334.md) | 73 | `result-track:bb6a7baa5743eadd91aa0334fa0959aee8db38c9af9443b7037b0c0fd20e1214` |
| 6 | `theorem` | [actualXiLaplace_integrableOn](../../../../../mathematics/Analysis/MeasureTheory/RootActualXiExponentialEnvelope/Variant248929274bc4cd4324a570ebac796e9ca10b50366920ce3b2632b1757b38d961.lean/declarations/actualxilaplace-integrableon--1a388729165c1f26df5919bc.md) | 86 | `result-track:1a388729165c1f26df5919bc85853a0a4e01af7420c9a40d60340ffbfca8a936` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
