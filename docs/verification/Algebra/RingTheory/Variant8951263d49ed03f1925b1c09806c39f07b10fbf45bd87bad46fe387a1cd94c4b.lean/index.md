# Verification target: GRWTSK.Algebra.Ring.Variant8951263d49ed03f1925b1c09806c39f07b10fbf45bd87bad46fe387a1cd94c4b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6b043101e420358f963b9c9531320a98d3bc2a0d",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Ring/Variant8951263d49ed03f1925b1c09806c39f07b10fbf45bd87bad46fe387a1cd94c4b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/RingTheory/Variant8951263d49ed03f1925b1c09806c39f07b10fbf45bd87bad46fe387a1cd94c4b.lean/index.md) · [Full source](../../../../mathematics/Algebra/RingTheory/Variant8951263d49ed03f1925b1c09806c39f07b10fbf45bd87bad46fe387a1cd94c4b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6b043101e420358f963b9c9531320a98d3bc2a0d`.

Source path: `GRWTSK/Algebra/Ring/Variant8951263d49ed03f1925b1c09806c39f07b10fbf45bd87bad46fe387a1cd94c4b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Ring/Variant8951263d49ed03f1925b1c09806c39f07b10fbf45bd87bad46fe387a1cd94c4b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Field.Equiv` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Artinian.Module` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Localization.Defs` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.LocalRing.MaximalIdeal.Basic` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [isNilpotent_jacobson_bot](../../../../mathematics/Algebra/RingTheory/Variant8951263d49ed03f1925b1c09806c39f07b10fbf45bd87bad46fe387a1cd94c4b.lean/declarations/isnilpotent-jacobson-bot--3aefe95d387348afc9b4152c.md) | 50 | `result-track:3aefe95d387348afc9b4152ca4a68311f801754ade969371a4c87ad1a4dfb0ad` |
| 2 | `lemma` | [jacobson_eq_radical](../../../../mathematics/Algebra/RingTheory/Variant8951263d49ed03f1925b1c09806c39f07b10fbf45bd87bad46fe387a1cd94c4b.lean/declarations/jacobson-eq-radical--1e6d19be0807d5141e51ce46.md) | 56 | `result-track:1e6d19be0807d5141e51ce464f9a9ed415f80d636c4c6628278efaea63453f3a` |
| 3 | `theorem` | [isNilpotent_nilradical](../../../../mathematics/Algebra/RingTheory/Variant8951263d49ed03f1925b1c09806c39f07b10fbf45bd87bad46fe387a1cd94c4b.lean/declarations/isnilpotent-nilradical--88e3e15c45e70c7369badf8b.md) | 59 | `result-track:88e3e15c45e70c7369badf8be87fa4295b3e7f38907ae4d0570e62c0f7a19efd` |
| 4 | `theorem` | [isField_of_isReduced_of_isLocalRing](../../../../mathematics/Algebra/RingTheory/Variant8951263d49ed03f1925b1c09806c39f07b10fbf45bd87bad46fe387a1cd94c4b.lean/declarations/isfield-of-isreduced-of-islocalring--f7ee27c7f5e3f7d4ad5d6535.md) | 65 | `result-track:f7ee27c7f5e3f7d4ad5d6535f5159eb3159f83ec732e8929d1cdb311c6b8679c` |
| 5 | `theorem` | [isUnit_of_mem_nonZeroDivisors](../../../../mathematics/Algebra/RingTheory/Variant8951263d49ed03f1925b1c09806c39f07b10fbf45bd87bad46fe387a1cd94c4b.lean/declarations/isunit-of-mem-nonzerodivisors--2b2c227e17f548a3c36d5dd9.md) | 74 | `result-track:2b2c227e17f548a3c36d5dd9cc0977ae93999ec4edb7f9ec5b6b8bf85bcf898f` |
| 6 | `theorem` | [isUnit_iff_mem_nonZeroDivisors](../../../../mathematics/Algebra/RingTheory/Variant8951263d49ed03f1925b1c09806c39f07b10fbf45bd87bad46fe387a1cd94c4b.lean/declarations/isunit-iff-mem-nonzerodivisors--4885a8106c62fb5d042fa8b6.md) | 81 | `result-track:4885a8106c62fb5d042fa8b6016104470a38d8be7b41f54ed0a1fed604ddb166` |
| 7 | `theorem` | [isUnit_submonoid_eq](../../../../mathematics/Algebra/RingTheory/Variant8951263d49ed03f1925b1c09806c39f07b10fbf45bd87bad46fe387a1cd94c4b.lean/declarations/isunit-submonoid-eq--411cfc218c2c4fe7e127f77c.md) | 84 | `result-track:411cfc218c2c4fe7e127f77cc661ef6ea262c141abefd96d3048fff927368e80` |
| 8 | `theorem` | [localization_surjective](../../../../mathematics/Algebra/RingTheory/Variant8951263d49ed03f1925b1c09806c39f07b10fbf45bd87bad46fe387a1cd94c4b.lean/declarations/localization-surjective--4f2e5418dcf323f6e25627bb.md) | 95 | `result-track:4f2e5418dcf323f6e25627bb7f2478b61d4dc0f2587cc92e835d6b5fe87c6664` |
| 9 | `theorem` | [localization_artinian](../../../../mathematics/Algebra/RingTheory/Variant8951263d49ed03f1925b1c09806c39f07b10fbf45bd87bad46fe387a1cd94c4b.lean/declarations/localization-artinian--087a4f88da66cd8ca622a9c5.md) | 108 | `result-track:087a4f88da66cd8ca622a9c5e4ff80c378d491beba407aecfa0ec1ff66d3d6dc` |
| 10 | `instance` | [(anonymous)](../../../../mathematics/Algebra/RingTheory/Variant8951263d49ed03f1925b1c09806c39f07b10fbf45bd87bad46fe387a1cd94c4b.lean/declarations/instance--27656d249130359e026a3b6f.md) | 113 | `declaration-track:27656d249130359e026a3b6f7033d4e5d0f4845fdfa6ee31d6002eece17421ea` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
