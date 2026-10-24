# Verification target: GRWTSK.Analysis.MeasureTheory.AddCircle.Variant8d4b47acb1797287a8e8c636092f4250cd32603e322c96ccb88232b04d54eda1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "98c435cd26e63bf21520868af467abc29d3cd170",
  "lexical_observation_count": 3,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/MeasureTheory/AddCircle/Variant8d4b47acb1797287a8e8c636092f4250cd32603e322c96ccb88232b04d54eda1.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/MeasureTheory/AddCircle/Variant8d4b47acb1797287a8e8c636092f4250cd32603e322c96ccb88232b04d54eda1.lean/index.md) · [Full source](../../../../../mathematics/Analysis/MeasureTheory/AddCircle/Variant8d4b47acb1797287a8e8c636092f4250cd32603e322c96ccb88232b04d54eda1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `98c435cd26e63bf21520868af467abc29d3cd170`.

Source path: `GRWTSK/Analysis/MeasureTheory/AddCircle/Variant8d4b47acb1797287a8e8c636092f4250cd32603e322c96ccb88232b04d54eda1.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/MeasureTheory/AddCircle/Variant8d4b47acb1797287a8e8c636092f4250cd32603e322c96ccb88232b04d54eda1.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.MeasureTheory.Integral.IntervalIntegral.Periodic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.ZMod.QuotientGroup` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Group.AEStabilizer` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [closedBall_ae_eq_ball](../../../../../mathematics/Analysis/MeasureTheory/AddCircle/Variant8d4b47acb1797287a8e8c636092f4250cd32603e322c96ccb88232b04d54eda1.lean/declarations/closedball-ae-eq-ball--5669bd6c8a34b9df20cd7af7.md) | 33 | `result-track:5669bd6c8a34b9df20cd7af7c87b3bf8742983d9a5a4ad1428b66667879fdbdb` |
| 2 | `theorem` | [isAddFundamentalDomain_of_ae_ball](../../../../../mathematics/Analysis/MeasureTheory/AddCircle/Variant8d4b47acb1797287a8e8c636092f4250cd32603e322c96ccb88232b04d54eda1.lean/declarations/isaddfundamentaldomain-of-ae-ball--099dc52cf96ac4f7e6d8e578.md) | 51 | `result-track:099dc52cf96ac4f7e6d8e57867090e102f44e59a542fee2025245eb4e71c81cf` |
| 3 | `theorem` | [volume_of_add_preimage_eq](../../../../../mathematics/Analysis/MeasureTheory/AddCircle/Variant8d4b47acb1797287a8e8c636092f4250cd32603e322c96ccb88232b04d54eda1.lean/declarations/volume-of-add-preimage-eq--0aaad548369efd8452b0b2dc.md) | 91 | `result-track:0aaad548369efd8452b0b2dcf2eb3231e5655c671fcf7cb2c02b5b6e24b03862` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
