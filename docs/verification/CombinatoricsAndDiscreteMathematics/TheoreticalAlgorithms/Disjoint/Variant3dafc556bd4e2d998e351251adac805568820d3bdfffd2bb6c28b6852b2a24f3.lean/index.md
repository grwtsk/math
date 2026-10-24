# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Disjoint.Variant3dafc556bd4e2d998e351251adac805568820d3bdfffd2bb6c28b6852b2a24f3

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3693173024884ee4015eb04fde40f4b41aa954b0",
  "lexical_observation_count": 38,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Disjoint/Variant3dafc556bd4e2d998e351251adac805568820d3bdfffd2bb6c28b6852b2a24f3.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Disjoint/Variant3dafc556bd4e2d998e351251adac805568820d3bdfffd2bb6c28b6852b2a24f3.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Disjoint/Variant3dafc556bd4e2d998e351251adac805568820d3bdfffd2bb6c28b6852b2a24f3.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3693173024884ee4015eb04fde40f4b41aa954b0`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Disjoint/Variant3dafc556bd4e2d998e351251adac805568820d3bdfffd2bb6c28b6852b2a24f3.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Disjoint/Variant3dafc556bd4e2d998e351251adac805568820d3bdfffd2bb6c28b6852b2a24f3.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Set.Basic` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [disjoint_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Disjoint/Variant3dafc556bd4e2d998e351251adac805568820d3bdfffd2bb6c28b6852b2a24f3.lean/declarations/disjoint-iff--6b80f14625bb828e5a3913ce.md) | 35 | `result-track:6b80f14625bb828e5a3913cea41e16eb350ec390143b17302b1f125462c985d5` |
| 2 | `theorem` | [disjoint_iff_inter_eq_empty](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Disjoint/Variant3dafc556bd4e2d998e351251adac805568820d3bdfffd2bb6c28b6852b2a24f3.lean/declarations/disjoint-iff-inter-eq-empty--7c77e952d010e209f8ef27a2.md) | 38 | `result-track:7c77e952d010e209f8ef27a2aea7f1675695b9075acba38e9154f95e9e5b6b78` |
| 3 | `theorem` | [_root_.GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.DisjointIff.Variant3e84f59f52e2e5316a9125d372dd91465917807380846b6ee93d4f857a7e60a7.Disjoint.inter_eq](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Disjoint/Variant3dafc556bd4e2d998e351251adac805568820d3bdfffd2bb6c28b6852b2a24f3.lean/declarations/root-grwtsk-combinatoricsanddiscretemathematics-theoreticalalgorithms-di--31e959edbd58cef57a971df0.md) | 41 | `result-track:31e959edbd58cef57a971df050208c3042b87cffb2fc90c14710f273f560ed31` |
| 4 | `theorem` | [disjoint_left](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Disjoint/Variant3dafc556bd4e2d998e351251adac805568820d3bdfffd2bb6c28b6852b2a24f3.lean/declarations/disjoint-left--edd1e65328c896866461097e.md) | 44 | `result-track:edd1e65328c896866461097ea53d78a21d64158ddad0c309576a11297d549c5b` |
| 5 | `theorem` | [disjoint_right](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Disjoint/Variant3dafc556bd4e2d998e351251adac805568820d3bdfffd2bb6c28b6852b2a24f3.lean/declarations/disjoint-right--1260f83f32009f360c99426a.md) | 52 | `result-track:1260f83f32009f360c99426a95c21ddd6a1cf087e17f011cd6134dcc8835adf3` |
| 6 | `lemma` | [not_disjoint_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Disjoint/Variant3dafc556bd4e2d998e351251adac805568820d3bdfffd2bb6c28b6852b2a24f3.lean/declarations/not-disjoint-iff--c52958792d7bab8e617b532f.md) | 59 | `result-track:c52958792d7bab8e617b532f3520c8f501517a4512ced5937afdf8f25a1b6afa` |
| 7 | `lemma` | [not_disjoint_iff_nonempty_inter](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Disjoint/Variant3dafc556bd4e2d998e351251adac805568820d3bdfffd2bb6c28b6852b2a24f3.lean/declarations/not-disjoint-iff-nonempty-inter--4a6cf85185d1364fb89b8ae4.md) | 62 | `result-track:4a6cf85185d1364fb89b8ae4aa192867647d98207b4aa17ed6094beb71181e3e` |
| 8 | `lemma` | [disjoint_or_nonempty_inter](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Disjoint/Variant3dafc556bd4e2d998e351251adac805568820d3bdfffd2bb6c28b6852b2a24f3.lean/declarations/disjoint-or-nonempty-inter--13fb19d01d6ae1f5c3a81f7d.md) | 66 | `result-track:13fb19d01d6ae1f5c3a81f7d7ad6b5da1f5d2f06a8e4724054a63f5a6f251c98` |
| 9 | `lemma` | [disjoint_iff_forall_ne](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Disjoint/Variant3dafc556bd4e2d998e351251adac805568820d3bdfffd2bb6c28b6852b2a24f3.lean/declarations/disjoint-iff-forall-ne--7e62aedfba9ef523d0b59663.md) | 69 | `result-track:7e62aedfba9ef523d0b59663b103207bff8d11a047af45981d7b8348591f7127` |
| 10 | `lemma` | [disjoint_of_subset_left](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Disjoint/Variant3dafc556bd4e2d998e351251adac805568820d3bdfffd2bb6c28b6852b2a24f3.lean/declarations/disjoint-of-subset-left--631c3516875458a669060017.md) | 74 | `result-track:631c3516875458a669060017fcd1cbfb373f9d263874533f7b5ce0bf287ba09c` |
| 11 | `lemma` | [disjoint_of_subset_right](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Disjoint/Variant3dafc556bd4e2d998e351251adac805568820d3bdfffd2bb6c28b6852b2a24f3.lean/declarations/disjoint-of-subset-right--70bfe49d1d349e173b49d713.md) | 75 | `result-track:70bfe49d1d349e173b49d713928eda5fcaa6984f5c2c2b5a547fb6fb16f910a4` |
| 12 | `lemma` | [disjoint_of_subset](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Disjoint/Variant3dafc556bd4e2d998e351251adac805568820d3bdfffd2bb6c28b6852b2a24f3.lean/declarations/disjoint-of-subset--ec6b84b0786f4aea53ff31ac.md) | 77 | `result-track:ec6b84b0786f4aea53ff31ac795a95b1094080835cc6705ec92af9995d680864` |
| 13 | `lemma` | [disjoint_union_left](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Disjoint/Variant3dafc556bd4e2d998e351251adac805568820d3bdfffd2bb6c28b6852b2a24f3.lean/declarations/disjoint-union-left--d10b03b5c732314ea3e578f9.md) | 81 | `result-track:d10b03b5c732314ea3e578f9d08682b6469053787f1684b8f6ee52623f3889d0` |
| 14 | `lemma` | [disjoint_union_right](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Disjoint/Variant3dafc556bd4e2d998e351251adac805568820d3bdfffd2bb6c28b6852b2a24f3.lean/declarations/disjoint-union-right--02809214fc2e4afa8c7029a1.md) | 84 | `result-track:02809214fc2e4afa8c7029a1224e2c33deb5896d0e35c9e7ab44e0b945a4605a` |
| 15 | `lemma` | [disjoint_empty](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Disjoint/Variant3dafc556bd4e2d998e351251adac805568820d3bdfffd2bb6c28b6852b2a24f3.lean/declarations/disjoint-empty--c84fa37388304c50f6467df7.md) | 86 | `result-track:c84fa37388304c50f6467df76e7392446c0b5c95379cb46e03ab052eb0ee8039` |
| 16 | `lemma` | [empty_disjoint](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Disjoint/Variant3dafc556bd4e2d998e351251adac805568820d3bdfffd2bb6c28b6852b2a24f3.lean/declarations/empty-disjoint--2a8e4cec004132846651f71d.md) | 87 | `result-track:2a8e4cec004132846651f71d0da5d552f5f17e6c611694fc256e42af79c0854d` |
| 17 | `lemma` | [univ_disjoint](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Disjoint/Variant3dafc556bd4e2d998e351251adac805568820d3bdfffd2bb6c28b6852b2a24f3.lean/declarations/univ-disjoint--fe99346885a995fa38aca273.md) | 89 | `result-track:fe99346885a995fa38aca2731f7141f77d71e7920c31da2d3646650d3d85d70a` |
| 18 | `lemma` | [disjoint_univ](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Disjoint/Variant3dafc556bd4e2d998e351251adac805568820d3bdfffd2bb6c28b6852b2a24f3.lean/declarations/disjoint-univ--fa7d89bc67eb3718ae63936e.md) | 90 | `result-track:fa7d89bc67eb3718ae63936e41cfb2c0fe8968c9ca5aef5f3ceeaab6b851d66d` |
| 19 | `lemma` | [disjoint_sdiff_left](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Disjoint/Variant3dafc556bd4e2d998e351251adac805568820d3bdfffd2bb6c28b6852b2a24f3.lean/declarations/disjoint-sdiff-left--0615d186a03be85324a47a4e.md) | 92 | `result-track:0615d186a03be85324a47a4e425571d1ce82b678a0d5e9f24a815fca71369952` |
| 20 | `lemma` | [disjoint_sdiff_right](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Disjoint/Variant3dafc556bd4e2d998e351251adac805568820d3bdfffd2bb6c28b6852b2a24f3.lean/declarations/disjoint-sdiff-right--3a53953306840d089cac377d.md) | 94 | `result-track:3a53953306840d089cac377d91115d02187af17a067fa59c431de0e46055e6a7` |
| 21 | `theorem` | [disjoint_sdiff_inter](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Disjoint/Variant3dafc556bd4e2d998e351251adac805568820d3bdfffd2bb6c28b6852b2a24f3.lean/declarations/disjoint-sdiff-inter--31c27181efdb64bd7f1f4cc0.md) | 97 | `result-track:31c27181efdb64bd7f1f4cc0a77a995a4687cf77b69e9c3b49d8872aa0134edd` |
| 22 | `lemma` | [subset_diff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Disjoint/Variant3dafc556bd4e2d998e351251adac805568820d3bdfffd2bb6c28b6852b2a24f3.lean/declarations/subset-diff--a1ed03f35d10030abab58104.md) | 100 | `result-track:a1ed03f35d10030abab581042303ad9c05e6dfc1b42532dd514d202064a31ae2` |
| 23 | `theorem` | [disjoint_of_subset_iff_left_eq_empty](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Disjoint/Variant3dafc556bd4e2d998e351251adac805568820d3bdfffd2bb6c28b6852b2a24f3.lean/declarations/disjoint-of-subset-iff-left-eq-empty--c4f515583eae64cadd8b6f64.md) | 102 | `result-track:c4f515583eae64cadd8b6f644ecc69e80b7b3ff52cc8871f4be484c4cb85b0b8` |
| 24 | `theorem` | [subset_compl_iff_disjoint_left](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Disjoint/Variant3dafc556bd4e2d998e351251adac805568820d3bdfffd2bb6c28b6852b2a24f3.lean/declarations/subset-compl-iff-disjoint-left--ecceb403579c528e71373378.md) | 108 | `result-track:ecceb403579c528e713733780f594d20605a15ff33927ec6d552a96985c2469a` |
| 25 | `theorem` | [subset_compl_iff_disjoint_right](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Disjoint/Variant3dafc556bd4e2d998e351251adac805568820d3bdfffd2bb6c28b6852b2a24f3.lean/declarations/subset-compl-iff-disjoint-right--dfb125712079b413f90b4b08.md) | 111 | `result-track:dfb125712079b413f90b4b083ae1c388d96b43b02b8116ffe196b72f0d8189c7` |
| 26 | `theorem` | [disjoint_compl_left_iff_subset](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Disjoint/Variant3dafc556bd4e2d998e351251adac805568820d3bdfffd2bb6c28b6852b2a24f3.lean/declarations/disjoint-compl-left-iff-subset--4aca92e5b7cdd00978538fb2.md) | 114 | `result-track:4aca92e5b7cdd00978538fb219a96df5ee7e4a373d792d3f58d7753aa1483b10` |
| 27 | `theorem` | [disjoint_compl_right_iff_subset](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Disjoint/Variant3dafc556bd4e2d998e351251adac805568820d3bdfffd2bb6c28b6852b2a24f3.lean/declarations/disjoint-compl-right-iff-subset--9278df84977eef63396291ed.md) | 117 | `result-track:9278df84977eef63396291edf28a7c4ab39e7f887ece7baef7208b8c2893a744` |
| 28 | `theorem` | [diff_ssubset_left_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Disjoint/Variant3dafc556bd4e2d998e351251adac805568820d3bdfffd2bb6c28b6852b2a24f3.lean/declarations/diff-ssubset-left-iff--d74892c32e16241711471549.md) | 129 | `result-track:d74892c32e1624171147154994961555671b0c90c9271b9e077dddf984b87c41` |
| 29 | `theorem` | [_root_.GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.DisjointIff.Variant3e84f59f52e2e5316a9125d372dd91465917807380846b6ee93d4f857a7e60a7.HasSubset.Subset.diff_ssubset_of_nonempty](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Disjoint/Variant3dafc556bd4e2d998e351251adac805568820d3bdfffd2bb6c28b6852b2a24f3.lean/declarations/root-grwtsk-combinatoricsanddiscretemathematics-theoreticalalgorithms-di--8ea66c97a3f2351ad3b50743.md) | 132 | `result-track:8ea66c97a3f2351ad3b50743866fd45a9464e9a5bb904a8fe09ad3bfc3c9dfc1` |
| 30 | `theorem` | [disjoint_range_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Disjoint/Variant3dafc556bd4e2d998e351251adac805568820d3bdfffd2bb6c28b6852b2a24f3.lean/declarations/disjoint-range-iff--e13d6fe8167f04a10ff62b64.md) | 136 | `result-track:e13d6fe8167f04a10ff62b64e13228b258ad20f4cd91355ca4977a97c54cff07` |
| 31 | `theorem` | [union_left](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Disjoint/Variant3dafc556bd4e2d998e351251adac805568820d3bdfffd2bb6c28b6852b2a24f3.lean/declarations/union-left--5165e1e36d9429de207ca3c7.md) | 148 | `result-track:5165e1e36d9429de207ca3c79f427f550738e79bb40bb35e8ef31f01e5b196a2` |
| 32 | `theorem` | [union_right](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Disjoint/Variant3dafc556bd4e2d998e351251adac805568820d3bdfffd2bb6c28b6852b2a24f3.lean/declarations/union-right--fe30de44cf74b68ab8323812.md) | 151 | `result-track:fe30de44cf74b68ab8323812843d59cc641e8dc01886cc97d722f5fd79a12d0e` |
| 33 | `theorem` | [inter_left](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Disjoint/Variant3dafc556bd4e2d998e351251adac805568820d3bdfffd2bb6c28b6852b2a24f3.lean/declarations/inter-left--a3d5c77d2ce9d5d98bc8b609.md) | 154 | `result-track:a3d5c77d2ce9d5d98bc8b6098916301a2d57589043dddb51dd4acc0c04af3065` |
| 34 | `theorem` | [inter_left'](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Disjoint/Variant3dafc556bd4e2d998e351251adac805568820d3bdfffd2bb6c28b6852b2a24f3.lean/declarations/inter-left--2a0cf8a9553c3692de3fc39b.md) | 157 | `result-track:2a0cf8a9553c3692de3fc39b1e98f00900d89a301235c17878ad23ed49695326` |
| 35 | `theorem` | [inter_right](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Disjoint/Variant3dafc556bd4e2d998e351251adac805568820d3bdfffd2bb6c28b6852b2a24f3.lean/declarations/inter-right--1cef0da15e1f785784f565ef.md) | 160 | `result-track:1cef0da15e1f785784f565efbd72515fa82e6c4c3bb2478023f1c23f29249f28` |
| 36 | `theorem` | [inter_right'](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Disjoint/Variant3dafc556bd4e2d998e351251adac805568820d3bdfffd2bb6c28b6852b2a24f3.lean/declarations/inter-right--e1f229c519950673d849d825.md) | 163 | `result-track:e1f229c519950673d849d825dd2632770b93ceece42b593f8f62490f20f9a72f` |
| 37 | `theorem` | [subset_left_of_subset_union](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Disjoint/Variant3dafc556bd4e2d998e351251adac805568820d3bdfffd2bb6c28b6852b2a24f3.lean/declarations/subset-left-of-subset-union--9ca13cac25f79331862bac8d.md) | 166 | `result-track:9ca13cac25f79331862bac8d4434e3aee877ec402e5ea79b7f38ffc038abcc1a` |
| 38 | `theorem` | [subset_right_of_subset_union](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Disjoint/Variant3dafc556bd4e2d998e351251adac805568820d3bdfffd2bb6c28b6852b2a24f3.lean/declarations/subset-right-of-subset-union--f509eeb333769272536c18d8.md) | 169 | `result-track:f509eeb333769272536c18d86be08993d08fc17c05c0b7e1eb56b545cfc78725` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
