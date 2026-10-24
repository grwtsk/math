# Verification target: GRWTSK.Topology.GeneralTopology.Limits.Variant9352ef878dd0d4d4cb12ae0babf751daaa2de4490049446a306c453e5050d8fa

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9a50c398075b2a6096b215eb1e649d9fe1166a13",
  "lexical_observation_count": 45,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Limits/Variant9352ef878dd0d4d4cb12ae0babf751daaa2de4490049446a306c453e5050d8fa.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Limits/Variant9352ef878dd0d4d4cb12ae0babf751daaa2de4490049446a306c453e5050d8fa.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Limits/Variant9352ef878dd0d4d4cb12ae0babf751daaa2de4490049446a306c453e5050d8fa.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9a50c398075b2a6096b215eb1e649d9fe1166a13`.

Source path: `GRWTSK/Topology/GeneralTopology/Limits/Variant9352ef878dd0d4d4cb12ae0babf751daaa2de4490049446a306c453e5050d8fa.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Limits/Variant9352ef878dd0d4d4cb12ae0babf751daaa2de4490049446a306c453e5050d8fa.lean.json)

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
| 1 | `abbrev` | [HasExplicitFiniteCoproduct](../../../../../mathematics/Topology/GeneralTopology/Limits/Variant9352ef878dd0d4d4cb12ae0babf751daaa2de4490049446a306c453e5050d8fa.lean/declarations/hasexplicitfinitecoproduct--21a77243ae6d90dd6406d15f.md) | 63 | `declaration-track:21a77243ae6d90dd6406d15fb9d1d60b21264902fa6ec446867ce253cc37e7a0` |
| 2 | `abbrev` | [finiteCoproduct](../../../../../mathematics/Topology/GeneralTopology/Limits/Variant9352ef878dd0d4d4cb12ae0babf751daaa2de4490049446a306c453e5050d8fa.lean/declarations/finitecoproduct--ffd6bbbd83c37cb4beba28c2.md) | 71 | `declaration-track:ffd6bbbd83c37cb4beba28c2ce2ac88bb689229cfb9e0b18edfe98e29caad86f` |
| 3 | `def` | [finiteCoproduct.ι](../../../../../mathematics/Topology/GeneralTopology/Limits/Variant9352ef878dd0d4d4cb12ae0babf751daaa2de4490049446a306c453e5050d8fa.lean/declarations/finitecoproduct--ba13b76bbc0184170300d87e.md) | 76 | `declaration-track:ba13b76bbc0184170300d87e53a3fcd2d42e40fbf079e2d305d86cae3701c109` |
| 4 | `def` | [finiteCoproduct.desc](../../../../../mathematics/Topology/GeneralTopology/Limits/Variant9352ef878dd0d4d4cb12ae0babf751daaa2de4490049446a306c453e5050d8fa.lean/declarations/finitecoproduct-desc--1b93c3ff6199aa51713ee134.md) | 86 | `declaration-track:1b93c3ff6199aa51713ee134bb5db55997ac30782ef087aeec931e7114ee2d8d` |
| 5 | `lemma` | [finiteCoproduct.ι_desc](../../../../../mathematics/Topology/GeneralTopology/Limits/Variant9352ef878dd0d4d4cb12ae0babf751daaa2de4490049446a306c453e5050d8fa.lean/declarations/finitecoproduct-desc--ebe01132e4fbe45ccd4ac909.md) | 95 | `result-track:ebe01132e4fbe45ccd4ac90920ba7474115a1161d43c4148670797318419519f` |
| 6 | `lemma` | [finiteCoproduct.hom_ext](../../../../../mathematics/Topology/GeneralTopology/Limits/Variant9352ef878dd0d4d4cb12ae0babf751daaa2de4490049446a306c453e5050d8fa.lean/declarations/finitecoproduct-hom-ext--227ce456d824cb926443cb1e.md) | 98 | `result-track:227ce456d824cb926443cb1e533b5e10a97a37e26ed713ba4d655f351aa85346` |
| 7 | `abbrev` | [finiteCoproduct.cofan](../../../../../mathematics/Topology/GeneralTopology/Limits/Variant9352ef878dd0d4d4cb12ae0babf751daaa2de4490049446a306c453e5050d8fa.lean/declarations/finitecoproduct-cofan--cb8053b9e30a52cd302221d2.md) | 106 | `declaration-track:cb8053b9e30a52cd302221d227c988d8f5d95836fc381528906193b4d9ddc6fd` |
| 8 | `def` | [finiteCoproduct.isColimit](../../../../../mathematics/Topology/GeneralTopology/Limits/Variant9352ef878dd0d4d4cb12ae0babf751daaa2de4490049446a306c453e5050d8fa.lean/declarations/finitecoproduct-iscolimit--846b638f968aead9ec38dd03.md) | 110 | `declaration-track:846b638f968aead9ec38dd036e59783a2a49fd1b8da10b865c377bd5b197d782` |
| 9 | `lemma` | [finiteCoproduct.ι_injective](../../../../../mathematics/Topology/GeneralTopology/Limits/Variant9352ef878dd0d4d4cb12ae0babf751daaa2de4490049446a306c453e5050d8fa.lean/declarations/finitecoproduct-injective--0942791b5e7374ac4347492c.md) | 117 | `result-track:0942791b5e7374ac4347492c1b5a685f047ba2aa5c83add6d5faf8d220d65187` |
| 10 | `lemma` | [finiteCoproduct.ι_jointly_surjective](../../../../../mathematics/Topology/GeneralTopology/Limits/Variant9352ef878dd0d4d4cb12ae0babf751daaa2de4490049446a306c453e5050d8fa.lean/declarations/finitecoproduct-jointly-surjective--acbd5610e9a4a3f0afbf74e5.md) | 121 | `result-track:acbd5610e9a4a3f0afbf74e5dcf402f06534509c4c4e26f1c69813011e737aa2` |
| 11 | `lemma` | [finiteCoproduct.ι_desc_apply](../../../../../mathematics/Topology/GeneralTopology/Limits/Variant9352ef878dd0d4d4cb12ae0babf751daaa2de4490049446a306c453e5050d8fa.lean/declarations/finitecoproduct-desc-apply--f6bc864a77fce61426e3298d.md) | 124 | `result-track:f6bc864a77fce61426e3298d281d9de0258cc15f373f8a66e39a905da023e1dc` |
| 12 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Limits/Variant9352ef878dd0d4d4cb12ae0babf751daaa2de4490049446a306c453e5050d8fa.lean/declarations/instance--133e74764c52ffda0c17afad.md) | 128 | `declaration-track:133e74764c52ffda0c17afad6bee521e8c657616ae73133fb0be85944b6b8ca1` |
| 13 | `class` | [HasExplicitFiniteCoproducts](../../../../../mathematics/Topology/GeneralTopology/Limits/Variant9352ef878dd0d4d4cb12ae0babf751daaa2de4490049446a306c453e5050d8fa.lean/declarations/hasexplicitfinitecoproducts--3f2ec5d437b6e8f441ff6bd1.md) | 142 | `declaration-track:3f2ec5d437b6e8f441ff6bd170eba12a96a6e6de3032d309d2c7962e9805e8ec` |
| 14 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Limits/Variant9352ef878dd0d4d4cb12ae0babf751daaa2de4490049446a306c453e5050d8fa.lean/declarations/instance--aa5a0d932761db4813131847.md) | 147 | `declaration-track:aa5a0d932761db48131318475e07f8e2333fa2417ac792e5df28183ea5aeb2bd` |
| 15 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Limits/Variant9352ef878dd0d4d4cb12ae0babf751daaa2de4490049446a306c453e5050d8fa.lean/declarations/instance--9d292bf7a6b742b5d5dc80a3.md) | 151 | `declaration-track:9d292bf7a6b742b5d5dc80a3d9636b07009aa4947c725054a92c4d9600e082a0` |
| 16 | `example` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Limits/Variant9352ef878dd0d4d4cb12ae0babf751daaa2de4490049446a306c453e5050d8fa.lean/declarations/example--72004b55bdf233b22b3c971d.md) | 159 | `declaration-track:72004b55bdf233b22b3c971da9397143d53713ebe66eaf24f8732b4ca855c7be` |
| 17 | `lemma` | [finiteCoproduct.isOpenEmbedding_ι](../../../../../mathematics/Topology/GeneralTopology/Limits/Variant9352ef878dd0d4d4cb12ae0babf751daaa2de4490049446a306c453e5050d8fa.lean/declarations/finitecoproduct-isopenembedding--0a28eac50562b74cbf059101.md) | 162 | `result-track:0a28eac50562b74cbf0591012c47a700502608fe5460ee3397ffda96053759aa` |
| 18 | `lemma` | [Sigma.isOpenEmbedding_ι](../../../../../mathematics/Topology/GeneralTopology/Limits/Variant9352ef878dd0d4d4cb12ae0babf751daaa2de4490049446a306c453e5050d8fa.lean/declarations/sigma-isopenembedding--c665e3f05ff99b082b934778.md) | 168 | `result-track:c665e3f05ff99b082b93477887e18916f4bc0f7c6235f6badf348e546a1fc26b` |
| 19 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Limits/Variant9352ef878dd0d4d4cb12ae0babf751daaa2de4490049446a306c453e5050d8fa.lean/declarations/instance--52043bbeb425ba720f6be36c.md) | 178 | `declaration-track:52043bbeb425ba720f6be36c261da3bbd17ca20256d2b392d5c8443e1491b3ce` |
| 20 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Limits/Variant9352ef878dd0d4d4cb12ae0babf751daaa2de4490049446a306c453e5050d8fa.lean/declarations/instance--f3bda560bb975b06a13c703b.md) | 187 | `declaration-track:f3bda560bb975b06a13c703b3da72305bf28bf2fdc9c3ac00a2034d94c2b9ed3` |
| 21 | `abbrev` | [HasExplicitPullback](../../../../../mathematics/Topology/GeneralTopology/Limits/Variant9352ef878dd0d4d4cb12ae0babf751daaa2de4490049446a306c453e5050d8fa.lean/declarations/hasexplicitpullback--38dfe405c185955d9081d1ca.md) | 203 | `declaration-track:38dfe405c185955d9081d1ca370860ff5875a167ca51a67206e84dbea6766ec6` |
| 22 | `def` | [pullback](../../../../../mathematics/Topology/GeneralTopology/Limits/Variant9352ef878dd0d4d4cb12ae0babf751daaa2de4490049446a306c453e5050d8fa.lean/declarations/pullback--026a953c7b54353eaefcf9c2.md) | 211 | `declaration-track:026a953c7b54353eaefcf9c2a4358d75c422239882378c375d7a5a74cdded6ad` |
| 23 | `def` | [pullback.fst](../../../../../mathematics/Topology/GeneralTopology/Limits/Variant9352ef878dd0d4d4cb12ae0babf751daaa2de4490049446a306c453e5050d8fa.lean/declarations/pullback-fst--137f046cec5fa53ec0a8828c.md) | 221 | `declaration-track:137f046cec5fa53ec0a8828c692a71e7ded7749533fb3b269252721804ee6645` |
| 24 | `def` | [pullback.snd](../../../../../mathematics/Topology/GeneralTopology/Limits/Variant9352ef878dd0d4d4cb12ae0babf751daaa2de4490049446a306c453e5050d8fa.lean/declarations/pullback-snd--fdc98e581661dd19044be8e8.md) | 229 | `declaration-track:fdc98e581661dd19044be8e8a1f5896ca797c37c4df6affea6aecefe973f70f7` |
| 25 | `lemma` | [pullback.condition](../../../../../mathematics/Topology/GeneralTopology/Limits/Variant9352ef878dd0d4d4cb12ae0babf751daaa2de4490049446a306c453e5050d8fa.lean/declarations/pullback-condition--30ebdfb6500d885b645136c5.md) | 235 | `result-track:30ebdfb6500d885b645136c59e8fa6bc672b858aaab4c80869e128b9153a6a6e` |
| 26 | `def` | [pullback.lift](../../../../../mathematics/Topology/GeneralTopology/Limits/Variant9352ef878dd0d4d4cb12ae0babf751daaa2de4490049446a306c453e5050d8fa.lean/declarations/pullback-lift--9fc55f2eedfb4f21b2e2e3a0.md) | 243 | `declaration-track:9fc55f2eedfb4f21b2e2e3a0dc98b7e5de4960a6c52ed1929cba733262ecfe38` |
| 27 | `lemma` | [pullback.lift_fst](../../../../../mathematics/Topology/GeneralTopology/Limits/Variant9352ef878dd0d4d4cb12ae0babf751daaa2de4490049446a306c453e5050d8fa.lean/declarations/pullback-lift-fst--40cf33890c02c1861644bb56.md) | 250 | `result-track:40cf33890c02c1861644bb5663026a6b5b41258724ffa42d4544287ddf36bfc8` |
| 28 | `lemma` | [pullback.lift_snd](../../../../../mathematics/Topology/GeneralTopology/Limits/Variant9352ef878dd0d4d4cb12ae0babf751daaa2de4490049446a306c453e5050d8fa.lean/declarations/pullback-lift-snd--eb05c586ed5c6f6a39185ba9.md) | 254 | `result-track:eb05c586ed5c6f6a39185ba91cb463238930c47e0703cda51ff6b18889100305` |
| 29 | `lemma` | [pullback.hom_ext](../../../../../mathematics/Topology/GeneralTopology/Limits/Variant9352ef878dd0d4d4cb12ae0babf751daaa2de4490049446a306c453e5050d8fa.lean/declarations/pullback-hom-ext--6393ef3f7fc2bea5695b16a7.md) | 257 | `result-track:6393ef3f7fc2bea5695b16a7154be13a37aba17c58bb4d89ce5055b8d4905f70` |
| 30 | `def` | [pullback.cone](../../../../../mathematics/Topology/GeneralTopology/Limits/Variant9352ef878dd0d4d4cb12ae0babf751daaa2de4490049446a306c453e5050d8fa.lean/declarations/pullback-cone--64eb736796068056654ddd27.md) | 271 | `declaration-track:64eb736796068056654ddd2708ea0ac088507d5d87a09c210a40e88c7942b2cf` |
| 31 | `def` | [pullback.isLimit](../../../../../mathematics/Topology/GeneralTopology/Limits/Variant9352ef878dd0d4d4cb12ae0babf751daaa2de4490049446a306c453e5050d8fa.lean/declarations/pullback-islimit--1af59ab70d0d6742fe9f13c6.md) | 278 | `declaration-track:1af59ab70d0d6742fe9f13c62940f7c3bfe64983f61e06463b2bf0b7887a60fa` |
| 32 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Limits/Variant9352ef878dd0d4d4cb12ae0babf751daaa2de4490049446a306c453e5050d8fa.lean/declarations/instance--f9d3a39064c8b6b5fbfe02e9.md) | 285 | `declaration-track:f9d3a39064c8b6b5fbfe02e9af7adb6f724ea3e7514d686533b3b1931fa74dd4` |
| 33 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Limits/Variant9352ef878dd0d4d4cb12ae0babf751daaa2de4490049446a306c453e5050d8fa.lean/declarations/instance--7a7e6e8822ce33460b1b3556.md) | 289 | `declaration-track:7a7e6e8822ce33460b1b3556580afef435a1847f1d03fc61e7ffcb969a321b69` |
| 34 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Limits/Variant9352ef878dd0d4d4cb12ae0babf751daaa2de4490049446a306c453e5050d8fa.lean/declarations/instance--6ab444cc2618215d85a3da19.md) | 295 | `declaration-track:6ab444cc2618215d85a3da19efa4255d97612cdd4a94b98b9eb046f9a1f108ec` |
| 35 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Limits/Variant9352ef878dd0d4d4cb12ae0babf751daaa2de4490049446a306c453e5050d8fa.lean/declarations/instance--0a04881d7920750513d892a8.md) | 299 | `declaration-track:0a04881d7920750513d892a82ef6714ed9284945aad4566124d6875e075be68c` |
| 36 | `class` | [HasExplicitPullbacks](../../../../../mathematics/Topology/GeneralTopology/Limits/Variant9352ef878dd0d4d4cb12ae0babf751daaa2de4490049446a306c453e5050d8fa.lean/declarations/hasexplicitpullbacks--d81a3faeaeb687037bba4479.md) | 311 | `declaration-track:d81a3faeaeb687037bba44799dcd74d62ce7c24b68741a4cad74d9688e06ec43` |
| 37 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Limits/Variant9352ef878dd0d4d4cb12ae0babf751daaa2de4490049446a306c453e5050d8fa.lean/declarations/instance--fe571ebec532c72df7dfcee1.md) | 316 | `declaration-track:fe571ebec532c72df7dfcee10abe7dbde4db2c38bb03a483b8a13e2b5dbbbaaa` |
| 38 | `class` | [HasExplicitPullbacksOfInclusions](../../../../../mathematics/Topology/GeneralTopology/Limits/Variant9352ef878dd0d4d4cb12ae0babf751daaa2de4490049446a306c453e5050d8fa.lean/declarations/hasexplicitpullbacksofinclusions--683f2c8e23285921aece17a7.md) | 324 | `declaration-track:683f2c8e23285921aece17a706aa85b91bd8f197ead92045b566b224469edbbb` |
| 39 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Limits/Variant9352ef878dd0d4d4cb12ae0babf751daaa2de4490049446a306c453e5050d8fa.lean/declarations/instance--f192e80236dc20edebb85fc1.md) | 329 | `declaration-track:f192e80236dc20edebb85fc18391fa668d6591965492531604968d05b702cd88` |
| 40 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Limits/Variant9352ef878dd0d4d4cb12ae0babf751daaa2de4490049446a306c453e5050d8fa.lean/declarations/instance--45510ebb8fc6661ab7d23c60.md) | 339 | `declaration-track:45510ebb8fc6661ab7d23c600c21931bac8cab607a9ed5f1553bf3c5df234c3c` |
| 41 | `theorem` | [hasPullbacksOfInclusions](../../../../../mathematics/Topology/GeneralTopology/Limits/Variant9352ef878dd0d4d4cb12ae0babf751daaa2de4490049446a306c453e5050d8fa.lean/declarations/haspullbacksofinclusions--6efd14796cba390c28ff7b64.md) | 342 | `result-track:6efd14796cba390c28ff7b64ad2d4073e5c2a3c2fdc53f5fbbc2e65fb4db8620` |
| 42 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Limits/Variant9352ef878dd0d4d4cb12ae0babf751daaa2de4490049446a306c453e5050d8fa.lean/declarations/instance--c892813045ec81de3ff3e178.md) | 352 | `declaration-track:c892813045ec81de3ff3e178c5198c9e0b59d77b236168ab90b20ea4f3a9a5d2` |
| 43 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Limits/Variant9352ef878dd0d4d4cb12ae0babf751daaa2de4490049446a306c453e5050d8fa.lean/declarations/instance--df4d7f4c4cd114f160d8819e.md) | 358 | `declaration-track:df4d7f4c4cd114f160d8819e972470ecf7cc1d0113c9210acac1bb42a81560e2` |
| 44 | `theorem` | [finitaryExtensive](../../../../../mathematics/Topology/GeneralTopology/Limits/Variant9352ef878dd0d4d4cb12ae0babf751daaa2de4490049446a306c453e5050d8fa.lean/declarations/finitaryextensive--cca49dbda44d7d70159ffc1e.md) | 361 | `result-track:cca49dbda44d7d70159ffc1e5571251e902be34303fae44ad3dc053816f5034e` |
| 45 | `def` | [isTerminalPUnit](../../../../../mathematics/Topology/GeneralTopology/Limits/Variant9352ef878dd0d4d4cb12ae0babf751daaa2de4490049446a306c453e5050d8fa.lean/declarations/isterminalpunit--b0d176af48d1bb81d39f3464.md) | 374 | `declaration-track:b0d176af48d1bb81d39f34648a43dd0279180ebaa7e25e65c7ea5bb8d443c569` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
