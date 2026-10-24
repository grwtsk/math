# Verification target: GRWTSK.Analysis.MeasureTheory.AEStabilizer.Variant6fb514134f3887c518c50cc1fb24b5267f5f3699259abd9b4ce92a5a2db73efd

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "db596965658704f4f5380740c05396e2ab3d40c0",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/MeasureTheory/AEStabilizer/Variant6fb514134f3887c518c50cc1fb24b5267f5f3699259abd9b4ce92a5a2db73efd.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/MeasureTheory/AEStabilizer/Variant6fb514134f3887c518c50cc1fb24b5267f5f3699259abd9b4ce92a5a2db73efd.lean/index.md) · [Full source](../../../../../mathematics/Analysis/MeasureTheory/AEStabilizer/Variant6fb514134f3887c518c50cc1fb24b5267f5f3699259abd9b4ce92a5a2db73efd.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `db596965658704f4f5380740c05396e2ab3d40c0`.

Source path: `GRWTSK/Analysis/MeasureTheory/AEStabilizer/Variant6fb514134f3887c518c50cc1fb24b5267f5f3699259abd9b4ce92a5a2db73efd.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/MeasureTheory/AEStabilizer/Variant6fb514134f3887c518c50cc1fb24b5267f5f3699259abd9b4ce92a5a2db73efd.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.MeasureTheory.Group.Action` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Filter.EventuallyConst` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [aestabilizer](../../../../../mathematics/Analysis/MeasureTheory/AEStabilizer/Variant6fb514134f3887c518c50cc1fb24b5267f5f3699259abd9b4ce92a5a2db73efd.lean/declarations/aestabilizer--46455a5cb495c5e4de9cae09.md) | 48 | `declaration-track:46455a5cb495c5e4de9cae099da0c0811144b2c217402458a20ba2703d7dfe8a` |
| 2 | `lemma` | [mem_aestabilizer](../../../../../mathematics/Analysis/MeasureTheory/AEStabilizer/Variant6fb514134f3887c518c50cc1fb24b5267f5f3699259abd9b4ce92a5a2db73efd.lean/declarations/mem-aestabilizer--2b847ed19a981ee8a35a5fa0.md) | 59 | `result-track:2b847ed19a981ee8a35a5fa0dedb03242736d462412bd5c765dbf66977396127` |
| 3 | `lemma` | [stabilizer_le_aestabilizer](../../../../../mathematics/Analysis/MeasureTheory/AEStabilizer/Variant6fb514134f3887c518c50cc1fb24b5267f5f3699259abd9b4ce92a5a2db73efd.lean/declarations/stabilizer-le-aestabilizer--3f5963a286cbf30860c8e8b0.md) | 62 | `result-track:3f5963a286cbf30860c8e8b0b9397c2559f6276f5225ab59224d399d9c5aa674` |
| 4 | `lemma` | [aestabilizer_empty](../../../../../mathematics/Analysis/MeasureTheory/AEStabilizer/Variant6fb514134f3887c518c50cc1fb24b5267f5f3699259abd9b4ce92a5a2db73efd.lean/declarations/aestabilizer-empty--aa31cf9ffaeac938154bbc75.md) | 67 | `result-track:aa31cf9ffaeac938154bbc75d97c16d389782ffbd064662cda0b45d4d09838fa` |
| 5 | `lemma` | [aestabilizer_univ](../../../../../mathematics/Analysis/MeasureTheory/AEStabilizer/Variant6fb514134f3887c518c50cc1fb24b5267f5f3699259abd9b4ce92a5a2db73efd.lean/declarations/aestabilizer-univ--6a463a5f4ff2d1216b3a1680.md) | 70 | `result-track:6a463a5f4ff2d1216b3a1680408c9cf58d4a50a6e4aa6f7c9469b19c5929fe38` |
| 6 | `lemma` | [aestabilizer_congr](../../../../../mathematics/Analysis/MeasureTheory/AEStabilizer/Variant6fb514134f3887c518c50cc1fb24b5267f5f3699259abd9b4ce92a5a2db73efd.lean/declarations/aestabilizer-congr--735e4f70f45f71e13bfc14d5.md) | 73 | `result-track:735e4f70f45f71e13bfc14d5de0d39b888ee71ab86735975f7ba6b639f5802f4` |
| 7 | `lemma` | [aestabilizer_of_aeconst](../../../../../mathematics/Analysis/MeasureTheory/AEStabilizer/Variant6fb514134f3887c518c50cc1fb24b5267f5f3699259abd9b4ce92a5a2db73efd.lean/declarations/aestabilizer-of-aeconst--e1f6f39a99a44b579bd2e2b4.md) | 77 | `result-track:e1f6f39a99a44b579bd2e2b46aa02b95601e380c1264aff6af09d1ee28b3fb40` |
| 8 | `theorem` | [smul_ae_eq_self_of_mem_zpowers](../../../../../mathematics/Analysis/MeasureTheory/AEStabilizer/Variant6fb514134f3887c518c50cc1fb24b5267f5f3699259abd9b4ce92a5a2db73efd.lean/declarations/smul-ae-eq-self-of-mem-zpowers--b36e1aab270ad74c098052f2.md) | 91 | `result-track:b36e1aab270ad74c098052f2028204b085dafd476a1f0fb521a68d3abb2f9c1b` |
| 9 | `theorem` | [inv_smul_ae_eq_self](../../../../../mathematics/Analysis/MeasureTheory/AEStabilizer/Variant6fb514134f3887c518c50cc1fb24b5267f5f3699259abd9b4ce92a5a2db73efd.lean/declarations/inv-smul-ae-eq-self--d3e6ad5e4c057c32f3c02af5.md) | 97 | `result-track:d3e6ad5e4c057c32f3c02af52e03ea6c58828dc8a938d558f1a3b31becf87f84` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
