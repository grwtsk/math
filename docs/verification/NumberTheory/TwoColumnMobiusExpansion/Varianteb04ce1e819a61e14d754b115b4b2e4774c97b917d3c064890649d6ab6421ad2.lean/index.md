# Verification target: GRWTSK.NumberTheory.TwoColumnMobiusExpansion.Varianteb04ce1e819a61e14d754b115b4b2e4774c97b917d3c064890649d6ab6421ad2

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9117d4f052525efc1e21000bd35cb3ccea4d6579",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/TwoColumnMobiusExpansion/Varianteb04ce1e819a61e14d754b115b4b2e4774c97b917d3c064890649d6ab6421ad2.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/NumberTheory/TwoColumnMobiusExpansion/Varianteb04ce1e819a61e14d754b115b4b2e4774c97b917d3c064890649d6ab6421ad2.lean/index.md) · [Full source](../../../../mathematics/NumberTheory/TwoColumnMobiusExpansion/Varianteb04ce1e819a61e14d754b115b4b2e4774c97b917d3c064890649d6ab6421ad2.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9117d4f052525efc1e21000bd35cb3ccea4d6579`.

Source path: `GRWTSK/NumberTheory/TwoColumnMobiusExpansion/Varianteb04ce1e819a61e14d754b115b4b2e4774c97b917d3c064890649d6ab6421ad2.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/TwoColumnMobiusExpansion/Varianteb04ce1e819a61e14d754b115b4b2e4774c97b917d3c064890649d6ab6421ad2.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.Conversation.RadicalMasks` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.ArithmeticFunction.Moebius` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [divisorMask](../../../../mathematics/NumberTheory/TwoColumnMobiusExpansion/Varianteb04ce1e819a61e14d754b115b4b2e4774c97b917d3c064890649d6ab6421ad2.lean/declarations/divisormask--4e9d812c5d4f1b8594d615ca.md) | 28 | `declaration-track:4e9d812c5d4f1b8594d615cab49ff4513714463d3ea1c8610424b49b6d099f96` |
| 2 | `theorem` | [unit_mask_prime](../../../../mathematics/NumberTheory/TwoColumnMobiusExpansion/Varianteb04ce1e819a61e14d754b115b4b2e4774c97b917d3c064890649d6ab6421ad2.lean/declarations/unit-mask-prime--ddd24b16f210dafb9ebd8291.md) | 30 | `result-track:ddd24b16f210dafb9ebd82918d766826bcd37864a56718f0872b84d08aadf2b8` |
| 3 | `theorem` | [unit_mask_finite_product](../../../../mathematics/NumberTheory/TwoColumnMobiusExpansion/Varianteb04ce1e819a61e14d754b115b4b2e4774c97b917d3c064890649d6ab6421ad2.lean/declarations/unit-mask-finite-product--0637a5f204825a455c2be6ad.md) | 35 | `result-track:0637a5f204825a455c2be6ad1572b727334abd3cad9f4718ff71eb328835a874` |
| 4 | `theorem` | [subset_mobius_sign](../../../../mathematics/NumberTheory/TwoColumnMobiusExpansion/Varianteb04ce1e819a61e14d754b115b4b2e4774c97b917d3c064890649d6ab6421ad2.lean/declarations/subset-mobius-sign--51e5021d289f023da3f6c0d2.md) | 42 | `result-track:51e5021d289f023da3f6c0d25b49aeecc7783adb3d7e66d569748559501653a8` |
| 5 | `theorem` | [one_column_signed_expansion](../../../../mathematics/NumberTheory/TwoColumnMobiusExpansion/Varianteb04ce1e819a61e14d754b115b4b2e4774c97b917d3c064890649d6ab6421ad2.lean/declarations/one-column-signed-expansion--60c08775d0e78ee9cf51022b.md) | 51 | `result-track:60c08775d0e78ee9cf51022b37f46ea1ee5c3795b985ee00cbc1d5dc9cbe2b1e` |
| 6 | `theorem` | [two_column_signed_expansion](../../../../mathematics/NumberTheory/TwoColumnMobiusExpansion/Varianteb04ce1e819a61e14d754b115b4b2e4774c97b917d3c064890649d6ab6421ad2.lean/declarations/two-column-signed-expansion--0a038edee45aad5d162730b8.md) | 65 | `result-track:0a038edee45aad5d162730b8bf9ae76979d7623764bc16449c7de133aa0754ba` |
| 7 | `theorem` | [exact_two_column_coefficient_mass](../../../../mathematics/NumberTheory/TwoColumnMobiusExpansion/Varianteb04ce1e819a61e14d754b115b4b2e4774c97b917d3c064890649d6ab6421ad2.lean/declarations/exact-two-column-coefficient-mass--ecd222ed53c8dd30b0b1a85b.md) | 78 | `result-track:ecd222ed53c8dd30b0b1a85bc379776f708e8f4b2ecba11101e469f8f16bf0a2` |
| 8 | `theorem` | [absolute_expansion_retains_complete_mass](../../../../mathematics/NumberTheory/TwoColumnMobiusExpansion/Varianteb04ce1e819a61e14d754b115b4b2e4774c97b917d3c064890649d6ab6421ad2.lean/declarations/absolute-expansion-retains-complete-mass--a55daca6a644e9c09451e7d5.md) | 98 | `result-track:a55daca6a644e9c09451e7d54e103e884c54def0aa7e684190db89bca99ddf77` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
