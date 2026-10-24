# Verification target: GRWTSK.Topology.GeneralTopology.LocallyFinsupp.Variant7cc3b6ea77b47b2cbaa6476b47e5893aeae800bb447c825774abd86d8df2ffd7

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "974235a538e4173ae0b41ea303119de62b6cb342",
  "lexical_observation_count": 48,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/LocallyFinsupp/Variant7cc3b6ea77b47b2cbaa6476b47e5893aeae800bb447c825774abd86d8df2ffd7.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/LocallyFinsupp/Variant7cc3b6ea77b47b2cbaa6476b47e5893aeae800bb447c825774abd86d8df2ffd7.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/LocallyFinsupp/Variant7cc3b6ea77b47b2cbaa6476b47e5893aeae800bb447c825774abd86d8df2ffd7.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `974235a538e4173ae0b41ea303119de62b6cb342`.

Source path: `GRWTSK/Topology/GeneralTopology/LocallyFinsupp/Variant7cc3b6ea77b47b2cbaa6476b47e5893aeae800bb447c825774abd86d8df2ffd7.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/LocallyFinsupp/Variant7cc3b6ea77b47b2cbaa6476b47e5893aeae800bb447c825774abd86d8df2ffd7.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.Subgroup.Defs` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Pi` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Separation.Hausdorff` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.DiscreteSubset` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [Function.locallyFinsuppWithin](../../../../../mathematics/Topology/GeneralTopology/LocallyFinsupp/Variant7cc3b6ea77b47b2cbaa6476b47e5893aeae800bb447c825774abd86d8df2ffd7.lean/declarations/function-locallyfinsuppwithin--c941b4b4674a5f3b12ce16dc.md) | 38 | `declaration-track:c941b4b4674a5f3b12ce16dc836d7346fcd3b1025b41128ddef947b12dfdc925` |
| 2 | `def` | [Function.locallyFinsupp](../../../../../mathematics/Topology/GeneralTopology/LocallyFinsupp/Variant7cc3b6ea77b47b2cbaa6476b47e5893aeae800bb447c825774abd86d8df2ffd7.lean/declarations/function-locallyfinsupp--55c39b69338818822e42e864.md) | 51 | `declaration-track:55c39b69338818822e42e864214932d2c6183b35d8279e9f9c424bd5ad18f5ce` |
| 3 | `theorem` | [supportDiscreteWithin_iff_locallyFiniteWithin](../../../../../mathematics/Topology/GeneralTopology/LocallyFinsupp/Variant7cc3b6ea77b47b2cbaa6476b47e5893aeae800bb447c825774abd86d8df2ffd7.lean/declarations/supportdiscretewithin-iff-locallyfinitewithin--1872cd91cf125b44fec9d7f3.md) | 57 | `result-track:1872cd91cf125b44fec9d7f36fb69e8e983a9e275031af9366b7c8e11336fe78` |
| 4 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/LocallyFinsupp/Variant7cc3b6ea77b47b2cbaa6476b47e5893aeae800bb447c825774abd86d8df2ffd7.lean/declarations/instance--d52d86db1e88b6319d0535e8.md) | 72 | `declaration-track:d52d86db1e88b6319d0535e816e80fa52c1f06b952814c9281bb68c37e322d67` |
| 5 | `abbrev` | [support](../../../../../mathematics/Topology/GeneralTopology/LocallyFinsupp/Variant7cc3b6ea77b47b2cbaa6476b47e5893aeae800bb447c825774abd86d8df2ffd7.lean/declarations/support--a4599a82b157555b52d6aeaa.md) | 77 | `declaration-track:a4599a82b157555b52d6aeaa44d9e2cdcc078cc4a12717d25da60ac08d627c7d` |
| 6 | `lemma` | [supportWithinDomain](../../../../../mathematics/Topology/GeneralTopology/LocallyFinsupp/Variant7cc3b6ea77b47b2cbaa6476b47e5893aeae800bb447c825774abd86d8df2ffd7.lean/declarations/supportwithindomain--e931f87e1dc25d6671249a62.md) | 79 | `result-track:e931f87e1dc25d6671249a6201b10fb8b7be3e4e5171ee3f4cd9c21a192addd9` |
| 7 | `lemma` | [supportLocallyFiniteWithinDomain](../../../../../mathematics/Topology/GeneralTopology/LocallyFinsupp/Variant7cc3b6ea77b47b2cbaa6476b47e5893aeae800bb447c825774abd86d8df2ffd7.lean/declarations/supportlocallyfinitewithindomain--bb473010ce72af92c27d0059.md) | 82 | `result-track:bb473010ce72af92c27d005967f0aa4efc6a1219e3d22122f8634e95e5913dde` |
| 8 | `lemma` | [ext](../../../../../mathematics/Topology/GeneralTopology/LocallyFinsupp/Variant7cc3b6ea77b47b2cbaa6476b47e5893aeae800bb447c825774abd86d8df2ffd7.lean/declarations/ext--8cbad34a19f485d0b630c4e5.md) | 86 | `result-track:8cbad34a19f485d0b630c4e5368189f23c2bb80ef3824bccc1bce871bd942a4a` |
| 9 | `lemma` | [coe_injective](../../../../../mathematics/Topology/GeneralTopology/LocallyFinsupp/Variant7cc3b6ea77b47b2cbaa6476b47e5893aeae800bb447c825774abd86d8df2ffd7.lean/declarations/coe-injective--eecb8d33b130d8f8741df17e.md) | 89 | `result-track:eecb8d33b130d8f8741df17e61e222d41544d5b1eb9e5303dc85f3ff5e95f7ae` |
| 10 | `lemma` | [apply_eq_zero_of_notMem](../../../../../mathematics/Topology/GeneralTopology/LocallyFinsupp/Variant7cc3b6ea77b47b2cbaa6476b47e5893aeae800bb447c825774abd86d8df2ffd7.lean/declarations/apply-eq-zero-of-notmem--96da1c300231277a0713a994.md) | 100 | `result-track:96da1c300231277a0713a994e6d4991df6531760655940c10ac7e8f2bc09d924` |
| 11 | `theorem` | [eq_zero_codiscreteWithin](../../../../../mathematics/Topology/GeneralTopology/LocallyFinsupp/Variant7cc3b6ea77b47b2cbaa6476b47e5893aeae800bb447c825774abd86d8df2ffd7.lean/declarations/eq-zero-codiscretewithin--426f7fd7e503b94ce6bfa4e3.md) | 110 | `result-track:426f7fd7e503b94ce6bfa4e3a0a2a6a2e62598159ad89d1d89c997c30d6a4858` |
| 12 | `theorem` | [discreteSupport](../../../../../mathematics/Topology/GeneralTopology/LocallyFinsupp/Variant7cc3b6ea77b47b2cbaa6476b47e5893aeae800bb447c825774abd86d8df2ffd7.lean/declarations/discretesupport--0553463eaa28f685651fda28.md) | 123 | `result-track:0553463eaa28f685651fda28c20aef58d924449c3a9d4e98acb411a4e7c0ce34` |
| 13 | `theorem` | [closedSupport](../../../../../mathematics/Topology/GeneralTopology/LocallyFinsupp/Variant7cc3b6ea77b47b2cbaa6476b47e5893aeae800bb447c825774abd86d8df2ffd7.lean/declarations/closedsupport--a414c0103a14ed6bc8cd1baf.md) | 141 | `result-track:a414c0103a14ed6bc8cd1baf3663a7d646a77f51983196693b5970d605b2f8aa` |
| 14 | `theorem` | [finiteSupport](../../../../../mathematics/Topology/GeneralTopology/LocallyFinsupp/Variant7cc3b6ea77b47b2cbaa6476b47e5893aeae800bb447c825774abd86d8df2ffd7.lean/declarations/finitesupport--ab2ad944daf74ecfb25bb336.md) | 155 | `result-track:ab2ad944daf74ecfb25bb336fd87b3d9b3f980d567bc0a5212f0c101ac791cc8` |
| 15 | `def` | [addSubgroup](../../../../../mathematics/Topology/GeneralTopology/LocallyFinsupp/Variant7cc3b6ea77b47b2cbaa6476b47e5893aeae800bb447c825774abd86d8df2ffd7.lean/declarations/addsubgroup--7ba94014ed2ad7f66c10bf57.md) | 173 | `declaration-track:7ba94014ed2ad7f66c10bf57c1c9fd7ccafe3807d68fe3c9c5b84573b38fbb92` |
| 16 | `lemma` | [memAddSubgroup](../../../../../mathematics/Topology/GeneralTopology/LocallyFinsupp/Variant7cc3b6ea77b47b2cbaa6476b47e5893aeae800bb447c825774abd86d8df2ffd7.lean/declarations/memaddsubgroup--86b505a4a3ff0c3ac86f2bdc.md) | 199 | `result-track:86b505a4a3ff0c3ac86f2bdc7f09ed2b5f199599a9ad318ba9c5a26a3ea3ebe2` |
| 17 | `def` | [mk_of_mem](../../../../../mathematics/Topology/GeneralTopology/LocallyFinsupp/Variant7cc3b6ea77b47b2cbaa6476b47e5893aeae800bb447c825774abd86d8df2ffd7.lean/declarations/mk-of-mem--523d221eb5f80ed8de1284bf.md) | 207 | `declaration-track:523d221eb5f80ed8de1284bf8e49c7c61dd21b2bbbf43b80707f2a30542c5588` |
| 18 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/LocallyFinsupp/Variant7cc3b6ea77b47b2cbaa6476b47e5893aeae800bb447c825774abd86d8df2ffd7.lean/declarations/instance--87c5f693e061c9c3489de0d2.md) | 210 | `declaration-track:87c5f693e061c9c3489de0d25bba17e47957d287f10c48a096134cb0abff3271` |
| 19 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/LocallyFinsupp/Variant7cc3b6ea77b47b2cbaa6476b47e5893aeae800bb447c825774abd86d8df2ffd7.lean/declarations/instance--ac31c4134d253d214635626e.md) | 213 | `declaration-track:ac31c4134d253d214635626e42a88964587fe965e2dcbcc5cc1a8256755abbda` |
| 20 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/LocallyFinsupp/Variant7cc3b6ea77b47b2cbaa6476b47e5893aeae800bb447c825774abd86d8df2ffd7.lean/declarations/instance--6b550671f0fb95a71e7299f3.md) | 216 | `declaration-track:6b550671f0fb95a71e7299f3f886492f21adee49ee2a8f6ec8bb851e2315dc80` |
| 21 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/LocallyFinsupp/Variant7cc3b6ea77b47b2cbaa6476b47e5893aeae800bb447c825774abd86d8df2ffd7.lean/declarations/instance--7ef6ba42c2940422594af0f4.md) | 219 | `declaration-track:7ef6ba42c2940422594af0f48732ddaf15dbd0a36c5b5aabb9e89dfb52536852` |
| 22 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/LocallyFinsupp/Variant7cc3b6ea77b47b2cbaa6476b47e5893aeae800bb447c825774abd86d8df2ffd7.lean/declarations/instance--7de527a680e1cd8fe6c6e763.md) | 222 | `declaration-track:7de527a680e1cd8fe6c6e763ad0ec5666fea45c80e2736cc62718dfd685b5a8a` |
| 23 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/LocallyFinsupp/Variant7cc3b6ea77b47b2cbaa6476b47e5893aeae800bb447c825774abd86d8df2ffd7.lean/declarations/instance--1ea5cd1edef065895c74343f.md) | 225 | `declaration-track:1ea5cd1edef065895c74343fd9584433988edade62febf9d18e06e8861bf5e20` |
| 24 | `lemma` | [coe_zero](../../../../../mathematics/Topology/GeneralTopology/LocallyFinsupp/Variant7cc3b6ea77b47b2cbaa6476b47e5893aeae800bb447c825774abd86d8df2ffd7.lean/declarations/coe-zero--ba705ef1dda35f07ee0a666a.md) | 228 | `result-track:ba705ef1dda35f07ee0a666afa58c8184b598cc0e60055f9db2b786d789a961d` |
| 25 | `lemma` | [coe_add](../../../../../mathematics/Topology/GeneralTopology/LocallyFinsupp/Variant7cc3b6ea77b47b2cbaa6476b47e5893aeae800bb447c825774abd86d8df2ffd7.lean/declarations/coe-add--903c7d27db6a2bb8be880ae7.md) | 230 | `result-track:903c7d27db6a2bb8be880ae7528f76e94705fc3dc1511ec4bb17dfbcc34689d4` |
| 26 | `lemma` | [coe_neg](../../../../../mathematics/Topology/GeneralTopology/LocallyFinsupp/Variant7cc3b6ea77b47b2cbaa6476b47e5893aeae800bb447c825774abd86d8df2ffd7.lean/declarations/coe-neg--bf62f9e86afa1b9fa6528064.md) | 232 | `result-track:bf62f9e86afa1b9fa6528064fa6d08766191737d7509511d9bc781eca0eb5cb0` |
| 27 | `lemma` | [coe_sub](../../../../../mathematics/Topology/GeneralTopology/LocallyFinsupp/Variant7cc3b6ea77b47b2cbaa6476b47e5893aeae800bb447c825774abd86d8df2ffd7.lean/declarations/coe-sub--d2c8f92d954d7e685c42dc96.md) | 234 | `result-track:d2c8f92d954d7e685c42dc967d1f7072dd003bdcb90f538ea6bcafa5e38228d0` |
| 28 | `lemma` | [coe_nsmul](../../../../../mathematics/Topology/GeneralTopology/LocallyFinsupp/Variant7cc3b6ea77b47b2cbaa6476b47e5893aeae800bb447c825774abd86d8df2ffd7.lean/declarations/coe-nsmul--7fbdb9d9baf2207ad641dd74.md) | 236 | `result-track:7fbdb9d9baf2207ad641dd7416a35e1e420f8b0feb55a2efe94ea58062f209a9` |
| 29 | `lemma` | [coe_zsmul](../../../../../mathematics/Topology/GeneralTopology/LocallyFinsupp/Variant7cc3b6ea77b47b2cbaa6476b47e5893aeae800bb447c825774abd86d8df2ffd7.lean/declarations/coe-zsmul--2ca7c25a4d95cd1243b40e5d.md) | 238 | `result-track:2ca7c25a4d95cd1243b40e5dcd32b6c4e88546cdf9ccd993fffe76fd02e2e78e` |
| 30 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/LocallyFinsupp/Variant7cc3b6ea77b47b2cbaa6476b47e5893aeae800bb447c825774abd86d8df2ffd7.lean/declarations/instance--bb767aaad1a931456b6281cd.md) | 241 | `declaration-track:bb767aaad1a931456b6281cd08ebe9e1dd0c315d5dfdd0cbbb633b0243bf57c6` |
| 31 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/LocallyFinsupp/Variant7cc3b6ea77b47b2cbaa6476b47e5893aeae800bb447c825774abd86d8df2ffd7.lean/declarations/instance--237dc7370f79e37afad076a8.md) | 245 | `declaration-track:237dc7370f79e37afad076a8af0d4d7320e5fdd19af0dc0e22a8ad85c89202ad` |
| 32 | `lemma` | [le_def](../../../../../mathematics/Topology/GeneralTopology/LocallyFinsupp/Variant7cc3b6ea77b47b2cbaa6476b47e5893aeae800bb447c825774abd86d8df2ffd7.lean/declarations/le-def--4afa6c0d018ee6c56a580d9f.md) | 248 | `result-track:4afa6c0d018ee6c56a580d9fbb6fd5cf5ee85d59b98802b81acce273561f0253` |
| 33 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/LocallyFinsupp/Variant7cc3b6ea77b47b2cbaa6476b47e5893aeae800bb447c825774abd86d8df2ffd7.lean/declarations/instance--3ee612972662b941110d3d28.md) | 251 | `declaration-track:3ee612972662b941110d3d28c4320a2b40141a9983462506877cbbc5ee744e69` |
| 34 | `lemma` | [lt_def](../../../../../mathematics/Topology/GeneralTopology/LocallyFinsupp/Variant7cc3b6ea77b47b2cbaa6476b47e5893aeae800bb447c825774abd86d8df2ffd7.lean/declarations/lt-def--9a253619f1e5e805ff0c0c2e.md) | 254 | `result-track:9a253619f1e5e805ff0c0c2e83af25b387d18a93ffd4c1f9d3cb8b2a143ad3e8` |
| 35 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/LocallyFinsupp/Variant7cc3b6ea77b47b2cbaa6476b47e5893aeae800bb447c825774abd86d8df2ffd7.lean/declarations/instance--60bcd3a4f0bd5864b6693f0d.md) | 257 | `declaration-track:60bcd3a4f0bd5864b6693f0d6134bb28d350c187116c6d3564ca5d69f97427dc` |
| 36 | `lemma` | [max_apply](../../../../../mathematics/Topology/GeneralTopology/LocallyFinsupp/Variant7cc3b6ea77b47b2cbaa6476b47e5893aeae800bb447c825774abd86d8df2ffd7.lean/declarations/max-apply--84eab6d0c79ed12c803de32a.md) | 279 | `result-track:84eab6d0c79ed12c803de32a96f61643d7508933b76d47c5525076268b73e174` |
| 37 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/LocallyFinsupp/Variant7cc3b6ea77b47b2cbaa6476b47e5893aeae800bb447c825774abd86d8df2ffd7.lean/declarations/instance--b08b9f11d49b7ee60e8cde69.md) | 282 | `declaration-track:b08b9f11d49b7ee60e8cde69cd98aeb956baac65f51c66251dd8d459ccf2bc0b` |
| 38 | `lemma` | [min_apply](../../../../../mathematics/Topology/GeneralTopology/LocallyFinsupp/Variant7cc3b6ea77b47b2cbaa6476b47e5893aeae800bb447c825774abd86d8df2ffd7.lean/declarations/min-apply--7a420635df2f17d3be631afa.md) | 304 | `result-track:7a420635df2f17d3be631afa34918b393bc1ee855816281a7f79589351915c95` |
| 39 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/LocallyFinsupp/Variant7cc3b6ea77b47b2cbaa6476b47e5893aeae800bb447c825774abd86d8df2ffd7.lean/declarations/instance--a57e04fb57db3bc1a54118fc.md) | 307 | `declaration-track:a57e04fb57db3bc1a54118fc440b5c128c2cd50804e7c96678b0f863039f196d` |
| 40 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/LocallyFinsupp/Variant7cc3b6ea77b47b2cbaa6476b47e5893aeae800bb447c825774abd86d8df2ffd7.lean/declarations/instance--2484733908742af4f88f52bd.md) | 327 | `declaration-track:2484733908742af4f88f52bd4c83893491ccfdd7ca2b7d6edec74d92b483d355` |
| 41 | `def` | [restrict](../../../../../mathematics/Topology/GeneralTopology/LocallyFinsupp/Variant7cc3b6ea77b47b2cbaa6476b47e5893aeae800bb447c825774abd86d8df2ffd7.lean/declarations/restrict--4b35eac711e2875f9f1e66e9.md) | 339 | `declaration-track:4b35eac711e2875f9f1e66e96a08f745c9d9033c675e132539a1a48538a5be06` |
| 42 | `lemma` | [restrict_apply](../../../../../mathematics/Topology/GeneralTopology/LocallyFinsupp/Variant7cc3b6ea77b47b2cbaa6476b47e5893aeae800bb447c825774abd86d8df2ffd7.lean/declarations/restrict-apply--35ac24c347bc5c33a000aaea.md) | 357 | `result-track:35ac24c347bc5c33a000aaea5d3a3af178167d2f7c4d711c333587eb4cc45002` |
| 43 | `lemma` | [restrict_eqOn](../../../../../mathematics/Topology/GeneralTopology/LocallyFinsupp/Variant7cc3b6ea77b47b2cbaa6476b47e5893aeae800bb447c825774abd86d8df2ffd7.lean/declarations/restrict-eqon--f9ee53b9fdab9eda3b749725.md) | 360 | `result-track:f9ee53b9fdab9eda3b749725684da17eea030055cf4efd8a61864b108e7c9428` |
| 44 | `lemma` | [restrict_eqOn_compl](../../../../../mathematics/Topology/GeneralTopology/LocallyFinsupp/Variant7cc3b6ea77b47b2cbaa6476b47e5893aeae800bb447c825774abd86d8df2ffd7.lean/declarations/restrict-eqon-compl--68aeb1d3ce149f81e104caa4.md) | 365 | `result-track:68aeb1d3ce149f81e104caa4ba77bfedbf6cdc17bb440ff20c3d9f0a1551528f` |
| 45 | `def` | [restrictMonoidHom](../../../../../mathematics/Topology/GeneralTopology/LocallyFinsupp/Variant7cc3b6ea77b47b2cbaa6476b47e5893aeae800bb447c825774abd86d8df2ffd7.lean/declarations/restrictmonoidhom--e35d88273ad1eb84bbe2012f.md) | 371 | `declaration-track:e35d88273ad1eb84bbe2012ffb21d12af51ade371d4aa628a2334fa915f8eb7d` |
| 46 | `lemma` | [restrictMonoidHom_apply](../../../../../mathematics/Topology/GeneralTopology/LocallyFinsupp/Variant7cc3b6ea77b47b2cbaa6476b47e5893aeae800bb447c825774abd86d8df2ffd7.lean/declarations/restrictmonoidhom-apply--d494c98e04e114caed5b2a11.md) | 383 | `result-track:d494c98e04e114caed5b2a1116734c7a7da4c42ea966d3198692f31f63db1ef8` |
| 47 | `def` | [restrictLatticeHom](../../../../../mathematics/Topology/GeneralTopology/LocallyFinsupp/Variant7cc3b6ea77b47b2cbaa6476b47e5893aeae800bb447c825774abd86d8df2ffd7.lean/declarations/restrictlatticehom--b5a91ff95a72b6f51df43a08.md) | 388 | `declaration-track:b5a91ff95a72b6f51df43a0867a7ad9c75d59cd18e8bb330bc4385a6ff6b8341` |
| 48 | `lemma` | [restrictLatticeHom_apply](../../../../../mathematics/Topology/GeneralTopology/LocallyFinsupp/Variant7cc3b6ea77b47b2cbaa6476b47e5893aeae800bb447c825774abd86d8df2ffd7.lean/declarations/restrictlatticehom-apply--82ac76a635ca78a0358f5c79.md) | 401 | `result-track:82ac76a635ca78a0358f5c7974022e09dcf0535787f4783e4b16f345b8863a87` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
