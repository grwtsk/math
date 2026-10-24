# Verification target: GRWTSK.Algebra.GroupTheory.EpiMono.Variant5117e856a9ca10756802c7b321319092d4bed9909b002dc84fd782f1fa434f16

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5c5142d140008a2bbf508ec725e013533e44681c",
  "lexical_observation_count": 45,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/EpiMono/Variant5117e856a9ca10756802c7b321319092d4bed9909b002dc84fd782f1fa434f16.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/EpiMono/Variant5117e856a9ca10756802c7b321319092d4bed9909b002dc84fd782f1fa434f16.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/EpiMono/Variant5117e856a9ca10756802c7b321319092d4bed9909b002dc84fd782f1fa434f16.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5c5142d140008a2bbf508ec725e013533e44681c`.

Source path: `GRWTSK/Algebra/GroupTheory/EpiMono/Variant5117e856a9ca10756802c7b321319092d4bed9909b002dc84fd782f1fa434f16.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/EpiMono/Variant5117e856a9ca10756802c7b321319092d4bed9909b002dc84fd782f1fa434f16.lean.json)

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
| 1 | `theorem` | [ker_eq_bot_of_cancel](../../../../../mathematics/Algebra/GroupTheory/EpiMono/Variant5117e856a9ca10756802c7b321319092d4bed9909b002dc84fd782f1fa434f16.lean/declarations/ker-eq-bot-of-cancel--5873a4f6d81254564627be94.md) | 41 | `result-track:5873a4f6d81254564627be948c2036740b4c7813f2a4889f2920677a164293b2` |
| 2 | `theorem` | [range_eq_top_of_cancel](../../../../../mathematics/Algebra/GroupTheory/EpiMono/Variant5117e856a9ca10756802c7b321319092d4bed9909b002dc84fd782f1fa434f16.lean/declarations/range-eq-top-of-cancel--2a18d62c76ab9ec065eaebc5.md) | 51 | `result-track:2a18d62c76ab9ec065eaebc5898e04a04b8cc99cf0e7ee2816c9adad3e40cb4f` |
| 3 | `theorem` | [ker_eq_bot_of_mono](../../../../../mathematics/Algebra/GroupTheory/EpiMono/Variant5117e856a9ca10756802c7b321319092d4bed9909b002dc84fd782f1fa434f16.lean/declarations/ker-eq-bot-of-mono--7fde4904a84adaa50556d140.md) | 75 | `result-track:7fde4904a84adaa50556d140395ddc274a891ca0df372730d3bde06662e6b692` |
| 4 | `theorem` | [mono_iff_ker_eq_bot](../../../../../mathematics/Algebra/GroupTheory/EpiMono/Variant5117e856a9ca10756802c7b321319092d4bed9909b002dc84fd782f1fa434f16.lean/declarations/mono-iff-ker-eq-bot--c43f2ff8c5fab0b751151903.md) | 80 | `result-track:c43f2ff8c5fab0b751151903cbedcbd4c24908f095c7e1893de1fbe5eca27909` |
| 5 | `theorem` | [mono_iff_injective](../../../../../mathematics/Algebra/GroupTheory/EpiMono/Variant5117e856a9ca10756802c7b321319092d4bed9909b002dc84fd782f1fa434f16.lean/declarations/mono-iff-injective--e7ea59591ab8b81653a45a12.md) | 85 | `result-track:e7ea59591ab8b81653a45a126aebfaf06334b4104f094e4e9b45a6c068919005` |
| 6 | `inductive` | [XWithInfinity](../../../../../mathematics/Algebra/GroupTheory/EpiMono/Variant5117e856a9ca10756802c7b321319092d4bed9909b002dc84fd782f1fa434f16.lean/declarations/xwithinfinity--d9e25be0dbb3287efb4d699b.md) | 94 | `declaration-track:d9e25be0dbb3287efb4d699babd882b2d1e61a1fa07c83fbcd4e4d5e3500c2e0` |
| 7 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/EpiMono/Variant5117e856a9ca10756802c7b321319092d4bed9909b002dc84fd782f1fa434f16.lean/declarations/instance--cf54a2722c3d92c3c800a0a3.md) | 106 | `declaration-track:cf54a2722c3d92c3c800a0a3fa89b29232a32edd922e01defe9d45f762099321` |
| 8 | `theorem` | [mul_smul](../../../../../mathematics/Algebra/GroupTheory/EpiMono/Variant5117e856a9ca10756802c7b321319092d4bed9909b002dc84fd782f1fa434f16.lean/declarations/mul-smul--ce132d7adb8a7d6624561215.md) | 115 | `result-track:ce132d7adb8a7d66245612154095e869cfd272a58df1dd394af5950b499aa081` |
| 9 | `theorem` | [one_smul](../../../../../mathematics/Algebra/GroupTheory/EpiMono/Variant5117e856a9ca10756802c7b321319092d4bed9909b002dc84fd782f1fa434f16.lean/declarations/one-smul--bc50e522583196942386dddf.md) | 122 | `result-track:bc50e522583196942386dddfffde95da07a1b22dea739250640ce7f21706b9f9` |
| 10 | `theorem` | [fromCoset_eq_of_mem_range](../../../../../mathematics/Algebra/GroupTheory/EpiMono/Variant5117e856a9ca10756802c7b321319092d4bed9909b002dc84fd782f1fa434f16.lean/declarations/fromcoset-eq-of-mem-range--48dd5e80b8d219a68b8d7f4f.md) | 129 | `result-track:48dd5e80b8d219a68b8d7f4ffaf09a5f7ec22cac6b3b228c02f2f128c33e0a73` |
| 11 | `example` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/EpiMono/Variant5117e856a9ca10756802c7b321319092d4bed9909b002dc84fd782f1fa434f16.lean/declarations/example--d654b86e5fea00b628390d6d.md) | 136 | `declaration-track:d654b86e5fea00b628390d6dedfc74f34a3646fe63631a874df42b4835737438` |
| 12 | `theorem` | [fromCoset_ne_of_nin_range](../../../../../mathematics/Algebra/GroupTheory/EpiMono/Variant5117e856a9ca10756802c7b321319092d4bed9909b002dc84fd782f1fa434f16.lean/declarations/fromcoset-ne-of-nin-range--544ccd591a0918325fb68c6b.md) | 139 | `result-track:544ccd591a0918325fb68c6ba5e43ae7ccad25be72fd54c588e6c42a9e64f800` |
| 13 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/EpiMono/Variant5117e856a9ca10756802c7b321319092d4bed9909b002dc84fd782f1fa434f16.lean/declarations/instance--62ac69e00386cd54d930df99.md) | 147 | `declaration-track:62ac69e00386cd54d930df99e0777fb9bbd7ae93cf7c0c128c4a85c12c956b76` |
| 14 | `def` | [tau](../../../../../mathematics/Algebra/GroupTheory/EpiMono/Variant5117e856a9ca10756802c7b321319092d4bed9909b002dc84fd782f1fa434f16.lean/declarations/tau--e1e9580c82f3017d1c0176e7.md) | 152 | `declaration-track:e1e9580c82f3017d1c0176e7ee02343a488413d16950273816c722efc55e5385` |
| 15 | `theorem` | [τ_apply_infinity](../../../../../mathematics/Algebra/GroupTheory/EpiMono/Variant5117e856a9ca10756802c7b321319092d4bed9909b002dc84fd782f1fa434f16.lean/declarations/apply-infinity--d762363fc1c5626c18f203eb.md) | 157 | `result-track:d762363fc1c5626c18f203eb66cb2a77857d4e03cfd7bfd102c5c134809eeb09` |
| 16 | `theorem` | [τ_apply_fromCoset](../../../../../mathematics/Algebra/GroupTheory/EpiMono/Variant5117e856a9ca10756802c7b321319092d4bed9909b002dc84fd782f1fa434f16.lean/declarations/apply-fromcoset--5e31db7bc651de589d988e73.md) | 160 | `result-track:5e31db7bc651de589d988e737994625bcd4118235ad5cfa9aef1bfb7c8e0cec8` |
| 17 | `theorem` | [τ_apply_fromCoset'](../../../../../mathematics/Algebra/GroupTheory/EpiMono/Variant5117e856a9ca10756802c7b321319092d4bed9909b002dc84fd782f1fa434f16.lean/declarations/apply-fromcoset--5b9259c4b4139bc3c878bf3d.md) | 163 | `result-track:5b9259c4b4139bc3c878bf3ddd5106bf4e76228b78b49767ad3c87006b46af54` |
| 18 | `theorem` | [τ_symm_apply_fromCoset](../../../../../mathematics/Algebra/GroupTheory/EpiMono/Variant5117e856a9ca10756802c7b321319092d4bed9909b002dc84fd782f1fa434f16.lean/declarations/symm-apply-fromcoset--67f63648e9860bf10e3f1d47.md) | 167 | `result-track:67f63648e9860bf10e3f1d47b3bc2e1c46f9777e68d66dbcbaeef77809b3ed78` |
| 19 | `theorem` | [τ_symm_apply_infinity](../../../../../mathematics/Algebra/GroupTheory/EpiMono/Variant5117e856a9ca10756802c7b321319092d4bed9909b002dc84fd782f1fa434f16.lean/declarations/symm-apply-infinity--42a79f973cb9fba519a2bda8.md) | 171 | `result-track:42a79f973cb9fba519a2bda8717bc542d037b722f7eafe92b688acf1db07e016` |
| 20 | `def` | [g](../../../../../mathematics/Algebra/GroupTheory/EpiMono/Variant5117e856a9ca10756802c7b321319092d4bed9909b002dc84fd782f1fa434f16.lean/declarations/g--4e6297eccfbcfe46d184fa3d.md) | 178 | `declaration-track:4e6297eccfbcfe46d184fa3d9184a1cb26c067e64f59c86cec611eeec16d2438` |
| 21 | `def` | [h](../../../../../mathematics/Algebra/GroupTheory/EpiMono/Variant5117e856a9ca10756802c7b321319092d4bed9909b002dc84fd782f1fa434f16.lean/declarations/h--bf340531fd370a4e195439a1.md) | 199 | `declaration-track:bf340531fd370a4e195439a1568428d6bb92713d01d8028b8e9068e5c82146af` |
| 22 | `theorem` | [g_apply_fromCoset](../../../../../mathematics/Algebra/GroupTheory/EpiMono/Variant5117e856a9ca10756802c7b321319092d4bed9909b002dc84fd782f1fa434f16.lean/declarations/g-apply-fromcoset--b88a3eb717db3c535e930da7.md) | 219 | `result-track:b88a3eb717db3c535e930da70dbd203a28fbd2e68f7fc63d71d3421a083497ae` |
| 23 | `theorem` | [g_apply_infinity](../../../../../mathematics/Algebra/GroupTheory/EpiMono/Variant5117e856a9ca10756802c7b321319092d4bed9909b002dc84fd782f1fa434f16.lean/declarations/g-apply-infinity--90fef85b56a13f6fc61709e9.md) | 223 | `result-track:90fef85b56a13f6fc61709e93fdce92244ab8095449bea759865f3d638ef52bb` |
| 24 | `theorem` | [h_apply_infinity](../../../../../mathematics/Algebra/GroupTheory/EpiMono/Variant5117e856a9ca10756802c7b321319092d4bed9909b002dc84fd782f1fa434f16.lean/declarations/h-apply-infinity--ca8e65b22b809ab60cf47b7c.md) | 225 | `result-track:ca8e65b22b809ab60cf47b7c8fb2adc3cfc1028175ca39c564e852dcecce4be4` |
| 25 | `theorem` | [h_apply_fromCoset](../../../../../mathematics/Algebra/GroupTheory/EpiMono/Variant5117e856a9ca10756802c7b321319092d4bed9909b002dc84fd782f1fa434f16.lean/declarations/h-apply-fromcoset--0e6680356beff22e6ea05e8b.md) | 231 | `result-track:0e6680356beff22e6ea05e8b5d6a1148fd3cc3f35c363a49e51ea71cf298e670` |
| 26 | `theorem` | [h_apply_fromCoset'](../../../../../mathematics/Algebra/GroupTheory/EpiMono/Variant5117e856a9ca10756802c7b321319092d4bed9909b002dc84fd782f1fa434f16.lean/declarations/h-apply-fromcoset--712e8f428db2e55555e708f1.md) | 237 | `result-track:712e8f428db2e55555e708f1a099cbcf73b9e2302885476b4a25d0a53923f712` |
| 27 | `theorem` | [h_apply_fromCoset_nin_range](../../../../../mathematics/Algebra/GroupTheory/EpiMono/Variant5117e856a9ca10756802c7b321319092d4bed9909b002dc84fd782f1fa434f16.lean/declarations/h-apply-fromcoset-nin-range--0628e23f3ac81da4c7a89e71.md) | 241 | `result-track:0628e23f3ac81da4c7a89e715b508745e2bb076269180908f553b76655666f7c` |
| 28 | `theorem` | [agree](../../../../../mathematics/Algebra/GroupTheory/EpiMono/Variant5117e856a9ca10756802c7b321319092d4bed9909b002dc84fd782f1fa434f16.lean/declarations/agree--5ed8f9e77d92e76f8101b4dc.md) | 253 | `result-track:5ed8f9e77d92e76f8101b4dc7e30e8e568ecfabbb5933b0ecdf7f003d1ed198f` |
| 29 | `theorem` | [comp_eq](../../../../../mathematics/Algebra/GroupTheory/EpiMono/Variant5117e856a9ca10756802c7b321319092d4bed9909b002dc84fd782f1fa434f16.lean/declarations/comp-eq--8eb746c9ed7226790ddbfc66.md) | 276 | `result-track:8eb746c9ed7226790ddbfc66f13b00f477f207e3f88e7658a8314040e994764c` |
| 30 | `theorem` | [g_ne_h](../../../../../mathematics/Algebra/GroupTheory/EpiMono/Variant5117e856a9ca10756802c7b321319092d4bed9909b002dc84fd782f1fa434f16.lean/declarations/g-ne-h--94ddb035e159163045bd7ff5.md) | 285 | `result-track:94ddb035e159163045bd7ff5478392756d2bceff263ab8575737ba348bf49c1e` |
| 31 | `theorem` | [surjective_of_epi](../../../../../mathematics/Algebra/GroupTheory/EpiMono/Variant5117e856a9ca10756802c7b321319092d4bed9909b002dc84fd782f1fa434f16.lean/declarations/surjective-of-epi--6f8c80f0b78013ad6c561a43.md) | 294 | `result-track:6f8c80f0b78013ad6c561a431db431d1e4a2c9c2f71170e9819425c11d5412e9` |
| 32 | `theorem` | [epi_iff_surjective](../../../../../mathematics/Algebra/GroupTheory/EpiMono/Variant5117e856a9ca10756802c7b321319092d4bed9909b002dc84fd782f1fa434f16.lean/declarations/epi-iff-surjective--334e553f6e6c6c5c074a214e.md) | 301 | `result-track:334e553f6e6c6c5c074a214e1d8f7d26941d1c97c65625bcd96df334b3a7d767` |
| 33 | `theorem` | [epi_iff_range_eq_top](../../../../../mathematics/Algebra/GroupTheory/EpiMono/Variant5117e856a9ca10756802c7b321319092d4bed9909b002dc84fd782f1fa434f16.lean/declarations/epi-iff-range-eq-top--4bb7597292ffa3db3d8e6bd9.md) | 304 | `result-track:4bb7597292ffa3db3d8e6bd90437e3ae845db8cb8836f6d9959858698e48fdfa` |
| 34 | `theorem` | [epi_iff_surjective](../../../../../mathematics/Algebra/GroupTheory/EpiMono/Variant5117e856a9ca10756802c7b321319092d4bed9909b002dc84fd782f1fa434f16.lean/declarations/epi-iff-surjective--5e1a486902ad987507a9e028.md) | 314 | `result-track:5e1a486902ad987507a9e028b47dd9135587457779d460d9b25f87e8c5c66f0a` |
| 35 | `theorem` | [epi_iff_range_eq_top](../../../../../mathematics/Algebra/GroupTheory/EpiMono/Variant5117e856a9ca10756802c7b321319092d4bed9909b002dc84fd782f1fa434f16.lean/declarations/epi-iff-range-eq-top--cb922674c9ade4da2a8d79c2.md) | 320 | `result-track:cb922674c9ade4da2a8d79c274793525d1c9b5ae2b787b94ae52ebd7b08d8a5a` |
| 36 | `instance` | [forget_grp_preserves_mono](../../../../../mathematics/Algebra/GroupTheory/EpiMono/Variant5117e856a9ca10756802c7b321319092d4bed9909b002dc84fd782f1fa434f16.lean/declarations/forget-grp-preserves-mono--c5209ef907bf544ae5e15fc2.md) | 331 | `declaration-track:c5209ef907bf544ae5e15fc2fa7b119f27046c92417d5ce18d13238c699a496d` |
| 37 | `instance` | [forget_grp_preserves_epi](../../../../../mathematics/Algebra/GroupTheory/EpiMono/Variant5117e856a9ca10756802c7b321319092d4bed9909b002dc84fd782f1fa434f16.lean/declarations/forget-grp-preserves-epi--54828ce5738916a0d5ad11bf.md) | 335 | `declaration-track:54828ce5738916a0d5ad11bfe71db7c8300329b67257a585cc21885b805867aa` |
| 38 | `theorem` | [ker_eq_bot_of_mono](../../../../../mathematics/Algebra/GroupTheory/EpiMono/Variant5117e856a9ca10756802c7b321319092d4bed9909b002dc84fd782f1fa434f16.lean/declarations/ker-eq-bot-of-mono--cb1ef4988111446ee5399b35.md) | 346 | `result-track:cb1ef4988111446ee5399b354f9748a651b506f8828067cfc9cc3ddf722014fd` |
| 39 | `theorem` | [mono_iff_ker_eq_bot](../../../../../mathematics/Algebra/GroupTheory/EpiMono/Variant5117e856a9ca10756802c7b321319092d4bed9909b002dc84fd782f1fa434f16.lean/declarations/mono-iff-ker-eq-bot--b6641ec0a8461db952cb1a3a.md) | 351 | `result-track:b6641ec0a8461db952cb1a3ae4b9ee8350e9447f1b0bf9052fc10c59729c5063` |
| 40 | `theorem` | [mono_iff_injective](../../../../../mathematics/Algebra/GroupTheory/EpiMono/Variant5117e856a9ca10756802c7b321319092d4bed9909b002dc84fd782f1fa434f16.lean/declarations/mono-iff-injective--0487f71e31142e3d9e2e8535.md) | 356 | `result-track:0487f71e31142e3d9e2e8535d4968e7442b79ed4f2fac1f13da1584d7f450cd8` |
| 41 | `theorem` | [range_eq_top_of_epi](../../../../../mathematics/Algebra/GroupTheory/EpiMono/Variant5117e856a9ca10756802c7b321319092d4bed9909b002dc84fd782f1fa434f16.lean/declarations/range-eq-top-of-epi--43d233f4a44c692f0c3e712c.md) | 360 | `result-track:43d233f4a44c692f0c3e712ca9a50b1078c30846d57b9fbf37986c7306cc0070` |
| 42 | `theorem` | [epi_iff_range_eq_top](../../../../../mathematics/Algebra/GroupTheory/EpiMono/Variant5117e856a9ca10756802c7b321319092d4bed9909b002dc84fd782f1fa434f16.lean/declarations/epi-iff-range-eq-top--7e6870fab65aea3ce4c82903.md) | 365 | `result-track:7e6870fab65aea3ce4c829032ae17108ebbc1525fb4e6d5bcee3597cf0d94835` |
| 43 | `theorem` | [epi_iff_surjective](../../../../../mathematics/Algebra/GroupTheory/EpiMono/Variant5117e856a9ca10756802c7b321319092d4bed9909b002dc84fd782f1fa434f16.lean/declarations/epi-iff-surjective--48e4a256710459f1686e28d7.md) | 371 | `result-track:48e4a256710459f1686e28d7d90e8f6328279f4316f0968e640a349b690ae77e` |
| 44 | `instance` | [forget_commGrp_preserves_mono](../../../../../mathematics/Algebra/GroupTheory/EpiMono/Variant5117e856a9ca10756802c7b321319092d4bed9909b002dc84fd782f1fa434f16.lean/declarations/forget-commgrp-preserves-mono--4e1ce0aa0e002b37dbd3ded1.md) | 375 | `declaration-track:4e1ce0aa0e002b37dbd3ded16c8119e97f8da39ea1a9433124e8065664261c3a` |
| 45 | `instance` | [forget_commGrp_preserves_epi](../../../../../mathematics/Algebra/GroupTheory/EpiMono/Variant5117e856a9ca10756802c7b321319092d4bed9909b002dc84fd782f1fa434f16.lean/declarations/forget-commgrp-preserves-epi--b74aff0159701bcafb01c7c3.md) | 379 | `declaration-track:b74aff0159701bcafb01c7c310ad769aaf186190aba03dacbe99b5c9982b36a8` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
