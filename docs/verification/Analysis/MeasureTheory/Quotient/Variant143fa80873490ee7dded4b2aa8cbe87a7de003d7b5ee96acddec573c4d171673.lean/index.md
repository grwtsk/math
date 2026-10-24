# Verification target: GRWTSK.Analysis.MeasureTheory.Quotient.Variant143fa80873490ee7dded4b2aa8cbe87a7de003d7b5ee96acddec573c4d171673

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "24af3534b9054bbc8a20eb80d29f2f7786328d5f",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/MeasureTheory/Quotient/Variant143fa80873490ee7dded4b2aa8cbe87a7de003d7b5ee96acddec573c4d171673.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/MeasureTheory/Quotient/Variant143fa80873490ee7dded4b2aa8cbe87a7de003d7b5ee96acddec573c4d171673.lean/index.md) · [Full source](../../../../../mathematics/Analysis/MeasureTheory/Quotient/Variant143fa80873490ee7dded4b2aa8cbe87a7de003d7b5ee96acddec573c4d171673.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `24af3534b9054bbc8a20eb80d29f2f7786328d5f`.

Source path: `GRWTSK/Analysis/MeasureTheory/Quotient/Variant143fa80873490ee7dded4b2aa8cbe87a7de003d7b5ee96acddec573c4d171673.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/MeasureTheory/Quotient/Variant143fa80873490ee7dded4b2aa8cbe87a7de003d7b5ee96acddec573c4d171673.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.MeasureTheory.Measure.Haar.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Group.FundamentalDomain` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.Opposite` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [QuotientGroup.measurableSMul](../../../../../mathematics/Analysis/MeasureTheory/Quotient/Variant143fa80873490ee7dded4b2aa8cbe87a7de003d7b5ee96acddec573c4d171673.lean/declarations/quotientgroup-measurablesmul--c0607a5f64e44a8fb3e2adb5.md) | 53 | `declaration-track:c0607a5f64e44a8fb3e2adb5910c351570ec156c7ae4ee8d88abd97d20942459` |
| 2 | `theorem` | [MeasureTheory.IsFundamentalDomain.smulInvariantMeasure_map](../../../../../mathematics/Analysis/MeasureTheory/Quotient/Variant143fa80873490ee7dded4b2aa8cbe87a7de003d7b5ee96acddec573c4d171673.lean/declarations/measuretheory-isfundamentaldomain-smulinvariantmeasure-map--7e010438074c31e998c9ec52.md) | 69 | `result-track:7e010438074c31e998c9ec52c94644e87379b4a6e474783c6f06df55fd4f2b7e` |
| 3 | `theorem` | [MeasureTheory.IsFundamentalDomain.isMulLeftInvariant_map](../../../../../mathematics/Analysis/MeasureTheory/Quotient/Variant143fa80873490ee7dded4b2aa8cbe87a7de003d7b5ee96acddec573c4d171673.lean/declarations/measuretheory-isfundamentaldomain-ismulleftinvariant-map--cf27435f4831721ee9dee35d.md) | 108 | `result-track:cf27435f4831721ee9dee35dc3b97f7443c6a5173bea60e3aa8409f195372078` |
| 4 | `theorem` | [MeasureTheory.IsFundamentalDomain.map_restrict_quotient](../../../../../mathematics/Analysis/MeasureTheory/Quotient/Variant143fa80873490ee7dded4b2aa8cbe87a7de003d7b5ee96acddec573c4d171673.lean/declarations/measuretheory-isfundamentaldomain-map-restrict-quotient--8cbeda382ac6543d335ee2bb.md) | 133 | `result-track:8cbeda382ac6543d335ee2bbd416a7d458ef929c0ca99e0e67cba1b331a922e2` |
| 5 | `theorem` | [MeasurePreservingQuotientGroup.mk'](../../../../../mathematics/Analysis/MeasureTheory/Quotient/Variant143fa80873490ee7dded4b2aa8cbe87a7de003d7b5ee96acddec573c4d171673.lean/declarations/measurepreservingquotientgroup-mk--dba8a8803bcdd54eab46e049.md) | 158 | `result-track:dba8a8803bcdd54eab46e04921a89cdbd83365120a37b44dc6876b870fcaf4fe` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
