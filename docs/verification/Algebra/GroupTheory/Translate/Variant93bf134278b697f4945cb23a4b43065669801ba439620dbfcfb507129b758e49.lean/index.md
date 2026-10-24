# Verification target: GRWTSK.Algebra.GroupTheory.Translate.Variant93bf134278b697f4945cb23a4b43065669801ba439620dbfcfb507129b758e49

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "be5841047d7b67ed8c74e8c94eac97459891f4d6",
  "lexical_observation_count": 18,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Translate/Variant93bf134278b697f4945cb23a4b43065669801ba439620dbfcfb507129b758e49.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/Translate/Variant93bf134278b697f4945cb23a4b43065669801ba439620dbfcfb507129b758e49.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/Translate/Variant93bf134278b697f4945cb23a4b43065669801ba439620dbfcfb507129b758e49.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `be5841047d7b67ed8c74e8c94eac97459891f4d6`.

Source path: `GRWTSK/Algebra/GroupTheory/Translate/Variant93bf134278b697f4945cb23a4b43065669801ba439620dbfcfb507129b758e49.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Translate/Variant93bf134278b697f4945cb23a4b43065669801ba439620dbfcfb507129b758e49.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.BigOperators.Pi` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.Action.Pointwise.Set.Basic` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.Pi.Basic` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.GroupAction.DomAct.Basic` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [translate](../../../../../mathematics/Algebra/GroupTheory/Translate/Variant93bf134278b697f4945cb23a4b43065669801ba439620dbfcfb507129b758e49.lean/declarations/translate--d7b4bae804767ec806f90c33.md) | 44 | `declaration-track:d7b4bae804767ec806f90c33c43f638525b6cb0ab17dae03ae2fcae5192c22bd` |
| 2 | `lemma` | [translate_apply](../../../../../mathematics/Algebra/GroupTheory/Translate/Variant93bf134278b697f4945cb23a4b43065669801ba439620dbfcfb507129b758e49.lean/declarations/translate-apply--154d40abb17b7acf7f639db4.md) | 50 | `result-track:154d40abb17b7acf7f639db41a1740431c51e9b2e9ec390222fa152435e3d428` |
| 3 | `lemma` | [translate_zero](../../../../../mathematics/Algebra/GroupTheory/Translate/Variant93bf134278b697f4945cb23a4b43065669801ba439620dbfcfb507129b758e49.lean/declarations/translate-zero--353b15e695996dd35276eea5.md) | 51 | `result-track:353b15e695996dd35276eea51aed4219b5eada68a99e84feaad0763f47cc61c7` |
| 4 | `lemma` | [translate_translate](../../../../../mathematics/Algebra/GroupTheory/Translate/Variant93bf134278b697f4945cb23a4b43065669801ba439620dbfcfb507129b758e49.lean/declarations/translate-translate--f28bb067aca38953c653f6d3.md) | 53 | `result-track:f28bb067aca38953c653f6d3dcdf67d5e334b5c153ee16220a014ef9dd13e8bf` |
| 5 | `lemma` | [translate_add](../../../../../mathematics/Algebra/GroupTheory/Translate/Variant93bf134278b697f4945cb23a4b43065669801ba439620dbfcfb507129b758e49.lean/declarations/translate-add--a07711dbc1fa7a1d48617678.md) | 56 | `result-track:a07711dbc1fa7a1d4861767889ff18b2a80a900c4ca5eb7b64db7b70621ca0f4` |
| 6 | `lemma` | [translate_add'](../../../../../mathematics/Algebra/GroupTheory/Translate/Variant93bf134278b697f4945cb23a4b43065669801ba439620dbfcfb507129b758e49.lean/declarations/translate-add--37ccc55e64609a64b0e43e36.md) | 59 | `result-track:37ccc55e64609a64b0e43e362c4bb4c643ae4148eecd36a11f898fe4ca8eec02` |
| 7 | `lemma` | [translate_comm](../../../../../mathematics/Algebra/GroupTheory/Translate/Variant93bf134278b697f4945cb23a4b43065669801ba439620dbfcfb507129b758e49.lean/declarations/translate-comm--e0a73ee8122bdd372392d8cb.md) | 62 | `result-track:e0a73ee8122bdd372392d8cb874b7be7e81773d5f9cd24eb77fe74c43d18c897` |
| 8 | `lemma` | [comp_translate](../../../../../mathematics/Algebra/GroupTheory/Translate/Variant93bf134278b697f4945cb23a4b43065669801ba439620dbfcfb507129b758e49.lean/declarations/comp-translate--0584851e230b76bcc2ef9752.md) | 66 | `result-track:0584851e230b76bcc2ef9752cf59e372dc3d4ff1c72d52f30448bef60a95769c` |
| 9 | `lemma` | [translate_eq_domAddActMk_vadd](../../../../../mathematics/Algebra/GroupTheory/Translate/Variant93bf134278b697f4945cb23a4b43065669801ba439620dbfcfb507129b758e49.lean/declarations/translate-eq-domaddactmk-vadd--8862ed9c2fb19fb5da2006d9.md) | 68 | `result-track:8862ed9c2fb19fb5da2006d9f676b67fa037f639d53cf19dafdf88c6d75bffd4` |
| 10 | `lemma` | [translate_smul_right](../../../../../mathematics/Algebra/GroupTheory/Translate/Variant93bf134278b697f4945cb23a4b43065669801ba439620dbfcfb507129b758e49.lean/declarations/translate-smul-right--46b92a01b7e99e44299363de.md) | 72 | `result-track:46b92a01b7e99e44299363de1adc25760d963f26d5d0bf523f0508312a377773` |
| 11 | `lemma` | [translate_zero_right](../../../../../mathematics/Algebra/GroupTheory/Translate/Variant93bf134278b697f4945cb23a4b43065669801ba439620dbfcfb507129b758e49.lean/declarations/translate-zero-right--a9d2ec23c0558acc93be6639.md) | 74 | `result-track:a9d2ec23c0558acc93be6639e7742962594d21e9c243530a68a75549236c0fdb` |
| 12 | `lemma` | [translate_add_right](../../../../../mathematics/Algebra/GroupTheory/Translate/Variant93bf134278b697f4945cb23a4b43065669801ba439620dbfcfb507129b758e49.lean/declarations/translate-add-right--d1c6f2512517c6fb510287db.md) | 75 | `result-track:d1c6f2512517c6fb510287db36c09c5b3f11db0ff455f51358e46c48a16b135c` |
| 13 | `lemma` | [translate_sub_right](../../../../../mathematics/Algebra/GroupTheory/Translate/Variant93bf134278b697f4945cb23a4b43065669801ba439620dbfcfb507129b758e49.lean/declarations/translate-sub-right--ad59e5ce1d2e7ba10ed908d0.md) | 76 | `result-track:ad59e5ce1d2e7ba10ed908d0001590386b23365c058e2a27af18428bbafd1839` |
| 14 | `lemma` | [translate_neg_right](../../../../../mathematics/Algebra/GroupTheory/Translate/Variant93bf134278b697f4945cb23a4b43065669801ba439620dbfcfb507129b758e49.lean/declarations/translate-neg-right--9603c3149e71beea193bf099.md) | 77 | `result-track:9603c3149e71beea193bf099967970bf5cd1114cd721fa69a37fee5ba73112c1` |
| 15 | `lemma` | [translate_sum_right](../../../../../mathematics/Algebra/GroupTheory/Translate/Variant93bf134278b697f4945cb23a4b43065669801ba439620dbfcfb507129b758e49.lean/declarations/translate-sum-right--4ae30cb76749f946c852c970.md) | 82 | `result-track:4ae30cb76749f946c852c970416f44a9aac53199dffef1a637a49ba14c639beb` |
| 16 | `lemma` | [sum_translate](../../../../../mathematics/Algebra/GroupTheory/Translate/Variant93bf134278b697f4945cb23a4b43065669801ba439620dbfcfb507129b758e49.lean/declarations/sum-translate--fd710ffdfd4e8dead65df038.md) | 85 | `result-track:fd710ffdfd4e8dead65df038f470bac1dc4fbbdee078a226d00405e1a4e955af` |
| 17 | `lemma` | [support_translate](../../../../../mathematics/Algebra/GroupTheory/Translate/Variant93bf134278b697f4945cb23a4b43065669801ba439620dbfcfb507129b758e49.lean/declarations/support-translate--80cef02bf06108cf558a709b.md) | 93 | `result-track:80cef02bf06108cf558a709b361cb3e6c706d4e7bf449d43fefc433c6b198d55` |
| 18 | `lemma` | [translate_prod_right](../../../../../mathematics/Algebra/GroupTheory/Translate/Variant93bf134278b697f4945cb23a4b43065669801ba439620dbfcfb507129b758e49.lean/declarations/translate-prod-right--487cd5016d9a9a3d039bb485.md) | 100 | `result-track:487cd5016d9a9a3d039bb4853ea7296e5d3e23aa61e31fa99b4f34b8fb7edd8a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
