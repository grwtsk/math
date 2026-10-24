# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.Part.Variant6732647c587010e7a4fbc604b751f5f7c836c4a09541bdecfe7062577427c5be

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2be6df87250c0f76a64b15fa4b9c076153e3c1e5",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Part/Variant6732647c587010e7a4fbc604b751f5f7c836c4a09541bdecfe7062577427c5be.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Part/Variant6732647c587010e7a4fbc604b751f5f7c836c4a09541bdecfe7062577427c5be.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Part/Variant6732647c587010e7a4fbc604b751f5f7c836c4a09541bdecfe7062577427c5be.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2be6df87250c0f76a64b15fa4b9c076153e3c1e5`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Part/Variant6732647c587010e7a4fbc604b751f5f7c836c4a09541bdecfe7062577427c5be.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Part/Variant6732647c587010e7a4fbc604b751f5f7c836c4a09541bdecfe7062577427c5be.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Part` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Hom.Basic` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Common` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [Monotone.partBind](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Part/Variant6732647c587010e7a4fbc604b751f5f7c836c4a09541bdecfe7062577427c5be.lean/declarations/monotone-partbind--c858848b4b3327eee7a786c3.md) | 29 | `result-track:c858848b4b3327eee7a786c36a16e903c3625a9a2d774f205a01e5c9e2d03d36` |
| 2 | `lemma` | [Antitone.partBind](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Part/Variant6732647c587010e7a4fbc604b751f5f7c836c4a09541bdecfe7062577427c5be.lean/declarations/antitone-partbind--12d747a606e3e358cbbee1d8.md) | 35 | `result-track:12d747a606e3e358cbbee1d8241c94cd475b0c0f20835ffc48682828a8810954` |
| 3 | `lemma` | [Monotone.partMap](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Part/Variant6732647c587010e7a4fbc604b751f5f7c836c4a09541bdecfe7062577427c5be.lean/declarations/monotone-partmap--07a419453cdea5112c254ca3.md) | 46 | `result-track:07a419453cdea5112c254ca35ac231ab8c409288c9bda29f9434c02ef162adff` |
| 4 | `lemma` | [Antitone.partMap](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Part/Variant6732647c587010e7a4fbc604b751f5f7c836c4a09541bdecfe7062577427c5be.lean/declarations/antitone-partmap--7b783a0a7be307c6e08f1ad5.md) | 49 | `result-track:7b783a0a7be307c6e08f1ad5d1fffb1e35f0c44ea0a24fc2920582f704cfe626` |
| 5 | `lemma` | [Monotone.partSeq](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Part/Variant6732647c587010e7a4fbc604b751f5f7c836c4a09541bdecfe7062577427c5be.lean/declarations/monotone-partseq--cc537dd6445cf79a08da851f.md) | 57 | `result-track:cc537dd6445cf79a08da851f7e191eeb1f16ac9f421769416269058b5a151771` |
| 6 | `lemma` | [Antitone.partSeq](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Part/Variant6732647c587010e7a4fbc604b751f5f7c836c4a09541bdecfe7062577427c5be.lean/declarations/antitone-partseq--3ccf3ec7aed8a63c9bc04216.md) | 60 | `result-track:3ccf3ec7aed8a63c9bc042169bc036b975ae6823e942dcf49cea5ebd6ea93ab7` |
| 7 | `def` | [partBind](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Part/Variant6732647c587010e7a4fbc604b751f5f7c836c4a09541bdecfe7062577427c5be.lean/declarations/partbind--e292b564b4168c0e85de7fa1.md) | 69 | `declaration-track:e292b564b4168c0e85de7fa142630f171acfc41c3d6d1759fff88f6ce3deb770` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
