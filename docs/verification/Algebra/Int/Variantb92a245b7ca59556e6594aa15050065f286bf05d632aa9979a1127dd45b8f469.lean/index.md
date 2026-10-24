# Verification target: GRWTSK.Algebra.Int.Variantb92a245b7ca59556e6594aa15050065f286bf05d632aa9979a1127dd45b8f469

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3d2f2869890b4da05859a29e96d28ec6656b1b1a",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Int/Variantb92a245b7ca59556e6594aa15050065f286bf05d632aa9979a1127dd45b8f469.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Int/Variantb92a245b7ca59556e6594aa15050065f286bf05d632aa9979a1127dd45b8f469.lean/index.md) · [Full source](../../../../mathematics/Algebra/Int/Variantb92a245b7ca59556e6594aa15050065f286bf05d632aa9979a1127dd45b8f469.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3d2f2869890b4da05859a29e96d28ec6656b1b1a`.

Source path: `GRWTSK/Algebra/Int/Variantb92a245b7ca59556e6594aa15050065f286bf05d632aa9979a1127dd45b8f469.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Int/Variantb92a245b7ca59556e6594aa15050065f286bf05d632aa9979a1127dd45b8f469.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Module.LocalizedModule.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Module.Submodule.Pointwise` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [IsInteger](../../../../mathematics/Algebra/Int/Variantb92a245b7ca59556e6594aa15050065f286bf05d632aa9979a1127dd45b8f469.lean/declarations/isinteger--f64f8e544ccbd304cd30cf37.md) | 36 | `declaration-track:f64f8e544ccbd304cd30cf374e17f292711bc6dedde83f0dc3c400283a632f30` |
| 2 | `lemma` | [isInteger_zero](../../../../mathematics/Algebra/Int/Variantb92a245b7ca59556e6594aa15050065f286bf05d632aa9979a1127dd45b8f469.lean/declarations/isinteger-zero--e4cf8470c9739762fd088335.md) | 39 | `result-track:e4cf8470c9739762fd088335f9725ff50eeb736047a67831f1dcf3f5887aae26` |
| 3 | `theorem` | [isInteger_add](../../../../mathematics/Algebra/Int/Variantb92a245b7ca59556e6594aa15050065f286bf05d632aa9979a1127dd45b8f469.lean/declarations/isinteger-add--3755c22a6e0c20f776ca5086.md) | 42 | `result-track:3755c22a6e0c20f776ca50864004da39c2dceab42033038eda784355ed6a8d9b` |
| 4 | `theorem` | [isInteger_smul](../../../../mathematics/Algebra/Int/Variantb92a245b7ca59556e6594aa15050065f286bf05d632aa9979a1127dd45b8f469.lean/declarations/isinteger-smul--2fe48c16f59eda318e282d9b.md) | 45 | `result-track:2fe48c16f59eda318e282d9be4efa506e54ff47b09768ba495cb4313b6f71c1f` |
| 5 | `theorem` | [exists_integer_multiple](../../../../mathematics/Algebra/Int/Variantb92a245b7ca59556e6594aa15050065f286bf05d632aa9979a1127dd45b8f469.lean/declarations/exists-integer-multiple--2ec8efd60e5cbd64401aacf0.md) | 54 | `result-track:2ec8efd60e5cbd64401aacf0beaaea99d37a5a30c4aec0587bd391c9bd9952ba` |
| 6 | `theorem` | [exist_integer_multiples](../../../../mathematics/Algebra/Int/Variantb92a245b7ca59556e6594aa15050065f286bf05d632aa9979a1127dd45b8f469.lean/declarations/exist-integer-multiples--c7b0efcfd2b3d71f4ef3aa1f.md) | 59 | `result-track:c7b0efcfd2b3d71f4ef3aa1f0770ea2e01de799d951976682fff20ff7394e5db` |
| 7 | `theorem` | [exist_integer_multiples_of_finite](../../../../mathematics/Algebra/Int/Variantb92a245b7ca59556e6594aa15050065f286bf05d632aa9979a1127dd45b8f469.lean/declarations/exist-integer-multiples-of-finite--e22a59c03232f615a03da73e.md) | 73 | `result-track:e22a59c03232f615a03da73eb03fe9ec41ba58b3a19805cf19c524139f6e4fad` |
| 8 | `theorem` | [exist_integer_multiples_of_finset](../../../../mathematics/Algebra/Int/Variantb92a245b7ca59556e6594aa15050065f286bf05d632aa9979a1127dd45b8f469.lean/declarations/exist-integer-multiples-of-finset--45450b4817ffff8fb5d05161.md) | 80 | `result-track:45450b4817ffff8fb5d05161a841753a04e3aee3d71db969df84f953352dc6b6` |
| 9 | `def` | [commonDenom](../../../../mathematics/Algebra/Int/Variantb92a245b7ca59556e6594aa15050065f286bf05d632aa9979a1127dd45b8f469.lean/declarations/commondenom--e7f170cd86a89c4359f84221.md) | 85 | `declaration-track:e7f170cd86a89c4359f84221830c02cb4c8f83c0911a4afa732d2c1ffaefff65` |
| 10 | `def` | [integerMultiple](../../../../mathematics/Algebra/Int/Variantb92a245b7ca59556e6594aa15050065f286bf05d632aa9979a1127dd45b8f469.lean/declarations/integermultiple--c223677baed4fddf6cf92cad.md) | 90 | `declaration-track:c223677baed4fddf6cf92cad7b82109abeababf794b598ea0577390469835564` |
| 11 | `theorem` | [map_integerMultiple](../../../../mathematics/Algebra/Int/Variantb92a245b7ca59556e6594aa15050065f286bf05d632aa9979a1127dd45b8f469.lean/declarations/map-integermultiple--89a27f20679d627209469295.md) | 94 | `result-track:89a27f20679d62720946929582ee60f23f59f509d1dca5bdc9621d5e7a8f3cee` |
| 12 | `def` | [commonDenomOfFinset](../../../../mathematics/Algebra/Int/Variantb92a245b7ca59556e6594aa15050065f286bf05d632aa9979a1127dd45b8f469.lean/declarations/commondenomoffinset--3e5943a15d060663258fa943.md) | 99 | `declaration-track:3e5943a15d060663258fa943c53a6c9afde35262b0d2d047e0e4ff6a93deba0d` |
| 13 | `def` | [finsetIntegerMultiple](../../../../mathematics/Algebra/Int/Variantb92a245b7ca59556e6594aa15050065f286bf05d632aa9979a1127dd45b8f469.lean/declarations/finsetintegermultiple--dd2579dbefc3ca10304d5e8e.md) | 103 | `declaration-track:dd2579dbefc3ca10304d5e8e2fe36d518c3e6f831b3707352ba34dadce4f2842` |
| 14 | `theorem` | [finsetIntegerMultiple_image](../../../../mathematics/Algebra/Int/Variantb92a245b7ca59556e6594aa15050065f286bf05d632aa9979a1127dd45b8f469.lean/declarations/finsetintegermultiple-image--298c11eba871771f255a0b47.md) | 108 | `result-track:298c11eba871771f255a0b4777a881b9b55775b9165e9eb76f9dc62d3f591a94` |
| 15 | `theorem` | [smul_mem_finsetIntegerMultiple_span](../../../../mathematics/Algebra/Int/Variantb92a245b7ca59556e6594aa15050065f286bf05d632aa9979a1127dd45b8f469.lean/declarations/smul-mem-finsetintegermultiple-span--ca02498e3ac5bff6de88c4a9.md) | 120 | `result-track:ca02498e3ac5bff6de88c4a98e1fce81365d97dc19ea3739b94a400cc5696213` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
