# Verification target: GRWTSK.Topology.GeneralTopology.Perfect.Variant6458927de77b0a15d8d9f3738cfed532a36856472b25b6862739286ff02ae6e5

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5dffd4e8b0c50f5ea2bfb16c0718a1bc49fbeb52",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Perfect/Variant6458927de77b0a15d8d9f3738cfed532a36856472b25b6862739286ff02ae6e5.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Perfect/Variant6458927de77b0a15d8d9f3738cfed532a36856472b25b6862739286ff02ae6e5.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Perfect/Variant6458927de77b0a15d8d9f3738cfed532a36856472b25b6862739286ff02ae6e5.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5dffd4e8b0c50f5ea2bfb16c0718a1bc49fbeb52`.

Source path: `GRWTSK/Topology/GeneralTopology/Perfect/Variant6458927de77b0a15d8d9f3738cfed532a36856472b25b6862739286ff02ae6e5.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Perfect/Variant6458927de77b0a15d8d9f3738cfed532a36856472b25b6862739286ff02ae6e5.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.Separation.Regular` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [AccPt.nhds_inter](../../../../../mathematics/Topology/GeneralTopology/Perfect/Variant6458927de77b0a15d8d9f3738cfed532a36856472b25b6862739286ff02ae6e5.lean/declarations/accpt-nhds-inter--dac59b70d9d755881f9f7cdd.md) | 70 | `result-track:dac59b70d9d755881f9f7cddc08f154a9f3851ebc2f3189c66a7086299956e77` |
| 2 | `def` | [Preperfect](../../../../../mathematics/Topology/GeneralTopology/Perfect/Variant6458927de77b0a15d8d9f3738cfed532a36856472b25b6862739286ff02ae6e5.lean/declarations/preperfect--76cbcb5191680b43809cb755.md) | 81 | `declaration-track:76cbcb5191680b43809cb75541386276832833966e92a624f5c3d20353dac88f` |
| 3 | `structure` | [Perfect](../../../../../mathematics/Topology/GeneralTopology/Perfect/Variant6458927de77b0a15d8d9f3738cfed532a36856472b25b6862739286ff02ae6e5.lean/declarations/perfect--862556efe270de3f7a2a8681.md) | 88 | `declaration-track:862556efe270de3f7a2a868162b48cbc00a575a27c19a7988fbdfa1e505764e2` |
| 4 | `theorem` | [preperfect_iff_nhds](../../../../../mathematics/Topology/GeneralTopology/Perfect/Variant6458927de77b0a15d8d9f3738cfed532a36856472b25b6862739286ff02ae6e5.lean/declarations/preperfect-iff-nhds--df623a3e0bf004a81a50dd8e.md) | 92 | `result-track:df623a3e0bf004a81a50dd8e68a36d23c7392831be4d25086e037599b5071d8c` |
| 5 | `class` | [PerfectSpace](../../../../../mathematics/Topology/GeneralTopology/Perfect/Variant6458927de77b0a15d8d9f3738cfed532a36856472b25b6862739286ff02ae6e5.lean/declarations/perfectspace--bc8ee1cde13b1b3a62a4bf46.md) | 104 | `declaration-track:bc8ee1cde13b1b3a62a4bf46ebc4c3e0d0bb6c39ae75d8c3ddb0ce3258005131` |
| 6 | `theorem` | [PerfectSpace.univ_perfect](../../../../../mathematics/Topology/GeneralTopology/Perfect/Variant6458927de77b0a15d8d9f3738cfed532a36856472b25b6862739286ff02ae6e5.lean/declarations/perfectspace-univ-perfect--00c0d800ec275dd964043c93.md) | 107 | `result-track:00c0d800ec275dd964043c938e0bc53866650d99f40c17ca826375b0605c6fc8` |
| 7 | `theorem` | [Preperfect.open_inter](../../../../../mathematics/Topology/GeneralTopology/Perfect/Variant6458927de77b0a15d8d9f3738cfed532a36856472b25b6862739286ff02ae6e5.lean/declarations/preperfect-open-inter--cb3e37df66423c82891503cc.md) | 115 | `result-track:cb3e37df66423c82891503cc0d971ea524f09b13adf72c955463c70060aea657` |
| 8 | `theorem` | [Preperfect.perfect_closure](../../../../../mathematics/Topology/GeneralTopology/Perfect/Variant6458927de77b0a15d8d9f3738cfed532a36856472b25b6862739286ff02ae6e5.lean/declarations/preperfect-perfect-closure--0b1ee5fe605ea114866c6e8d.md) | 123 | `result-track:0b1ee5fe605ea114866c6e8d4ea8a297507a77808c1b104a9be594728db44a9e` |
| 9 | `theorem` | [preperfect_iff_perfect_closure](../../../../../mathematics/Topology/GeneralTopology/Perfect/Variant6458927de77b0a15d8d9f3738cfed532a36856472b25b6862739286ff02ae6e5.lean/declarations/preperfect-iff-perfect-closure--6eb92541ff452bb7f4968e7b.md) | 134 | `result-track:6eb92541ff452bb7f4968e7bbc13ac5ecb2b9db231cd94fa9b99278305b84c18` |
| 10 | `theorem` | [Perfect.closure_nhds_inter](../../../../../mathematics/Topology/GeneralTopology/Perfect/Variant6458927de77b0a15d8d9f3738cfed532a36856472b25b6862739286ff02ae6e5.lean/declarations/perfect-closure-nhds-inter--e86f3bf650d3c9801f2707ca.md) | 148 | `result-track:e86f3bf650d3c9801f2707ca7dfad23a895bc88523ea3015ea525fe0abd010cd` |
| 11 | `theorem` | [Perfect.splitting](../../../../../mathematics/Topology/GeneralTopology/Perfect/Variant6458927de77b0a15d8d9f3738cfed532a36856472b25b6862739286ff02ae6e5.lean/declarations/perfect-splitting--545c1c101127224fc7d6df0d.md) | 158 | `result-track:545c1c101127224fc7d6df0d12a2339aefefadba46dbfe12bb4c4ec06f60e298` |
| 12 | `lemma` | [IsPreconnected.preperfect_of_nontrivial](../../../../../mathematics/Topology/GeneralTopology/Perfect/Variant6458927de77b0a15d8d9f3738cfed532a36856472b25b6862739286ff02ae6e5.lean/declarations/ispreconnected-preperfect-of-nontrivial--02cfbbb5440eaf1d68429951.md) | 179 | `result-track:02cfbbb5440eaf1d68429951eeb40d22adee9129904a9cf00b9402a299fbcffc` |
| 13 | `theorem` | [exists_countable_union_perfect_of_isClosed](../../../../../mathematics/Topology/GeneralTopology/Perfect/Variant6458927de77b0a15d8d9f3738cfed532a36856472b25b6862739286ff02ae6e5.lean/declarations/exists-countable-union-perfect-of-isclosed--ed86abdd62461bfa227c8988.md) | 205 | `result-track:ed86abdd62461bfa227c898878536ca6405ac9dfe88e5b917b3b35815837cec0` |
| 14 | `theorem` | [exists_perfect_nonempty_of_isClosed_of_not_countable](../../../../../mathematics/Topology/GeneralTopology/Perfect/Variant6458927de77b0a15d8d9f3738cfed532a36856472b25b6862739286ff02ae6e5.lean/declarations/exists-perfect-nonempty-of-isclosed-of-not-countable--78946ac02b8c7fd93ac4eef2.md) | 240 | `result-track:78946ac02b8c7fd93ac4eef245c0fe2733c25d5a1656d580b5f825a309ac49d8` |
| 15 | `theorem` | [perfectSpace_iff_forall_not_isolated](../../../../../mathematics/Topology/GeneralTopology/Perfect/Variant6458927de77b0a15d8d9f3738cfed532a36856472b25b6862739286ff02ae6e5.lean/declarations/perfectspace-iff-forall-not-isolated--1b3a7c24e6b3531449132038.md) | 261 | `result-track:1b3a7c24e6b3531449132038c5decd53110c4005ad41fd963d8363218c1892cc` |
| 16 | `instance` | [PerfectSpace.not_isolated](../../../../../mathematics/Topology/GeneralTopology/Perfect/Variant6458927de77b0a15d8d9f3738cfed532a36856472b25b6862739286ff02ae6e5.lean/declarations/perfectspace-not-isolated--ea9830e765618e462fbaffc3.md) | 264 | `declaration-track:ea9830e765618e462fbaffc3995b0895589e01bd948078f237fd1753522e087a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
