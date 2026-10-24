# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.Imo2021Q1.Variant86e35f82ed5d5fbe212c3da9b05ec2834ac07d3537c62ec9064996963d0724b1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3c5823ab79a726a006b41e36289498e1865d86de",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Imo2021Q1/Variant86e35f82ed5d5fbe212c3da9b05ec2834ac07d3537c62ec9064996963d0724b1.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Imo2021Q1/Variant86e35f82ed5d5fbe212c3da9b05ec2834ac07d3537c62ec9064996963d0724b1.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Imo2021Q1/Variant86e35f82ed5d5fbe212c3da9b05ec2834ac07d3537c62ec9064996963d0724b1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3c5823ab79a726a006b41e36289498e1865d86de`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Imo2021Q1/Variant86e35f82ed5d5fbe212c3da9b05ec2834ac07d3537c62ec9064996963d0724b1.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Imo2021Q1/Variant86e35f82ed5d5fbe212c3da9b05ec2834ac07d3537c62ec9064996963d0724b1.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Order.Interval.Finset.Nat` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.IntervalCases` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Linarith` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [exists_numbers_in_interval](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Imo2021Q1/Variant86e35f82ed5d5fbe212c3da9b05ec2834ac07d3537c62ec9064996963d0724b1.lean/declarations/exists-numbers-in-interval--83fdf5a8ff3da0abe34dbfd3.md) | 46 | `result-track:83fdf5a8ff3da0abe34dbfd34b56457b2568cb13d8026678df82786beb84e630` |
| 2 | `lemma` | [exists_triplet_summing_to_squares](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Imo2021Q1/Variant86e35f82ed5d5fbe212c3da9b05ec2834ac07d3537c62ec9064996963d0724b1.lean/declarations/exists-triplet-summing-to-squares--bd3fcfce3048275f0917ae71.md) | 63 | `result-track:bd3fcfce3048275f0917ae711d9b940ccdd93d8da4dbb5e37b97eb37cdd8d676` |
| 3 | `lemma` | [exists_finset_3_le_card_with_pairs_summing_to_squares](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Imo2021Q1/Variant86e35f82ed5d5fbe212c3da9b05ec2834ac07d3537c62ec9064996963d0724b1.lean/declarations/exists-finset-3-le-card-with-pairs-summing-to-squares--0dbb1c5430e4d4100c1e6726.md) | 77 | `result-track:0dbb1c5430e4d4100c1e6726f077a2524207ff553e979482cce9c80e55ae5f75` |
| 4 | `theorem` | [imo2021_q1](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Imo2021Q1/Variant86e35f82ed5d5fbe212c3da9b05ec2834ac07d3537c62ec9064996963d0724b1.lean/declarations/imo2021-q1--41df5342c2a7603febb29e21.md) | 105 | `result-track:41df5342c2a7603febb29e21f9b2c68bb573b2404b7fb152b55c69ee1b162365` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
