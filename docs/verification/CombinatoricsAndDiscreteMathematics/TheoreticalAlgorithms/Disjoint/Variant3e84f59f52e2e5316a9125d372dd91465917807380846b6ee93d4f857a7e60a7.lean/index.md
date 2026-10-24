# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Disjoint.Variant3e84f59f52e2e5316a9125d372dd91465917807380846b6ee93d4f857a7e60a7

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "621b71e17bbb5007cf8845047227721af75dc851",
  "lexical_observation_count": 38,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Disjoint/Variant3e84f59f52e2e5316a9125d372dd91465917807380846b6ee93d4f857a7e60a7.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Disjoint/Variant3e84f59f52e2e5316a9125d372dd91465917807380846b6ee93d4f857a7e60a7.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Disjoint/Variant3e84f59f52e2e5316a9125d372dd91465917807380846b6ee93d4f857a7e60a7.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `621b71e17bbb5007cf8845047227721af75dc851`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Disjoint/Variant3e84f59f52e2e5316a9125d372dd91465917807380846b6ee93d4f857a7e60a7.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Disjoint/Variant3e84f59f52e2e5316a9125d372dd91465917807380846b6ee93d4f857a7e60a7.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Set.Basic` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [disjoint_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Disjoint/Variant3e84f59f52e2e5316a9125d372dd91465917807380846b6ee93d4f857a7e60a7.lean/declarations/disjoint-iff--11227e2f9c6493639becf495.md) | 27 | `result-track:11227e2f9c6493639becf495695cafdf624609fb882e92e0cb90800a5bf8e37e` |
| 2 | `theorem` | [disjoint_iff_inter_eq_empty](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Disjoint/Variant3e84f59f52e2e5316a9125d372dd91465917807380846b6ee93d4f857a7e60a7.lean/declarations/disjoint-iff-inter-eq-empty--b646b49670c00f71c9c071a9.md) | 30 | `result-track:b646b49670c00f71c9c071a94a93ebd545ce4ef8b8c75e8feec9fe80c3b04bed` |
| 3 | `theorem` | [_root_.Disjoint.inter_eq](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Disjoint/Variant3e84f59f52e2e5316a9125d372dd91465917807380846b6ee93d4f857a7e60a7.lean/declarations/root-disjoint-inter-eq--82842b4d462f74a9285f7186.md) | 33 | `result-track:82842b4d462f74a9285f718663542e84a0710ca3364f41f4e6f939efc8f76943` |
| 4 | `theorem` | [disjoint_left](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Disjoint/Variant3e84f59f52e2e5316a9125d372dd91465917807380846b6ee93d4f857a7e60a7.lean/declarations/disjoint-left--0304c8fbe79ace11b9ecdf1c.md) | 36 | `result-track:0304c8fbe79ace11b9ecdf1c0a2263552383853bd1fb57f0fdc36d6ebeb75c94` |
| 5 | `theorem` | [disjoint_right](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Disjoint/Variant3e84f59f52e2e5316a9125d372dd91465917807380846b6ee93d4f857a7e60a7.lean/declarations/disjoint-right--dc7139fe9c2f7c86959b6af1.md) | 44 | `result-track:dc7139fe9c2f7c86959b6af154e96bf9f9d8d6422aa32e87728edef102754817` |
| 6 | `lemma` | [not_disjoint_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Disjoint/Variant3e84f59f52e2e5316a9125d372dd91465917807380846b6ee93d4f857a7e60a7.lean/declarations/not-disjoint-iff--b7e263fe92f4f731c2bf621d.md) | 51 | `result-track:b7e263fe92f4f731c2bf621d4adc5145a29f260591ee1a90c06bec725b9a1657` |
| 7 | `lemma` | [not_disjoint_iff_nonempty_inter](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Disjoint/Variant3e84f59f52e2e5316a9125d372dd91465917807380846b6ee93d4f857a7e60a7.lean/declarations/not-disjoint-iff-nonempty-inter--4fefb5949ca10f17aee61884.md) | 54 | `result-track:4fefb5949ca10f17aee61884874e53018a63919dd8d58dd92528b83a3ff0f308` |
| 8 | `lemma` | [disjoint_or_nonempty_inter](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Disjoint/Variant3e84f59f52e2e5316a9125d372dd91465917807380846b6ee93d4f857a7e60a7.lean/declarations/disjoint-or-nonempty-inter--6c18693113b87f9afcec5331.md) | 58 | `result-track:6c18693113b87f9afcec533161d4f5636e8a2dd3ee931d5e139f29c25002bd5d` |
| 9 | `lemma` | [disjoint_iff_forall_ne](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Disjoint/Variant3e84f59f52e2e5316a9125d372dd91465917807380846b6ee93d4f857a7e60a7.lean/declarations/disjoint-iff-forall-ne--c4dcc53d77af3b20be02c551.md) | 61 | `result-track:c4dcc53d77af3b20be02c551632b76867d4aa420c64aa1b9ff264ca4f160e32d` |
| 10 | `lemma` | [disjoint_of_subset_left](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Disjoint/Variant3e84f59f52e2e5316a9125d372dd91465917807380846b6ee93d4f857a7e60a7.lean/declarations/disjoint-of-subset-left--633a81e4f1d2fb3890b422ca.md) | 66 | `result-track:633a81e4f1d2fb3890b422ca07c014f8b186f42a865db727dc4d6fab234b4d92` |
| 11 | `lemma` | [disjoint_of_subset_right](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Disjoint/Variant3e84f59f52e2e5316a9125d372dd91465917807380846b6ee93d4f857a7e60a7.lean/declarations/disjoint-of-subset-right--fb245335c7df4467bb9c7c87.md) | 67 | `result-track:fb245335c7df4467bb9c7c87987d7040aaf2550e661f5e4bbe738384512d8461` |
| 12 | `lemma` | [disjoint_of_subset](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Disjoint/Variant3e84f59f52e2e5316a9125d372dd91465917807380846b6ee93d4f857a7e60a7.lean/declarations/disjoint-of-subset--e34022dfa9f2382aad8d1905.md) | 69 | `result-track:e34022dfa9f2382aad8d1905216c979594578f5dfc878f8ba28f97ba90bfb9de` |
| 13 | `lemma` | [disjoint_union_left](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Disjoint/Variant3e84f59f52e2e5316a9125d372dd91465917807380846b6ee93d4f857a7e60a7.lean/declarations/disjoint-union-left--78e352abe532af6c145120f6.md) | 73 | `result-track:78e352abe532af6c145120f68d3e5e5bcd9d770ff5d4b4d502f3c3b04097034b` |
| 14 | `lemma` | [disjoint_union_right](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Disjoint/Variant3e84f59f52e2e5316a9125d372dd91465917807380846b6ee93d4f857a7e60a7.lean/declarations/disjoint-union-right--74748dde24c69487a7e88e97.md) | 76 | `result-track:74748dde24c69487a7e88e97e2b46330233986ca8a78a37a854b297eb23a3839` |
| 15 | `lemma` | [disjoint_empty](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Disjoint/Variant3e84f59f52e2e5316a9125d372dd91465917807380846b6ee93d4f857a7e60a7.lean/declarations/disjoint-empty--f4055c954c385820eff13b73.md) | 78 | `result-track:f4055c954c385820eff13b731b5e5beffc89b91d6afd441df004de1a594714ff` |
| 16 | `lemma` | [empty_disjoint](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Disjoint/Variant3e84f59f52e2e5316a9125d372dd91465917807380846b6ee93d4f857a7e60a7.lean/declarations/empty-disjoint--a478f23dc0e00ea9c5e02ed9.md) | 79 | `result-track:a478f23dc0e00ea9c5e02ed9f8bd3f4b36029b7c6fcc7c2d7134f486dd7b98ef` |
| 17 | `lemma` | [univ_disjoint](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Disjoint/Variant3e84f59f52e2e5316a9125d372dd91465917807380846b6ee93d4f857a7e60a7.lean/declarations/univ-disjoint--3f2898b7cb14be362b272faa.md) | 81 | `result-track:3f2898b7cb14be362b272faa2baedf18965b1ebab6d297280b01b4c13e5a0e3e` |
| 18 | `lemma` | [disjoint_univ](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Disjoint/Variant3e84f59f52e2e5316a9125d372dd91465917807380846b6ee93d4f857a7e60a7.lean/declarations/disjoint-univ--58978f0c03132fdc1f2f1217.md) | 82 | `result-track:58978f0c03132fdc1f2f12178d22dd2a633fc136135f6a31bcc4153825ef9682` |
| 19 | `lemma` | [disjoint_sdiff_left](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Disjoint/Variant3e84f59f52e2e5316a9125d372dd91465917807380846b6ee93d4f857a7e60a7.lean/declarations/disjoint-sdiff-left--5af1effd71770a2c41d3851b.md) | 84 | `result-track:5af1effd71770a2c41d3851b1d1a5828423915b181611449bc0f2ea8d5667b05` |
| 20 | `lemma` | [disjoint_sdiff_right](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Disjoint/Variant3e84f59f52e2e5316a9125d372dd91465917807380846b6ee93d4f857a7e60a7.lean/declarations/disjoint-sdiff-right--6aada01e6f2766ccc45c1999.md) | 86 | `result-track:6aada01e6f2766ccc45c1999e920be29c26d9623e9868a0b5def5e6027bd63a2` |
| 21 | `theorem` | [disjoint_sdiff_inter](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Disjoint/Variant3e84f59f52e2e5316a9125d372dd91465917807380846b6ee93d4f857a7e60a7.lean/declarations/disjoint-sdiff-inter--804e9f4a04387205cb0a1070.md) | 89 | `result-track:804e9f4a04387205cb0a10706c3af540cc8d01cf858a76618c0c4f6fd99bb92e` |
| 22 | `lemma` | [subset_diff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Disjoint/Variant3e84f59f52e2e5316a9125d372dd91465917807380846b6ee93d4f857a7e60a7.lean/declarations/subset-diff--be8c2f1285ea3efe9bef0f59.md) | 92 | `result-track:be8c2f1285ea3efe9bef0f599293d2ecad959d81cf5f130124a44fd0e562b5ad` |
| 23 | `theorem` | [disjoint_of_subset_iff_left_eq_empty](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Disjoint/Variant3e84f59f52e2e5316a9125d372dd91465917807380846b6ee93d4f857a7e60a7.lean/declarations/disjoint-of-subset-iff-left-eq-empty--348656ac036c21937f445025.md) | 94 | `result-track:348656ac036c21937f4450251828821b183275050f8afd832318fbdecb8d9ccc` |
| 24 | `theorem` | [subset_compl_iff_disjoint_left](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Disjoint/Variant3e84f59f52e2e5316a9125d372dd91465917807380846b6ee93d4f857a7e60a7.lean/declarations/subset-compl-iff-disjoint-left--60d97c10dd6022071db00174.md) | 100 | `result-track:60d97c10dd6022071db00174b16cb940990996885a0bec33079ace7d0cfe3341` |
| 25 | `theorem` | [subset_compl_iff_disjoint_right](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Disjoint/Variant3e84f59f52e2e5316a9125d372dd91465917807380846b6ee93d4f857a7e60a7.lean/declarations/subset-compl-iff-disjoint-right--8abc5dbbb7a6f1589d408409.md) | 103 | `result-track:8abc5dbbb7a6f1589d408409aaca4dd27b286d783cf1554005529eaaa460290b` |
| 26 | `theorem` | [disjoint_compl_left_iff_subset](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Disjoint/Variant3e84f59f52e2e5316a9125d372dd91465917807380846b6ee93d4f857a7e60a7.lean/declarations/disjoint-compl-left-iff-subset--083187fa3412a4fcdac5d7ff.md) | 106 | `result-track:083187fa3412a4fcdac5d7ff8804469bf2df8418ab5313ac3f4245d65a068647` |
| 27 | `theorem` | [disjoint_compl_right_iff_subset](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Disjoint/Variant3e84f59f52e2e5316a9125d372dd91465917807380846b6ee93d4f857a7e60a7.lean/declarations/disjoint-compl-right-iff-subset--bec56ec1bf0164bb5ed1b2bd.md) | 109 | `result-track:bec56ec1bf0164bb5ed1b2bd6b583501c633f533730c073c8f794141ce8d6cc5` |
| 28 | `theorem` | [diff_ssubset_left_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Disjoint/Variant3e84f59f52e2e5316a9125d372dd91465917807380846b6ee93d4f857a7e60a7.lean/declarations/diff-ssubset-left-iff--19602edb1108b66e86097ebd.md) | 121 | `result-track:19602edb1108b66e86097ebd75e9fa78f134e38417885fda1751e10c99603440` |
| 29 | `theorem` | [_root_.HasSubset.Subset.diff_ssubset_of_nonempty](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Disjoint/Variant3e84f59f52e2e5316a9125d372dd91465917807380846b6ee93d4f857a7e60a7.lean/declarations/root-hassubset-subset-diff-ssubset-of-nonempty--43a76cfc780187f38ba4de6e.md) | 124 | `result-track:43a76cfc780187f38ba4de6ed83299faeecffd1427cbab162648c3760b171aae` |
| 30 | `theorem` | [disjoint_range_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Disjoint/Variant3e84f59f52e2e5316a9125d372dd91465917807380846b6ee93d4f857a7e60a7.lean/declarations/disjoint-range-iff--385b6067fa7bd5176524725e.md) | 128 | `result-track:385b6067fa7bd5176524725e29b640f98ff65babbfb01419a40885989b813ac1` |
| 31 | `theorem` | [union_left](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Disjoint/Variant3e84f59f52e2e5316a9125d372dd91465917807380846b6ee93d4f857a7e60a7.lean/declarations/union-left--7f1ab6b7d01607a75d3c7252.md) | 140 | `result-track:7f1ab6b7d01607a75d3c725289f10e40deb99776c82693055ac97e2ca79f57ae` |
| 32 | `theorem` | [union_right](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Disjoint/Variant3e84f59f52e2e5316a9125d372dd91465917807380846b6ee93d4f857a7e60a7.lean/declarations/union-right--247a358a4cd063b4e9d052cc.md) | 143 | `result-track:247a358a4cd063b4e9d052cc2d649becb24a5e9ac4f4ba59803f9cde163651c9` |
| 33 | `theorem` | [inter_left](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Disjoint/Variant3e84f59f52e2e5316a9125d372dd91465917807380846b6ee93d4f857a7e60a7.lean/declarations/inter-left--1b173825e3403833b0f0bad7.md) | 146 | `result-track:1b173825e3403833b0f0bad7ae98db00e06a5f19d069c7b1343333ceac792c2b` |
| 34 | `theorem` | [inter_left'](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Disjoint/Variant3e84f59f52e2e5316a9125d372dd91465917807380846b6ee93d4f857a7e60a7.lean/declarations/inter-left--1bb8d90033233a8c5eaa2ec6.md) | 149 | `result-track:1bb8d90033233a8c5eaa2ec685d0f3e68e3a502c5426722cf03fc0bd9f1032a2` |
| 35 | `theorem` | [inter_right](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Disjoint/Variant3e84f59f52e2e5316a9125d372dd91465917807380846b6ee93d4f857a7e60a7.lean/declarations/inter-right--f35c3443b0bf6302c1e55369.md) | 152 | `result-track:f35c3443b0bf6302c1e55369dbe0ea5160144ec3de5ee8e37544e37dee99e73e` |
| 36 | `theorem` | [inter_right'](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Disjoint/Variant3e84f59f52e2e5316a9125d372dd91465917807380846b6ee93d4f857a7e60a7.lean/declarations/inter-right--f6d236aec933fe2c2f79b97b.md) | 155 | `result-track:f6d236aec933fe2c2f79b97bc25de4950b316eb413389e514269469c0736b931` |
| 37 | `theorem` | [subset_left_of_subset_union](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Disjoint/Variant3e84f59f52e2e5316a9125d372dd91465917807380846b6ee93d4f857a7e60a7.lean/declarations/subset-left-of-subset-union--f94ad41d1171147c855a601c.md) | 158 | `result-track:f94ad41d1171147c855a601cd0c19565a6eaaf64319a462475d14bc6511298fc` |
| 38 | `theorem` | [subset_right_of_subset_union](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Disjoint/Variant3e84f59f52e2e5316a9125d372dd91465917807380846b6ee93d4f857a7e60a7.lean/declarations/subset-right-of-subset-union--40255fdc16523910716bd13c.md) | 161 | `result-track:40255fdc16523910716bd13c63f4fc278196104ade84711d799b0b8f69210436` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
