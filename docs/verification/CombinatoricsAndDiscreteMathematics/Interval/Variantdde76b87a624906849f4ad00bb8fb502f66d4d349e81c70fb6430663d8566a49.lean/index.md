# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.Interval.Variantdde76b87a624906849f4ad00bb8fb502f66d4d349e81c70fb6430663d8566a49

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0723f783e0bff75746c85602b4a2672abdecdcfb",
  "lexical_observation_count": 26,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Interval/Variantdde76b87a624906849f4ad00bb8fb502f66d4d349e81c70fb6430663d8566a49.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interval/Variantdde76b87a624906849f4ad00bb8fb502f66d4d349e81c70fb6430663d8566a49.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interval/Variantdde76b87a624906849f4ad00bb8fb502f66d4d349e81c70fb6430663d8566a49.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0723f783e0bff75746c85602b4a2672abdecdcfb`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Interval/Variantdde76b87a624906849f4ad00bb8fb502f66d4d349e81c70fb6430663d8566a49.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Interval/Variantdde76b87a624906849f4ad00bb8fb502f66d4d349e81c70fb6430663d8566a49.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.Embedding` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Ring.Int` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Ring.CharZero` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Interval.Finset.Basic` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [instLocallyFiniteOrder](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interval/Variantdde76b87a624906849f4ad00bb8fb502f66d4d349e81c70fb6430663d8566a49.lean/declarations/instlocallyfiniteorder--600981e822b512cf1001f216.md) | 24 | `declaration-track:600981e822b512cf1001f216f13a78a1ba28193db05ae094c4d62e459f2223fc` |
| 2 | `theorem` | [Icc_eq_finset_map](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interval/Variantdde76b87a624906849f4ad00bb8fb502f66d4d349e81c70fb6430663d8566a49.lean/declarations/icc-eq-finset-map--2ac21ddb7e8d990357ab79e1.md) | 79 | `result-track:2ac21ddb7e8d990357ab79e12d7ae18a6f399802bf94e607f087eb3eae64238f` |
| 3 | `theorem` | [Ico_eq_finset_map](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interval/Variantdde76b87a624906849f4ad00bb8fb502f66d4d349e81c70fb6430663d8566a49.lean/declarations/ico-eq-finset-map--c55205a8ca5cb95222c98989.md) | 84 | `result-track:c55205a8ca5cb95222c98989344d233fb860c27c8f8df926b3e2ce53dc298f3e` |
| 4 | `theorem` | [Ioc_eq_finset_map](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interval/Variantdde76b87a624906849f4ad00bb8fb502f66d4d349e81c70fb6430663d8566a49.lean/declarations/ioc-eq-finset-map--49519c0c760890498a578c71.md) | 88 | `result-track:49519c0c760890498a578c71bd135b6dd4fb69e73f818fea6380d542cce4cf80` |
| 5 | `theorem` | [Ioo_eq_finset_map](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interval/Variantdde76b87a624906849f4ad00bb8fb502f66d4d349e81c70fb6430663d8566a49.lean/declarations/ioo-eq-finset-map--94660294baaf2989e9c25854.md) | 93 | `result-track:94660294baaf2989e9c25854f8dabaff176bab22dcc8c11c9574c77117ca9ee8` |
| 6 | `theorem` | [uIcc_eq_finset_map](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interval/Variantdde76b87a624906849f4ad00bb8fb502f66d4d349e81c70fb6430663d8566a49.lean/declarations/uicc-eq-finset-map--d4135f5412d962e1bc2ea89f.md) | 98 | `result-track:d4135f5412d962e1bc2ea89f83568fdce70ab1919dd6236e109816a4a2667b23` |
| 7 | `theorem` | [card_Icc](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interval/Variantdde76b87a624906849f4ad00bb8fb502f66d4d349e81c70fb6430663d8566a49.lean/declarations/card-icc--25337bdd194db89825e216c9.md) | 103 | `result-track:25337bdd194db89825e216c992bb7cd06a725cfb99ecf87cf89dcfce460a1390` |
| 8 | `theorem` | [card_Ico](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interval/Variantdde76b87a624906849f4ad00bb8fb502f66d4d349e81c70fb6430663d8566a49.lean/declarations/card-ico--1337ccddf1df49eeacf714ca.md) | 106 | `result-track:1337ccddf1df49eeacf714ca2ab8738e841fd9f7973fea60ca6c26f5f93c3262` |
| 9 | `theorem` | [card_Ioc](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interval/Variantdde76b87a624906849f4ad00bb8fb502f66d4d349e81c70fb6430663d8566a49.lean/declarations/card-ioc--5a3924f351ebb672ff8b601e.md) | 109 | `result-track:5a3924f351ebb672ff8b601eadcab09628a7acf4205280eea745630634f9183b` |
| 10 | `theorem` | [card_Ioo](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interval/Variantdde76b87a624906849f4ad00bb8fb502f66d4d349e81c70fb6430663d8566a49.lean/declarations/card-ioo--765cbdc19bcf32925604a6fa.md) | 112 | `result-track:765cbdc19bcf32925604a6fab53c1b71aae8af1dd8c350bf317303c74514eece` |
| 11 | `theorem` | [card_uIcc](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interval/Variantdde76b87a624906849f4ad00bb8fb502f66d4d349e81c70fb6430663d8566a49.lean/declarations/card-uicc--3372872d4e17e60749407453.md) | 115 | `result-track:3372872d4e17e607494074534ce8b7b49af2d35377c5854806ce56012534b924` |
| 12 | `theorem` | [card_Icc_of_le](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interval/Variantdde76b87a624906849f4ad00bb8fb502f66d4d349e81c70fb6430663d8566a49.lean/declarations/card-icc-of-le--f0fd40a260db1e4cffe60433.md) | 122 | `result-track:f0fd40a260db1e4cffe6043340dd4273ce34d0e52ee11e95ef3be12e5ffa0f21` |
| 13 | `theorem` | [card_Ico_of_le](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interval/Variantdde76b87a624906849f4ad00bb8fb502f66d4d349e81c70fb6430663d8566a49.lean/declarations/card-ico-of-le--d91c0466bf60bd81338b2fb0.md) | 125 | `result-track:d91c0466bf60bd81338b2fb0436437b879b9623ccffa95528e7427c3b58e53e8` |
| 14 | `theorem` | [card_Ioc_of_le](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interval/Variantdde76b87a624906849f4ad00bb8fb502f66d4d349e81c70fb6430663d8566a49.lean/declarations/card-ioc-of-le--e94a0ec1959333b51539f428.md) | 128 | `result-track:e94a0ec1959333b51539f428b12bd32d8c34a435d0cb90d27fd3ed0e3c3a1460` |
| 15 | `theorem` | [card_Ioo_of_lt](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interval/Variantdde76b87a624906849f4ad00bb8fb502f66d4d349e81c70fb6430663d8566a49.lean/declarations/card-ioo-of-lt--51ed68155be40d8e3a2cab1a.md) | 131 | `result-track:51ed68155be40d8e3a2cab1a7e98fa513135bba44eb8a19dc7fbd12c423e34e6` |
| 16 | `theorem` | [Icc_eq_pair](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interval/Variantdde76b87a624906849f4ad00bb8fb502f66d4d349e81c70fb6430663d8566a49.lean/declarations/icc-eq-pair--00a83fb6f6f712a9f5b6907a.md) | 134 | `result-track:00a83fb6f6f712a9f5b6907aa1bb25f7346b5e2d72925d33ed6b6e051cd8acaf` |
| 17 | `theorem` | [card_fintype_Icc](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interval/Variantdde76b87a624906849f4ad00bb8fb502f66d4d349e81c70fb6430663d8566a49.lean/declarations/card-fintype-icc--5fc3bafca57e2998f309e0fb.md) | 140 | `result-track:5fc3bafca57e2998f309e0fb49076164b2c8d4e40d3715bffe76a35f5d5b4e5a` |
| 18 | `theorem` | [card_fintype_Ico](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interval/Variantdde76b87a624906849f4ad00bb8fb502f66d4d349e81c70fb6430663d8566a49.lean/declarations/card-fintype-ico--ddc30c8dd0c007e0e43e88eb.md) | 144 | `result-track:ddc30c8dd0c007e0e43e88eb63dce3cf11c86d1eeed314ea36c23938acde7107` |
| 19 | `theorem` | [card_fintype_Ioc](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interval/Variantdde76b87a624906849f4ad00bb8fb502f66d4d349e81c70fb6430663d8566a49.lean/declarations/card-fintype-ioc--54f6d021782b7453f9db64aa.md) | 148 | `result-track:54f6d021782b7453f9db64aa85b3a1f3093f95e0648bc97499017afb0c22b9e2` |
| 20 | `theorem` | [card_fintype_Ioo](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interval/Variantdde76b87a624906849f4ad00bb8fb502f66d4d349e81c70fb6430663d8566a49.lean/declarations/card-fintype-ioo--6326820bef389b498ef50487.md) | 152 | `result-track:6326820bef389b498ef504879259e057c03579fce7de468037aca1ce95a6fc54` |
| 21 | `theorem` | [card_fintype_uIcc](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interval/Variantdde76b87a624906849f4ad00bb8fb502f66d4d349e81c70fb6430663d8566a49.lean/declarations/card-fintype-uicc--232a84aa2864b6fd3a528d61.md) | 156 | `result-track:232a84aa2864b6fd3a528d61f879a29ace6ee7bd0de7797f2f63b79b57416fa1` |
| 22 | `theorem` | [card_fintype_Icc_of_le](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interval/Variantdde76b87a624906849f4ad00bb8fb502f66d4d349e81c70fb6430663d8566a49.lean/declarations/card-fintype-icc-of-le--5351d6bf91d37c17259269d6.md) | 159 | `result-track:5351d6bf91d37c17259269d6019edead778864c0f4a1eed86f282a4aedada21d` |
| 23 | `theorem` | [card_fintype_Ico_of_le](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interval/Variantdde76b87a624906849f4ad00bb8fb502f66d4d349e81c70fb6430663d8566a49.lean/declarations/card-fintype-ico-of-le--6b7833aeb5bf126eb963dc6c.md) | 162 | `result-track:6b7833aeb5bf126eb963dc6c410484724ef34383e290d239841c6ab67a896aa0` |
| 24 | `theorem` | [card_fintype_Ioc_of_le](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interval/Variantdde76b87a624906849f4ad00bb8fb502f66d4d349e81c70fb6430663d8566a49.lean/declarations/card-fintype-ioc-of-le--8e5a1007c4f790cde1e1c26c.md) | 165 | `result-track:8e5a1007c4f790cde1e1c26c8ccffbc1a2a80f291220e600e23821efcbed5090` |
| 25 | `theorem` | [card_fintype_Ioo_of_lt](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interval/Variantdde76b87a624906849f4ad00bb8fb502f66d4d349e81c70fb6430663d8566a49.lean/declarations/card-fintype-ioo-of-lt--162e4c0c33a8d796b3c65cea.md) | 168 | `result-track:162e4c0c33a8d796b3c65cea7cd007970167e7c8663d988919054ac69c297922` |
| 26 | `theorem` | [image_Ico_emod](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interval/Variantdde76b87a624906849f4ad00bb8fb502f66d4d349e81c70fb6430663d8566a49.lean/declarations/image-ico-emod--3a6f6908631f462c505c5e53.md) | 171 | `result-track:3a6f6908631f462c505c5e533fb77f0acec849b5fd67c7a7fe1117da1ea7f7ec` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
