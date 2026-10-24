# Verification target: GRWTSK.Analysis.MeasureTheory.FinalValue.Variant53ba48e94581ed383b2ed3d84a9d34bce3754971c58ad672a19bc4cfaedfd15a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7affecf16f9c11b4b2c5872b1020a0c72c7fddca",
  "lexical_observation_count": 2,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/MeasureTheory/FinalValue/Variant53ba48e94581ed383b2ed3d84a9d34bce3754971c58ad672a19bc4cfaedfd15a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/MeasureTheory/FinalValue/Variant53ba48e94581ed383b2ed3d84a9d34bce3754971c58ad672a19bc4cfaedfd15a.lean/index.md) · [Full source](../../../../../mathematics/Analysis/MeasureTheory/FinalValue/Variant53ba48e94581ed383b2ed3d84a9d34bce3754971c58ad672a19bc4cfaedfd15a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7affecf16f9c11b4b2c5872b1020a0c72c7fddca`.

Source path: `GRWTSK/Analysis/MeasureTheory/FinalValue/Variant53ba48e94581ed383b2ed3d84a9d34bce3754971c58ad672a19bc4cfaedfd15a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/MeasureTheory/FinalValue/Variant53ba48e94581ed383b2ed3d84a9d34bce3754971c58ad672a19bc4cfaedfd15a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.MeasureTheory.Integral.DominatedConvergence` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.ImproperIntegrals` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [laplace_rescale](../../../../../mathematics/Analysis/MeasureTheory/FinalValue/Variant53ba48e94581ed383b2ed3d84a9d34bce3754971c58ad672a19bc4cfaedfd15a.lean/declarations/laplace-rescale--9336017b721a20318fbae68d.md) | 22 | `result-track:9336017b721a20318fbae68d144305e2aa2bef83e904bf51c5b2cdf9cc5afaa5` |
| 2 | `theorem` | [bounded_final_value](../../../../../mathematics/Analysis/MeasureTheory/FinalValue/Variant53ba48e94581ed383b2ed3d84a9d34bce3754971c58ad672a19bc4cfaedfd15a.lean/declarations/bounded-final-value--2c116119cce0818d43215872.md) | 35 | `result-track:2c116119cce0818d4321587243a06d1342e68fc2ea22ccfb96dbf93464819d2f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
