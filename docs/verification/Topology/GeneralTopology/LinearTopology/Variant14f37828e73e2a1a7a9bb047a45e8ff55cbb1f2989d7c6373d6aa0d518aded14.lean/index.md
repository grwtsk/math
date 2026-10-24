# Verification target: GRWTSK.Topology.GeneralTopology.LinearTopology.Variant14f37828e73e2a1a7a9bb047a45e8ff55cbb1f2989d7c6373d6aa0d518aded14

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "dc4f5a633f31f0ee6342675cff8938ac0720f389",
  "lexical_observation_count": 24,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/LinearTopology/Variant14f37828e73e2a1a7a9bb047a45e8ff55cbb1f2989d7c6373d6aa0d518aded14.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/LinearTopology/Variant14f37828e73e2a1a7a9bb047a45e8ff55cbb1f2989d7c6373d6aa0d518aded14.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/LinearTopology/Variant14f37828e73e2a1a7a9bb047a45e8ff55cbb1f2989d7c6373d6aa0d518aded14.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `dc4f5a633f31f0ee6342675cff8938ac0720f389`.

Source path: `GRWTSK/Topology/GeneralTopology/LinearTopology/Variant14f37828e73e2a1a7a9bb047a45e8ff55cbb1f2989d7c6373d6aa0d518aded14.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/LinearTopology/Variant14f37828e73e2a1a7a9bb047a45e8ff55cbb1f2989d7c6373d6aa0d518aded14.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.RingTheory.TwoSidedIdeal.Operations` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.Ring.Basic` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.OpenSubgroup` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [_root_.IsLinearTopology](../../../../../mathematics/Topology/GeneralTopology/LinearTopology/Variant14f37828e73e2a1a7a9bb047a45e8ff55cbb1f2989d7c6373d6aa0d518aded14.lean/declarations/root-islineartopology--ab563364aa8b88553fb56fae.md) | 98 | `declaration-track:ab563364aa8b88553fb56fae8b3ed7133ec495ce06ef4f06cd07e0569bcf77d9` |
| 2 | `lemma` | [hasBasis_submodule](../../../../../mathematics/Topology/GeneralTopology/LinearTopology/Variant14f37828e73e2a1a7a9bb047a45e8ff55cbb1f2989d7c6373d6aa0d518aded14.lean/declarations/hasbasis-submodule--e71cbe7ac64ebc130e3e55cb.md) | 103 | `result-track:e71cbe7ac64ebc130e3e55cb43c5a14a865ceca5efa7f167c13442dfd42d1730` |
| 3 | `lemma` | [hasBasis_open_submodule](../../../../../mathematics/Topology/GeneralTopology/LinearTopology/Variant14f37828e73e2a1a7a9bb047a45e8ff55cbb1f2989d7c6373d6aa0d518aded14.lean/declarations/hasbasis-open-submodule--c3e043b4a77db3acdfb68624.md) | 108 | `result-track:c3e043b4a77db3acdfb686248a4064d597d034944d8dd53e7e063c224351eb00` |
| 4 | `lemma` | [mk_of_hasBasis'](../../../../../mathematics/Topology/GeneralTopology/LinearTopology/Variant14f37828e73e2a1a7a9bb047a45e8ff55cbb1f2989d7c6373d6aa0d518aded14.lean/declarations/mk-of-hasbasis--77fdedb999ecee92ce69a552.md) | 118 | `result-track:77fdedb999ecee92ce69a552afee979a63cd7c9c760673aa3e67902d6b54fb71` |
| 5 | `lemma` | [mk_of_hasBasis](../../../../../mathematics/Topology/GeneralTopology/LinearTopology/Variant14f37828e73e2a1a7a9bb047a45e8ff55cbb1f2989d7c6373d6aa0d518aded14.lean/declarations/mk-of-hasbasis--90da5621757e5319ab430c5f.md) | 140 | `result-track:90da5621757e5319ab430c5fef1d7cabe4e73e6440f41a02ccb0d4a9f60c11b2` |
| 6 | `theorem` | [_root_.isLinearTopology_iff_hasBasis_submodule](../../../../../mathematics/Topology/GeneralTopology/LinearTopology/Variant14f37828e73e2a1a7a9bb047a45e8ff55cbb1f2989d7c6373d6aa0d518aded14.lean/declarations/root-islineartopology-iff-hasbasis-submodule--5fc9d52744bdc4aeb4d0d477.md) | 147 | `result-track:5fc9d52744bdc4aeb4d0d47728f377d2393513c45c6f37fab98665427b4b02ee` |
| 7 | `theorem` | [_root_.isLinearTopology_iff_hasBasis_open_submodule](../../../../../mathematics/Topology/GeneralTopology/LinearTopology/Variant14f37828e73e2a1a7a9bb047a45e8ff55cbb1f2989d7c6373d6aa0d518aded14.lean/declarations/root-islineartopology-iff-hasbasis-open-submodule--892c446479239524d38b0362.md) | 152 | `result-track:892c446479239524d38b03624be4728d07e4c4ed802ed5b3be1657ee31c8a138` |
| 8 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/LinearTopology/Variant14f37828e73e2a1a7a9bb047a45e8ff55cbb1f2989d7c6373d6aa0d518aded14.lean/declarations/instance--093e7752c1ed0d171c1cdd48.md) | 158 | `declaration-track:093e7752c1ed0d171c1cdd481b57e346a6db80737bd95ed4cb1a70a533aabdaf` |
| 9 | `lemma` | [hasBasis_subbimodule](../../../../../mathematics/Topology/GeneralTopology/LinearTopology/Variant14f37828e73e2a1a7a9bb047a45e8ff55cbb1f2989d7c6373d6aa0d518aded14.lean/declarations/hasbasis-subbimodule--05ecb042b8d29dd51134df6e.md) | 175 | `result-track:05ecb042b8d29dd51134df6e2a192df12c146ef913888f50318bed583d547a2f` |
| 10 | `lemma` | [hasBasis_open_subbimodule](../../../../../mathematics/Topology/GeneralTopology/LinearTopology/Variant14f37828e73e2a1a7a9bb047a45e8ff55cbb1f2989d7c6373d6aa0d518aded14.lean/declarations/hasbasis-open-subbimodule--e8e000392a865cd1b03a87f6.md) | 231 | `result-track:e8e000392a865cd1b03a87f6ecca3ec09b3e3aea7ae2a20699ba5d9a3b8c66fe` |
| 11 | `theorem` | [tendsto_smul_zero](../../../../../mathematics/Topology/GeneralTopology/LinearTopology/Variant14f37828e73e2a1a7a9bb047a45e8ff55cbb1f2989d7c6373d6aa0d518aded14.lean/declarations/tendsto-smul-zero--9dffc4f925dc5a688575002d.md) | 245 | `result-track:9dffc4f925dc5a688575002d2211a9e87d3d286f1dc6f5695478156e183864d6` |
| 12 | `theorem` | [_root_.IsCentralScalar.isLinearTopology_iff](../../../../../mathematics/Topology/GeneralTopology/LinearTopology/Variant14f37828e73e2a1a7a9bb047a45e8ff55cbb1f2989d7c6373d6aa0d518aded14.lean/declarations/root-iscentralscalar-islineartopology-iff--24108988b37dd78fb6f7b7c5.md) | 256 | `result-track:24108988b37dd78fb6f7b7c5fd8ec26bb5ead2f80b9a66412239dde0768522b1` |
| 13 | `theorem` | [hasBasis_ideal](../../../../../mathematics/Topology/GeneralTopology/LinearTopology/Variant14f37828e73e2a1a7a9bb047a45e8ff55cbb1f2989d7c6373d6aa0d518aded14.lean/declarations/hasbasis-ideal--5e69c6d5cbad52909171a5a6.md) | 270 | `result-track:5e69c6d5cbad52909171a5a6ea2bbef39c89e8ba6e81f0b2ce65463edfc04bb1` |
| 14 | `theorem` | [hasBasis_open_ideal](../../../../../mathematics/Topology/GeneralTopology/LinearTopology/Variant14f37828e73e2a1a7a9bb047a45e8ff55cbb1f2989d7c6373d6aa0d518aded14.lean/declarations/hasbasis-open-ideal--f436dd6ece540658021717ff.md) | 274 | `result-track:f436dd6ece540658021717ffa4aa304cb8f7ac94cb2cdf7ec42185e60e5e8575` |
| 15 | `theorem` | [_root_.isLinearTopology_iff_hasBasis_ideal](../../../../../mathematics/Topology/GeneralTopology/LinearTopology/Variant14f37828e73e2a1a7a9bb047a45e8ff55cbb1f2989d7c6373d6aa0d518aded14.lean/declarations/root-islineartopology-iff-hasbasis-ideal--c8808bce24db3fb93147b890.md) | 278 | `result-track:c8808bce24db3fb93147b890a79b6fdf06b39a2863e1198b7e68ff6e18cd7aa1` |
| 16 | `theorem` | [_root_.isLinearTopology_iff_hasBasis_open_ideal](../../../../../mathematics/Topology/GeneralTopology/LinearTopology/Variant14f37828e73e2a1a7a9bb047a45e8ff55cbb1f2989d7c6373d6aa0d518aded14.lean/declarations/root-islineartopology-iff-hasbasis-open-ideal--6fb9bf077745fd8cc0ac47f8.md) | 283 | `result-track:6fb9bf077745fd8cc0ac47f834c3c17eac8cf054d16c018af49dd553e0c54a80` |
| 17 | `theorem` | [hasBasis_right_ideal](../../../../../mathematics/Topology/GeneralTopology/LinearTopology/Variant14f37828e73e2a1a7a9bb047a45e8ff55cbb1f2989d7c6373d6aa0d518aded14.lean/declarations/hasbasis-right-ideal--0187b78f06509daf4aeea14b.md) | 288 | `result-track:0187b78f06509daf4aeea14b31dbff0c35d820d265942ab37900a5b2c9467aeb` |
| 18 | `lemma` | [hasBasis_twoSidedIdeal](../../../../../mathematics/Topology/GeneralTopology/LinearTopology/Variant14f37828e73e2a1a7a9bb047a45e8ff55cbb1f2989d7c6373d6aa0d518aded14.lean/declarations/hasbasis-twosidedideal--507462c71fdf899d8adda404.md) | 298 | `result-track:507462c71fdf899d8adda404949f01770d2be5357628ec2e0853c6f0de7efc6e` |
| 19 | `lemma` | [hasBasis_open_twoSidedIdeal](../../../../../mathematics/Topology/GeneralTopology/LinearTopology/Variant14f37828e73e2a1a7a9bb047a45e8ff55cbb1f2989d7c6373d6aa0d518aded14.lean/declarations/hasbasis-open-twosidedideal--2d06f9181b63e502b6aeff97.md) | 307 | `result-track:2d06f9181b63e502b6aeff975e42b75b11a29187f592fc103bbb3e0c49a0264f` |
| 20 | `theorem` | [_root_.isLinearTopology_iff_hasBasis_twoSidedIdeal](../../../../../mathematics/Topology/GeneralTopology/LinearTopology/Variant14f37828e73e2a1a7a9bb047a45e8ff55cbb1f2989d7c6373d6aa0d518aded14.lean/declarations/root-islineartopology-iff-hasbasis-twosidedideal--8347200efd51e224ee0c02d2.md) | 315 | `result-track:8347200efd51e224ee0c02d2a64e7db6426b041080a231170870829b486c95dc` |
| 21 | `theorem` | [_root_.isLinearTopology_iff_hasBasis_open_twoSidedIdeal](../../../../../mathematics/Topology/GeneralTopology/LinearTopology/Variant14f37828e73e2a1a7a9bb047a45e8ff55cbb1f2989d7c6373d6aa0d518aded14.lean/declarations/root-islineartopology-iff-hasbasis-open-twosidedideal--303ff2e23347a1536beb5b5d.md) | 323 | `result-track:303ff2e23347a1536beb5b5d7d8c7dcdf41728a6c4371f021bf619401c13a8ca` |
| 22 | `theorem` | [tendsto_mul_zero_of_left](../../../../../mathematics/Topology/GeneralTopology/LinearTopology/Variant14f37828e73e2a1a7a9bb047a45e8ff55cbb1f2989d7c6373d6aa0d518aded14.lean/declarations/tendsto-mul-zero-of-left--3fbab19a65d3fd397cecad69.md) | 330 | `result-track:3fbab19a65d3fd397cecad69e4ab897fbdabd06d033729cf0494e7eff077f2de` |
| 23 | `theorem` | [tendsto_mul_zero_of_right](../../../../../mathematics/Topology/GeneralTopology/LinearTopology/Variant14f37828e73e2a1a7a9bb047a45e8ff55cbb1f2989d7c6373d6aa0d518aded14.lean/declarations/tendsto-mul-zero-of-right--7fd157ef1f00f2b2fe0dfb0a.md) | 335 | `result-track:7fd157ef1f00f2b2fe0dfb0a8850070bb0c8c40efe0fab21818e278a7038b7bd` |
| 24 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/LinearTopology/Variant14f37828e73e2a1a7a9bb047a45e8ff55cbb1f2989d7c6373d6aa0d518aded14.lean/declarations/instance--0beae338aa13844902e26ce6.md) | 347 | `declaration-track:0beae338aa13844902e26ce6f6e56a1da90888ab9dc57f37b56ee4a3c41fef75` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
