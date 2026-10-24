# Verification target: GRWTSK.Analysis.MeasureTheory.InnerProductSpace.Variant919b19bbe2e101f7487e0d77a3f975592f4c123353c330cd7a68367a0a0d35ad

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "02411088f4c630726bfd6e9eed29ada061b29866",
  "lexical_observation_count": 3,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/MeasureTheory/InnerProductSpace/Variant919b19bbe2e101f7487e0d77a3f975592f4c123353c330cd7a68367a0a0d35ad.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/MeasureTheory/InnerProductSpace/Variant919b19bbe2e101f7487e0d77a3f975592f4c123353c330cd7a68367a0a0d35ad.lean/index.md) · [Full source](../../../../../mathematics/Analysis/MeasureTheory/InnerProductSpace/Variant919b19bbe2e101f7487e0d77a3f975592f4c123353c330cd7a68367a0a0d35ad.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `02411088f4c630726bfd6e9eed29ada061b29866`.

Source path: `GRWTSK/Analysis/MeasureTheory/InnerProductSpace/Variant919b19bbe2e101f7487e0d77a3f975592f4c123353c330cd7a68367a0a0d35ad.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/MeasureTheory/InnerProductSpace/Variant919b19bbe2e101f7487e0d77a3f975592f4c123353c330cd7a68367a0a0d35ad.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.InnerProductSpace.Orientation` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Measure.Lebesgue.EqHaar` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [Orientation.measure_orthonormalBasis](../../../../../mathematics/Analysis/MeasureTheory/InnerProductSpace/Variant919b19bbe2e101f7487e0d77a3f975592f4c123353c330cd7a68367a0a0d35ad.lean/declarations/orientation-measure-orthonormalbasis--2dbdc1355e8a7adc49ae8af8.md) | 36 | `result-track:2dbdc1355e8a7adc49ae8af8324dc93e59cd4c2b2add0d3016fa36f4cb29ab4a` |
| 2 | `theorem` | [Orientation.measure_eq_volume](../../../../../mathematics/Analysis/MeasureTheory/InnerProductSpace/Variant919b19bbe2e101f7487e0d77a3f975592f4c123353c330cd7a68367a0a0d35ad.lean/declarations/orientation-measure-eq-volume--b8710c39f951d9f6e09fb9af.md) | 50 | `result-track:b8710c39f951d9f6e09fb9af8aed495258a53d2c9a5dc64b353979b6ecfbea6f` |
| 3 | `theorem` | [OrthonormalBasis.volume_parallelepiped](../../../../../mathematics/Analysis/MeasureTheory/InnerProductSpace/Variant919b19bbe2e101f7487e0d77a3f975592f4c123353c330cd7a68367a0a0d35ad.lean/declarations/orthonormalbasis-volume-parallelepiped--c31d0158f7c4ca3efa1866a5.md) | 63 | `result-track:c31d0158f7c4ca3efa1866a573e5e2588f74752926917c49ff4bea13637f30fb` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
