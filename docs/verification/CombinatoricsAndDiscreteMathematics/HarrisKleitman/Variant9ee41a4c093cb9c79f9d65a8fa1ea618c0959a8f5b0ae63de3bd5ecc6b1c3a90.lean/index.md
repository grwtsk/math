# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.HarrisKleitman.Variant9ee41a4c093cb9c79f9d65a8fa1ea618c0959a8f5b0ae63de3bd5ecc6b1c3a90

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "36860ac3f32bb7844a1fe0771b0457800573f89c",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/HarrisKleitman/Variant9ee41a4c093cb9c79f9d65a8fa1ea618c0959a8f5b0ae63de3bd5ecc6b1c3a90.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/HarrisKleitman/Variant9ee41a4c093cb9c79f9d65a8fa1ea618c0959a8f5b0ae63de3bd5ecc6b1c3a90.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/HarrisKleitman/Variant9ee41a4c093cb9c79f9d65a8fa1ea618c0959a8f5b0ae63de3bd5ecc6b1c3a90.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `36860ac3f32bb7844a1fe0771b0457800573f89c`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/HarrisKleitman/Variant9ee41a4c093cb9c79f9d65a8fa1ea618c0959a8f5b0ae63de3bd5ecc6b1c3a90.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/HarrisKleitman/Variant9ee41a4c093cb9c79f9d65a8fa1ea618c0959a8f5b0ae63de3bd5ecc6b1c3a90.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Combinatorics.SetFamily.Compression.Down` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Order.UpperLower.Basic` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Fintype.BigOperators` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [IsLowerSet.nonMemberSubfamily](../../../../mathematics/CombinatoricsAndDiscreteMathematics/HarrisKleitman/Variant9ee41a4c093cb9c79f9d65a8fa1ea618c0959a8f5b0ae63de3bd5ecc6b1c3a90.lean/declarations/islowerset-nonmembersubfamily--ac3ccd0cc1f4a32ae2bc6dc6.md) | 44 | `result-track:ac3ccd0cc1f4a32ae2bc6dc65874cb10d204910f0e5800685bd1b81ab3b86ab2` |
| 2 | `theorem` | [IsLowerSet.memberSubfamily](../../../../mathematics/CombinatoricsAndDiscreteMathematics/HarrisKleitman/Variant9ee41a4c093cb9c79f9d65a8fa1ea618c0959a8f5b0ae63de3bd5ecc6b1c3a90.lean/declarations/islowerset-membersubfamily--8a575401bd1c1d42dc823f63.md) | 50 | `result-track:8a575401bd1c1d42dc823f63ad5a2407b5d6ff6d0e1c2c7c64acab4d5e8ec263` |
| 3 | `theorem` | [IsLowerSet.memberSubfamily_subset_nonMemberSubfamily](../../../../mathematics/CombinatoricsAndDiscreteMathematics/HarrisKleitman/Variant9ee41a4c093cb9c79f9d65a8fa1ea618c0959a8f5b0ae63de3bd5ecc6b1c3a90.lean/declarations/islowerset-membersubfamily-subset-nonmembersubfamily--c8f2c8c359d04f25ca10dad5.md) | 57 | `result-track:c8f2c8c359d04f25ca10dad57c96701c4f59fc64854eb718331dc75cde05401c` |
| 4 | `theorem` | [IsLowerSet.le_card_inter_finset'](../../../../mathematics/CombinatoricsAndDiscreteMathematics/HarrisKleitman/Variant9ee41a4c093cb9c79f9d65a8fa1ea618c0959a8f5b0ae63de3bd5ecc6b1c3a90.lean/declarations/islowerset-le-card-inter-finset--8c87d09223167272410a15be.md) | 64 | `result-track:8c87d09223167272410a15beb14bc8e7d2c0a46d270dcb54d20da83ee782fb0a` |
| 5 | `theorem` | [IsLowerSet.le_card_inter_finset](../../../../mathematics/CombinatoricsAndDiscreteMathematics/HarrisKleitman/Variant9ee41a4c093cb9c79f9d65a8fa1ea618c0959a8f5b0ae63de3bd5ecc6b1c3a90.lean/declarations/islowerset-le-card-inter-finset--5f9e479c4dd38d008a450f22.md) | 105 | `result-track:5f9e479c4dd38d008a450f220db2cecd65b751bc89f701b6677115e8fbaac646` |
| 6 | `theorem` | [IsUpperSet.card_inter_le_finset](../../../../mathematics/CombinatoricsAndDiscreteMathematics/HarrisKleitman/Variant9ee41a4c093cb9c79f9d65a8fa1ea618c0959a8f5b0ae63de3bd5ecc6b1c3a90.lean/declarations/isupperset-card-inter-le-finset--9263cdf626734379eedff5bd.md) | 111 | `result-track:9263cdf626734379eedff5bdcb8d950c80b3d7de60865ca5371647d7b31a9e35` |
| 7 | `theorem` | [IsLowerSet.card_inter_le_finset](../../../../mathematics/CombinatoricsAndDiscreteMathematics/HarrisKleitman/Variant9ee41a4c093cb9c79f9d65a8fa1ea618c0959a8f5b0ae63de3bd5ecc6b1c3a90.lean/declarations/islowerset-card-inter-le-finset--3b0dd9e97149af089e5a967e.md) | 122 | `result-track:3b0dd9e97149af089e5a967e9b89131c4eead1439b95649c982b8ebb499d91f0` |
| 8 | `theorem` | [IsUpperSet.le_card_inter_finset](../../../../mathematics/CombinatoricsAndDiscreteMathematics/HarrisKleitman/Variant9ee41a4c093cb9c79f9d65a8fa1ea618c0959a8f5b0ae63de3bd5ecc6b1c3a90.lean/declarations/isupperset-le-card-inter-finset--f16f5d2c62a4845635a939c7.md) | 130 | `result-track:f16f5d2c62a4845635a939c70b7e58027357fe796f2b45a9c500b74e678eca5d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
