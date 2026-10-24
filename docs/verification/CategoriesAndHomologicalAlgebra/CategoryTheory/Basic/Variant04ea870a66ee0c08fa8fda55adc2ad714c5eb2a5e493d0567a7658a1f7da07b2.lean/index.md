# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Basic.Variant04ea870a66ee0c08fa8fda55adc2ad714c5eb2a5e493d0567a7658a1f7da07b2

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0871f6c841f1f2c1c989a1f08b48f361438573d8",
  "lexical_observation_count": 51,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant04ea870a66ee0c08fa8fda55adc2ad714c5eb2a5e493d0567a7658a1f7da07b2.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant04ea870a66ee0c08fa8fda55adc2ad714c5eb2a5e493d0567a7658a1f7da07b2.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant04ea870a66ee0c08fa8fda55adc2ad714c5eb2a5e493d0567a7658a1f7da07b2.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0871f6c841f1f2c1c989a1f08b48f361438573d8`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant04ea870a66ee0c08fa8fda55adc2ad714c5eb2a5e493d0567a7658a1f7da07b2.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant04ea870a66ee0c08fa8fda55adc2ad714c5eb2a5e493d0567a7658a1f7da07b2.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Sites.Sheaf` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Sites.CoverLifting` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Sites.CoverPreserving` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Adjunction.FullyFaithful` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Sites.LocallyFullyFaithful` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [Presieve.CoverByImageStructure](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant04ea870a66ee0c08fa8fda55adc2ad714c5eb2a5e493d0567a7658a1f7da07b2.lean/declarations/presieve-coverbyimagestructure--b7ca42cc553e63845fbc581c.md) | 59 | `declaration-track:b7ca42cc553e63845fbc581c730ae6596c6f9ab09abe296f8528182d095eda98` |
| 2 | `def` | [Presieve.coverByImage](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant04ea870a66ee0c08fa8fda55adc2ad714c5eb2a5e493d0567a7658a1f7da07b2.lean/declarations/presieve-coverbyimage--633f4a29664a79f4031f5e09.md) | 72 | `declaration-track:633f4a29664a79f4031f5e0991a3734a8420695cdf0e99ea68a7d17cd52a21aa` |
| 3 | `def` | [Sieve.coverByImage](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant04ea870a66ee0c08fa8fda55adc2ad714c5eb2a5e493d0567a7658a1f7da07b2.lean/declarations/sieve-coverbyimage--1155c12d512cf4265aa55a0d.md) | 78 | `declaration-track:1155c12d512cf4265aa55a0d95dd848263f378bb1143f876af3af29aa3ac2aed` |
| 4 | `theorem` | [Presieve.in_coverByImage](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant04ea870a66ee0c08fa8fda55adc2ad714c5eb2a5e493d0567a7658a1f7da07b2.lean/declarations/presieve-in-coverbyimage--ce4fe7e6dd408cf28882b737.md) | 82 | `result-track:ce4fe7e6dd408cf28882b737fa2c4f9542cd5e1a3d567b0fae9e7d716df86eae` |
| 5 | `class` | [Functor.IsCoverDense](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant04ea870a66ee0c08fa8fda55adc2ad714c5eb2a5e493d0567a7658a1f7da07b2.lean/declarations/functor-iscoverdense--f407ea189ff385a0f94c2e86.md) | 91 | `declaration-track:f407ea189ff385a0f94c2e86b6f8af94a61f87d5a42f9c7f8d7a5e2792e2506c` |
| 6 | `lemma` | [Functor.is_cover_of_isCoverDense](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant04ea870a66ee0c08fa8fda55adc2ad714c5eb2a5e493d0567a7658a1f7da07b2.lean/declarations/functor-is-cover-of-iscoverdense--220665dfa6390fde0639cbfe.md) | 94 | `result-track:220665dfa6390fde0639cbfec2f9723a2fad5f1325c3df9560d107da57d8c790` |
| 7 | `lemma` | [Functor.isCoverDense_of_generate_singleton_functor_π_mem](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant04ea870a66ee0c08fa8fda55adc2ad714c5eb2a5e493d0567a7658a1f7da07b2.lean/declarations/functor-iscoverdense-of-generate-singleton-functor-mem--491d0c19e19d671b2473689d.md) | 98 | `result-track:491d0c19e19d671b2473689d190fdcd0b83674ecd68db6c20a958a360666af2d` |
| 8 | `theorem` | [ext](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant04ea870a66ee0c08fa8fda55adc2ad714c5eb2a5e493d0567a7658a1f7da07b2.lean/declarations/ext--de87bb58b66ad1a4e3d176d8.md) | 121 | `result-track:de87bb58b66ad1a4e3d176d82d34dd3af1df6a1734e3600a1108822578b077e3` |
| 9 | `theorem` | [functorPullback_pushforward_covering](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant04ea870a66ee0c08fa8fda55adc2ad714c5eb2a5e493d0567a7658a1f7da07b2.lean/declarations/functorpullback-pushforward-covering--848cae29bf7b84da5736db9b.md) | 130 | `result-track:848cae29bf7b84da5736db9b7a2400f9746406976fd82532c1fef0a0f9a9c5cd` |
| 10 | `def` | [homOver](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant04ea870a66ee0c08fa8fda55adc2ad714c5eb2a5e493d0567a7658a1f7da07b2.lean/declarations/homover--10d812bc7814ea8a7bf09c9c.md) | 144 | `declaration-track:10d812bc7814ea8a7bf09c9c1a0c033bb4a137c2c51a078cb80e9e34aa79db57` |
| 11 | `def` | [isoOver](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant04ea870a66ee0c08fa8fda55adc2ad714c5eb2a5e493d0567a7658a1f7da07b2.lean/declarations/isoover--3d97d84b491282f53a12cd6b.md) | 152 | `declaration-track:3d97d84b491282f53a12cd6b65437cd66dd3803e47b259d5f282b0d672c96df2` |
| 12 | `theorem` | [sheaf_eq_amalgamation](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant04ea870a66ee0c08fa8fda55adc2ad714c5eb2a5e493d0567a7658a1f7da07b2.lean/declarations/sheaf-eq-amalgamation--e633353491f9681957ee97ae.md) | 156 | `result-track:e633353491f9681957ee97ae3f5c385e13c6018767259ce2318def5c1ddd07cc` |
| 13 | `theorem` | [naturality_apply](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant04ea870a66ee0c08fa8fda55adc2ad714c5eb2a5e493d0567a7658a1f7da07b2.lean/declarations/naturality-apply--a60c287005dc8d07c9abbab9.md) | 165 | `result-track:a60c287005dc8d07c9abbab97e0d0c8a1854c06104087f2646feacc63725b966` |
| 14 | `theorem` | [naturality](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant04ea870a66ee0c08fa8fda55adc2ad714c5eb2a5e493d0567a7658a1f7da07b2.lean/declarations/naturality--90db0c8ab7cfd26ec82aa841.md) | 174 | `result-track:90db0c8ab7cfd26ec82aa8410bc4dd5b43c62d4f4072e705980f3d0abe6a9aad` |
| 15 | `def` | [pushforwardFamily](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant04ea870a66ee0c08fa8fda55adc2ad714c5eb2a5e493d0567a7658a1f7da07b2.lean/declarations/pushforwardfamily--73ba73ae568bfc48f38b0b5b.md) | 180 | `declaration-track:73ba73ae568bfc48f38b0b5b211138262a5d6353fea338de4034d7cf3a5a5157` |
| 16 | `theorem` | [pushforwardFamily_def](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant04ea870a66ee0c08fa8fda55adc2ad714c5eb2a5e493d0567a7658a1f7da07b2.lean/declarations/pushforwardfamily-def--2953e517def04ca7bd3dbc48.md) | 184 | `result-track:2953e517def04ca7bd3dbc48cdab5601a135e82f4fd9bab593a3bbcb0ac8571d` |
| 17 | `theorem` | [pushforwardFamily_apply](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant04ea870a66ee0c08fa8fda55adc2ad714c5eb2a5e493d0567a7658a1f7da07b2.lean/declarations/pushforwardfamily-apply--6ab8bae77c655933083eff41.md) | 189 | `result-track:6ab8bae77c655933083eff41e17fd32ed925dc1ecfc97144e29696bc9e8a105f` |
| 18 | `theorem` | [pushforwardFamily_compatible](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant04ea870a66ee0c08fa8fda55adc2ad714c5eb2a5e493d0567a7658a1f7da07b2.lean/declarations/pushforwardfamily-compatible--fa3572dcceff87fef2edff8f.md) | 200 | `result-track:fa3572dcceff87fef2edff8fcbf4aaa6f1fcfc2dda853a8492c3a7c4bf352805` |
| 19 | `def` | [appHom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant04ea870a66ee0c08fa8fda55adc2ad714c5eb2a5e493d0567a7658a1f7da07b2.lean/declarations/apphom--5a43e45f11a60b11d06faa46.md) | 218 | `declaration-track:5a43e45f11a60b11d06faa461582ec406f8287a8e10b7578bef56835684b5dd8` |
| 20 | `theorem` | [appHom_restrict](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant04ea870a66ee0c08fa8fda55adc2ad714c5eb2a5e493d0567a7658a1f7da07b2.lean/declarations/apphom-restrict--c0e4a97782faabc980ccc2fc.md) | 224 | `result-track:c0e4a97782faabc980ccc2fc5537504fb5ef3389e14bf72645a5c169c7133dc9` |
| 21 | `theorem` | [appHom_valid_glue](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant04ea870a66ee0c08fa8fda55adc2ad714c5eb2a5e493d0567a7658a1f7da07b2.lean/declarations/apphom-valid-glue--795fd86b9118dd61b0f7a2ac.md) | 231 | `result-track:795fd86b9118dd61b0f7a2ac762b7c85f51334fdadea897620fc3a4e5ba8de30` |
| 22 | `def` | [appIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant04ea870a66ee0c08fa8fda55adc2ad714c5eb2a5e493d0567a7658a1f7da07b2.lean/declarations/appiso--ee6e91ea1156ce3c5f1f398c.md) | 240 | `declaration-track:ee6e91ea1156ce3c5f1f398c4e1226d680213355707e3d7b7e871c21e86e05d0` |
| 23 | `def` | [presheafHom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant04ea870a66ee0c08fa8fda55adc2ad714c5eb2a5e493d0567a7658a1f7da07b2.lean/declarations/presheafhom--141c170d13742d6eca439ebb.md) | 261 | `declaration-track:141c170d13742d6eca439ebbb3725bff23e87bab14742bcd8bdbef0b7943da04` |
| 24 | `def` | [presheafIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant04ea870a66ee0c08fa8fda55adc2ad714c5eb2a5e493d0567a7658a1f7da07b2.lean/declarations/presheafiso--43f799b58ba1fe9237679dd4.md) | 275 | `declaration-track:43f799b58ba1fe9237679dd4f78603eaaaa4d90c7283cf453d8c603321026cb6` |
| 25 | `def` | [sheafIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant04ea870a66ee0c08fa8fda55adc2ad714c5eb2a5e493d0567a7658a1f7da07b2.lean/declarations/sheafiso--449ba68942b8cfacecab4755.md) | 285 | `declaration-track:449ba68942b8cfacecab47556717437cadaa07dacab35d1165e8a5fa7bdbb045` |
| 26 | `def` | [sheafCoyonedaHom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant04ea870a66ee0c08fa8fda55adc2ad714c5eb2a5e493d0567a7658a1f7da07b2.lean/declarations/sheafcoyonedahom--862910baef870ae1ff98c3d9.md) | 304 | `declaration-track:862910baef870ae1ff98c3d9ce7526c5465796937f126a12215f6eda75d7ae19` |
| 27 | `def` | [sheafYonedaHom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant04ea870a66ee0c08fa8fda55adc2ad714c5eb2a5e493d0567a7658a1f7da07b2.lean/declarations/sheafyonedahom--c0b349066241bd1b811dbdb4.md) | 331 | `declaration-track:c0b349066241bd1b811dbdb47d6b2f72b2d3fd5ff11185ab2c512f798b8110e9` |
| 28 | `def` | [sheafHom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant04ea870a66ee0c08fa8fda55adc2ad714c5eb2a5e493d0567a7658a1f7da07b2.lean/declarations/sheafhom--a16130e8aae76fe1b6f7ee25.md) | 346 | `declaration-track:a16130e8aae76fe1b6f7ee2591450915e3047df68566765ab34c02db74d66e74` |
| 29 | `def` | [presheafIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant04ea870a66ee0c08fa8fda55adc2ad714c5eb2a5e493d0567a7658a1f7da07b2.lean/declarations/presheafiso--a6a2ec66fe6cb8554f1178a9.md) | 357 | `declaration-track:a6a2ec66fe6cb8554f1178a9d225da32b798351867f5abccf11890e7587c6472` |
| 30 | `def` | [sheafIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant04ea870a66ee0c08fa8fda55adc2ad714c5eb2a5e493d0567a7658a1f7da07b2.lean/declarations/sheafiso--36bf777328a530295109a7ff.md) | 376 | `declaration-track:36bf777328a530295109a7ff337bf2603346c2a8446a10fa8b26905b3e12ce43` |
| 31 | `theorem` | [sheafHom_restrict_eq](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant04ea870a66ee0c08fa8fda55adc2ad714c5eb2a5e493d0567a7658a1f7da07b2.lean/declarations/sheafhom-restrict-eq--6c2a98822c85e6a451bbe789.md) | 387 | `result-track:6c2a98822c85e6a451bbe789aa1fdacbd09853697551a30fa0a9b35df817dacd` |
| 32 | `theorem` | [sheafHom_eq](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant04ea870a66ee0c08fa8fda55adc2ad714c5eb2a5e493d0567a7658a1f7da07b2.lean/declarations/sheafhom-eq--ae5cc700fdd47e4a3ee62f31.md) | 416 | `result-track:ae5cc700fdd47e4a3ee62f310dc57ac42588876ee085df8181764ac744f93939` |
| 33 | `def` | [restrictHomEquivHom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant04ea870a66ee0c08fa8fda55adc2ad714c5eb2a5e493d0567a7658a1f7da07b2.lean/declarations/restricthomequivhom--6c4229016fb3a4128c2efaea.md) | 435 | `declaration-track:6c4229016fb3a4128c2efaea7df53f409eab364b9a8e8d084aba2b8e54ac1fda` |
| 34 | `theorem` | [iso_of_restrict_iso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant04ea870a66ee0c08fa8fda55adc2ad714c5eb2a5e493d0567a7658a1f7da07b2.lean/declarations/iso-of-restrict-iso--063db4fc0c743ad5554f5dfe.md) | 444 | `result-track:063db4fc0c743ad5554f5dfe61852dc20e6b8a9dda21dc29d50a3bd55a644ad7` |
| 35 | `lemma` | [compatiblePreserving](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant04ea870a66ee0c08fa8fda55adc2ad714c5eb2a5e493d0567a7658a1f7da07b2.lean/declarations/compatiblepreserving--1d055c37d3e3d6003b38181e.md) | 453 | `result-track:1d055c37d3e3d6003b38181ef106710685c4e65df4d04d5ab4c4f68b5c63fc64` |
| 36 | `lemma` | [isContinuous](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant04ea870a66ee0c08fa8fda55adc2ad714c5eb2a5e493d0567a7658a1f7da07b2.lean/declarations/iscontinuous--c1b35b0eac5811ca750c6d8c.md) | 466 | `result-track:c1b35b0eac5811ca750c6d8c86b48bb140825b010f050876dfc1b0c41ae6838f` |
| 37 | `instance` | [full_sheafPushforwardContinuous](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant04ea870a66ee0c08fa8fda55adc2ad714c5eb2a5e493d0567a7658a1f7da07b2.lean/declarations/full-sheafpushforwardcontinuous--b20ce55c78de08bb8596a049.md) | 469 | `declaration-track:b20ce55c78de08bb8596a0496977dd72295471f3b2177fb7fd67a13619d7aa5c` |
| 38 | `instance` | [faithful_sheafPushforwardContinuous](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant04ea870a66ee0c08fa8fda55adc2ad714c5eb2a5e493d0567a7658a1f7da07b2.lean/declarations/faithful-sheafpushforwardcontinuous--51c0223b91e33870c77d2c55.md) | 473 | `declaration-track:51c0223b91e33870c77d2c552715e207c02a9cd98e0bb796dd00f5b1418f301d` |
| 39 | `lemma` | [whiskerLeft_obj_map_bijective_of_isCoverDense](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant04ea870a66ee0c08fa8fda55adc2ad714c5eb2a5e493d0567a7658a1f7da07b2.lean/declarations/whiskerleft-obj-map-bijective-of-iscoverdense--5767c8f0548756b450d70a4a.md) | 486 | `result-track:5767c8f0548756b450d70a4a240f8f0eba67464f26e9f4f4e0bace9c653df437` |
| 40 | `class` | [IsDenseSubsite](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant04ea870a66ee0c08fa8fda55adc2ad714c5eb2a5e493d0567a7658a1f7da07b2.lean/declarations/isdensesubsite--8a4a38caf5ab6740398b95ce.md) | 497 | `declaration-track:8a4a38caf5ab6740398b95ce0453e1923a94bdc9ea6015a9eb7b723b4b02e879` |
| 41 | `lemma` | [functorPushforward_mem_iff](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant04ea870a66ee0c08fa8fda55adc2ad714c5eb2a5e493d0567a7658a1f7da07b2.lean/declarations/functorpushforward-mem-iff--acc05a688523870c41eb76d2.md) | 503 | `result-track:acc05a688523870c41eb76d29078e809ca789fb44100fdf67beede1ac8c62125` |
| 42 | `lemma` | [isCoverDense](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant04ea870a66ee0c08fa8fda55adc2ad714c5eb2a5e493d0567a7658a1f7da07b2.lean/declarations/iscoverdense--542a2618b47c437fb3aa2e97.md) | 512 | `result-track:542a2618b47c437fb3aa2e97c919691640449f78939f7fdd7c223725678b1032` |
| 43 | `lemma` | [isLocallyFull](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant04ea870a66ee0c08fa8fda55adc2ad714c5eb2a5e493d0567a7658a1f7da07b2.lean/declarations/islocallyfull--74658792a54c4eb3260d1a18.md) | 513 | `result-track:74658792a54c4eb3260d1a187882ff5bff301c7b9c2273146b924c9361b566fc` |
| 44 | `lemma` | [isLocallyFaithful](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant04ea870a66ee0c08fa8fda55adc2ad714c5eb2a5e493d0567a7658a1f7da07b2.lean/declarations/islocallyfaithful--518d538abae98d35b2fa6e76.md) | 514 | `result-track:518d538abae98d35b2fa6e76e8d4586df8138823c32252a8695b00e8611528d3` |
| 45 | `lemma` | [coverPreserving](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant04ea870a66ee0c08fa8fda55adc2ad714c5eb2a5e493d0567a7658a1f7da07b2.lean/declarations/coverpreserving--96c3c95e85ff47cac7b34927.md) | 516 | `result-track:96c3c95e85ff47cac7b3492759c1ea690c1dd556cfb2906248d38a28b715e563` |
| 46 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant04ea870a66ee0c08fa8fda55adc2ad714c5eb2a5e493d0567a7658a1f7da07b2.lean/declarations/instance--771bfd818165b353a8af6006.md) | 519 | `declaration-track:771bfd818165b353a8af6006ccd702e649a61110875c6deb2059d2a4512fa071` |
| 47 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant04ea870a66ee0c08fa8fda55adc2ad714c5eb2a5e493d0567a7658a1f7da07b2.lean/declarations/instance--4111a8e9f626d6e7ee6129e2.md) | 525 | `declaration-track:4111a8e9f626d6e7ee6129e2a115945c262f6dbcc1461e69ae006b85a748178f` |
| 48 | `instance` | [full_sheafPushforwardContinuous](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant04ea870a66ee0c08fa8fda55adc2ad714c5eb2a5e493d0567a7658a1f7da07b2.lean/declarations/full-sheafpushforwardcontinuous--ce646ed87b341f2b52fe7bf3.md) | 532 | `declaration-track:ce646ed87b341f2b52fe7bf33b0ee45d126c1d5cd62cb0adc58b38eddfb99e6d` |
| 49 | `instance` | [faithful_sheafPushforwardContinuous](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant04ea870a66ee0c08fa8fda55adc2ad714c5eb2a5e493d0567a7658a1f7da07b2.lean/declarations/faithful-sheafpushforwardcontinuous--a691b3e0d117e47c72d60a94.md) | 538 | `declaration-track:a691b3e0d117e47c72d60a941c438548a9328acdb44154cf3bf1ef2128398272` |
| 50 | `lemma` | [imageSieve_mem](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant04ea870a66ee0c08fa8fda55adc2ad714c5eb2a5e493d0567a7658a1f7da07b2.lean/declarations/imagesieve-mem--649c7d3a9b2231dd8f050e0f.md) | 544 | `result-track:649c7d3a9b2231dd8f050e0fbfda5579ba28a76897b4606323852d24d7b97d36` |
| 51 | `lemma` | [equalizer_mem](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant04ea870a66ee0c08fa8fda55adc2ad714c5eb2a5e493d0567a7658a1f7da07b2.lean/declarations/equalizer-mem--5f5541fdb25c17b5a7e3b14e.md) | 549 | `result-track:5f5541fdb25c17b5a7e3b14e205bd54519a47d8ace5094d1f63ee0a5f75b7f07` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
