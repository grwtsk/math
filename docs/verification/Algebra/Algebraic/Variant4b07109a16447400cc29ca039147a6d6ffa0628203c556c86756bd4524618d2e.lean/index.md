# Verification target: GRWTSK.Algebra.Algebraic.Variant4b07109a16447400cc29ca039147a6d6ffa0628203c556c86756bd4524618d2e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1f2214a63233c85dda2b88c433b57d2144723504",
  "lexical_observation_count": 21,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Algebraic/Variant4b07109a16447400cc29ca039147a6d6ffa0628203c556c86756bd4524618d2e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Algebraic/Variant4b07109a16447400cc29ca039147a6d6ffa0628203c556c86756bd4524618d2e.lean/index.md) · [Full source](../../../../mathematics/Algebra/Algebraic/Variant4b07109a16447400cc29ca039147a6d6ffa0628203c556c86756bd4524618d2e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1f2214a63233c85dda2b88c433b57d2144723504`.

Source path: `GRWTSK/Algebra/Algebraic/Variant4b07109a16447400cc29ca039147a6d6ffa0628203c556c86756bd4524618d2e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Algebraic/Variant4b07109a16447400cc29ca039147a6d6ffa0628203c556c86756bd4524618d2e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.FieldTheory.IntermediateField.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.FieldTheory.Minpoly.Basic` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.FieldTheory.Tower` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.FreeModule.StrongRankCondition` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Algebraic.Integral` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [IntermediateField.coe_isIntegral_iff](../../../../mathematics/Algebra/Algebraic/Variant4b07109a16447400cc29ca039147a6d6ffa0628203c556c86756bd4524618d2e.lean/declarations/intermediatefield-coe-isintegral-iff--3cacaec6b2a6294d60ed4c93.md) | 29 | `result-track:3cacaec6b2a6294d60ed4c9363bc7d16f16243a2af96f656549d55994711b3ec` |
| 2 | `def` | [Subalgebra.IsAlgebraic.toIntermediateField](../../../../mathematics/Algebra/Algebraic/Variant4b07109a16447400cc29ca039147a6d6ffa0628203c556c86756bd4524618d2e.lean/declarations/subalgebra-isalgebraic-tointermediatefield--2839010745f1f95cbfa1d381.md) | 34 | `declaration-track:2839010745f1f95cbfa1d381bac8f69ac72d9388a68adf735be82260ef5bc066` |
| 3 | `abbrev` | [Algebra.IsAlgebraic.toIntermediateField](../../../../mathematics/Algebra/Algebraic/Variant4b07109a16447400cc29ca039147a6d6ffa0628203c556c86756bd4524618d2e.lean/declarations/algebra-isalgebraic-tointermediatefield--47bad50e8b65e4a058200dd8.md) | 41 | `declaration-track:47bad50e8b65e4a058200dd83f28e59327b724baaef1de3741169b2e26079d47` |
| 4 | `instance` | [isAlgebraic_tower_bot](../../../../mathematics/Algebra/Algebraic/Variant4b07109a16447400cc29ca039147a6d6ffa0628203c556c86756bd4524618d2e.lean/declarations/isalgebraic-tower-bot--9e25ed68660f9bce582f0334.md) | 46 | `declaration-track:9e25ed68660f9bce582f033455d3761fccc009b4d51d374b133d23bbe25a2e5c` |
| 5 | `instance` | [isAlgebraic_tower_top](../../../../mathematics/Algebra/Algebraic/Variant4b07109a16447400cc29ca039147a6d6ffa0628203c556c86756bd4524618d2e.lean/declarations/isalgebraic-tower-top--832b5ff5c3fdaf67a0f0232d.md) | 49 | `declaration-track:832b5ff5c3fdaf67a0f0232de74e0fc95448808aab384e6e57d5b30e0b1e930c` |
| 6 | `instance` | [finiteDimensional_left](../../../../mathematics/Algebra/Algebraic/Variant4b07109a16447400cc29ca039147a6d6ffa0628203c556c86756bd4524618d2e.lean/declarations/finitedimensional-left--f665d8bab07a47d5c23cbb7d.md) | 56 | `declaration-track:f665d8bab07a47d5c23cbb7d0d00d5a0b97bb4b431ed4b68d371fabe2d2cfe5b` |
| 7 | `instance` | [finiteDimensional_right](../../../../mathematics/Algebra/Algebraic/Variant4b07109a16447400cc29ca039147a6d6ffa0628203c556c86756bd4524618d2e.lean/declarations/finitedimensional-right--1b1b4e1186261d79d9b85ba4.md) | 57 | `declaration-track:1b1b4e1186261d79d9b85ba4cd948d56ed5e9a7004001aed816c5100291b8178` |
| 8 | `theorem` | [rank_eq_rank_subalgebra](../../../../mathematics/Algebra/Algebraic/Variant4b07109a16447400cc29ca039147a6d6ffa0628203c556c86756bd4524618d2e.lean/declarations/rank-eq-rank-subalgebra--5acc155258f82c78d03c77ad.md) | 60 | `result-track:5acc155258f82c78d03c77ad5dd559a2172418ce8ce3afecd8d902b60b82bdfe` |
| 9 | `theorem` | [finrank_eq_finrank_subalgebra](../../../../mathematics/Algebra/Algebraic/Variant4b07109a16447400cc29ca039147a6d6ffa0628203c556c86756bd4524618d2e.lean/declarations/finrank-eq-finrank-subalgebra--205f4025d3c0584299ab0c1d.md) | 64 | `result-track:205f4025d3c0584299ab0c1dcf835d100df601cc1f1af1735ebc8b6cf4b984a7` |
| 10 | `theorem` | [eq_of_le_of_finrank_le](../../../../mathematics/Algebra/Algebraic/Variant4b07109a16447400cc29ca039147a6d6ffa0628203c556c86756bd4524618d2e.lean/declarations/eq-of-le-of-finrank-le--0acc9fbca63e552d7a7d2e68.md) | 71 | `result-track:0acc9fbca63e552d7a7d2e68e277346f2859155f702f3cd6fa5b5fcdd5163156` |
| 11 | `theorem` | [eq_of_le_of_finrank_eq](../../../../mathematics/Algebra/Algebraic/Variant4b07109a16447400cc29ca039147a6d6ffa0628203c556c86756bd4524618d2e.lean/declarations/eq-of-le-of-finrank-eq--13906c074204589faf31b6fe.md) | 78 | `result-track:13906c074204589faf31b6fe651da34e925765d223cafbf749fb52cb447384b6` |
| 12 | `theorem` | [eq_of_le_of_finrank_le''](../../../../mathematics/Algebra/Algebraic/Variant4b07109a16447400cc29ca039147a6d6ffa0628203c556c86756bd4524618d2e.lean/declarations/eq-of-le-of-finrank-le--dd4b85d10a9d5260d431f10e.md) | 86 | `result-track:dd4b85d10a9d5260d431f10e9a232c12f7919ddee2ef289a6c8a032cb1e5fdbe` |
| 13 | `theorem` | [eq_of_le_of_finrank_le'](../../../../mathematics/Algebra/Algebraic/Variant4b07109a16447400cc29ca039147a6d6ffa0628203c556c86756bd4524618d2e.lean/declarations/eq-of-le-of-finrank-le--9e47413b31db918563fa5856.md) | 96 | `result-track:9e47413b31db918563fa58565790d3005a02f88f8c8ae9156781bdbae30c4abe` |
| 14 | `theorem` | [eq_of_le_of_finrank_eq'](../../../../mathematics/Algebra/Algebraic/Variant4b07109a16447400cc29ca039147a6d6ffa0628203c556c86756bd4524618d2e.lean/declarations/eq-of-le-of-finrank-eq--342bbff34032639a6757cd83.md) | 104 | `result-track:342bbff34032639a6757cd838945a89d9a1c82aa9c323e7235a570ff567ecbe2` |
| 15 | `instance` | [finiteDimensional_map](../../../../mathematics/Algebra/Algebraic/Variant4b07109a16447400cc29ca039147a6d6ffa0628203c556c86756bd4524618d2e.lean/declarations/finitedimensional-map--bff01b6f3907bdc65df259ef.md) | 110 | `declaration-track:bff01b6f3907bdc65df259ef671539f6b493195ed763d4a2f821a1945cc40cb9` |
| 16 | `theorem` | [isAlgebraic_iff](../../../../mathematics/Algebra/Algebraic/Variant4b07109a16447400cc29ca039147a6d6ffa0628203c556c86756bd4524618d2e.lean/declarations/isalgebraic-iff--d29d4cb270aee14c0e0a0163.md) | 119 | `result-track:d29d4cb270aee14c0e0a0163d62bfea2b633bb8b0031feb870bebc5d6dba504d` |
| 17 | `theorem` | [isIntegral_iff](../../../../mathematics/Algebra/Algebraic/Variant4b07109a16447400cc29ca039147a6d6ffa0628203c556c86756bd4524618d2e.lean/declarations/isintegral-iff--85c6d737f21ea18ac45d2948.md) | 122 | `result-track:85c6d737f21ea18ac45d29486e9290f9cf3ad9e2ef20c362c03f75aa34131111` |
| 18 | `theorem` | [minpoly_eq](../../../../mathematics/Algebra/Algebraic/Variant4b07109a16447400cc29ca039147a6d6ffa0628203c556c86756bd4524618d2e.lean/declarations/minpoly-eq--cedc024c4f4e6265a1f9b538.md) | 125 | `result-track:cedc024c4f4e6265a1f9b5383268636a88122b2cd780bd24894afbf6a3f3df3c` |
| 19 | `def` | [subalgebraEquivIntermediateField](../../../../mathematics/Algebra/Algebraic/Variant4b07109a16447400cc29ca039147a6d6ffa0628203c556c86756bd4524618d2e.lean/declarations/subalgebraequivintermediatefield--e6e6bcaec087b4e091ae0974.md) | 131 | `declaration-track:e6e6bcaec087b4e091ae0974069d31f2dc00d8cd7de16746f008537632112280` |
| 20 | `theorem` | [mem_subalgebraEquivIntermediateField](../../../../mathematics/Algebra/Algebraic/Variant4b07109a16447400cc29ca039147a6d6ffa0628203c556c86756bd4524618d2e.lean/declarations/mem-subalgebraequivintermediatefield--bc432707216fe80de859c814.md) | 141 | `result-track:bc432707216fe80de859c81492862fe5e85ad73ab1c1c83d6399d6b82b7c02d2` |
| 21 | `theorem` | [mem_subalgebraEquivIntermediateField_symm](../../../../mathematics/Algebra/Algebraic/Variant4b07109a16447400cc29ca039147a6d6ffa0628203c556c86756bd4524618d2e.lean/declarations/mem-subalgebraequivintermediatefield-symm--be89636937bd1d6eafd1feab.md) | 146 | `result-track:be89636937bd1d6eafd1feab4895771b3920bba73bd128ee1991204b01b05499` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
