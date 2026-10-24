# Verification target: GRWTSK.Analysis.MeasureTheory.Invariants.Variant0ae2b18117045f7865212bf97ddc47e2aecef961974f91e4f36bc9d06e4ec033

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "08a3513f59dfa1e66984a684d691f48515bbe305",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/MeasureTheory/Invariants/Variant0ae2b18117045f7865212bf97ddc47e2aecef961974f91e4f36bc9d06e4ec033.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/MeasureTheory/Invariants/Variant0ae2b18117045f7865212bf97ddc47e2aecef961974f91e4f36bc9d06e4ec033.lean/index.md) · [Full source](../../../../../mathematics/Analysis/MeasureTheory/Invariants/Variant0ae2b18117045f7865212bf97ddc47e2aecef961974f91e4f36bc9d06e4ec033.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `08a3513f59dfa1e66984a684d691f48515bbe305`.

Source path: `GRWTSK/Analysis/MeasureTheory/Invariants/Variant0ae2b18117045f7865212bf97ddc47e2aecef961974f91e4f36bc9d06e4ec033.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/MeasureTheory/Invariants/Variant0ae2b18117045f7865212bf97ddc47e2aecef961974f91e4f36bc9d06e4ec033.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.MeasureTheory.MeasurableSpace.Defs` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [invariants](../../../../../mathematics/Analysis/MeasureTheory/Invariants/Variant0ae2b18117045f7865212bf97ddc47e2aecef961974f91e4f36bc9d06e4ec033.lean/declarations/invariants--a46fa9d4e8cb45c7e36fd4fa.md) | 28 | `declaration-track:a46fa9d4e8cb45c7e36fd4facea44db101ca8c4d3504089e73e7bfd003336bdc` |
| 2 | `theorem` | [measurableSet_invariants](../../../../../mathematics/Analysis/MeasureTheory/Invariants/Variant0ae2b18117045f7865212bf97ddc47e2aecef961974f91e4f36bc9d06e4ec033.lean/declarations/measurableset-invariants--6185ee9fde41645144f48940.md) | 36 | `result-track:6185ee9fde41645144f4894024ba9e9390fae08faca6c95e0d729676140adfd5` |
| 3 | `theorem` | [invariants_id](../../../../../mathematics/Analysis/MeasureTheory/Invariants/Variant0ae2b18117045f7865212bf97ddc47e2aecef961974f91e4f36bc9d06e4ec033.lean/declarations/invariants-id--e07b87afc3fcf4831bf34751.md) | 41 | `result-track:e07b87afc3fcf4831bf34751c9412a589f311edf03738a367643e6fd31bf219e` |
| 4 | `theorem` | [invariants_le](../../../../../mathematics/Analysis/MeasureTheory/Invariants/Variant0ae2b18117045f7865212bf97ddc47e2aecef961974f91e4f36bc9d06e4ec033.lean/declarations/invariants-le--5d70ab5da07357ae166740df.md) | 44 | `result-track:5d70ab5da07357ae166740dfe75c31d827217351e5059d8c279e5c5ba7a31645` |
| 5 | `theorem` | [inf_le_invariants_comp](../../../../../mathematics/Analysis/MeasureTheory/Invariants/Variant0ae2b18117045f7865212bf97ddc47e2aecef961974f91e4f36bc9d06e4ec033.lean/declarations/inf-le-invariants-comp--22aa695494d1c423052a7c96.md) | 46 | `result-track:22aa695494d1c423052a7c96b87c85ee0760b54087311b6aea9b884f00d4b6b4` |
| 6 | `theorem` | [le_invariants_iterate](../../../../../mathematics/Analysis/MeasureTheory/Invariants/Variant0ae2b18117045f7865212bf97ddc47e2aecef961974f91e4f36bc9d06e4ec033.lean/declarations/le-invariants-iterate--7d57b6f2b7997428afab9148.md) | 50 | `result-track:7d57b6f2b7997428afab9148d78b1d98f5060709d82c19ad4b9e1e997925b2a1` |
| 7 | `theorem` | [measurable_invariants_dom](../../../../../mathematics/Analysis/MeasureTheory/Invariants/Variant0ae2b18117045f7865212bf97ddc47e2aecef961974f91e4f36bc9d06e4ec033.lean/declarations/measurable-invariants-dom--adaaa9963cb10fa5c53332d1.md) | 58 | `result-track:adaaa9963cb10fa5c53332d10399c7261aa01ca47eb0bacd17bc4aeb2d69fbac` |
| 8 | `theorem` | [measurable_invariants_of_semiconj](../../../../../mathematics/Analysis/MeasureTheory/Invariants/Variant0ae2b18117045f7865212bf97ddc47e2aecef961974f91e4f36bc9d06e4ec033.lean/declarations/measurable-invariants-of-semiconj--edfd0d6c134b4e34a4a9f446.md) | 62 | `result-track:edfd0d6c134b4e34a4a9f44655413cbb786cd189ab13c8a75c3d829b29f0e110` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
