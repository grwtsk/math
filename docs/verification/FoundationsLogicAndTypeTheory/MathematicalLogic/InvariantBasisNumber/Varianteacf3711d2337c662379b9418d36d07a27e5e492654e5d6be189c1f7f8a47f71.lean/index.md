# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.InvariantBasisNumber.Varianteacf3711d2337c662379b9418d36d07a27e5e492654e5d6be189c1f7f8a47f71

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1ff4ce972441ed87dfee1ac80166fc82d9495f5a",
  "lexical_observation_count": 19,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/InvariantBasisNumber/Varianteacf3711d2337c662379b9418d36d07a27e5e492654e5d6be189c1f7f8a47f71.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/InvariantBasisNumber/Varianteacf3711d2337c662379b9418d36d07a27e5e492654e5d6be189c1f7f8a47f71.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/InvariantBasisNumber/Varianteacf3711d2337c662379b9418d36d07a27e5e492654e5d6be189c1f7f8a47f71.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1ff4ce972441ed87dfee1ac80166fc82d9495f5a`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/InvariantBasisNumber/Varianteacf3711d2337c662379b9418d36d07a27e5e492654e5d6be189c1f7f8a47f71.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/InvariantBasisNumber/Varianteacf3711d2337c662379b9418d36d07a27e5e492654e5d6be189c1f7f8a47f71.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.RingTheory.Ideal.Quotient` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.PrincipalIdealDomain` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [StrongRankCondition](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/InvariantBasisNumber/Varianteacf3711d2337c662379b9418d36d07a27e5e492654e5d6be189c1f7f8a47f71.lean/declarations/strongrankcondition--2173cc965212b3d32c899fad.md) | 82 | `declaration-track:2173cc965212b3d32c899fadb57564583bbd151dee93434d58328ff3cac8d785` |
| 2 | `theorem` | [le_of_fin_injective](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/InvariantBasisNumber/Varianteacf3711d2337c662379b9418d36d07a27e5e492654e5d6be189c1f7f8a47f71.lean/declarations/le-of-fin-injective--44a1302572a56f6cf94c1a87.md) | 87 | `result-track:44a1302572a56f6cf94c1a873d6c319b073062b9e1fd188fa92d84e9e93a0458` |
| 3 | `theorem` | [strongRankCondition_iff_succ](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/InvariantBasisNumber/Varianteacf3711d2337c662379b9418d36d07a27e5e492654e5d6be189c1f7f8a47f71.lean/declarations/strongrankcondition-iff-succ--e233347ba480d52ec31c69ef.md) | 94 | `result-track:e233347ba480d52ec31c69efd059d0caa72fbff6428fc407647fbde27bb9b568` |
| 4 | `theorem` | [card_le_of_injective](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/InvariantBasisNumber/Varianteacf3711d2337c662379b9418d36d07a27e5e492654e5d6be189c1f7f8a47f71.lean/declarations/card-le-of-injective--7ded949c292ac845b8284218.md) | 106 | `result-track:7ded949c292ac845b8284218f9e636626d3f86c7465937b931be527ac1610a1b` |
| 5 | `theorem` | [card_le_of_injective'](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/InvariantBasisNumber/Varianteacf3711d2337c662379b9418d36d07a27e5e492654e5d6be189c1f7f8a47f71.lean/declarations/card-le-of-injective--f8db217ee134a8896504aca7.md) | 115 | `result-track:f8db217ee134a8896504aca7cc843de45135673f15cb3bbd51db6f04b5a6e9eb` |
| 6 | `class` | [RankCondition](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/InvariantBasisNumber/Varianteacf3711d2337c662379b9418d36d07a27e5e492654e5d6be189c1f7f8a47f71.lean/declarations/rankcondition--71d14350d8750e84ac397328.md) | 126 | `declaration-track:71d14350d8750e84ac3973285c980f7685702ac03082970e2948c07cbabf4db0` |
| 7 | `theorem` | [le_of_fin_surjective](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/InvariantBasisNumber/Varianteacf3711d2337c662379b9418d36d07a27e5e492654e5d6be189c1f7f8a47f71.lean/declarations/le-of-fin-surjective--47b7c66e767bb0d742fb524a.md) | 131 | `result-track:47b7c66e767bb0d742fb524a07ed913fb59f5b5895662b7f898ade55c43fb4de` |
| 8 | `theorem` | [card_le_of_surjective](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/InvariantBasisNumber/Varianteacf3711d2337c662379b9418d36d07a27e5e492654e5d6be189c1f7f8a47f71.lean/declarations/card-le-of-surjective--c3ed75be0a778cf291ac1816.md) | 136 | `result-track:c3ed75be0a778cf291ac18167aee84715991ee7532fa5838ec8840c7b5a9ccc3` |
| 9 | `theorem` | [card_le_of_surjective'](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/InvariantBasisNumber/Varianteacf3711d2337c662379b9418d36d07a27e5e492654e5d6be189c1f7f8a47f71.lean/declarations/card-le-of-surjective--f773c747350d22db0e38b1eb.md) | 145 | `result-track:f773c747350d22db0e38b1eb041e308071ab17d102b47b4605b99328f2e5774c` |
| 10 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/InvariantBasisNumber/Varianteacf3711d2337c662379b9418d36d07a27e5e492654e5d6be189c1f7f8a47f71.lean/declarations/instance--27d1f4658e2152b8c82cc61f.md) | 158 | `declaration-track:27d1f4658e2152b8c82cc61f5257169698a0d2471373c4fe82ecd3c2d80a743b` |
| 11 | `class` | [InvariantBasisNumber](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/InvariantBasisNumber/Varianteacf3711d2337c662379b9418d36d07a27e5e492654e5d6be189c1f7f8a47f71.lean/declarations/invariantbasisnumber--00bca62be9b07c49e9092ccf.md) | 167 | `declaration-track:00bca62be9b07c49e9092ccfc266102d381cf4c5581159bd27b12ede4e8e5c91` |
| 12 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/InvariantBasisNumber/Varianteacf3711d2337c662379b9418d36d07a27e5e492654e5d6be189c1f7f8a47f71.lean/declarations/instance--39f2db1de715db4ae6b4ad14.md) | 172 | `declaration-track:39f2db1de715db4ae6b4ad14d99eb8bc338b64169f21ed463a1d48525488604c` |
| 13 | `theorem` | [eq_of_fin_equiv](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/InvariantBasisNumber/Varianteacf3711d2337c662379b9418d36d07a27e5e492654e5d6be189c1f7f8a47f71.lean/declarations/eq-of-fin-equiv--170ac2399b971d850fcec4a6.md) | 184 | `result-track:170ac2399b971d850fcec4a635934b433ece5cb93465182d982605d5f19dfca7` |
| 14 | `theorem` | [card_eq_of_linearEquiv](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/InvariantBasisNumber/Varianteacf3711d2337c662379b9418d36d07a27e5e492654e5d6be189c1f7f8a47f71.lean/declarations/card-eq-of-linearequiv--6d94b8f797f6d85b3c43e71d.md) | 188 | `result-track:6d94b8f797f6d85b3c43e71dd8f5187ef8e877280495522c078256b6528c8fed` |
| 15 | `theorem` | [nontrivial_of_invariantBasisNumber](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/InvariantBasisNumber/Varianteacf3711d2337c662379b9418d36d07a27e5e492654e5d6be189c1f7f8a47f71.lean/declarations/nontrivial-of-invariantbasisnumber--6f76ef6a99dafc1254319e17.md) | 197 | `result-track:6f76ef6a99dafc1254319e17be961b5b0664c23713504e0aac7110862a51ae13` |
| 16 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/InvariantBasisNumber/Varianteacf3711d2337c662379b9418d36d07a27e5e492654e5d6be189c1f7f8a47f71.lean/declarations/instance--edabd93fc0b078f91c124324.md) | 226 | `declaration-track:edabd93fc0b078f91c124324d87fd6b149af707b6bec3ad3a89c6560eb38e2e5` |
| 17 | `def` | [induced_map](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/InvariantBasisNumber/Varianteacf3711d2337c662379b9418d36d07a27e5e492654e5d6be189c1f7f8a47f71.lean/declarations/induced-map--f3e7ba026956ed15567b6f5a.md) | 266 | `declaration-track:f3e7ba026956ed15567b6f5abf6e95228956e2e3dcdd863bda04a6aede59f938` |
| 18 | `def` | [induced_equiv](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/InvariantBasisNumber/Varianteacf3711d2337c662379b9418d36d07a27e5e492654e5d6be189c1f7f8a47f71.lean/declarations/induced-equiv--40174b17926c66a3909d3a00.md) | 279 | `declaration-track:40174b17926c66a3909d3a005a9cf4dbc381d731adeb2ade5d3e29de61836c4b` |
| 19 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/InvariantBasisNumber/Varianteacf3711d2337c662379b9418d36d07a27e5e492654e5d6be189c1f7f8a47f71.lean/declarations/instance--488cbc18e0864103477a5498.md) | 311 | `declaration-track:488cbc18e0864103477a5498241935a73d704a6aa105ff98fe802f93e1b31a07` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
