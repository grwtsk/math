# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.Fintype.Variant32d4efeec3f2addcffcd11fa1cd8f337fdde23923a36d777007c17058dad7470

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1c050a959736cb905e8e2082841f96f31ea7e3a2",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Fintype/Variant32d4efeec3f2addcffcd11fa1cd8f337fdde23923a36d777007c17058dad7470.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Fintype/Variant32d4efeec3f2addcffcd11fa1cd8f337fdde23923a36d777007c17058dad7470.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Fintype/Variant32d4efeec3f2addcffcd11fa1cd8f337fdde23923a36d777007c17058dad7470.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1c050a959736cb905e8e2082841f96f31ea7e3a2`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Fintype/Variant32d4efeec3f2addcffcd11fa1cd8f337fdde23923a36d777007c17058dad7470.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Fintype/Variant32d4efeec3f2addcffcd11fa1cd8f337fdde23923a36d777007c17058dad7470.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.ZMod.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.NormNum` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [Finset.univ_of_card_le_two](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Fintype/Variant32d4efeec3f2addcffcd11fa1cd8f337fdde23923a36d777007c17058dad7470.lean/declarations/finset-univ-of-card-le-two--1e78ae26eff9e11e908d0b65.md) | 20 | `result-track:1e78ae26eff9e11e908d0b65a755ca499d758e5b22433e0e5147af8b76be5fb1` |
| 2 | `lemma` | [Finset.univ_of_card_le_three](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Fintype/Variant32d4efeec3f2addcffcd11fa1cd8f337fdde23923a36d777007c17058dad7470.lean/declarations/finset-univ-of-card-le-three--409577b6d5ebc2ce8356317d.md) | 28 | `result-track:409577b6d5ebc2ce8356317d7d20324c39fec0b5bdc4c9c1d5cc3d59ac71a6fa` |
| 3 | `theorem` | [card_units_lt](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Fintype/Variant32d4efeec3f2addcffcd11fa1cd8f337fdde23923a36d777007c17058dad7470.lean/declarations/card-units-lt--a6c8b89582be979098035e43.md) | 63 | `result-track:a6c8b89582be979098035e43e446d3974571c03ea3527bb119e2830e398d47d1` |
| 4 | `lemma` | [natCard_units_lt](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Fintype/Variant32d4efeec3f2addcffcd11fa1cd8f337fdde23923a36d777007c17058dad7470.lean/declarations/natcard-units-lt--3a7fb27d379f78d4aa1d4543.md) | 66 | `result-track:3a7fb27d379f78d4aa1d4543204957f7379634ea82918396831661fb8b842316` |
| 5 | `lemma` | [orderOf_lt_card](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Fintype/Variant32d4efeec3f2addcffcd11fa1cd8f337fdde23923a36d777007c17058dad7470.lean/declarations/orderof-lt-card--910a44fb88d06c8444908ca1.md) | 72 | `result-track:910a44fb88d06c8444908ca159eaf90a74314a067c7c79609946c294a122830a` |
| 6 | `lemma` | [ZMod.orderOf_lt](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Fintype/Variant32d4efeec3f2addcffcd11fa1cd8f337fdde23923a36d777007c17058dad7470.lean/declarations/zmod-orderof-lt--ea9760f0e6712a4f713bd459.md) | 81 | `result-track:ea9760f0e6712a4f713bd45948691d7140c009ceddd73933555b793d6a7a87a6` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
