# Verification target: GRWTSK.Analysis.MeasureTheory.Representation.Variantc08b4ff1f829b0e634ab84207585443af824b6cc8537a573fababd1a2f284321

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "efdba3d1226626136b1af1106c42d2bbc7799ae1",
  "lexical_observation_count": 3,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/MeasureTheory/Representation/Variantc08b4ff1f829b0e634ab84207585443af824b6cc8537a573fababd1a2f284321.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/MeasureTheory/Representation/Variantc08b4ff1f829b0e634ab84207585443af824b6cc8537a573fababd1a2f284321.lean/index.md) · [Full source](../../../../../mathematics/Analysis/MeasureTheory/Representation/Variantc08b4ff1f829b0e634ab84207585443af824b6cc8537a573fababd1a2f284321.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `efdba3d1226626136b1af1106c42d2bbc7799ae1`.

Source path: `GRWTSK/Analysis/MeasureTheory/Representation/Variantc08b4ff1f829b0e634ab84207585443af824b6cc8537a573fababd1a2f284321.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/MeasureTheory/Representation/Variantc08b4ff1f829b0e634ab84207585443af824b6cc8537a573fababd1a2f284321.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.SpecialFunctions.Sigmoid` — import line 17; external provider; requires a separately pinned dependency.
- `Mathlib.Probability.CDF` — import line 18; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [exists_measurable_map_eq_unitInterval_aux](../../../../../mathematics/Analysis/MeasureTheory/Representation/Variantc08b4ff1f829b0e634ab84207585443af824b6cc8537a573fababd1a2f284321.lean/declarations/exists-measurable-map-eq-unitinterval-aux--cae3401b887cc2a8badc353b.md) | 54 | `result-track:cae3401b887cc2a8badc353be429568a5e1e02b6eece7cbdd3d74693b8880b28` |
| 2 | `theorem` | [exists_measurable_map_eq_unitInterval](../../../../../mathematics/Analysis/MeasureTheory/Representation/Variantc08b4ff1f829b0e634ab84207585443af824b6cc8537a573fababd1a2f284321.lean/declarations/exists-measurable-map-eq-unitinterval--5586140fa6506eda6602f5c8.md) | 119 | `result-track:5586140fa6506eda6602f5c8bf619a4bb2f0bf53f9f33c2b15488378485a5e4c` |
| 3 | `theorem` | [MeasureTheory.Measure.exists_measurable_map_eq](../../../../../mathematics/Analysis/MeasureTheory/Representation/Variantc08b4ff1f829b0e634ab84207585443af824b6cc8537a573fababd1a2f284321.lean/declarations/measuretheory-measure-exists-measurable-map-eq--1ff782120049d8a2b8bee6f0.md) | 134 | `result-track:1ff782120049d8a2b8bee6f0274e5a4e6aa811b8a2dfa4b00875d0dcbd9670b9` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
