# Verification target: GRWTSK.Analysis.MeasureTheory.UnitInterval.Variant11b0a835c3d31f59bd08f14f9a731d569ed920dbfb77008adf3c18b1a2d84d1f

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d3ea8002c5a93a089a04419a0c6fddbdd657e679",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/MeasureTheory/UnitInterval/Variant11b0a835c3d31f59bd08f14f9a731d569ed920dbfb77008adf3c18b1a2d84d1f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/MeasureTheory/UnitInterval/Variant11b0a835c3d31f59bd08f14f9a731d569ed920dbfb77008adf3c18b1a2d84d1f.lean/index.md) · [Full source](../../../../../mathematics/Analysis/MeasureTheory/UnitInterval/Variant11b0a835c3d31f59bd08f14f9a731d569ed920dbfb77008adf3c18b1a2d84d1f.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d3ea8002c5a93a089a04419a0c6fddbdd657e679`.

Source path: `GRWTSK/Analysis/MeasureTheory/UnitInterval/Variant11b0a835c3d31f59bd08f14f9a731d569ed920dbfb77008adf3c18b1a2d84d1f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/MeasureTheory/UnitInterval/Variant11b0a835c3d31f59bd08f14f9a731d569ed920dbfb77008adf3c18b1a2d84d1f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.UnitInterval` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Constructions.BorelSpace.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Measure.Haar.OfBasis` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Measure.Lebesgue.Basic` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [(anonymous)](../../../../../mathematics/Analysis/MeasureTheory/UnitInterval/Variant11b0a835c3d31f59bd08f14f9a731d569ed920dbfb77008adf3c18b1a2d84d1f.lean/declarations/instance--10eddc1cbc08b8bacd68c0b4.md) | 22 | `declaration-track:10eddc1cbc08b8bacd68c0b414a54f848231afafe90bae6c7464039c79ad88c1` |
| 2 | `theorem` | [volume_def](../../../../../mathematics/Analysis/MeasureTheory/UnitInterval/Variant11b0a835c3d31f59bd08f14f9a731d569ed920dbfb77008adf3c18b1a2d84d1f.lean/declarations/volume-def--cd57eb891bc7bfa7c64fea06.md) | 24 | `result-track:cd57eb891bc7bfa7c64fea06ac82db33b38b8967527ef290e00ce8000b059cea` |
| 3 | `instance` | [(anonymous)](../../../../../mathematics/Analysis/MeasureTheory/UnitInterval/Variant11b0a835c3d31f59bd08f14f9a731d569ed920dbfb77008adf3c18b1a2d84d1f.lean/declarations/instance--79891c845c4412edf298fa02.md) | 26 | `declaration-track:79891c845c4412edf298fa028e333ed77fd9241f09caab18f46595bbd7efee02` |
| 4 | `theorem` | [measurable_symm](../../../../../mathematics/Analysis/MeasureTheory/UnitInterval/Variant11b0a835c3d31f59bd08f14f9a731d569ed920dbfb77008adf3c18b1a2d84d1f.lean/declarations/measurable-symm--58f2f16f9658e74ed953001b.md) | 32 | `result-track:58f2f16f9658e74ed953001bba6f55a93db579628d4422a25ad9a15af33162ab` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
