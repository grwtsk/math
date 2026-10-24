# Verification target: GRWTSK.Topology.GeneralTopology.EventuallyConst.Variant37db4927ed3621b3228ccac0d7f4c258fda421a8f762e154a03cf4b5cf47bd4b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ac9ba262a7111ab1494911a0519dffbd8180bd60",
  "lexical_observation_count": 43,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/EventuallyConst/Variant37db4927ed3621b3228ccac0d7f4c258fda421a8f762e154a03cf4b5cf47bd4b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/EventuallyConst/Variant37db4927ed3621b3228ccac0d7f4c258fda421a8f762e154a03cf4b5cf47bd4b.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/EventuallyConst/Variant37db4927ed3621b3228ccac0d7f4c258fda421a8f762e154a03cf4b5cf47bd4b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ac9ba262a7111ab1494911a0519dffbd8180bd60`.

Source path: `GRWTSK/Topology/GeneralTopology/EventuallyConst/Variant37db4927ed3621b3228ccac0d7f4c258fda421a8f762e154a03cf4b5cf47bd4b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/EventuallyConst/Variant37db4927ed3621b3228ccac0d7f4c258fda421a8f762e154a03cf4b5cf47bd4b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [EventuallyConst](../../../../../mathematics/Topology/GeneralTopology/EventuallyConst/Variant37db4927ed3621b3228ccac0d7f4c258fda421a8f762e154a03cf4b5cf47bd4b.lean/declarations/eventuallyconst--032c75698605caa0564f0ad8.md) | 38 | `declaration-track:032c75698605caa0564f0ad8385aa6176f3bfcb984a2f3b6b6cbb286be5b4165` |
| 2 | `theorem` | [HasBasis.eventuallyConst_iff](../../../../../mathematics/Topology/GeneralTopology/EventuallyConst/Variant37db4927ed3621b3228ccac0d7f4c258fda421a8f762e154a03cf4b5cf47bd4b.lean/declarations/hasbasis-eventuallyconst-iff--1be1c8a2329d49a69e802436.md) | 40 | `result-track:1be1c8a2329d49a69e802436617ad2cd5cc54f1cad40c56048cc17278023e7da` |
| 3 | `theorem` | [HasBasis.eventuallyConst_iff'](../../../../../mathematics/Topology/GeneralTopology/EventuallyConst/Variant37db4927ed3621b3228ccac0d7f4c258fda421a8f762e154a03cf4b5cf47bd4b.lean/declarations/hasbasis-eventuallyconst-iff--b799665710244a966518fded.md) | 44 | `result-track:b799665710244a966518fded7a7a1d6ce6db21f2b815b75afb8749bad6a22e86` |
| 4 | `lemma` | [eventuallyConst_iff_tendsto](../../../../../mathematics/Topology/GeneralTopology/EventuallyConst/Variant37db4927ed3621b3228ccac0d7f4c258fda421a8f762e154a03cf4b5cf47bd4b.lean/declarations/eventuallyconst-iff-tendsto--35f4abf0db6676bb0282eb3d.md) | 50 | `result-track:35f4abf0db6676bb0282eb3d22dfd7ba094e7d13189ef8609e9ecac7a5438a1d` |
| 5 | `theorem` | [EventuallyConst.of_tendsto](../../../../../mathematics/Topology/GeneralTopology/EventuallyConst/Variant37db4927ed3621b3228ccac0d7f4c258fda421a8f762e154a03cf4b5cf47bd4b.lean/declarations/eventuallyconst-of-tendsto--c419a04601695a49d088cb34.md) | 56 | `result-track:c419a04601695a49d088cb34d0134ce0f93f6208ed55da02dbbcef5e1ac71887` |
| 6 | `theorem` | [eventuallyConst_iff_exists_eventuallyEq](../../../../../mathematics/Topology/GeneralTopology/EventuallyConst/Variant37db4927ed3621b3228ccac0d7f4c258fda421a8f762e154a03cf4b5cf47bd4b.lean/declarations/eventuallyconst-iff-exists-eventuallyeq--929122108bac5f3cf746ee14.md) | 59 | `result-track:929122108bac5f3cf746ee148a58a5b4eb1ed5b1b59f04aa9543e45178ca121b` |
| 7 | `theorem` | [eventuallyConst_pred'](../../../../../mathematics/Topology/GeneralTopology/EventuallyConst/Variant37db4927ed3621b3228ccac0d7f4c258fda421a8f762e154a03cf4b5cf47bd4b.lean/declarations/eventuallyconst-pred--ae9a44af4f50e60aba6d2926.md) | 65 | `result-track:ae9a44af4f50e60aba6d29264c4b380df477e60eb59470af1c21a76660782203` |
| 8 | `theorem` | [eventuallyConst_pred](../../../../../mathematics/Topology/GeneralTopology/EventuallyConst/Variant37db4927ed3621b3228ccac0d7f4c258fda421a8f762e154a03cf4b5cf47bd4b.lean/declarations/eventuallyconst-pred--d68cf5f7bd1d97e941a1a749.md) | 69 | `result-track:d68cf5f7bd1d97e941a1a74980118e3d51d4d39df02767b3dc51a55d0399bf56` |
| 9 | `def` | [EventuallyEmptyOrUniv](../../../../../mathematics/Topology/GeneralTopology/EventuallyConst/Variant37db4927ed3621b3228ccac0d7f4c258fda421a8f762e154a03cf4b5cf47bd4b.lean/declarations/eventuallyemptyoruniv--9e7fdab08781bef9089b5ceb.md) | 77 | `declaration-track:9e7fdab08781bef9089b5cebcfa820858c9f067b5b51372d5d074ef7a83923d7` |
| 10 | `theorem` | [eventuallyEmptyOrUniv_iff'](../../../../../mathematics/Topology/GeneralTopology/EventuallyConst/Variant37db4927ed3621b3228ccac0d7f4c258fda421a8f762e154a03cf4b5cf47bd4b.lean/declarations/eventuallyemptyoruniv-iff--3bbb61c31896b285e62f8812.md) | 79 | `result-track:3bbb61c31896b285e62f88126c0ce787cce9f4628fbdcec9259cfad2fb19c962` |
| 11 | `theorem` | [eventuallyConst_set'](../../../../../mathematics/Topology/GeneralTopology/EventuallyConst/Variant37db4927ed3621b3228ccac0d7f4c258fda421a8f762e154a03cf4b5cf47bd4b.lean/declarations/eventuallyconst-set--736c836a23ddd813eb4c866c.md) | 84 | `result-track:736c836a23ddd813eb4c866c65700ad6ab8e11ba1ca27c4740f7f07a834d612c` |
| 12 | `theorem` | [eventuallyEmptyOrUniv_iff](../../../../../mathematics/Topology/GeneralTopology/EventuallyConst/Variant37db4927ed3621b3228ccac0d7f4c258fda421a8f762e154a03cf4b5cf47bd4b.lean/declarations/eventuallyemptyoruniv-iff--79d197e3927659d1ad861c28.md) | 88 | `result-track:79d197e3927659d1ad861c28e5714ad753504b9e46cabac433cac9b1b05ca35b` |
| 13 | `theorem` | [eventuallyConst_set](../../../../../mathematics/Topology/GeneralTopology/EventuallyConst/Variant37db4927ed3621b3228ccac0d7f4c258fda421a8f762e154a03cf4b5cf47bd4b.lean/declarations/eventuallyconst-set--07b2da2228e3bfe416e69717.md) | 93 | `result-track:07b2da2228e3bfe416e6971703762fd82bfde36ae9eed7ee20a07e0f10931347` |
| 14 | `theorem` | [eventuallyEmptyOrUniv_preimage](../../../../../mathematics/Topology/GeneralTopology/EventuallyConst/Variant37db4927ed3621b3228ccac0d7f4c258fda421a8f762e154a03cf4b5cf47bd4b.lean/declarations/eventuallyemptyoruniv-preimage--caff1c453c563d34d716e7aa.md) | 97 | `result-track:caff1c453c563d34d716e7aafc9437a31ba8e41d7c5fff4532e62d16254319f2` |
| 15 | `theorem` | [eventuallyConst_preimage](../../../../../mathematics/Topology/GeneralTopology/EventuallyConst/Variant37db4927ed3621b3228ccac0d7f4c258fda421a8f762e154a03cf4b5cf47bd4b.lean/declarations/eventuallyconst-preimage--729542b63ae65bc05207fdd9.md) | 102 | `result-track:729542b63ae65bc05207fdd904622bc585d5f320a7a44e5108dc693853bd0584` |
| 16 | `theorem` | [EventuallyEq.eventuallyConst_iff](../../../../../mathematics/Topology/GeneralTopology/EventuallyConst/Variant37db4927ed3621b3228ccac0d7f4c258fda421a8f762e154a03cf4b5cf47bd4b.lean/declarations/eventuallyeq-eventuallyconst-iff--fc068d0b89eed8264aa9a066.md) | 106 | `result-track:fc068d0b89eed8264aa9a0669ae76ad7ca6f3f0bdfebee98fb440b95fa677eb5` |
| 17 | `theorem` | [eventuallyConst_id](../../../../../mathematics/Topology/GeneralTopology/EventuallyConst/Variant37db4927ed3621b3228ccac0d7f4c258fda421a8f762e154a03cf4b5cf47bd4b.lean/declarations/eventuallyconst-id--7c498e44a2f6b09e6c5d1fa8.md) | 110 | `result-track:7c498e44a2f6b09e6c5d1fa8173370a888349b081e7389c71885a3cae6d9b65e` |
| 18 | `lemma` | [bot](../../../../../mathematics/Topology/GeneralTopology/EventuallyConst/Variant37db4927ed3621b3228ccac0d7f4c258fda421a8f762e154a03cf4b5cf47bd4b.lean/declarations/bot--0ab353c65d41da1aed5d13d4.md) | 114 | `result-track:0ab353c65d41da1aed5d13d480a2d3994ee1dbbba93b65309ffbb931f4110f69` |
| 19 | `lemma` | [const](../../../../../mathematics/Topology/GeneralTopology/EventuallyConst/Variant37db4927ed3621b3228ccac0d7f4c258fda421a8f762e154a03cf4b5cf47bd4b.lean/declarations/const--5200438cffd893981832a5de.md) | 117 | `result-track:5200438cffd893981832a5dea54fab57472692a983580069377b723855500371` |
| 20 | `lemma` | [congr](../../../../../mathematics/Topology/GeneralTopology/EventuallyConst/Variant37db4927ed3621b3228ccac0d7f4c258fda421a8f762e154a03cf4b5cf47bd4b.lean/declarations/congr--8293eb05c3dddc34ecaaf938.md) | 120 | `result-track:8293eb05c3dddc34ecaaf938c8bb51ee2152b01ae8e8b5bf20d0e602986b7eb3` |
| 21 | `lemma` | [of_subsingleton_right](../../../../../mathematics/Topology/GeneralTopology/EventuallyConst/Variant37db4927ed3621b3228ccac0d7f4c258fda421a8f762e154a03cf4b5cf47bd4b.lean/declarations/of-subsingleton-right--dc6eb8a3e5936896fb014923.md) | 124 | `result-track:dc6eb8a3e5936896fb014923fc9d0fca8fc24dd5408f274892f2f818caba7861` |
| 22 | `lemma` | [anti](../../../../../mathematics/Topology/GeneralTopology/EventuallyConst/Variant37db4927ed3621b3228ccac0d7f4c258fda421a8f762e154a03cf4b5cf47bd4b.lean/declarations/anti--d853e0da3d971e55f28be49d.md) | 126 | `result-track:d853e0da3d971e55f28be49d380e6a2ebbfb5abd542950f2fdc8756729c2d91d` |
| 23 | `lemma` | [of_subsingleton_left](../../../../../mathematics/Topology/GeneralTopology/EventuallyConst/Variant37db4927ed3621b3228ccac0d7f4c258fda421a8f762e154a03cf4b5cf47bd4b.lean/declarations/of-subsingleton-left--d45c07474fc0b7231f94dd31.md) | 130 | `result-track:d45c07474fc0b7231f94dd3169964d0bdfc32d5ec5a70c78a5ff31c2fc536cc9` |
| 24 | `lemma` | [comp](../../../../../mathematics/Topology/GeneralTopology/EventuallyConst/Variant37db4927ed3621b3228ccac0d7f4c258fda421a8f762e154a03cf4b5cf47bd4b.lean/declarations/comp--f7fdbc5262bac0f2fa3dc3bb.md) | 133 | `result-track:f7fdbc5262bac0f2fa3dc3bb606ac6f407fcd93e309a2551907f2215426c4451` |
| 25 | `lemma` | [inv](../../../../../mathematics/Topology/GeneralTopology/EventuallyConst/Variant37db4927ed3621b3228ccac0d7f4c258fda421a8f762e154a03cf4b5cf47bd4b.lean/declarations/inv--ef937040ce83114b100b8e79.md) | 136 | `result-track:ef937040ce83114b100b8e792e1ecbd56a41c331385dd6b17cffa68d1ebf2e65` |
| 26 | `lemma` | [comp_tendsto](../../../../../mathematics/Topology/GeneralTopology/EventuallyConst/Variant37db4927ed3621b3228ccac0d7f4c258fda421a8f762e154a03cf4b5cf47bd4b.lean/declarations/comp-tendsto--f65daa29d0d64b40c2e7eabe.md) | 138 | `result-track:f65daa29d0d64b40c2e7eabe8a2a36f5ff94d12e0c805ce338f2ae1bcffad1ec` |
| 27 | `lemma` | [apply](../../../../../mathematics/Topology/GeneralTopology/EventuallyConst/Variant37db4927ed3621b3228ccac0d7f4c258fda421a8f762e154a03cf4b5cf47bd4b.lean/declarations/apply--79f81dc0577f858fdf880356.md) | 142 | `result-track:79f81dc0577f858fdf880356316c8c2eb6c780e4afd8ebd66c45ef75419ac147` |
| 28 | `lemma` | [comp₂](../../../../../mathematics/Topology/GeneralTopology/EventuallyConst/Variant37db4927ed3621b3228ccac0d7f4c258fda421a8f762e154a03cf4b5cf47bd4b.lean/declarations/comp--ed67479035d493b91a1dd64c.md) | 146 | `result-track:ed67479035d493b91a1dd64c9f9fcb0c22e57f2372aca7a0408cf027b6639b24` |
| 29 | `lemma` | [prodMk](../../../../../mathematics/Topology/GeneralTopology/EventuallyConst/Variant37db4927ed3621b3228ccac0d7f4c258fda421a8f762e154a03cf4b5cf47bd4b.lean/declarations/prodmk--2b04b4ad29fa1192ff86cb9b.md) | 151 | `result-track:2b04b4ad29fa1192ff86cb9b5afffaca32d2f41e11da9c804abecee87e241f5b` |
| 30 | `lemma` | [mul](../../../../../mathematics/Topology/GeneralTopology/EventuallyConst/Variant37db4927ed3621b3228ccac0d7f4c258fda421a8f762e154a03cf4b5cf47bd4b.lean/declarations/mul--86fd0757c09b535d897cbac0.md) | 156 | `result-track:86fd0757c09b535d897cbac0b0ba0ca9aafbede574472102b69061e998d307ee` |
| 31 | `lemma` | [bot](../../../../../mathematics/Topology/GeneralTopology/EventuallyConst/Variant37db4927ed3621b3228ccac0d7f4c258fda421a8f762e154a03cf4b5cf47bd4b.lean/declarations/bot--96944368835e80b609b14b52.md) | 164 | `result-track:96944368835e80b609b14b52ea832bc6ee478ebd291ae8fd472b9d0ba8d75a5e` |
| 32 | `lemma` | [congr](../../../../../mathematics/Topology/GeneralTopology/EventuallyConst/Variant37db4927ed3621b3228ccac0d7f4c258fda421a8f762e154a03cf4b5cf47bd4b.lean/declarations/congr--b4739b51504563b22a726ef9.md) | 167 | `result-track:b4739b51504563b22a726ef9d6419eba962c03b988b8a7c1a290b8ee063d4f8e` |
| 33 | `lemma` | [anti](../../../../../mathematics/Topology/GeneralTopology/EventuallyConst/Variant37db4927ed3621b3228ccac0d7f4c258fda421a8f762e154a03cf4b5cf47bd4b.lean/declarations/anti--1a6ce8a76afcb7e5f676a8c9.md) | 171 | `result-track:1a6ce8a76afcb7e5f676a8c90d782e1f00825ac2a9e1653c76435f185b3169e1` |
| 34 | `lemma` | [of_mulIndicator_const](../../../../../mathematics/Topology/GeneralTopology/EventuallyConst/Variant37db4927ed3621b3228ccac0d7f4c258fda421a8f762e154a03cf4b5cf47bd4b.lean/declarations/of-mulindicator-const--2edf0a9347860f3fd720085d.md) | 178 | `result-track:2edf0a9347860f3fd720085defd5896180041e5c67899114676385e054894345` |
| 35 | `theorem` | [mulIndicator_const](../../../../../mathematics/Topology/GeneralTopology/EventuallyConst/Variant37db4927ed3621b3228ccac0d7f4c258fda421a8f762e154a03cf4b5cf47bd4b.lean/declarations/mulindicator-const--a22b4ed5f393c1906a1ecfd3.md) | 183 | `result-track:a22b4ed5f393c1906a1ecfd38ee9bb4cd3c639e4b1b43c9eebe68c9ceabb0846` |
| 36 | `theorem` | [mulIndicator_const_iff_of_ne](../../../../../mathematics/Topology/GeneralTopology/EventuallyConst/Variant37db4927ed3621b3228ccac0d7f4c258fda421a8f762e154a03cf4b5cf47bd4b.lean/declarations/mulindicator-const-iff-of-ne--81ae35e5d491330157172f5b.md) | 188 | `result-track:81ae35e5d491330157172f5b4d6a6812b0c1fa6daaf560fd6496246c3b8d395a` |
| 37 | `theorem` | [mulIndicator_const_iff](../../../../../mathematics/Topology/GeneralTopology/EventuallyConst/Variant37db4927ed3621b3228ccac0d7f4c258fda421a8f762e154a03cf4b5cf47bd4b.lean/declarations/mulindicator-const-iff--398eb9fa77ec5f86990ffca1.md) | 193 | `result-track:398eb9fa77ec5f86990ffca119acffa7e2be17c0e447769537d75858b1dce94b` |
| 38 | `lemma` | [of_mulIndicator_const](../../../../../mathematics/Topology/GeneralTopology/EventuallyConst/Variant37db4927ed3621b3228ccac0d7f4c258fda421a8f762e154a03cf4b5cf47bd4b.lean/declarations/of-mulindicator-const--6c31079fe80beedb95ff37ff.md) | 205 | `result-track:6c31079fe80beedb95ff37fff5a51aeef72204d17237e5a4b8780e4a85097490` |
| 39 | `theorem` | [mulIndicator_const](../../../../../mathematics/Topology/GeneralTopology/EventuallyConst/Variant37db4927ed3621b3228ccac0d7f4c258fda421a8f762e154a03cf4b5cf47bd4b.lean/declarations/mulindicator-const--26327106f84c6929368073d0.md) | 211 | `result-track:26327106f84c6929368073d0b09dc813a673294eed970af76105ff5d4b5c0143` |
| 40 | `theorem` | [mulIndicator_const_iff_of_ne](../../../../../mathematics/Topology/GeneralTopology/EventuallyConst/Variant37db4927ed3621b3228ccac0d7f4c258fda421a8f762e154a03cf4b5cf47bd4b.lean/declarations/mulindicator-const-iff-of-ne--c761a3e225c253eb14b44d58.md) | 217 | `result-track:c761a3e225c253eb14b44d58a84f6042cf7fafa266ba1c81f773edf15a723095` |
| 41 | `theorem` | [mulIndicator_const_iff](../../../../../mathematics/Topology/GeneralTopology/EventuallyConst/Variant37db4927ed3621b3228ccac0d7f4c258fda421a8f762e154a03cf4b5cf47bd4b.lean/declarations/mulindicator-const-iff--5817061f3e8ef2a76aaf028a.md) | 223 | `result-track:5817061f3e8ef2a76aaf028a277224f66636c9820c9170d142ccd3462c991c07` |
| 42 | `lemma` | [eventuallyConst_atTop](../../../../../mathematics/Topology/GeneralTopology/EventuallyConst/Variant37db4927ed3621b3228ccac0d7f4c258fda421a8f762e154a03cf4b5cf47bd4b.lean/declarations/eventuallyconst-attop--f741c33c6abf459ccf7cd48f.md) | 229 | `result-track:f741c33c6abf459ccf7cd48fa6d9476c1400ad4eda1169b5a434a376d58754d4` |
| 43 | `lemma` | [eventuallyConst_atTop_nat](../../../../../mathematics/Topology/GeneralTopology/EventuallyConst/Variant37db4927ed3621b3228ccac0d7f4c258fda421a8f762e154a03cf4b5cf47bd4b.lean/declarations/eventuallyconst-attop-nat--33a61d15071c8d107a259781.md) | 234 | `result-track:33a61d15071c8d107a259781d91a495391fc76ade1cbdd586693420971d38985` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
