# Verification target: GRWTSK.Analysis.MeasureTheory.NCard.Variant9fc444c3fa4bda2d49b92ad96fc9007ce37e868fc5668a0178bd7965eb002b16

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0729e807c657505f6d1608bdba34635c5d887feb",
  "lexical_observation_count": 2,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/MeasureTheory/NCard/Variant9fc444c3fa4bda2d49b92ad96fc9007ce37e868fc5668a0178bd7965eb002b16.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/MeasureTheory/NCard/Variant9fc444c3fa4bda2d49b92ad96fc9007ce37e868fc5668a0178bd7965eb002b16.lean/index.md) · [Full source](../../../../../mathematics/Analysis/MeasureTheory/NCard/Variant9fc444c3fa4bda2d49b92ad96fc9007ce37e868fc5668a0178bd7965eb002b16.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0729e807c657505f6d1608bdba34635c5d887feb`.

Source path: `GRWTSK/Analysis/MeasureTheory/NCard/Variant9fc444c3fa4bda2d49b92ad96fc9007ce37e868fc5668a0178bd7965eb002b16.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/MeasureTheory/NCard/Variant9fc444c3fa4bda2d49b92ad96fc9007ce37e868fc5668a0178bd7965eb002b16.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Set.Card` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.MeasurableSpace.Constructions` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [measurable_encard](../../../../../mathematics/Analysis/MeasureTheory/NCard/Variant9fc444c3fa4bda2d49b92ad96fc9007ce37e868fc5668a0178bd7965eb002b16.lean/declarations/measurable-encard--0a07696f796b6597b44e603b.md) | 21 | `result-track:0a07696f796b6597b44e603b8c50efa938db9e857dc74545faad4ac15393b4d4` |
| 2 | `theorem` | [measurable_ncard](../../../../../mathematics/Analysis/MeasureTheory/NCard/Variant9fc444c3fa4bda2d49b92ad96fc9007ce37e868fc5668a0178bd7965eb002b16.lean/declarations/measurable-ncard--a1fc01155f86c67dd442752e.md) | 26 | `result-track:a1fc01155f86c67dd442752ed762bde799896adc9d4c21cb49f1bd1e3bfbd861` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
