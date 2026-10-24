# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.Basic.Variant854f88c6a36f38b193a6a15f55d34f89984849c51ecac7985354b582cedec034

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5060b4b59923749f9e231114ac3606fb4d37b29b",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Basic/Variant854f88c6a36f38b193a6a15f55d34f89984849c51ecac7985354b582cedec034.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variant854f88c6a36f38b193a6a15f55d34f89984849c51ecac7985354b582cedec034.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variant854f88c6a36f38b193a6a15f55d34f89984849c51ecac7985354b582cedec034.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5060b4b59923749f9e231114ac3606fb4d37b29b`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Basic/Variant854f88c6a36f38b193a6a15f55d34f89984849c51ecac7985354b582cedec034.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Basic/Variant854f88c6a36f38b193a6a15f55d34f89984849c51ecac7985354b582cedec034.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Combinatorics.Hall.Finite` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.CofilteredSystem` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Rel` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [hallMatchingsOn](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variant854f88c6a36f38b193a6a15f55d34f89984849c51ecac7985354b582cedec034.lean/declarations/hallmatchingson--b9be25e05ce2fa8c51374089.md) | 66 | `declaration-track:b9be25e05ce2fa8c5137408969d590ce9f642537cee7628caa53af118d3a020a` |
| 2 | `def` | [hallMatchingsOn.restrict](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variant854f88c6a36f38b193a6a15f55d34f89984849c51ecac7985354b582cedec034.lean/declarations/hallmatchingson-restrict--f87578f572067696a91b019e.md) | 70 | `declaration-track:f87578f572067696a91b019e103392d47f228a74afc4c74253676167e0fcdb68` |
| 3 | `theorem` | [hallMatchingsOn.nonempty](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variant854f88c6a36f38b193a6a15f55d34f89984849c51ecac7985354b582cedec034.lean/declarations/hallmatchingson-nonempty--bdf6bde427971471ecea9c4c.md) | 80 | `result-track:bdf6bde427971471ecea9c4c824576fddbea3e11b3da7b9e95ec449289208bc7` |
| 4 | `def` | [hallMatchingsFunctor](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variant854f88c6a36f38b193a6a15f55d34f89984849c51ecac7985354b582cedec034.lean/declarations/hallmatchingsfunctor--0e77e7ee16cda9e94c8a6c40.md) | 93 | `declaration-track:0e77e7ee16cda9e94c8a6c40a31726e232e340e0e4349e05db5db9565b43cc19` |
| 5 | `instance` | [hallMatchingsOn.finite](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variant854f88c6a36f38b193a6a15f55d34f89984849c51ecac7985354b582cedec034.lean/declarations/hallmatchingson-finite--a7d2296eedffa3e100c7819e.md) | 98 | `declaration-track:a7d2296eedffa3e100c7819e67edb3ea6c31575147f0eac00a02bd20fa13d9c0` |
| 6 | `theorem` | [Finset.all_card_le_biUnion_card_iff_exists_injective](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variant854f88c6a36f38b193a6a15f55d34f89984849c51ecac7985354b582cedec034.lean/declarations/finset-all-card-le-biunion-card-iff-exists-injective--97e34913847232c7616174bb.md) | 123 | `result-track:97e34913847232c7616174bb72519780e4f55d9868bdb822a897da5aa91d5ba3` |
| 7 | `instance` | [(anonymous)](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variant854f88c6a36f38b193a6a15f55d34f89984849c51ecac7985354b582cedec034.lean/declarations/instance--b07c0ab6e28cb78bd3a16598.md) | 167 | `declaration-track:b07c0ab6e28cb78bd3a16598533ff45d19a60a585540812dd8ac4bca81515889` |
| 8 | `theorem` | [Fintype.all_card_le_rel_image_card_iff_exists_injective](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variant854f88c6a36f38b193a6a15f55d34f89984849c51ecac7985354b582cedec034.lean/declarations/fintype-all-card-le-rel-image-card-iff-exists-injective--a1d282326051aae01a7ae4a2.md) | 185 | `result-track:a1d282326051aae01a7ae4a2d7e0e5daea64dd24e5b131e34a38699af09c807f` |
| 9 | `theorem` | [Fintype.all_card_le_filter_rel_iff_exists_injective](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variant854f88c6a36f38b193a6a15f55d34f89984849c51ecac7985354b582cedec034.lean/declarations/fintype-all-card-le-filter-rel-iff-exists-injective--68de03002a70853b2841173a.md) | 207 | `result-track:68de03002a70853b2841173a1e8c8b795f1adeb60ca507089a4e9c38568929ce` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
