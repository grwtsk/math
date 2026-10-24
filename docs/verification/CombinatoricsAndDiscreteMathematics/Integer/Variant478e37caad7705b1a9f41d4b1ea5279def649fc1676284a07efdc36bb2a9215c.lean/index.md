# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.Integer.Variant478e37caad7705b1a9f41d4b1ea5279def649fc1676284a07efdc36bb2a9215c

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "831e25650672694419d7af519364dd2b521fe133",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Integer/Variant478e37caad7705b1a9f41d4b1ea5279def649fc1676284a07efdc36bb2a9215c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Integer/Variant478e37caad7705b1a9f41d4b1ea5279def649fc1676284a07efdc36bb2a9215c.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Integer/Variant478e37caad7705b1a9f41d4b1ea5279def649fc1676284a07efdc36bb2a9215c.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `831e25650672694419d7af519364dd2b521fe133`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Integer/Variant478e37caad7705b1a9f41d4b1ea5279def649fc1676284a07efdc36bb2a9215c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Integer/Variant478e37caad7705b1a9f41d4b1ea5279def649fc1676284a07efdc36bb2a9215c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.Pointwise.Set.Scalar` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Ring.Subsemiring.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Localization.Defs` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [IsInteger](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Integer/Variant478e37caad7705b1a9f41d4b1ea5279def649fc1676284a07efdc36bb2a9215c.lean/declarations/isinteger--83dd8b057aa211db4d71346d.md) | 41 | `declaration-track:83dd8b057aa211db4d71346d36643847f7015e033339fe6476fb5057e1c94e70` |
| 2 | `theorem` | [isInteger_zero](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Integer/Variant478e37caad7705b1a9f41d4b1ea5279def649fc1676284a07efdc36bb2a9215c.lean/declarations/isinteger-zero--c401b03ca1adb234e59a716d.md) | 46 | `result-track:c401b03ca1adb234e59a716dfa721f4e47b00c8293c06fcc546a82a7d4077c6a` |
| 3 | `theorem` | [isInteger_one](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Integer/Variant478e37caad7705b1a9f41d4b1ea5279def649fc1676284a07efdc36bb2a9215c.lean/declarations/isinteger-one--82afeee2eecbd8d54862d872.md) | 49 | `result-track:82afeee2eecbd8d54862d8729d7c5f5c6d5c38b630dd2547f992fd0bd637dd89` |
| 4 | `theorem` | [isInteger_add](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Integer/Variant478e37caad7705b1a9f41d4b1ea5279def649fc1676284a07efdc36bb2a9215c.lean/declarations/isinteger-add--8f87822493493d92e3cd7462.md) | 52 | `result-track:8f87822493493d92e3cd74626532bd9464891a745c802b0a5acd7f0099246012` |
| 5 | `theorem` | [isInteger_mul](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Integer/Variant478e37caad7705b1a9f41d4b1ea5279def649fc1676284a07efdc36bb2a9215c.lean/declarations/isinteger-mul--22619dade3e452cb442e5ced.md) | 55 | `result-track:22619dade3e452cb442e5ced0547fa29b34842d38629fe258b876eefca2eff0c` |
| 6 | `theorem` | [isInteger_smul](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Integer/Variant478e37caad7705b1a9f41d4b1ea5279def649fc1676284a07efdc36bb2a9215c.lean/declarations/isinteger-smul--68540718051d430448437ec9.md) | 58 | `result-track:68540718051d430448437ec9d594205157627043705de0723f0bbb0190d7a74d` |
| 7 | `theorem` | [exists_integer_multiple'](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Integer/Variant478e37caad7705b1a9f41d4b1ea5279def649fc1676284a07efdc36bb2a9215c.lean/declarations/exists-integer-multiple--4f5748d3f7ecba2053103b30.md) | 70 | `result-track:4f5748d3f7ecba2053103b30dd99c1057a998a199b612042b5108cf53defe315` |
| 8 | `theorem` | [exists_integer_multiple](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Integer/Variant478e37caad7705b1a9f41d4b1ea5279def649fc1676284a07efdc36bb2a9215c.lean/declarations/exists-integer-multiple--21904a25f16305ca2e5236fe.md) | 78 | `result-track:21904a25f16305ca2e5236fe877fac4300c2330fda0e870ff3292a72a9f1769f` |
| 9 | `theorem` | [exist_integer_multiples](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Integer/Variant478e37caad7705b1a9f41d4b1ea5279def649fc1676284a07efdc36bb2a9215c.lean/declarations/exist-integer-multiples--bad5ca793ecb5680b8b0f9a7.md) | 83 | `result-track:bad5ca793ecb5680b8b0f9a79da9587da97857f194dec8192e035d8619c5e6c0` |
| 10 | `theorem` | [exist_integer_multiples_of_finite](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Integer/Variant478e37caad7705b1a9f41d4b1ea5279def649fc1676284a07efdc36bb2a9215c.lean/declarations/exist-integer-multiples-of-finite--db2919c760b5f78368c5071c.md) | 98 | `result-track:db2919c760b5f78368c5071cb81efba1b40b441b032f4e77bba3cb2ec71b97c4` |
| 11 | `theorem` | [exist_integer_multiples_of_finset](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Integer/Variant478e37caad7705b1a9f41d4b1ea5279def649fc1676284a07efdc36bb2a9215c.lean/declarations/exist-integer-multiples-of-finset--397823f10757503f63d99409.md) | 105 | `result-track:397823f10757503f63d994097b248ad30050c18c40aa732e5bf84eabb3717dd5` |
| 12 | `def` | [commonDenom](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Integer/Variant478e37caad7705b1a9f41d4b1ea5279def649fc1676284a07efdc36bb2a9215c.lean/declarations/commondenom--b6fa7753d8564f48d1145490.md) | 110 | `declaration-track:b6fa7753d8564f48d1145490798ed54b5cdcee38681512804374005d9452e96c` |
| 13 | `def` | [integerMultiple](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Integer/Variant478e37caad7705b1a9f41d4b1ea5279def649fc1676284a07efdc36bb2a9215c.lean/declarations/integermultiple--51fe431bf97050c4ff997fcf.md) | 115 | `declaration-track:51fe431bf97050c4ff997fcf04b4fe38afb4247437f4f12045ccad906f5bbc58` |
| 14 | `theorem` | [map_integerMultiple](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Integer/Variant478e37caad7705b1a9f41d4b1ea5279def649fc1676284a07efdc36bb2a9215c.lean/declarations/map-integermultiple--c36db90d84fcfea339ce2897.md) | 119 | `result-track:c36db90d84fcfea339ce2897086f9c8ff8d3d94add60526a0b67c93125aa5ad7` |
| 15 | `def` | [commonDenomOfFinset](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Integer/Variant478e37caad7705b1a9f41d4b1ea5279def649fc1676284a07efdc36bb2a9215c.lean/declarations/commondenomoffinset--4aaa2b4eb186bdf6698e336a.md) | 124 | `declaration-track:4aaa2b4eb186bdf6698e336a1512c50b66e2cc59441f5cf492a71aa77b9ce8fd` |
| 16 | `def` | [finsetIntegerMultiple](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Integer/Variant478e37caad7705b1a9f41d4b1ea5279def649fc1676284a07efdc36bb2a9215c.lean/declarations/finsetintegermultiple--f91fae11c3da49c4a6f0205b.md) | 128 | `declaration-track:f91fae11c3da49c4a6f0205bdba35029ea894b810ce71d16df9b20fa4f726e07` |
| 17 | `theorem` | [finsetIntegerMultiple_image](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Integer/Variant478e37caad7705b1a9f41d4b1ea5279def649fc1676284a07efdc36bb2a9215c.lean/declarations/finsetintegermultiple-image--78b51861feb7d45dfd693542.md) | 133 | `result-track:78b51861feb7d45dfd69354220255dc0a9809049948982fdd7f6ad38b116b3dc` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
