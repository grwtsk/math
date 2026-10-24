# Verification target: GRWTSK.Algebra.Henselian.Variant7642d867a5c7c04438bac1e51341c3b9d0f8631858797668228e48e8577904f6

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2a31195d7ff266e651ed63818fe2e0812c24d920",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Henselian/Variant7642d867a5c7c04438bac1e51341c3b9d0f8631858797668228e48e8577904f6.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Henselian/Variant7642d867a5c7c04438bac1e51341c3b9d0f8631858797668228e48e8577904f6.lean/index.md) · [Full source](../../../../mathematics/Algebra/Henselian/Variant7642d867a5c7c04438bac1e51341c3b9d0f8631858797668228e48e8577904f6.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2a31195d7ff266e651ed63818fe2e0812c24d920`.

Source path: `GRWTSK/Algebra/Henselian/Variant7642d867a5c7c04438bac1e51341c3b9d0f8631858797668228e48e8577904f6.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Henselian/Variant7642d867a5c7c04438bac1e51341c3b9d0f8631858797668228e48e8577904f6.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Polynomial.Taylor` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.LocalRing.ResidueField.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.AdicCompletion.Basic` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [isLocalHom_of_le_jacobson_bot](../../../../mathematics/Algebra/Henselian/Variant7642d867a5c7c04438bac1e51341c3b9d0f8631858797668228e48e8577904f6.lean/declarations/islocalhom-of-le-jacobson-bot--26f8ce50c10ee698e16a6598.md) | 62 | `result-track:26f8ce50c10ee698e16a6598eb9cb6b513d527c7d81c95407b08ede2a1a2b4e0` |
| 2 | `class` | [HenselianRing](../../../../mathematics/Algebra/Henselian/Variant7642d867a5c7c04438bac1e51341c3b9d0f8631858797668228e48e8577904f6.lean/declarations/henselianring--a1bc2798108987ad48f50b8a.md) | 89 | `declaration-track:a1bc2798108987ad48f50b8ad26282634185f547db154eab5bb9a694de3c4bba` |
| 3 | `class` | [HenselianLocalRing](../../../../mathematics/Algebra/Henselian/Variant7642d867a5c7c04438bac1e51341c3b9d0f8631858797668228e48e8577904f6.lean/declarations/henselianlocalring--ca3b5338bf07d4b3db40d89f.md) | 103 | `declaration-track:ca3b5338bf07d4b3db40d89fec8eae186999a426c557744ab623e7e8a41b657c` |
| 4 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Henselian/Variant7642d867a5c7c04438bac1e51341c3b9d0f8631858797668228e48e8577904f6.lean/declarations/instance--210873aaa840ee0937699b70.md) | 109 | `declaration-track:210873aaa840ee0937699b7091a5899b1c018ff292befbc940f49242e25020ba` |
| 5 | `theorem` | [HenselianLocalRing.TFAE](../../../../mathematics/Algebra/Henselian/Variant7642d867a5c7c04438bac1e51341c3b9d0f8631858797668228e48e8577904f6.lean/declarations/henselianlocalring-tfae--9814b6b285e717791c7f9eaa.md) | 114 | `result-track:9814b6b285e717791c7f9eaab80b2907e4f4936832a3459aadefa44b581ec603` |
| 6 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Henselian/Variant7642d867a5c7c04438bac1e51341c3b9d0f8631858797668228e48e8577904f6.lean/declarations/instance--b630b1c701f0f30f9084bdc3.md) | 149 | `declaration-track:b630b1c701f0f30f9084bdc317b8b33c83d7f88975cc473c2ad12ce91e643a0e` |
| 7 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Henselian/Variant7642d867a5c7c04438bac1e51341c3b9d0f8631858797668228e48e8577904f6.lean/declarations/instance--40ce54efdb247c4427cdc663.md) | 165 | `declaration-track:40ce54efdb247c4427cdc6630d32bf5829d6d8c1c2cbef200fb7a3223b85fd31` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
