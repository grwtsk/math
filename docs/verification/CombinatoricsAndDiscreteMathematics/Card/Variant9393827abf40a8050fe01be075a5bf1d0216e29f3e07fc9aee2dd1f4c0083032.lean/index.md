# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.Card.Variant9393827abf40a8050fe01be075a5bf1d0216e29f3e07fc9aee2dd1f4c0083032

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "27297e9a4ad563e0a5c8940d9dd09f7761c43f8f",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Card/Variant9393827abf40a8050fe01be075a5bf1d0216e29f3e07fc9aee2dd1f4c0083032.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Card/Variant9393827abf40a8050fe01be075a5bf1d0216e29f3e07fc9aee2dd1f4c0083032.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Card/Variant9393827abf40a8050fe01be075a5bf1d0216e29f3e07fc9aee2dd1f4c0083032.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `27297e9a4ad563e0a5c8940d9dd09f7761c43f8f`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Card/Variant9393827abf40a8050fe01be075a5bf1d0216e29f3e07fc9aee2dd1f4c0083032.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Card/Variant9393827abf40a8050fe01be075a5bf1d0216e29f3e07fc9aee2dd1f4c0083032.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Finset.Sym` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Fintype.Sum` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Fintype.Prod` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.BigOperators.Group.Finset.Basic` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [e1](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Card/Variant9393827abf40a8050fe01be075a5bf1d0216e29f3e07fc9aee2dd1f4c0083032.lean/declarations/e1--1feea207eb2d72bcf90fc98f.md) | 75 | `declaration-track:1feea207eb2d72bcf90fc98f72ca11d44be394c497b025222b79d52e6ffb59ae` |
| 2 | `def` | [e2](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Card/Variant9393827abf40a8050fe01be075a5bf1d0216e29f3e07fc9aee2dd1f4c0083032.lean/declarations/e2--baf6365f9e0d8f03dab31103.md) | 85 | `declaration-track:baf6365f9e0d8f03dab31103003121cba465886c6217d8d5854dfe077fb267d1` |
| 3 | `theorem` | [card_sym_fin_eq_multichoose](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Card/Variant9393827abf40a8050fe01be075a5bf1d0216e29f3e07fc9aee2dd1f4c0083032.lean/declarations/card-sym-fin-eq-multichoose--4766d395904ca78f6c9ba4d8.md) | 98 | `result-track:4766d395904ca78f6c9ba4d8f0a48874c12c5c54cf2c354358fa7bc02c36c70e` |
| 4 | `theorem` | [card_sym_eq_multichoose](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Card/Variant9393827abf40a8050fe01be075a5bf1d0216e29f3e07fc9aee2dd1f4c0083032.lean/declarations/card-sym-eq-multichoose--11c0db9796e6d978c1421248.md) | 110 | `result-track:11c0db9796e6d978c142124853176adc14b30c208552757c336911970ce3021f` |
| 5 | `theorem` | [card_sym_eq_choose](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Card/Variant9393827abf40a8050fe01be075a5bf1d0216e29f3e07fc9aee2dd1f4c0083032.lean/declarations/card-sym-eq-choose--4e210163d7ef31cdf5868a61.md) | 117 | `result-track:4e210163d7ef31cdf5868a61687afe735e175fbd3f9d9f87aa0c1c2f5c4b85f3` |
| 6 | `theorem` | [card_image_diag](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Card/Variant9393827abf40a8050fe01be075a5bf1d0216e29f3e07fc9aee2dd1f4c0083032.lean/declarations/card-image-diag--1db7632b84cb98bc13700152.md) | 130 | `result-track:1db7632b84cb98bc1370015204aacf9f4b569bcf1302ba40fa1276439bbfe0f5` |
| 7 | `lemma` | [two_mul_card_image_offDiag](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Card/Variant9393827abf40a8050fe01be075a5bf1d0216e29f3e07fc9aee2dd1f4c0083032.lean/declarations/two-mul-card-image-offdiag--e2baa04cf53424f403004c4e.md) | 138 | `result-track:e2baa04cf53424f403004c4ec33edf6633657edff6b6cd05ac80d80283e7a049` |
| 8 | `theorem` | [card_image_offDiag](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Card/Variant9393827abf40a8050fe01be075a5bf1d0216e29f3e07fc9aee2dd1f4c0083032.lean/declarations/card-image-offdiag--c14f183e42b28a0fee1d008a.md) | 160 | `result-track:c14f183e42b28a0fee1d008ae1c7f3ae90ecb79d1915e21a6196e3e3f8b09a8a` |
| 9 | `theorem` | [card_subtype_diag](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Card/Variant9393827abf40a8050fe01be075a5bf1d0216e29f3e07fc9aee2dd1f4c0083032.lean/declarations/card-subtype-diag--7f67ad9267fc257d3f9de2cf.md) | 164 | `result-track:7f67ad9267fc257d3f9de2cfc4a90abdcfa1c117fa4e287b2991cb85a9a9adc3` |
| 10 | `theorem` | [card_subtype_not_diag](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Card/Variant9393827abf40a8050fe01be075a5bf1d0216e29f3e07fc9aee2dd1f4c0083032.lean/declarations/card-subtype-not-diag--5d092ac2f04d7342ef158128.md) | 172 | `result-track:5d092ac2f04d7342ef158128302ad10f6ee486d7bf162a5a42436815fb3f4af7` |
| 11 | `theorem` | [card](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Card/Variant9393827abf40a8050fe01be075a5bf1d0216e29f3e07fc9aee2dd1f4c0083032.lean/declarations/card--3308affcda8bcd4e8873a1d9.md) | 182 | `result-track:3308affcda8bcd4e8873a1d9643ba4745ce1872ff68fd52b32dec5c23785fbaa` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
