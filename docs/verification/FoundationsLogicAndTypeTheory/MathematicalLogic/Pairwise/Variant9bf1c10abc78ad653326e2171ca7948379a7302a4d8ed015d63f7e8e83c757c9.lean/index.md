# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.Pairwise.Variant9bf1c10abc78ad653326e2171ca7948379a7302a4d8ed015d63f7e8e83c757c9

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "cc6d5116550960969fd7b39e5f2044756a1e3fbd",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Pairwise/Variant9bf1c10abc78ad653326e2171ca7948379a7302a4d8ed015d63f7e8e83c757c9.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Pairwise/Variant9bf1c10abc78ad653326e2171ca7948379a7302a4d8ed015d63f7e8e83c757c9.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Pairwise/Variant9bf1c10abc78ad653326e2171ca7948379a7302a4d8ed015d63f7e8e83c757c9.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `cc6d5116550960969fd7b39e5f2044756a1e3fbd`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Pairwise/Variant9bf1c10abc78ad653326e2171ca7948379a7302a4d8ed015d63f7e8e83c757c9.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/Pairwise/Variant9bf1c10abc78ad653326e2171ca7948379a7302a4d8ed015d63f7e8e83c757c9.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Logic.Function.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Set.Defs` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [Pairwise](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Pairwise/Variant9bf1c10abc78ad653326e2171ca7948379a7302a4d8ed015d63f7e8e83c757c9.lean/declarations/pairwise--5460ad11413c2a968e5de878.md) | 38 | `declaration-track:5460ad11413c2a968e5de8782d7031393fd22262d60e37a3ce84b29bda784391` |
| 2 | `theorem` | [Pairwise.mono](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Pairwise/Variant9bf1c10abc78ad653326e2171ca7948379a7302a4d8ed015d63f7e8e83c757c9.lean/declarations/pairwise-mono--a97aa4903d90292568648410.md) | 41 | `result-track:a97aa4903d90292568648410a49ff945a42b4d24204a181b1ae7fce1df6531a4` |
| 3 | `theorem` | [Pairwise.eq](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Pairwise/Variant9bf1c10abc78ad653326e2171ca7948379a7302a4d8ed015d63f7e8e83c757c9.lean/declarations/pairwise-eq--fdad11826420739cfd996ed4.md) | 44 | `result-track:fdad11826420739cfd996ed424a5bd84ee3597daefc34dc624d26a48e63f2665` |
| 4 | `lemma` | [Subsingleton.pairwise](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Pairwise/Variant9bf1c10abc78ad653326e2171ca7948379a7302a4d8ed015d63f7e8e83c757c9.lean/declarations/subsingleton-pairwise--37c736b2062a00591ea5a456.md) | 47 | `result-track:37c736b2062a00591ea5a456ad35353d6291925f1a84a0c5db8c88258a06d224` |
| 5 | `theorem` | [Function.injective_iff_pairwise_ne](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Pairwise/Variant9bf1c10abc78ad653326e2171ca7948379a7302a4d8ed015d63f7e8e83c757c9.lean/declarations/function-injective-iff-pairwise-ne--35a191dd8bfaf70d5ed71c82.md) | 50 | `result-track:35a191dd8bfaf70d5ed71c8270d08d6f38cbccc96e55f8ae46d39341d79e80c3` |
| 6 | `lemma` | [Pairwise.comp_of_injective](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Pairwise/Variant9bf1c10abc78ad653326e2171ca7948379a7302a4d8ed015d63f7e8e83c757c9.lean/declarations/pairwise-comp-of-injective--3d300fb430561130e34abf1b.md) | 55 | `result-track:3d300fb430561130e34abf1b229629a4015c667053f1dd4bf5c620c5de234169` |
| 7 | `lemma` | [Pairwise.of_comp_of_surjective](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Pairwise/Variant9bf1c10abc78ad653326e2171ca7948379a7302a4d8ed015d63f7e8e83c757c9.lean/declarations/pairwise-of-comp-of-surjective--8b33e0423e5195b60a506b83.md) | 59 | `result-track:8b33e0423e5195b60a506b835fb76a68369d176ba6ac0fd3115791a39139a4cc` |
| 8 | `lemma` | [Function.Bijective.pairwise_comp_iff](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Pairwise/Variant9bf1c10abc78ad653326e2171ca7948379a7302a4d8ed015d63f7e8e83c757c9.lean/declarations/function-bijective-pairwise-comp-iff--4f07dced7514dccf9dc01074.md) | 62 | `result-track:4f07dced7514dccf9dc01074ec990b626103b36bdbab87b31bca1d9f43b9038a` |
| 9 | `def` | [Pairwise](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Pairwise/Variant9bf1c10abc78ad653326e2171ca7948379a7302a4d8ed015d63f7e8e83c757c9.lean/declarations/pairwise--c8690d1749cdaffc35be1b1d.md) | 69 | `declaration-track:c8690d1749cdaffc35be1b1df51ad810811723df7022bb24ba3291abebfd3bdb` |
| 10 | `theorem` | [pairwise_of_forall](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Pairwise/Variant9bf1c10abc78ad653326e2171ca7948379a7302a4d8ed015d63f7e8e83c757c9.lean/declarations/pairwise-of-forall--fcf737ce895a4c3aef95901d.md) | 72 | `result-track:fcf737ce895a4c3aef95901da4b30cfcd6ee9a99d6602f2163ff3b44a46e46b2` |
| 11 | `theorem` | [Pairwise.imp_on](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Pairwise/Variant9bf1c10abc78ad653326e2171ca7948379a7302a4d8ed015d63f7e8e83c757c9.lean/declarations/pairwise-imp-on--c23a029c44f8d803ff607fdf.md) | 75 | `result-track:c23a029c44f8d803ff607fdf4fc257a28a2348c7dbe651393f973bef473d4fc0` |
| 12 | `theorem` | [Pairwise.imp](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Pairwise/Variant9bf1c10abc78ad653326e2171ca7948379a7302a4d8ed015d63f7e8e83c757c9.lean/declarations/pairwise-imp--4132c7c240577a4f7335d24f.md) | 79 | `result-track:4132c7c240577a4f7335d24fd4cc9ed988ce40a8d2798285e35a9de2e467769c` |
| 13 | `theorem` | [Pairwise.eq](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Pairwise/Variant9bf1c10abc78ad653326e2171ca7948379a7302a4d8ed015d63f7e8e83c757c9.lean/declarations/pairwise-eq--89491ef756d66cdbdbfa9090.md) | 82 | `result-track:89491ef756d66cdbdbfa90907d6ac89b5bac1f83cab44a55520f4bf5e02bbef8` |
| 14 | `theorem` | [_root_.GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.Pairwise.Variant4878cc8c45f2ea329aa666d611a33902b322e6304e9277592f7f719726e8ec47.Reflexive.set_pairwise_iff](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Pairwise/Variant9bf1c10abc78ad653326e2171ca7948379a7302a4d8ed015d63f7e8e83c757c9.lean/declarations/root-grwtsk-foundationslogicandtypetheory-mathematicallogic-pairwise-var--caac296f98820ce9271d81ee.md) | 85 | `result-track:caac296f98820ce9271d81ee2583f504e7f86dae48e6368528ac4929599ff3be` |
| 15 | `theorem` | [Pairwise.on_injective](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Pairwise/Variant9bf1c10abc78ad653326e2171ca7948379a7302a4d8ed015d63f7e8e83c757c9.lean/declarations/pairwise-on-injective--04b3135a9359c63447d3c876.md) | 90 | `result-track:04b3135a9359c63447d3c876af2c572cc688b6d058cc81252e89f6a4cbbd2be2` |
| 16 | `theorem` | [Pairwise.set_pairwise](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Pairwise/Variant9bf1c10abc78ad653326e2171ca7948379a7302a4d8ed015d63f7e8e83c757c9.lean/declarations/pairwise-set-pairwise--6946b3f571f99dcc9dd2d25c.md) | 95 | `result-track:6946b3f571f99dcc9dd2d25ccc0970b43dba263785fad6ae582ddd70e742aca9` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
