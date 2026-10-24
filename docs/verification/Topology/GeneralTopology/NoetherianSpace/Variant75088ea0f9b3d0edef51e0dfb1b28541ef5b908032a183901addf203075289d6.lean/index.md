# Verification target: GRWTSK.Topology.GeneralTopology.NoetherianSpace.Variant75088ea0f9b3d0edef51e0dfb1b28541ef5b908032a183901addf203075289d6

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "cbd2baa8e2ea318595a3d008d4367bfddd2fd98c",
  "lexical_observation_count": 24,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/NoetherianSpace/Variant75088ea0f9b3d0edef51e0dfb1b28541ef5b908032a183901addf203075289d6.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/NoetherianSpace/Variant75088ea0f9b3d0edef51e0dfb1b28541ef5b908032a183901addf203075289d6.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/NoetherianSpace/Variant75088ea0f9b3d0edef51e0dfb1b28541ef5b908032a183901addf203075289d6.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `cbd2baa8e2ea318595a3d008d4367bfddd2fd98c`.

Source path: `GRWTSK/Topology/GeneralTopology/NoetherianSpace/Variant75088ea0f9b3d0edef51e0dfb1b28541ef5b908032a183901addf203075289d6.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/NoetherianSpace/Variant75088ea0f9b3d0edef51e0dfb1b28541ef5b908032a183901addf203075289d6.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.Homeomorph.Lemmas` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Sets.Closeds` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [NoetherianSpace](../../../../../mathematics/Topology/GeneralTopology/NoetherianSpace/Variant75088ea0f9b3d0edef51e0dfb1b28541ef5b908032a183901addf203075289d6.lean/declarations/noetherianspace--1106377f7d6fe29ee8380853.md) | 56 | `declaration-track:1106377f7d6fe29ee8380853a1028e6e2350a78430c69fcbf2e33d9c3bcc16c3` |
| 2 | `theorem` | [noetherianSpace_iff_opens](../../../../../mathematics/Topology/GeneralTopology/NoetherianSpace/Variant75088ea0f9b3d0edef51e0dfb1b28541ef5b908032a183901addf203075289d6.lean/declarations/noetherianspace-iff-opens--d40f44b8ef87439e7d0f4a46.md) | 58 | `result-track:d40f44b8ef87439e7d0f4a46cc80cac3ef2a4054463c4b768baacb6e57393353` |
| 3 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/NoetherianSpace/Variant75088ea0f9b3d0edef51e0dfb1b28541ef5b908032a183901addf203075289d6.lean/declarations/instance--82ea748a7e414d6bca26424f.md) | 63 | `declaration-track:82ea748a7e414d6bca26424f73e776b9ac1f228ad72a7a6b8e8d594935ac75d2` |
| 4 | `theorem` | [NoetherianSpace.isCompact](../../../../../mathematics/Topology/GeneralTopology/NoetherianSpace/Variant75088ea0f9b3d0edef51e0dfb1b28541ef5b908032a183901addf203075289d6.lean/declarations/noetherianspace-iscompact--ac4d87502bf3bbb98c2b944c.md) | 69 | `result-track:ac4d87502bf3bbb98c2b944c0ad81b00edd9db028f63cef696fc4dabddc4fc3a` |
| 5 | `theorem` | [_root_.GRWTSK.Topology.GeneralTopology.NoetherianSpace.Varianta5efa622f4dfe0e8328bd82f68a8e0edf1174796d64ce82108258f176cdffdf0.Topology.IsInducing.noetherianSpace](../../../../../mathematics/Topology/GeneralTopology/NoetherianSpace/Variant75088ea0f9b3d0edef51e0dfb1b28541ef5b908032a183901addf203075289d6.lean/declarations/root-grwtsk-topology-generaltopology-noetherianspace-varianta5efa622f4df--734d1ddf6ff267b21a9ccfee.md) | 75 | `result-track:734d1ddf6ff267b21a9ccfee4ff9e29f719401eb479101d9add6396013a2674d` |
| 6 | `instance` | [NoetherianSpace.set](../../../../../mathematics/Topology/GeneralTopology/NoetherianSpace/Variant75088ea0f9b3d0edef51e0dfb1b28541ef5b908032a183901addf203075289d6.lean/declarations/noetherianspace-set--55ff90aa3205dd3be1a9daf6.md) | 83 | `declaration-track:55ff90aa3205dd3be1a9daf64abd313c82e0a7f153c176067fa9d9e335f75964` |
| 7 | `theorem` | [noetherianSpace_TFAE](../../../../../mathematics/Topology/GeneralTopology/NoetherianSpace/Variant75088ea0f9b3d0edef51e0dfb1b28541ef5b908032a183901addf203075289d6.lean/declarations/noetherianspace-tfae--83b9894264eda6748464e3ce.md) | 88 | `result-track:83b9894264eda6748464e3cefa93f6fa5857715f39e5629bbc858162845ec985` |
| 8 | `theorem` | [noetherianSpace_iff_isCompact](../../../../../mathematics/Topology/GeneralTopology/NoetherianSpace/Variant75088ea0f9b3d0edef51e0dfb1b28541ef5b908032a183901addf203075289d6.lean/declarations/noetherianspace-iff-iscompact--3f1bf6ed2cc14cbd75df732c.md) | 101 | `result-track:3f1bf6ed2cc14cbd75df732cda6216ab76600e3581191914c3909076d1b804bf` |
| 9 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/NoetherianSpace/Variant75088ea0f9b3d0edef51e0dfb1b28541ef5b908032a183901addf203075289d6.lean/declarations/instance--c026357a9e93c120c9cd8109.md) | 104 | `declaration-track:c026357a9e93c120c9cd8109da143c044b4f3b5cf214556c26a9ea861a222cbf` |
| 10 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/NoetherianSpace/Variant75088ea0f9b3d0edef51e0dfb1b28541ef5b908032a183901addf203075289d6.lean/declarations/instance--7b3124a50842ead0db79c5c6.md) | 107 | `declaration-track:7b3124a50842ead0db79c5c6f4b6eb8476f1e5e044fbe45e23b01d6218d8fe25` |
| 11 | `theorem` | [noetherianSpace_of_surjective](../../../../../mathematics/Topology/GeneralTopology/NoetherianSpace/Variant75088ea0f9b3d0edef51e0dfb1b28541ef5b908032a183901addf203075289d6.lean/declarations/noetherianspace-of-surjective--a3c1b0849af2f80ca64f62cd.md) | 116 | `result-track:a3c1b0849af2f80ca64f62cddf52e2f1114aae041a9eafb1690071b65868cc8a` |
| 12 | `theorem` | [noetherianSpace_iff_of_homeomorph](../../../../../mathematics/Topology/GeneralTopology/NoetherianSpace/Variant75088ea0f9b3d0edef51e0dfb1b28541ef5b908032a183901addf203075289d6.lean/declarations/noetherianspace-iff-of-homeomorph--d940ea047a6e55f4482562cb.md) | 121 | `result-track:d940ea047a6e55f4482562cbc28f7e59e55b12d4f9e6c51b61557015d84b7887` |
| 13 | `theorem` | [NoetherianSpace.range](../../../../../mathematics/Topology/GeneralTopology/NoetherianSpace/Variant75088ea0f9b3d0edef51e0dfb1b28541ef5b908032a183901addf203075289d6.lean/declarations/noetherianspace-range--d9b0e3ada04c8e183acfba35.md) | 125 | `result-track:d9b0e3ada04c8e183acfba35fa27f683e46e55d7e98d027c48ba5a6fecbbd0e5` |
| 14 | `theorem` | [noetherianSpace_set_iff](../../../../../mathematics/Topology/GeneralTopology/NoetherianSpace/Variant75088ea0f9b3d0edef51e0dfb1b28541ef5b908032a183901addf203075289d6.lean/declarations/noetherianspace-set-iff--f8ba92a2ae17dd2d22e93087.md) | 130 | `result-track:f8ba92a2ae17dd2d22e93087629063f095847b23b2a3125b05c29a5683a9e03f` |
| 15 | `theorem` | [noetherian_univ_iff](../../../../../mathematics/Topology/GeneralTopology/NoetherianSpace/Variant75088ea0f9b3d0edef51e0dfb1b28541ef5b908032a183901addf203075289d6.lean/declarations/noetherian-univ-iff--3921f5feae25c9ecf04233a7.md) | 136 | `result-track:3921f5feae25c9ecf04233a77963793f1031951ae4a99fa001db23c39fe05c13` |
| 16 | `theorem` | [NoetherianSpace.iUnion](../../../../../mathematics/Topology/GeneralTopology/NoetherianSpace/Variant75088ea0f9b3d0edef51e0dfb1b28541ef5b908032a183901addf203075289d6.lean/declarations/noetherianspace-iunion--4f414fa5da1f09f09d76dd26.md) | 139 | `result-track:4f414fa5da1f09f09d76dd26e10cb41a36631943d3331cedcd34212a8b845e4a` |
| 17 | `theorem` | [NoetherianSpace.discrete](../../../../../mathematics/Topology/GeneralTopology/NoetherianSpace/Variant75088ea0f9b3d0edef51e0dfb1b28541ef5b908032a183901addf203075289d6.lean/declarations/noetherianspace-discrete--2439d807c53cce9be5aad08d.md) | 147 | `result-track:2439d807c53cce9be5aad08d9597e8c10757cfc33648f9dbc354aea6dac25e34` |
| 18 | `theorem` | [NoetherianSpace.finite](../../../../../mathematics/Topology/GeneralTopology/NoetherianSpace/Variant75088ea0f9b3d0edef51e0dfb1b28541ef5b908032a183901addf203075289d6.lean/declarations/noetherianspace-finite--8fe19a78e7025e129b2dde4a.md) | 153 | `result-track:8fe19a78e7025e129b2dde4aad9f7c0997052c42be21da05e9f0886d85121b3b` |
| 19 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/NoetherianSpace/Variant75088ea0f9b3d0edef51e0dfb1b28541ef5b908032a183901addf203075289d6.lean/declarations/instance--c2c8a69a92d34c6cd3aa37d7.md) | 156 | `declaration-track:c2c8a69a92d34c6cd3aa37d7f7fffdfec7bba96f6a9cdb5848736de595b7967d` |
| 20 | `theorem` | [NoetherianSpace.exists_finite_set_closeds_irreducible](../../../../../mathematics/Topology/GeneralTopology/NoetherianSpace/Variant75088ea0f9b3d0edef51e0dfb1b28541ef5b908032a183901addf203075289d6.lean/declarations/noetherianspace-exists-finite-set-closeds-irreducible--6490f73cd2d39d66cb4fd48b.md) | 160 | `result-track:6490f73cd2d39d66cb4fd48be8f9a36c90cc7e24ace71380d46a5cce00ab34df` |
| 21 | `theorem` | [NoetherianSpace.exists_finite_set_isClosed_irreducible](../../../../../mathematics/Topology/GeneralTopology/NoetherianSpace/Variant75088ea0f9b3d0edef51e0dfb1b28541ef5b908032a183901addf203075289d6.lean/declarations/noetherianspace-exists-finite-set-isclosed-irreducible--d0effffa24e59acdf82820ee.md) | 179 | `result-track:d0effffa24e59acdf82820eef423ebac96d24114ee0ba70d23749c799799edac` |
| 22 | `theorem` | [NoetherianSpace.exists_finset_irreducible](../../../../../mathematics/Topology/GeneralTopology/NoetherianSpace/Variant75088ea0f9b3d0edef51e0dfb1b28541ef5b908032a183901addf203075289d6.lean/declarations/noetherianspace-exists-finset-irreducible--21bf4b9054778e4871baff4a.md) | 190 | `result-track:21bf4b9054778e4871baff4a5f4c555c25f8cc0b803023c76b5ae60d192837d2` |
| 23 | `theorem` | [NoetherianSpace.finite_irreducibleComponents](../../../../../mathematics/Topology/GeneralTopology/NoetherianSpace/Variant75088ea0f9b3d0edef51e0dfb1b28541ef5b908032a183901addf203075289d6.lean/declarations/noetherianspace-finite-irreduciblecomponents--fe1fd0a4f277a0275ecf8163.md) | 196 | `result-track:fe1fd0a4f277a0275ecf8163f0563703c8aee95bfdbae9f8c3400fb76daa2b29` |
| 24 | `theorem` | [NoetherianSpace.exists_open_ne_empty_le_irreducibleComponent](../../../../../mathematics/Topology/GeneralTopology/NoetherianSpace/Variant75088ea0f9b3d0edef51e0dfb1b28541ef5b908032a183901addf203075289d6.lean/declarations/noetherianspace-exists-open-ne-empty-le-irreduciblecomponent--9499ccaa888097f73b7a5772.md) | 206 | `result-track:9499ccaa888097f73b7a5772c88daddc454bd8d63846b9cc86137491eacddf93` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
