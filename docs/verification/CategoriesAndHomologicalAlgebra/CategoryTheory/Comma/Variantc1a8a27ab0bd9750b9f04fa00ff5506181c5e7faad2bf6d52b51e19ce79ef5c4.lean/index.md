# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Comma.Variantc1a8a27ab0bd9750b9f04fa00ff5506181c5e7faad2bf6d52b51e19ce79ef5c4

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5af4fefc01c3536684298fd8e6ad63b6797c1e96",
  "lexical_observation_count": 55,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Comma/Variantc1a8a27ab0bd9750b9f04fa00ff5506181c5e7faad2bf6d52b51e19ce79ef5c4.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Comma/Variantc1a8a27ab0bd9750b9f04fa00ff5506181c5e7faad2bf6d52b51e19ce79ef5c4.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Comma/Variantc1a8a27ab0bd9750b9f04fa00ff5506181c5e7faad2bf6d52b51e19ce79ef5c4.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5af4fefc01c3536684298fd8e6ad63b6797c1e96`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Comma/Variantc1a8a27ab0bd9750b9f04fa00ff5506181c5e7faad2bf6d52b51e19ce79ef5c4.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Comma/Variantc1a8a27ab0bd9750b9f04fa00ff5506181c5e7faad2bf6d52b51e19ce79ef5c4.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Comma.Over.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.MorphismProperty.Composition` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [costructuredArrow_iso_iff](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Comma/Variantc1a8a27ab0bd9750b9f04fa00ff5506181c5e7faad2bf6d52b51e19ce79ef5c4.lean/declarations/costructuredarrow-iso-iff--1bf8c169f4c68172f2724385.md) | 44 | `result-track:1bf8c169f4c68172f2724385fee2d75113500f1d93079ec0b29659608ef73db6` |
| 2 | `lemma` | [over_iso_iff](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Comma/Variantc1a8a27ab0bd9750b9f04fa00ff5506181c5e7faad2bf6d52b51e19ce79ef5c4.lean/declarations/over-iso-iff--33b43431462f144c4f572e5d.md) | 49 | `result-track:33b43431462f144c4f572e5ddfad1a3195c600c7196451a872b03266f7f2a47b` |
| 3 | `structure` | [Comma](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Comma/Variantc1a8a27ab0bd9750b9f04fa00ff5506181c5e7faad2bf6d52b51e19ce79ef5c4.lean/declarations/comma--5b6f65130c174eb44a0bfe3c.md) | 59 | `declaration-track:5b6f65130c174eb44a0bfe3c2c3b4a137ca6e699dc913d35b729fae36b1e0501` |
| 4 | `structure` | [Hom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Comma/Variantc1a8a27ab0bd9750b9f04fa00ff5506181c5e7faad2bf6d52b51e19ce79ef5c4.lean/declarations/hom--868017ebdc525b38747dd25a.md) | 69 | `declaration-track:868017ebdc525b38747dd25a4ffb0948d227af7c2f647bdd1c29093bde7221fd` |
| 5 | `abbrev` | [Hom.hom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Comma/Variantc1a8a27ab0bd9750b9f04fa00ff5506181c5e7faad2bf6d52b51e19ce79ef5c4.lean/declarations/hom-hom--d0745e3559b7d8b4f0d51e9b.md) | 74 | `declaration-track:d0745e3559b7d8b4f0d51e9bd7166abb32abe41473c92127b88f8b0c9f79f190` |
| 6 | `lemma` | [Hom.hom_mk](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Comma/Variantc1a8a27ab0bd9750b9f04fa00ff5506181c5e7faad2bf6d52b51e19ce79ef5c4.lean/declarations/hom-hom-mk--a2871a79f410a97a54210306.md) | 78 | `result-track:a2871a79f410a97a54210306b3657237e1cc74ab762d5d554481d562e326a768` |
| 7 | `lemma` | [Hom.hom_left](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Comma/Variantc1a8a27ab0bd9750b9f04fa00ff5506181c5e7faad2bf6d52b51e19ce79ef5c4.lean/declarations/hom-hom-left--f6ba24206ea32774dd8eec67.md) | 82 | `result-track:f6ba24206ea32774dd8eec67d1323381a9319c135ab0e1dd7d06b081a8840378` |
| 8 | `lemma` | [Hom.hom_right](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Comma/Variantc1a8a27ab0bd9750b9f04fa00ff5506181c5e7faad2bf6d52b51e19ce79ef5c4.lean/declarations/hom-hom-right--2d810a23be99961318713a5b.md) | 84 | `result-track:2d810a23be99961318713a5bbadc4ce28ae3662102d3fc2050c2fb1a1ea9cdf0` |
| 9 | `def` | [Hom.Simps.hom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Comma/Variantc1a8a27ab0bd9750b9f04fa00ff5506181c5e7faad2bf6d52b51e19ce79ef5c4.lean/declarations/hom-simps-hom--fed141edc392024c1a1092e0.md) | 87 | `declaration-track:fed141edc392024c1a1092e00721d44ab39a1653572d33c63e465b0eb039de39` |
| 10 | `def` | [id](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Comma/Variantc1a8a27ab0bd9750b9f04fa00ff5506181c5e7faad2bf6d52b51e19ce79ef5c4.lean/declarations/id--01eecf6bf9bc8b08f38363e9.md) | 95 | `declaration-track:01eecf6bf9bc8b08f38363e9a15a20a070c41d8208367e46f3758b3db2aa98f7` |
| 11 | `def` | [Hom.comp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Comma/Variantc1a8a27ab0bd9750b9f04fa00ff5506181c5e7faad2bf6d52b51e19ce79ef5c4.lean/declarations/hom-comp--32ada8383d3288e458c1722c.md) | 103 | `declaration-track:32ada8383d3288e458c1722c27f40e2a9b14246a4c09e59d9fd87607a2d1c868` |
| 12 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Comma/Variantc1a8a27ab0bd9750b9f04fa00ff5506181c5e7faad2bf6d52b51e19ce79ef5c4.lean/declarations/instance--46d2c8cbdab72ab8e38e64af.md) | 114 | `declaration-track:46d2c8cbdab72ab8e38e64af440c324e1c53269965143bf3b8ae88aec0d8e513` |
| 13 | `lemma` | [toCommaMorphism_eq_hom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Comma/Variantc1a8a27ab0bd9750b9f04fa00ff5506181c5e7faad2bf6d52b51e19ce79ef5c4.lean/declarations/tocommamorphism-eq-hom--44c0ba4b70e34a3a33c653d0.md) | 119 | `result-track:44c0ba4b70e34a3a33c653d0f5083d9e9ccb53af52d75654e1857f289d267d08` |
| 14 | `lemma` | [Hom.ext'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Comma/Variantc1a8a27ab0bd9750b9f04fa00ff5506181c5e7faad2bf6d52b51e19ce79ef5c4.lean/declarations/hom-ext--b9f8ff0f849233dad0354fef.md) | 123 | `result-track:b9f8ff0f849233dad0354fef5e9b414fef908e0e27d30e9b5879df00a90b474d` |
| 15 | `lemma` | [id_hom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Comma/Variantc1a8a27ab0bd9750b9f04fa00ff5506181c5e7faad2bf6d52b51e19ce79ef5c4.lean/declarations/id-hom--95cbec9466de830261fd6955.md) | 129 | `result-track:95cbec9466de830261fd695571092985520be263900ed3b2c5ac2b3b802a6f63` |
| 16 | `lemma` | [comp_hom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Comma/Variantc1a8a27ab0bd9750b9f04fa00ff5506181c5e7faad2bf6d52b51e19ce79ef5c4.lean/declarations/comp-hom--9f4d479331921d79cb940fca.md) | 132 | `result-track:9f4d479331921d79cb940fca592ae82e4b3a6db68dcc4fbcb713205f3db41eb4` |
| 17 | `lemma` | [comp_left](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Comma/Variantc1a8a27ab0bd9750b9f04fa00ff5506181c5e7faad2bf6d52b51e19ce79ef5c4.lean/declarations/comp-left--10cd31c532b003be49840a68.md) | 136 | `result-track:10cd31c532b003be49840a688f3e0ce25cde17441f040b3cb2e841d444b86c69` |
| 18 | `lemma` | [comp_right](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Comma/Variantc1a8a27ab0bd9750b9f04fa00ff5506181c5e7faad2bf6d52b51e19ce79ef5c4.lean/declarations/comp-right--c2f5f72ad95e0299078c0b87.md) | 140 | `result-track:c2f5f72ad95e0299078c0b8713ca1c975cc15e145ca2d5ec29f18a6064ecadc1` |
| 19 | `def` | [homFromCommaOfIsIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Comma/Variantc1a8a27ab0bd9750b9f04fa00ff5506181c5e7faad2bf6d52b51e19ce79ef5c4.lean/declarations/homfromcommaofisiso--343ebd071786ba40169ffc7c.md) | 145 | `declaration-track:343ebd071786ba40169ffc7cb77ec36cd4cd545fb1f0b563490e90fc43def511` |
| 20 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Comma/Variantc1a8a27ab0bd9750b9f04fa00ff5506181c5e7faad2bf6d52b51e19ce79ef5c4.lean/declarations/instance--b71b8dea8cbe54961cc9bb1b.md) | 152 | `declaration-track:b71b8dea8cbe54961cc9bb1b0bfee3d9aab27078a97462b0a20cbfe8c120f857` |
| 21 | `def` | [isoFromComma](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Comma/Variantc1a8a27ab0bd9750b9f04fa00ff5506181c5e7faad2bf6d52b51e19ce79ef5c4.lean/declarations/isofromcomma--35f92d08225e8cf0a25b057a.md) | 161 | `declaration-track:35f92d08225e8cf0a25b057ac794671da3d85bee979f2c998a28326b05815521` |
| 22 | `def` | [isoMk](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Comma/Variantc1a8a27ab0bd9750b9f04fa00ff5506181c5e7faad2bf6d52b51e19ce79ef5c4.lean/declarations/isomk--28d179d8c7f078e4786ac4f8.md) | 169 | `declaration-track:28d179d8c7f078e4786ac4f87beb9dde09aae582aeb20157d9cadaa166fe09f6` |
| 23 | `def` | [forget](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Comma/Variantc1a8a27ab0bd9750b9f04fa00ff5506181c5e7faad2bf6d52b51e19ce79ef5c4.lean/declarations/forget--45bbc9d97f02a36b27736884.md) | 178 | `declaration-track:45bbc9d97f02a36b27736884bbb167c9a54775edca759d8262ebf05cc7d1eb6e` |
| 24 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Comma/Variantc1a8a27ab0bd9750b9f04fa00ff5506181c5e7faad2bf6d52b51e19ce79ef5c4.lean/declarations/instance--d90bb76484e921dd5573ef78.md) | 182 | `declaration-track:d90bb76484e921dd5573ef78d05e45f76622ff71103ff4b9688142da33f2a612` |
| 25 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Comma/Variantc1a8a27ab0bd9750b9f04fa00ff5506181c5e7faad2bf6d52b51e19ce79ef5c4.lean/declarations/instance--33b49426373f32f0a6da7eae.md) | 187 | `declaration-track:33b49426373f32f0a6da7eae88562f47318c8a957b2b7d57b94cc49c6434f2c4` |
| 26 | `lemma` | [hom_homFromCommaOfIsIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Comma/Variantc1a8a27ab0bd9750b9f04fa00ff5506181c5e7faad2bf6d52b51e19ce79ef5c4.lean/declarations/hom-homfromcommaofisiso--490ca44d63e2c0df9b6757b5.md) | 190 | `result-track:490ca44d63e2c0df9b6757b54ee21856a74924f7c00b31c652ae96be3dddf6a0` |
| 27 | `lemma` | [inv_hom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Comma/Variantc1a8a27ab0bd9750b9f04fa00ff5506181c5e7faad2bf6d52b51e19ce79ef5c4.lean/declarations/inv-hom--06e245c15a3e165e40c22f08.md) | 195 | `result-track:06e245c15a3e165e40c22f08c8e9dcfd6c421198fa9f42909542f3d5deb4f0f5` |
| 28 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Comma/Variantc1a8a27ab0bd9750b9f04fa00ff5506181c5e7faad2bf6d52b51e19ce79ef5c4.lean/declarations/instance--74e20a8c58150b2c27fe62f9.md) | 201 | `declaration-track:74e20a8c58150b2c27fe62f92689783af63f08be6642dc7eb9d280a3f142509a` |
| 29 | `def` | [forgetFullyFaithful](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Comma/Variantc1a8a27ab0bd9750b9f04fa00ff5506181c5e7faad2bf6d52b51e19ce79ef5c4.lean/declarations/forgetfullyfaithful--7313ba59eda7e55c47026798.md) | 209 | `declaration-track:7313ba59eda7e55c4702679843d137ab53deddb6307cb0e65b216359c97442bf` |
| 30 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Comma/Variantc1a8a27ab0bd9750b9f04fa00ff5506181c5e7faad2bf6d52b51e19ce79ef5c4.lean/declarations/instance--7bb7bce68cd39010cc0bf603.md) | 212 | `declaration-track:7bb7bce68cd39010cc0bf60352c01947d0ccee61d6757c3b17e2481859828aca` |
| 31 | `lemma` | [eqToHom_left](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Comma/Variantc1a8a27ab0bd9750b9f04fa00ff5506181c5e7faad2bf6d52b51e19ce79ef5c4.lean/declarations/eqtohom-left--599aec5fadd66a0b15aacec1.md) | 220 | `result-track:599aec5fadd66a0b15aacec13b0bb01141986c881e41a2c325d298211da313a8` |
| 32 | `lemma` | [eqToHom_right](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Comma/Variantc1a8a27ab0bd9750b9f04fa00ff5506181c5e7faad2bf6d52b51e19ce79ef5c4.lean/declarations/eqtohom-right--a79a52c063d7611bd40ee8ed.md) | 226 | `result-track:a79a52c063d7611bd40ee8ed1e0486039427684c7388bc0a8a87f151d5e27056` |
| 33 | `def` | [lift](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Comma/Variantc1a8a27ab0bd9750b9f04fa00ff5506181c5e7faad2bf6d52b51e19ce79ef5c4.lean/declarations/lift--21775af899de9c55899bb41b.md) | 241 | `declaration-track:21775af899de9c55899bb41b0a8dbfee222d7a2cf9e04119d718fd0e8493dff6` |
| 34 | `def` | [mapLeft](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Comma/Variantc1a8a27ab0bd9750b9f04fa00ff5506181c5e7faad2bf6d52b51e19ce79ef5c4.lean/declarations/mapleft--67dbec15b968a7e13e39a19e.md) | 257 | `declaration-track:67dbec15b968a7e13e39a19e903e3c1013af95e4b8cbd5a59ffd0940f71ada23` |
| 35 | `def` | [mapRight](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Comma/Variantc1a8a27ab0bd9750b9f04fa00ff5506181c5e7faad2bf6d52b51e19ce79ef5c4.lean/declarations/mapright--f7e2a2f82b89b03a227a7e2f.md) | 265 | `declaration-track:f7e2a2f82b89b03a227a7e2feff680350c645485e1375651051fc3255aa49f8a` |
| 36 | `abbrev` | [Over](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Comma/Variantc1a8a27ab0bd9750b9f04fa00ff5506181c5e7faad2bf6d52b51e19ce79ef5c4.lean/declarations/over--9c56a494d4e966c693672ac3.md) | 282 | `declaration-track:9c56a494d4e966c693672ac369be708fa855fd345f503d5db310ed2849fd7753` |
| 37 | `abbrev` | [Over.forget](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Comma/Variantc1a8a27ab0bd9750b9f04fa00ff5506181c5e7faad2bf6d52b51e19ce79ef5c4.lean/declarations/over-forget--49a75c1ad500200d1d5dd2b8.md) | 286 | `declaration-track:49a75c1ad500200d1d5dd2b8490a4a8a4f942e03ce6a45b357bd919d0df21734` |
| 38 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Comma/Variantc1a8a27ab0bd9750b9f04fa00ff5506181c5e7faad2bf6d52b51e19ce79ef5c4.lean/declarations/instance--d5868c52fb55b9cae28068cb.md) | 289 | `declaration-track:d5868c52fb55b9cae28068cb1dbe04efb12eccf606fc39d1733ebb936001d23d` |
| 39 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Comma/Variantc1a8a27ab0bd9750b9f04fa00ff5506181c5e7faad2bf6d52b51e19ce79ef5c4.lean/declarations/instance--4b003d237b8dad6f5776ace2.md) | 290 | `declaration-track:4b003d237b8dad6f5776ace2e50421c9daa6345c14c0753367104a91826cccf9` |
| 40 | `def` | [Over.Hom.mk](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Comma/Variantc1a8a27ab0bd9750b9f04fa00ff5506181c5e7faad2bf6d52b51e19ce79ef5c4.lean/declarations/over-hom-mk--4aab4e7def58b0a7d5dd11af.md) | 296 | `declaration-track:4aab4e7def58b0a7d5dd11afefd383694cd3c1fe837a748f50eb27286844a46b` |
| 41 | `def` | [Over.mk](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Comma/Variantc1a8a27ab0bd9750b9f04fa00ff5506181c5e7faad2bf6d52b51e19ce79ef5c4.lean/declarations/over-mk--c0d6283a14d2a39a09159584.md) | 304 | `declaration-track:c0d6283a14d2a39a09159584828fb3650180c40df06b59d1b3c4ef8a37470d5d` |
| 42 | `def` | [Over.homMk](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Comma/Variantc1a8a27ab0bd9750b9f04fa00ff5506181c5e7faad2bf6d52b51e19ce79ef5c4.lean/declarations/over-hommk--24e5c6ff9d1684efdb9ca4aa.md) | 312 | `declaration-track:24e5c6ff9d1684efdb9ca4aa01f2fca07d43fc5641e87b0295a90482e5564074` |
| 43 | `def` | [Over.isoMk](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Comma/Variantc1a8a27ab0bd9750b9f04fa00ff5506181c5e7faad2bf6d52b51e19ce79ef5c4.lean/declarations/over-isomk--fa7ddb83ca8efbcb2365c1ea.md) | 320 | `declaration-track:fa7ddb83ca8efbcb2365c1eaea3840dd2cab62a5588514b8d39e881fbee8b9a0` |
| 44 | `lemma` | [Over.Hom.ext](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Comma/Variantc1a8a27ab0bd9750b9f04fa00ff5506181c5e7faad2bf6d52b51e19ce79ef5c4.lean/declarations/over-hom-ext--2993ab19f38b638252254e8a.md) | 325 | `result-track:2993ab19f38b638252254e8aef52b8324039ad25724bb5b372c5ca58b3d782f0` |
| 45 | `lemma` | [Over.w](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Comma/Variantc1a8a27ab0bd9750b9f04fa00ff5506181c5e7faad2bf6d52b51e19ce79ef5c4.lean/declarations/over-w--13392f82fc4996f59b24a57d.md) | 331 | `result-track:13392f82fc4996f59b24a57d627340e491510d02b75147b914a87724c95a989e` |
| 46 | `abbrev` | [Under](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Comma/Variantc1a8a27ab0bd9750b9f04fa00ff5506181c5e7faad2bf6d52b51e19ce79ef5c4.lean/declarations/under--b12cd78b46fd34f190a51da6.md) | 343 | `declaration-track:b12cd78b46fd34f190a51da61c9312f2dc8b6fb73b8b07d094ade2cb8aab00f4` |
| 47 | `abbrev` | [Under.forget](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Comma/Variantc1a8a27ab0bd9750b9f04fa00ff5506181c5e7faad2bf6d52b51e19ce79ef5c4.lean/declarations/under-forget--712bf8169c070c3db17e1a3a.md) | 347 | `declaration-track:712bf8169c070c3db17e1a3ad0930a3d539111580f30e79c2dceb64519d6460b` |
| 48 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Comma/Variantc1a8a27ab0bd9750b9f04fa00ff5506181c5e7faad2bf6d52b51e19ce79ef5c4.lean/declarations/instance--923d56efa075f7d2e1b3023e.md) | 350 | `declaration-track:923d56efa075f7d2e1b3023edb2fef575a4bc5dcec9159cdffcd041f9b1910c7` |
| 49 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Comma/Variantc1a8a27ab0bd9750b9f04fa00ff5506181c5e7faad2bf6d52b51e19ce79ef5c4.lean/declarations/instance--df5b6ecd1e682331824fcae8.md) | 351 | `declaration-track:df5b6ecd1e682331824fcae882d825e40ac1865684a7eb29f9421dd85e7682ef` |
| 50 | `def` | [Under.Hom.mk](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Comma/Variantc1a8a27ab0bd9750b9f04fa00ff5506181c5e7faad2bf6d52b51e19ce79ef5c4.lean/declarations/under-hom-mk--9aa0f8972dcd50d6413934a7.md) | 357 | `declaration-track:9aa0f8972dcd50d6413934a7d74311feff1f58e6a39fc7ede376c459de58fb09` |
| 51 | `def` | [Under.mk](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Comma/Variantc1a8a27ab0bd9750b9f04fa00ff5506181c5e7faad2bf6d52b51e19ce79ef5c4.lean/declarations/under-mk--afb4d62a051811aa6e5969c9.md) | 365 | `declaration-track:afb4d62a051811aa6e5969c9de70612c89086b82eded540b6df617391d07300c` |
| 52 | `def` | [Under.homMk](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Comma/Variantc1a8a27ab0bd9750b9f04fa00ff5506181c5e7faad2bf6d52b51e19ce79ef5c4.lean/declarations/under-hommk--e41328a2110bf4bad0716ddf.md) | 373 | `declaration-track:e41328a2110bf4bad0716ddf499f1af6a385658ec8835f9f87a768c20f9112f6` |
| 53 | `def` | [Under.isoMk](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Comma/Variantc1a8a27ab0bd9750b9f04fa00ff5506181c5e7faad2bf6d52b51e19ce79ef5c4.lean/declarations/under-isomk--77f823690f1927976e5278d3.md) | 381 | `declaration-track:77f823690f1927976e5278d39bccc122bbec8eff3add078c05c54556e1fd0d9e` |
| 54 | `lemma` | [Under.Hom.ext](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Comma/Variantc1a8a27ab0bd9750b9f04fa00ff5506181c5e7faad2bf6d52b51e19ce79ef5c4.lean/declarations/under-hom-ext--549884f1698bdb4c7b9d8d70.md) | 386 | `result-track:549884f1698bdb4c7b9d8d705d1dbfea1f532cf8547f9af8f53a5cbda2fc9f13` |
| 55 | `lemma` | [Under.w](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Comma/Variantc1a8a27ab0bd9750b9f04fa00ff5506181c5e7faad2bf6d52b51e19ce79ef5c4.lean/declarations/under-w--64cf257dffb087363e8728b3.md) | 392 | `result-track:64cf257dffb087363e8728b3eef69511de10069c943d66b8743c9384d532ab42` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
