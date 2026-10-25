# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.Multiplicity.Variant2818fb39139504da91e5a87474f1b3c8028eafdcc631cd9c89633db734a12d37

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "915e34398f6e50c4b34cd3deaf11f4482edb6b00",
  "lexical_observation_count": 21,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/Multiplicity/Variant2818fb39139504da91e5a87474f1b3c8028eafdcc631cd9c89633db734a12d37.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/FoundationsLogicAndTypeTheory/Multiplicity/Variant2818fb39139504da91e5a87474f1b3c8028eafdcc631cd9c89633db734a12d37.lean/index.md) · [Full source](../../../../mathematics/FoundationsLogicAndTypeTheory/Multiplicity/Variant2818fb39139504da91e5a87474f1b3c8028eafdcc631cd9c89633db734a12d37.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `915e34398f6e50c4b34cd3deaf11f4482edb6b00`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/Multiplicity/Variant2818fb39139504da91e5a87474f1b3c8028eafdcc631cd9c89633db734a12d37.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/Multiplicity/Variant2818fb39139504da91e5a87474f1b3c8028eafdcc631cd9c89633db734a12d37.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.BigOperators.Intervals` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.GeomSum` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Ring.Abs` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.Log` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.Prime.Defs` — import line 15; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.Digits` — import line 16; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Multiplicity` — import line 17; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [emultiplicity_eq_card_pow_dvd](../../../../mathematics/FoundationsLogicAndTypeTheory/Multiplicity/Variant2818fb39139504da91e5a87474f1b3c8028eafdcc631cd9c89633db734a12d37.lean/declarations/emultiplicity-eq-card-pow-dvd--d5ee78e36c463b439b85ab35.md) | 66 | `result-track:d5ee78e36c463b439b85ab3568fee5d4d420c5115ad158f5a2c13cf6e7136866` |
| 2 | `theorem` | [emultiplicity_one](../../../../mathematics/FoundationsLogicAndTypeTheory/Multiplicity/Variant2818fb39139504da91e5a87474f1b3c8028eafdcc631cd9c89633db734a12d37.lean/declarations/emultiplicity-one--75bdbe5c3b9838bc42ac9b38.md) | 90 | `result-track:75bdbe5c3b9838bc42ac9b38efac8cac61adc6cf087f86f51db4ba51773913f6` |
| 3 | `theorem` | [emultiplicity_mul](../../../../mathematics/FoundationsLogicAndTypeTheory/Multiplicity/Variant2818fb39139504da91e5a87474f1b3c8028eafdcc631cd9c89633db734a12d37.lean/declarations/emultiplicity-mul--fa879ee18b69f07bb35aa8d6.md) | 93 | `result-track:fa879ee18b69f07bb35aa8d6fe30b4d3c8a61ffabcb9eae89f782bf0300deda1` |
| 4 | `theorem` | [emultiplicity_pow](../../../../mathematics/FoundationsLogicAndTypeTheory/Multiplicity/Variant2818fb39139504da91e5a87474f1b3c8028eafdcc631cd9c89633db734a12d37.lean/declarations/emultiplicity-pow--5d7bc65ef55ab7c75d5b3bb8.md) | 97 | `result-track:5d7bc65ef55ab7c75d5b3bb845e731bbf87b863d77f1efa5c2260e4d09b05bc5` |
| 5 | `theorem` | [emultiplicity_self](../../../../mathematics/FoundationsLogicAndTypeTheory/Multiplicity/Variant2818fb39139504da91e5a87474f1b3c8028eafdcc631cd9c89633db734a12d37.lean/declarations/emultiplicity-self--8f7ebbe3df74cd364cca04d2.md) | 101 | `result-track:8f7ebbe3df74cd364cca04d28e3db41b3dd29a45c583ebe3e5e10f8b319b7f47` |
| 6 | `theorem` | [emultiplicity_pow_self](../../../../mathematics/FoundationsLogicAndTypeTheory/Multiplicity/Variant2818fb39139504da91e5a87474f1b3c8028eafdcc631cd9c89633db734a12d37.lean/declarations/emultiplicity-pow-self--f1f59ade655663271425a1ef.md) | 104 | `result-track:f1f59ade655663271425a1effe77a42cbe00af9bf0825d78a23f5afb5618757e` |
| 7 | `theorem` | [emultiplicity_factorial](../../../../mathematics/FoundationsLogicAndTypeTheory/Multiplicity/Variant2818fb39139504da91e5a87474f1b3c8028eafdcc631cd9c89633db734a12d37.lean/declarations/emultiplicity-factorial--0dbc170b0fc9a2b6614f2323.md) | 111 | `result-track:0dbc170b0fc9a2b6614f2323ca82d303a2bb242a9053f767c369a3fa798e220b` |
| 8 | `theorem` | [sub_one_mul_multiplicity_factorial](../../../../mathematics/FoundationsLogicAndTypeTheory/Multiplicity/Variant2818fb39139504da91e5a87474f1b3c8028eafdcc631cd9c89633db734a12d37.lean/declarations/sub-one-mul-multiplicity-factorial--5f73d384d729dbaea37915c6.md) | 129 | `result-track:5f73d384d729dbaea37915c63cbe08d6c8732dbcf32edcfb0537994976dc3eec` |
| 9 | `theorem` | [emultiplicity_factorial_mul_succ](../../../../mathematics/FoundationsLogicAndTypeTheory/Multiplicity/Variant2818fb39139504da91e5a87474f1b3c8028eafdcc631cd9c89633db734a12d37.lean/declarations/emultiplicity-factorial-mul-succ--162a251933602d323a48cd36.md) | 139 | `result-track:162a251933602d323a48cd36cc03813aeaa8c5b12ba6fbdbd87d9c0298195f08` |
| 10 | `theorem` | [emultiplicity_factorial_mul](../../../../mathematics/FoundationsLogicAndTypeTheory/Multiplicity/Variant2818fb39139504da91e5a87474f1b3c8028eafdcc631cd9c89633db734a12d37.lean/declarations/emultiplicity-factorial-mul--ede174aa441c31fe2c459a4b.md) | 162 | `result-track:ede174aa441c31fe2c459a4b9ca11fa971305ae815f943db0ddc34411f64efaf` |
| 11 | `theorem` | [pow_dvd_factorial_iff](../../../../mathematics/FoundationsLogicAndTypeTheory/Multiplicity/Variant2818fb39139504da91e5a87474f1b3c8028eafdcc631cd9c89633db734a12d37.lean/declarations/pow-dvd-factorial-iff--d767d248cd017d910390c474.md) | 173 | `result-track:d767d248cd017d910390c4743cc3974de597a3ce8b60bfd5c1b1ac3a144959a6` |
| 12 | `theorem` | [emultiplicity_factorial_le_div_pred](../../../../mathematics/FoundationsLogicAndTypeTheory/Multiplicity/Variant2818fb39139504da91e5a87474f1b3c8028eafdcc631cd9c89633db734a12d37.lean/declarations/emultiplicity-factorial-le-div-pred--a256ca9a5c2bb245b9b6de9b.md) | 178 | `result-track:a256ca9a5c2bb245b9b6de9b8dd33b2f997eaadeb1786570b3b885ae7c644e8d` |
| 13 | `theorem` | [multiplicity_choose_aux](../../../../mathematics/FoundationsLogicAndTypeTheory/Multiplicity/Variant2818fb39139504da91e5a87474f1b3c8028eafdcc631cd9c89633db734a12d37.lean/declarations/multiplicity-choose-aux--b03b09e3bfa455b185ca8c78.md) | 184 | `result-track:b03b09e3bfa455b185ca8c78234a77768ccc33136d6dc3ad4b8ac615106a09a8` |
| 14 | `theorem` | [emultiplicity_choose'](../../../../mathematics/FoundationsLogicAndTypeTheory/Multiplicity/Variant2818fb39139504da91e5a87474f1b3c8028eafdcc631cd9c89633db734a12d37.lean/declarations/emultiplicity-choose--6b4d208d3ecaba672294795b.md) | 199 | `result-track:6b4d208d3ecaba672294795bb4a44a42f8471e1a2d135c7bc97a12c3bff37d3e` |
| 15 | `theorem` | [emultiplicity_choose](../../../../mathematics/FoundationsLogicAndTypeTheory/Multiplicity/Variant2818fb39139504da91e5a87474f1b3c8028eafdcc631cd9c89633db734a12d37.lean/declarations/emultiplicity-choose--38ff59a7790acf93ef450cc8.md) | 218 | `result-track:38ff59a7790acf93ef450cc8aeb82164ad695c7022b9fc91582f67fab8264524` |
| 16 | `theorem` | [emultiplicity_le_emultiplicity_choose_add](../../../../mathematics/FoundationsLogicAndTypeTheory/Multiplicity/Variant2818fb39139504da91e5a87474f1b3c8028eafdcc631cd9c89633db734a12d37.lean/declarations/emultiplicity-le-emultiplicity-choose-add--04f405b6c6a088df60a5fc89.md) | 226 | `result-track:04f405b6c6a088df60a5fc8977e97475d0a61227daa1f6ec420825e16f18169a` |
| 17 | `theorem` | [emultiplicity_choose_prime_pow_add_emultiplicity](../../../../mathematics/FoundationsLogicAndTypeTheory/Multiplicity/Variant2818fb39139504da91e5a87474f1b3c8028eafdcc631cd9c89633db734a12d37.lean/declarations/emultiplicity-choose-prime-pow-add-emultiplicity--1cfc55082ee78ed20aff9371.md) | 238 | `result-track:1cfc55082ee78ed20aff93716957d6369990873d466b7986474643e915b71718` |
| 18 | `theorem` | [emultiplicity_choose_prime_pow](../../../../mathematics/FoundationsLogicAndTypeTheory/Multiplicity/Variant2818fb39139504da91e5a87474f1b3c8028eafdcc631cd9c89633db734a12d37.lean/declarations/emultiplicity-choose-prime-pow--083d2a72904e1cbbeab0d415.md) | 258 | `result-track:083d2a72904e1cbbeab0d4155f176661680fd554c6d5c02f155a465add91bf5f` |
| 19 | `theorem` | [dvd_choose_pow](../../../../mathematics/FoundationsLogicAndTypeTheory/Multiplicity/Variant2818fb39139504da91e5a87474f1b3c8028eafdcc631cd9c89633db734a12d37.lean/declarations/dvd-choose-pow--e9ba64af340562fd29155677.md) | 267 | `result-track:e9ba64af340562fd291556775b2cbf8abf77d002c0c45d45c68cee4e46d075a8` |
| 20 | `theorem` | [dvd_choose_pow_iff](../../../../mathematics/FoundationsLogicAndTypeTheory/Multiplicity/Variant2818fb39139504da91e5a87474f1b3c8028eafdcc631cd9c89633db734a12d37.lean/declarations/dvd-choose-pow-iff--99949002c0eacf905e955118.md) | 275 | `result-track:99949002c0eacf905e955118ff49a99a243dcfe1ee5fe7a32b55cdc4fbec6c1d` |
| 21 | `theorem` | [emultiplicity_two_factorial_lt](../../../../mathematics/FoundationsLogicAndTypeTheory/Multiplicity/Variant2818fb39139504da91e5a87474f1b3c8028eafdcc631cd9c89633db734a12d37.lean/declarations/emultiplicity-two-factorial-lt--92907d05f2d38c41927bd74f.md) | 281 | `result-track:92907d05f2d38c41927bd74f9ada1c746ba4b0960757dae7556dc9c21226ebee` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
