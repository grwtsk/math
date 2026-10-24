# Verification target: GRWTSK.Combinatorics.Matching.CyclicDutyDeficiency

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8e6a8f8a46ac0dccb0830b5a6e37879c0425167c",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Combinatorics/Matching/CyclicDutyDeficiency.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Matching/CyclicDutyDeficiency.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Matching/CyclicDutyDeficiency.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8e6a8f8a46ac0dccb0830b5a6e37879c0425167c`.

Source path: `GRWTSK/Combinatorics/Matching/CyclicDutyDeficiency.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Combinatorics/Matching/CyclicDutyDeficiency.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Fintype.Card` — import line 4; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Finset.Card` — import line 5; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [Checkpoint](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Matching/CyclicDutyDeficiency.lean/declarations/checkpoint--0a46c4b6bc7fdf18a6d82e21.md) | 31 | `declaration-track:0a46c4b6bc7fdf18a6d82e21bc2c0a6c0bf3d12e0c042c93d4ecee53891e006d` |
| 2 | `structure` | [NineDuty](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Matching/CyclicDutyDeficiency.lean/declarations/nineduty--9e262d0aa47efc2da58ccf7d.md) | 36 | `declaration-track:9e262d0aa47efc2da58ccf7d3ecdbfed221a2b049da3fcf3020963b7cb5d3cd0` |
| 3 | `structure` | [PartialDutyMatching](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Matching/CyclicDutyDeficiency.lean/declarations/partialdutymatching--07d92b5b3c21a3a981db47f8.md) | 42 | `declaration-track:07d92b5b3c21a3a981db47f893c49eb69e5d0569ef06a17e1811ba7a12c2f9ba` |
| 4 | `def` | [PartialDutyMatching.deficiency](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Matching/CyclicDutyDeficiency.lean/declarations/partialdutymatching-deficiency--16c4c71b92f3711691e3fcd8.md) | 58 | `declaration-track:16c4c71b92f3711691e3fcd86b4c9696cb3dc970d37ff8a5e0a1eb3e074d0185` |
| 5 | `theorem` | [PartialDutyMatching.covered_card_le_players](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Matching/CyclicDutyDeficiency.lean/declarations/partialdutymatching-covered-card-le-players--2a0b05d3f27578831346ee17.md) | 63 | `result-track:2a0b05d3f27578831346ee17afc56d2f297265ca0fb8bf1011d2afbcc67965f6` |
| 6 | `theorem` | [PartialDutyMatching.shortage_le_deficiency](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Matching/CyclicDutyDeficiency.lean/declarations/partialdutymatching-shortage-le-deficiency--fe2db10483e401b09b998425.md) | 72 | `result-track:fe2db10483e401b09b99842587594660a75d7ffc655b812290904ec7e307c8b5` |
| 7 | `theorem` | [PartialDutyMatching.complete_requires_capacity](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Matching/CyclicDutyDeficiency.lean/declarations/partialdutymatching-complete-requires-capacity--da8b9e3fca1e2281b57fb50a.md) | 80 | `result-track:da8b9e3fca1e2281b57fb50a09abf64416e5f30fba5f2ba35f4eebce237f1783` |
| 8 | `theorem` | [nine_duties_four_players_have_five_missing](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Matching/CyclicDutyDeficiency.lean/declarations/nine-duties-four-players-have-five-missing--89f324f50887f8d250180bf2.md) | 90 | `result-track:89f324f50887f8d250180bf235e7f35f612113fdd5cfc46cba61c67fc601897f` |
| 9 | `theorem` | [nine_duties_four_players_not_complete](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Matching/CyclicDutyDeficiency.lean/declarations/nine-duties-four-players-not-complete--8d173029df9d43672e2c9838.md) | 99 | `result-track:8d173029df9d43672e2c9838dce046478ae5472cd5535e17b21770df0bb3c9a2` |
| 10 | `theorem` | [four_players_nine_tags_discrepancy](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Matching/CyclicDutyDeficiency.lean/declarations/four-players-nine-tags-discrepancy--497501b75638a267e680bb5d.md) | 109 | `result-track:497501b75638a267e680bb5deac5b975bb7d983819d1d4925ab9a689336238ef` |
| 11 | `theorem` | [ten_players_nine_tags_discrepancy](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Matching/CyclicDutyDeficiency.lean/declarations/ten-players-nine-tags-discrepancy--0cdc941019481f361caec649.md) | 113 | `result-track:0cdc941019481f361caec6495e3504369d0d2c523460ba399029c9cdf6cd263b` |
| 12 | `def` | [admissionBefore](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Matching/CyclicDutyDeficiency.lean/declarations/admissionbefore--1120005638acbd3fa9ca72d2.md) | 118 | `declaration-track:1120005638acbd3fa9ca72d27e77651836451f9b0e6d37ce7cf3f829ac94f2be` |
| 13 | `def` | [admissionAfter](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Matching/CyclicDutyDeficiency.lean/declarations/admissionafter--79c425d63cf8cdd7c29df551.md) | 120 | `declaration-track:79c425d63cf8cdd7c29df5510cdac593b3030adb33336c357fb2e9397bebf1fc` |
| 14 | `theorem` | [admission_after_constraint_not_identity_total](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Matching/CyclicDutyDeficiency.lean/declarations/admission-after-constraint-not-identity-total--034703e550c0d312f3a65970.md) | 122 | `result-track:034703e550c0d312f3a6597079159946c98b8916a47cd1305c1d209bdd39aef6` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
