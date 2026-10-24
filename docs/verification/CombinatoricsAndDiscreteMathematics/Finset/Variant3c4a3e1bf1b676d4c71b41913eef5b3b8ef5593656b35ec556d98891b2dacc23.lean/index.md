# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.Finset.Variant3c4a3e1bf1b676d4c71b41913eef5b3b8ef5593656b35ec556d98891b2dacc23

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "23226e0ba1facf4e5bcf5d14c7cff91795c708a2",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Finset/Variant3c4a3e1bf1b676d4c71b41913eef5b3b8ef5593656b35ec556d98891b2dacc23.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variant3c4a3e1bf1b676d4c71b41913eef5b3b8ef5593656b35ec556d98891b2dacc23.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variant3c4a3e1bf1b676d4c71b41913eef5b3b8ef5593656b35ec556d98891b2dacc23.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `23226e0ba1facf4e5bcf5d14c7cff91795c708a2`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Finset/Variant3c4a3e1bf1b676d4c71b41913eef5b3b8ef5593656b35ec556d98891b2dacc23.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Finset/Variant3c4a3e1bf1b676d4c71b41913eef5b3b8ef5593656b35ec556d98891b2dacc23.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Finset.Preimage` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Filter.AtTopBot.Tendsto` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Filter.AtTopBot.Basic` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Filter.Finite` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [tendsto_finset_range](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variant3c4a3e1bf1b676d4c71b41913eef5b3b8ef5593656b35ec556d98891b2dacc23.lean/declarations/tendsto-finset-range--5161bd79383290ac9b412a52.md) | 29 | `result-track:5161bd79383290ac9b412a52ffd055915fda56d99b7d7d0746a06160ab7dab48` |
| 2 | `theorem` | [atTop_finset_eq_iInf](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variant3c4a3e1bf1b676d4c71b41913eef5b3b8ef5593656b35ec556d98891b2dacc23.lean/declarations/attop-finset-eq-iinf--ef55e6ad5f7fc347ee08fe27.md) | 32 | `result-track:ef55e6ad5f7fc347ee08fe27ff50354b28472b2ef959cbb31571cf9bd37ddcec` |
| 3 | `theorem` | [tendsto_atTop_finset_of_monotone](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variant3c4a3e1bf1b676d4c71b41913eef5b3b8ef5593656b35ec556d98891b2dacc23.lean/declarations/tendsto-attop-finset-of-monotone--aea863b3ac81f6d97eeef46e.md) | 43 | `result-track:aea863b3ac81f6d97eeef46edae069fa14d43273451a6f28b51e9ddeb077bd19` |
| 4 | `theorem` | [tendsto_finset_image_atTop_atTop](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variant3c4a3e1bf1b676d4c71b41913eef5b3b8ef5593656b35ec556d98891b2dacc23.lean/declarations/tendsto-finset-image-attop-attop--e4579f929b07c4bf567d8963.md) | 52 | `result-track:e4579f929b07c4bf567d89635c9bdb02bfc5e2d60db194ab0bf10029a78e9338` |
| 5 | `theorem` | [tendsto_finset_preimage_atTop_atTop](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variant3c4a3e1bf1b676d4c71b41913eef5b3b8ef5593656b35ec556d98891b2dacc23.lean/declarations/tendsto-finset-preimage-attop-attop--1e45c926e7fbcd6b08ceb348.md) | 57 | `result-track:1e45c926e7fbcd6b08ceb34800c06310a7c4621dcbdc989a475362fe9e832dfe` |
| 6 | `lemma` | [tendsto_toLeft_atTop](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variant3c4a3e1bf1b676d4c71b41913eef5b3b8ef5593656b35ec556d98891b2dacc23.lean/declarations/tendsto-toleft-attop--5e59f6d4bda7680e0f73632e.md) | 62 | `result-track:5e59f6d4bda7680e0f73632e53ade4cbae2db15019c01d5821d02c633382f246` |
| 7 | `lemma` | [tendsto_toRight_atTop](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variant3c4a3e1bf1b676d4c71b41913eef5b3b8ef5593656b35ec556d98891b2dacc23.lean/declarations/tendsto-toright-attop--2852fcc1b0a4a25a7be1763f.md) | 69 | `result-track:2852fcc1b0a4a25a7be1763f3347a6c0dcddc4a4cdf358a1778ef3cb1d49f81f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
