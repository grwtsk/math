# Verification target: GRWTSK.Topology.GeneralTopology.Basic.Variant920f01cf394ebe77af7df12a133db285d281096a86f439412e54149d9fcdc767

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4a875d788f8cf2b17607d2c6a902d519c4377f80",
  "lexical_observation_count": 55,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Basic/Variant920f01cf394ebe77af7df12a133db285d281096a86f439412e54149d9fcdc767.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant920f01cf394ebe77af7df12a133db285d281096a86f439412e54149d9fcdc767.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant920f01cf394ebe77af7df12a133db285d281096a86f439412e54149d9fcdc767.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4a875d788f8cf2b17607d2c6a902d519c4377f80`.

Source path: `GRWTSK/Topology/GeneralTopology/Basic/Variant920f01cf394ebe77af7df12a133db285d281096a86f439412e54149d9fcdc767.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Basic/Variant920f01cf394ebe77af7df12a133db285d281096a86f439412e54149d9fcdc767.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Limits.Shapes.Countable` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Category.Profinite.AsLimit` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Category.Profinite.CofilteredLimit` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.ClopenBox` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [LightProfinite](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant920f01cf394ebe77af7df12a133db285d281096a86f439412e54149d9fcdc767.lean/declarations/lightprofinite--d0770f80d718dc6e4426dde6.md) | 38 | `declaration-track:d0770f80d718dc6e4426dde6adf1797957416291955400d81753914909250172` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant920f01cf394ebe77af7df12a133db285d281096a86f439412e54149d9fcdc767.lean/declarations/instance--9900e93de40bf9807c1e9cac.md) | 43 | `declaration-track:9900e93de40bf9807c1e9cacb12e1d3e6b4ff4d4efa4385f07210008b782ccf1` |
| 3 | `abbrev` | [of](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant920f01cf394ebe77af7df12a133db285d281096a86f439412e54149d9fcdc767.lean/declarations/of--2663b1418726c30cae97e409.md) | 52 | `declaration-track:2663b1418726c30cae97e40959bd9677e764dbcddde0b941ff78c835ac00b168` |
| 4 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant920f01cf394ebe77af7df12a133db285d281096a86f439412e54149d9fcdc767.lean/declarations/instance--d4bb5ab9266df1bd03e1974f.md) | 56 | `declaration-track:d4bb5ab9266df1bd03e1974fd31a6977916e4e192cf63de199afd5f733301084` |
| 5 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant920f01cf394ebe77af7df12a133db285d281096a86f439412e54149d9fcdc767.lean/declarations/instance--cd67d86b8e358004c5a17eb2.md) | 59 | `declaration-track:cd67d86b8e358004c5a17eb2a769b9cbe55852c9601a028716b15651af6bef05` |
| 6 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant920f01cf394ebe77af7df12a133db285d281096a86f439412e54149d9fcdc767.lean/declarations/instance--f9ab298ea323467f31d82966.md) | 62 | `declaration-track:f9ab298ea323467f31d82966fee7092fd349bcf8385cd705344aefe24e95355c` |
| 7 | `abbrev` | [lightToProfinite](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant920f01cf394ebe77af7df12a133db285d281096a86f439412e54149d9fcdc767.lean/declarations/lighttoprofinite--337033436ef2a508fddae3ac.md) | 68 | `declaration-track:337033436ef2a508fddae3ac4fe29a1b4fd693549c0036877bfa7d770aa0464b` |
| 8 | `abbrev` | [lightToProfiniteFullyFaithful](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant920f01cf394ebe77af7df12a133db285d281096a86f439412e54149d9fcdc767.lean/declarations/lighttoprofinitefullyfaithful--c86c828d4509335dbe0ff00c.md) | 72 | `declaration-track:c86c828d4509335dbe0ff00c3b7cf8a75c2ad3cc0329235db48616950534e53f` |
| 9 | `abbrev` | [lightProfiniteToCompHaus](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant920f01cf394ebe77af7df12a133db285d281096a86f439412e54149d9fcdc767.lean/declarations/lightprofinitetocomphaus--f6ca22a93fa48f1d6c009617.md) | 76 | `declaration-track:f6ca22a93fa48f1d6c00961733bd2270abab64f34f475f28aeb4743b527c05bd` |
| 10 | `abbrev` | [LightProfinite.toTopCat](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant920f01cf394ebe77af7df12a133db285d281096a86f439412e54149d9fcdc767.lean/declarations/lightprofinite-totopcat--193cacd7902d390634bca25b.md) | 81 | `declaration-track:193cacd7902d390634bca25bc950a509e722e495221417c296aef0104d359a8e` |
| 11 | `def` | [FintypeCat.toLightProfinite](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant920f01cf394ebe77af7df12a133db285d281096a86f439412e54149d9fcdc767.lean/declarations/fintypecat-tolightprofinite--4cde95d45d6393f45306354d.md) | 92 | `declaration-track:4cde95d45d6393f45306354d005bb860dc5bbde28c8b5d33bd1307fe069f0c34` |
| 12 | `def` | [FintypeCat.toLightProfiniteFullyFaithful](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant920f01cf394ebe77af7df12a133db285d281096a86f439412e54149d9fcdc767.lean/declarations/fintypecat-tolightprofinitefullyfaithful--cb4f81f204014af9179b0698.md) | 97 | `declaration-track:cb4f81f204014af9179b0698594a61f590aa27cbadfc48ac685e043c60af7468` |
| 13 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant920f01cf394ebe77af7df12a133db285d281096a86f439412e54149d9fcdc767.lean/declarations/instance--bfb7acdd5587d54206dc19c8.md) | 102 | `declaration-track:bfb7acdd5587d54206dc19c84f189ab6cc76bbe0e3942df8e9490bf6729991b5` |
| 14 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant920f01cf394ebe77af7df12a133db285d281096a86f439412e54149d9fcdc767.lean/declarations/instance--19f634f64784f0bed57e9698.md) | 105 | `declaration-track:19f634f64784f0bed57e969812a563d6c87842d5beb8e50cb5f5733ed964b21b` |
| 15 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant920f01cf394ebe77af7df12a133db285d281096a86f439412e54149d9fcdc767.lean/declarations/instance--dacd3ed6bf67013d7b0763f6.md) | 108 | `declaration-track:dacd3ed6bf67013d7b0763f62061932bf354937f1b8ab3ba0875dfe8224a44eb` |
| 16 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant920f01cf394ebe77af7df12a133db285d281096a86f439412e54149d9fcdc767.lean/declarations/instance--42c4e092330e76195cbb321f.md) | 111 | `declaration-track:42c4e092330e76195cbb321f95ad4c56db62b2c76d182f110b3e4e4573f45d26` |
| 17 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant920f01cf394ebe77af7df12a133db285d281096a86f439412e54149d9fcdc767.lean/declarations/instance--8bdf4ef3a2e3f273b5556def.md) | 117 | `declaration-track:8bdf4ef3a2e3f273b5556defa4f8e5d2a2585ef694fee2438dd5c80ee1f6e1db` |
| 18 | `def` | [limitCone](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant920f01cf394ebe77af7df12a133db285d281096a86f439412e54149d9fcdc767.lean/declarations/limitcone--e92771349af7709e53f332f0.md) | 125 | `declaration-track:e92771349af7709e53f332f0b8c1b4fb5d77d6aeda7789f679aa677c07f6fe4e` |
| 19 | `def` | [limitConeIsLimit](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant920f01cf394ebe77af7df12a133db285d281096a86f439412e54149d9fcdc767.lean/declarations/limitconeislimit--37a2701a875fb23245f91e99.md) | 143 | `declaration-track:37a2701a875fb23245f91e99620deebf0ebc007a7eca222438a8208e6ed2e93a` |
| 20 | `instance` | [createsCountableLimits](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant920f01cf394ebe77af7df12a133db285d281096a86f439412e54149d9fcdc767.lean/declarations/createscountablelimits--6e6a5b8fa98d990e0be111d3.md) | 151 | `declaration-track:6e6a5b8fa98d990e0be111d38d87228f54e0cd2c4d164130e383fe6131c01415` |
| 21 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant920f01cf394ebe77af7df12a133db285d281096a86f439412e54149d9fcdc767.lean/declarations/instance--9b7f8accd4f8a96611677b80.md) | 158 | `declaration-track:9b7f8accd4f8a96611677b8064fc02e244668186f200acaf3b738a15291bcc86` |
| 22 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant920f01cf394ebe77af7df12a133db285d281096a86f439412e54149d9fcdc767.lean/declarations/instance--58fbbfde1b53d3393859ca1b.md) | 161 | `declaration-track:58fbbfde1b53d3393859ca1b385c2f252e08cd8fd813bb0efe6216bdab195160` |
| 23 | `theorem` | [isClosedMap](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant920f01cf394ebe77af7df12a133db285d281096a86f439412e54149d9fcdc767.lean/declarations/isclosedmap--3aa58d78afdde5ea2438377a.md) | 168 | `result-track:3aa58d78afdde5ea2438377ae2e9cf760252451bfce2588e62bd42f1ed0e2e8e` |
| 24 | `theorem` | [isIso_of_bijective](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant920f01cf394ebe77af7df12a133db285d281096a86f439412e54149d9fcdc767.lean/declarations/isiso-of-bijective--72db83ce3acd96a7a782cc1c.md) | 172 | `result-track:72db83ce3acd96a7a782cc1c9f98c378631c29dca58d42ba3d838071b871160c` |
| 25 | `def` | [isoOfBijective](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant920f01cf394ebe77af7df12a133db285d281096a86f439412e54149d9fcdc767.lean/declarations/isoofbijective--ff8ed551d7274438f6b7e613.md) | 177 | `declaration-track:ff8ed551d7274438f6b7e61349432afdef6a635e8dc9b8844751738bfe2bb1ab` |
| 26 | `instance` | [forget_reflectsIsomorphisms](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant920f01cf394ebe77af7df12a133db285d281096a86f439412e54149d9fcdc767.lean/declarations/forget-reflectsisomorphisms--14120f39af82fd77625e4c0f.md) | 181 | `declaration-track:14120f39af82fd77625e4c0f74e69ed44d8c365d8d2267c88cdef42427e2893c` |
| 27 | `theorem` | [epi_iff_surjective](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant920f01cf394ebe77af7df12a133db285d281096a86f439412e54149d9fcdc767.lean/declarations/epi-iff-surjective--2b4d172fdc78f4a50c093ec6.md) | 187 | `result-track:2b4d172fdc78f4a50c093ec65ccb8bfc6f69027595bcf7f9b62f75437ef0e4a2` |
| 28 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant920f01cf394ebe77af7df12a133db285d281096a86f439412e54149d9fcdc767.lean/declarations/instance--08c7de7aa8bf2286ac880e19.md) | 223 | `declaration-track:08c7de7aa8bf2286ac880e19943bd43be21500cbc8c8599fad7b6a4c7cfa8b73` |
| 29 | `structure` | [LightDiagram](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant920f01cf394ebe77af7df12a133db285d281096a86f439412e54149d9fcdc767.lean/declarations/lightdiagram--6ba4cd55535bcdb98cc4e2b5.md) | 229 | `declaration-track:6ba4cd55535bcdb98cc4e2b56812b45fd12c1660c6c94d20e5db307c67bc1a9c` |
| 30 | `def` | [toProfinite](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant920f01cf394ebe77af7df12a133db285d281096a86f439412e54149d9fcdc767.lean/declarations/toprofinite--3281d39a31ed43c7cc9a0dcf.md) | 240 | `declaration-track:3281d39a31ed43c7cc9a0dcf875b1d076d1ba11e5d73650316ce4d9284ae813a` |
| 31 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant920f01cf394ebe77af7df12a133db285d281096a86f439412e54149d9fcdc767.lean/declarations/instance--8e01fb02fc38bbb3fae401b3.md) | 243 | `declaration-track:8e01fb02fc38bbb3fae401b35ef9575b147704e986cd0770435ce7f5a787e4be` |
| 32 | `instance` | [hasForget](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant920f01cf394ebe77af7df12a133db285d281096a86f439412e54149d9fcdc767.lean/declarations/hasforget--57466320166da6d175a8d330.md) | 245 | `declaration-track:57466320166da6d175a8d33097d4260e50641f17296783e43803bee55027b746` |
| 33 | `def` | [lightDiagramToProfinite](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant920f01cf394ebe77af7df12a133db285d281096a86f439412e54149d9fcdc767.lean/declarations/lightdiagramtoprofinite--f45996b454aa680df75add4f.md) | 252 | `declaration-track:f45996b454aa680df75add4fc8e24b4badae77e21d495e97137523d3f54b8b99` |
| 34 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant920f01cf394ebe77af7df12a133db285d281096a86f439412e54149d9fcdc767.lean/declarations/instance--086aaea47370ed5e495434a0.md) | 254 | `declaration-track:086aaea47370ed5e495434a0b6efa1153ed09454eaeff04cf884666f2340084d` |
| 35 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant920f01cf394ebe77af7df12a133db285d281096a86f439412e54149d9fcdc767.lean/declarations/instance--4492db1b9c78af934ebd0045.md) | 256 | `declaration-track:4492db1b9c78af934ebd0045323ea4dd87e495c2805ce20213cb5cc065d44cec` |
| 36 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant920f01cf394ebe77af7df12a133db285d281096a86f439412e54149d9fcdc767.lean/declarations/instance--9c929f91520e84070c262371.md) | 260 | `declaration-track:9c929f91520e84070c2623711036dacf0db805d4db815a7dbd962deefb38aa39` |
| 37 | `instance` | [instCountableDiscreteQuotient](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant920f01cf394ebe77af7df12a133db285d281096a86f439412e54149d9fcdc767.lean/declarations/instcountablediscretequotient--d17e268d09488ecce294d302.md) | 264 | `declaration-track:d17e268d09488ecce294d302fdda4a38011826daefc2576d4f1a1087789dc164` |
| 38 | `def` | [toLightDiagram](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant920f01cf394ebe77af7df12a133db285d281096a86f439412e54149d9fcdc767.lean/declarations/tolightdiagram--dbd64fc3b34607331b135771.md) | 269 | `declaration-track:dbd64fc3b34607331b1357714880734128415265f8da60841fed96f4cc0b12f7` |
| 39 | `def` | [lightProfiniteToLightDiagram](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant920f01cf394ebe77af7df12a133db285d281096a86f439412e54149d9fcdc767.lean/declarations/lightprofinitetolightdiagram--e795b9c6af7fc28a55bfa20b.md) | 280 | `declaration-track:e795b9c6af7fc28a55bfa20b372ce892ab27bc489670fc2567c324f9e3b3fa3e` |
| 40 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant920f01cf394ebe77af7df12a133db285d281096a86f439412e54149d9fcdc767.lean/declarations/instance--4eefafafad3010a1ce8b75c2.md) | 285 | `declaration-track:4eefafafad3010a1ce8b75c218e75baf633542ce5281070dbd55d6c67e20cc2b` |
| 41 | `def` | [lightDiagramToLightProfinite](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant920f01cf394ebe77af7df12a133db285d281096a86f439412e54149d9fcdc767.lean/declarations/lightdiagramtolightprofinite--6e0e611276b5178a86a3e499.md) | 305 | `declaration-track:6e0e611276b5178a86a3e499bb8aa958eb7d23ca6c861c795bf17b35ea5e6e4d` |
| 42 | `def` | [LightProfinite.equivDiagram](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant920f01cf394ebe77af7df12a133db285d281096a86f439412e54149d9fcdc767.lean/declarations/lightprofinite-equivdiagram--22cd422ac554b47484cbd85a.md) | 310 | `declaration-track:22cd422ac554b47484cbd85a5091fb62b593d505382ffae38cdacfcf6d3a6b4f` |
| 43 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant920f01cf394ebe77af7df12a133db285d281096a86f439412e54149d9fcdc767.lean/declarations/instance--e9b76e3372b326da70cdb755.md) | 325 | `declaration-track:e9b76e3372b326da70cdb7555eaa59bb4d14da14b3e54fe458386d25c17644db` |
| 44 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant920f01cf394ebe77af7df12a133db285d281096a86f439412e54149d9fcdc767.lean/declarations/instance--fa2daa7bd64bd6133093aaf9.md) | 328 | `declaration-track:fa2daa7bd64bd6133093aaf9192c72deed59480cf68c34d6e440e0c1d89dc8f3` |
| 45 | `structure` | [LightDiagram'](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant920f01cf394ebe77af7df12a133db285d281096a86f439412e54149d9fcdc767.lean/declarations/lightdiagram--c8641c951673425402d98743.md) | 342 | `declaration-track:c8641c951673425402d987439e0b36c5eb07e8d6134d70abd22f96f1079bdf20` |
| 46 | `def` | [LightDiagram'.toProfinite](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant920f01cf394ebe77af7df12a133db285d281096a86f439412e54149d9fcdc767.lean/declarations/lightdiagram-toprofinite--c96276491738a1872e8cf49b.md) | 347 | `declaration-track:c96276491738a1872e8cf49b4feb0e6d6f70f63e5f19808b4d0c9df730993232` |
| 47 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant920f01cf394ebe77af7df12a133db285d281096a86f439412e54149d9fcdc767.lean/declarations/instance--a148d3539d97de5ea47e5b96.md) | 350 | `declaration-track:a148d3539d97de5ea47e5b9698180b51d4110c94080f1e5c1acfaf81f6ba66b3` |
| 48 | `def` | [LightDiagram'.toLightFunctor](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant920f01cf394ebe77af7df12a133db285d281096a86f439412e54149d9fcdc767.lean/declarations/lightdiagram-tolightfunctor--61a0b63641578eb6a3b1ebe0.md) | 353 | `declaration-track:61a0b63641578eb6a3b1ebe022862d0d600752df837c208625c7b0ad7630e659` |
| 49 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant920f01cf394ebe77af7df12a133db285d281096a86f439412e54149d9fcdc767.lean/declarations/instance--042169c35ae636de06f66c37.md) | 357 | `declaration-track:042169c35ae636de06f66c3708fa6506c74df21a7dcce6c46179fc9a81f47571` |
| 50 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant920f01cf394ebe77af7df12a133db285d281096a86f439412e54149d9fcdc767.lean/declarations/instance--eca905e0224d0fe9cb95cc38.md) | 359 | `declaration-track:eca905e0224d0fe9cb95cc38e465d04d742e11b1062681a328013f41bcbc4bca` |
| 51 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant920f01cf394ebe77af7df12a133db285d281096a86f439412e54149d9fcdc767.lean/declarations/instance--518678c5ad42ad69df42dd08.md) | 362 | `declaration-track:518678c5ad42ad69df42dd085e4c4eff18f75f9ebfaea9cba9fce1ca1c666139` |
| 52 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant920f01cf394ebe77af7df12a133db285d281096a86f439412e54149d9fcdc767.lean/declarations/instance--b9b4ff624b229e87121f0751.md) | 369 | `declaration-track:b9b4ff624b229e87121f0751af3b947ccb4cb9eb348612e9dd6aad91feb56a86` |
| 53 | `def` | [LightDiagram.equivSmall](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant920f01cf394ebe77af7df12a133db285d281096a86f439412e54149d9fcdc767.lean/declarations/lightdiagram-equivsmall--84c12e46270bfa1eb70dbc4f.md) | 372 | `declaration-track:84c12e46270bfa1eb70dbc4f05fa8c8802fcf25ca30d5cdd30c659d446a793ba` |
| 54 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant920f01cf394ebe77af7df12a133db285d281096a86f439412e54149d9fcdc767.lean/declarations/instance--108ddbc47a4a59e6aa04f5e5.md) | 375 | `declaration-track:108ddbc47a4a59e6aa04f5e56e4484ab4bf57d9a3420f01abbc2887dc5ea759c` |
| 55 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant920f01cf394ebe77af7df12a133db285d281096a86f439412e54149d9fcdc767.lean/declarations/instance--076d5466d08e157bf7d60218.md) | 378 | `declaration-track:076d5466d08e157bf7d60218182c7d1b64b3d7dcb61c9821c61dac3cbe4b0b8d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
