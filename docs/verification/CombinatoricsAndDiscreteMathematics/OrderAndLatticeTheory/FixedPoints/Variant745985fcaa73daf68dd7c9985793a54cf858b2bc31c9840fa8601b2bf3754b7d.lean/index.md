# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.FixedPoints.Variant745985fcaa73daf68dd7c9985793a54cf858b2bc31c9840fa8601b2bf3754b7d

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7ff357b7e36173c86dcf4ad7243eff04ce571983",
  "lexical_observation_count": 45,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/FixedPoints/Variant745985fcaa73daf68dd7c9985793a54cf858b2bc31c9840fa8601b2bf3754b7d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/FixedPoints/Variant745985fcaa73daf68dd7c9985793a54cf858b2bc31c9840fa8601b2bf3754b7d.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/FixedPoints/Variant745985fcaa73daf68dd7c9985793a54cf858b2bc31c9840fa8601b2bf3754b7d.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7ff357b7e36173c86dcf4ad7243eff04ce571983`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/FixedPoints/Variant745985fcaa73daf68dd7c9985793a54cf858b2bc31c9840fa8601b2bf3754b7d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/FixedPoints/Variant745985fcaa73daf68dd7c9985793a54cf858b2bc31c9840fa8601b2bf3754b7d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Dynamics.FixedPoints.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Hom.Order` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Order.OmegaCompletePartialOrder` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [lfp](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/FixedPoints/Variant745985fcaa73daf68dd7c9985793a54cf858b2bc31c9840fa8601b2bf3754b7d.lean/declarations/lfp--ea4dfd1a6937f800873c4ea3.md) | 45 | `declaration-track:ea4dfd1a6937f800873c4ea39b3dbabc884e97ee44bd2a70c2e1b61db45dd890` |
| 2 | `def` | [gfp](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/FixedPoints/Variant745985fcaa73daf68dd7c9985793a54cf858b2bc31c9840fa8601b2bf3754b7d.lean/declarations/gfp--b6b175f2faa919ddb5e0a5dc.md) | 50 | `declaration-track:b6b175f2faa919ddb5e0a5dcad261ff5d6e0b30b0c51b488df311aeefb57a170` |
| 3 | `theorem` | [lfp_le](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/FixedPoints/Variant745985fcaa73daf68dd7c9985793a54cf858b2bc31c9840fa8601b2bf3754b7d.lean/declarations/lfp-le--243dda76046747e9e66ee4d5.md) | 54 | `result-track:243dda76046747e9e66ee4d5b667e9a6dac366772e8650486e92086735db52f7` |
| 4 | `theorem` | [lfp_le_fixed](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/FixedPoints/Variant745985fcaa73daf68dd7c9985793a54cf858b2bc31c9840fa8601b2bf3754b7d.lean/declarations/lfp-le-fixed--2460533a6a8ee78d70706333.md) | 57 | `result-track:2460533a6a8ee78d70706333163a8dc71956f1c0ad24c53293533615e6427599` |
| 5 | `theorem` | [le_lfp](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/FixedPoints/Variant745985fcaa73daf68dd7c9985793a54cf858b2bc31c9840fa8601b2bf3754b7d.lean/declarations/le-lfp--7bc9fc0bf05ee0aa862bde06.md) | 60 | `result-track:7bc9fc0bf05ee0aa862bde06100b623ba21e0c6cdf422526bbc80558dfe0ba4f` |
| 6 | `theorem` | [map_le_lfp](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/FixedPoints/Variant745985fcaa73daf68dd7c9985793a54cf858b2bc31c9840fa8601b2bf3754b7d.lean/declarations/map-le-lfp--e164825f2c1e2e6d49a91832.md) | 63 | `result-track:e164825f2c1e2e6d49a9183212da2900c6aba57da988442ce545f7595c5e58a9` |
| 7 | `theorem` | [map_lfp](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/FixedPoints/Variant745985fcaa73daf68dd7c9985793a54cf858b2bc31c9840fa8601b2bf3754b7d.lean/declarations/map-lfp--9a903528941711f615cd741b.md) | 67 | `result-track:9a903528941711f615cd741b08ddc7a49a0827317368b42cb1ff5e3c6c512a98` |
| 8 | `theorem` | [isFixedPt_lfp](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/FixedPoints/Variant745985fcaa73daf68dd7c9985793a54cf858b2bc31c9840fa8601b2bf3754b7d.lean/declarations/isfixedpt-lfp--ec8a3621832df355b5ddebf0.md) | 71 | `result-track:ec8a3621832df355b5ddebf0000b443bbc52720e17c1783ce3c2a528744e9240` |
| 9 | `theorem` | [lfp_le_map](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/FixedPoints/Variant745985fcaa73daf68dd7c9985793a54cf858b2bc31c9840fa8601b2bf3754b7d.lean/declarations/lfp-le-map--1a5f7eafce10e746dc5599e3.md) | 74 | `result-track:1a5f7eafce10e746dc5599e379a3abe5f60123e7a07f6720d979dfcffc3ce5fb` |
| 10 | `theorem` | [isLeast_lfp_le](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/FixedPoints/Variant745985fcaa73daf68dd7c9985793a54cf858b2bc31c9840fa8601b2bf3754b7d.lean/declarations/isleast-lfp-le--2854b1a72153808bab0f4bdc.md) | 79 | `result-track:2854b1a72153808bab0f4bdc08c2851c022983826fd7450937df85cca4b6937a` |
| 11 | `theorem` | [isLeast_lfp](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/FixedPoints/Variant745985fcaa73daf68dd7c9985793a54cf858b2bc31c9840fa8601b2bf3754b7d.lean/declarations/isleast-lfp--9cec283973f00c44bc19f8bf.md) | 82 | `result-track:9cec283973f00c44bc19f8bfed3808a2c67759c7b2fb9c1dfdbcc0b20f923879` |
| 12 | `theorem` | [lfp_induction](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/FixedPoints/Variant745985fcaa73daf68dd7c9985793a54cf858b2bc31c9840fa8601b2bf3754b7d.lean/declarations/lfp-induction--848efc1af2f37daba6da3be2.md) | 85 | `result-track:848efc1af2f37daba6da3be258d19692dc4f84cad1d7f3dd077fc4c0425944ed` |
| 13 | `theorem` | [le_gfp](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/FixedPoints/Variant745985fcaa73daf68dd7c9985793a54cf858b2bc31c9840fa8601b2bf3754b7d.lean/declarations/le-gfp--50c63aa526c298281917912b.md) | 94 | `result-track:50c63aa526c298281917912b9239d7be73b9d4725243aba0592f6aabc7010b1d` |
| 14 | `theorem` | [gfp_le](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/FixedPoints/Variant745985fcaa73daf68dd7c9985793a54cf858b2bc31c9840fa8601b2bf3754b7d.lean/declarations/gfp-le--88fcdcf42c2c12f18094b74e.md) | 97 | `result-track:88fcdcf42c2c12f18094b74e07ef79fe6df5bd89943d2b87769733aff4c2a889` |
| 15 | `theorem` | [isFixedPt_gfp](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/FixedPoints/Variant745985fcaa73daf68dd7c9985793a54cf858b2bc31c9840fa8601b2bf3754b7d.lean/declarations/isfixedpt-gfp--0d59f2da6959559de8205873.md) | 100 | `result-track:0d59f2da6959559de8205873264a01c54798d8d2bcb625e06584e1578e68689e` |
| 16 | `theorem` | [map_gfp](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/FixedPoints/Variant745985fcaa73daf68dd7c9985793a54cf858b2bc31c9840fa8601b2bf3754b7d.lean/declarations/map-gfp--2a3758d02697bc351cd03a2a.md) | 104 | `result-track:2a3758d02697bc351cd03a2ab9d6f8bb56bb980c23bbbb439517b4a1ace60962` |
| 17 | `theorem` | [map_le_gfp](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/FixedPoints/Variant745985fcaa73daf68dd7c9985793a54cf858b2bc31c9840fa8601b2bf3754b7d.lean/declarations/map-le-gfp--4ce3c6c95442a34b16e4f35d.md) | 107 | `result-track:4ce3c6c95442a34b16e4f35d6d7048d38f45eda914d4c11af43892e6f3457a1b` |
| 18 | `theorem` | [gfp_le_map](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/FixedPoints/Variant745985fcaa73daf68dd7c9985793a54cf858b2bc31c9840fa8601b2bf3754b7d.lean/declarations/gfp-le-map--02397431ec236847483d0fea.md) | 110 | `result-track:02397431ec236847483d0feae2bd1b13ce07bd5c36ff99df821217edb7bc2645` |
| 19 | `theorem` | [isGreatest_gfp_le](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/FixedPoints/Variant745985fcaa73daf68dd7c9985793a54cf858b2bc31c9840fa8601b2bf3754b7d.lean/declarations/isgreatest-gfp-le--8ce273b810e605a54d0cee7f.md) | 113 | `result-track:8ce273b810e605a54d0cee7f870ea91eba5deb7da2baed9f21f32450ef2f18f8` |
| 20 | `theorem` | [isGreatest_gfp](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/FixedPoints/Variant745985fcaa73daf68dd7c9985793a54cf858b2bc31c9840fa8601b2bf3754b7d.lean/declarations/isgreatest-gfp--9bfc9012c238446a6aa9a7ed.md) | 116 | `result-track:9bfc9012c238446a6aa9a7ed4c42145288a6f81e616adc50b66e20a9d05a7387` |
| 21 | `theorem` | [gfp_induction](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/FixedPoints/Variant745985fcaa73daf68dd7c9985793a54cf858b2bc31c9840fa8601b2bf3754b7d.lean/declarations/gfp-induction--6027d2a52ffaad7535e9b18e.md) | 119 | `result-track:6027d2a52ffaad7535e9b18e8251b223b79cde187b7d63f2fd2da4d586732eaa` |
| 22 | `theorem` | [map_lfp_comp](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/FixedPoints/Variant745985fcaa73daf68dd7c9985793a54cf858b2bc31c9840fa8601b2bf3754b7d.lean/declarations/map-lfp-comp--bd60aee72ecdc7b057a345f8.md) | 130 | `result-track:bd60aee72ecdc7b057a345f86484276dec15d41720826c6335d07412266f27d2` |
| 23 | `theorem` | [map_gfp_comp](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/FixedPoints/Variant745985fcaa73daf68dd7c9985793a54cf858b2bc31c9840fa8601b2bf3754b7d.lean/declarations/map-gfp-comp--39b69d1a7046acc026c32500.md) | 134 | `result-track:39b69d1a7046acc026c325007b2a66fe43048736c4403efeec0c38b4f57932a7` |
| 24 | `theorem` | [lfp_lfp](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/FixedPoints/Variant745985fcaa73daf68dd7c9985793a54cf858b2bc31c9840fa8601b2bf3754b7d.lean/declarations/lfp-lfp--dfa50bbc23689224170abd6d.md) | 138 | `result-track:dfa50bbc23689224170abd6d0f4dbc00e1d2ee2d6ce9d5fa4442665960e9e0d7` |
| 25 | `theorem` | [gfp_gfp](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/FixedPoints/Variant745985fcaa73daf68dd7c9985793a54cf858b2bc31c9840fa8601b2bf3754b7d.lean/declarations/gfp-gfp--f66ed43a6086a40973c2c5ef.md) | 148 | `result-track:f66ed43a6086a40973c2c5eff32baab2bf2b1356153bdc32ac755e1e0b64c165` |
| 26 | `theorem` | [gfp_const_inf_le](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/FixedPoints/Variant745985fcaa73daf68dd7c9985793a54cf858b2bc31c9840fa8601b2bf3754b7d.lean/declarations/gfp-const-inf-le--e861d6e6fe6ca6a410dc831b.md) | 157 | `result-track:e861d6e6fe6ca6a410dc831bb902f95140d62926b8223f8d1ee14166a589434b` |
| 27 | `def` | [prevFixed](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/FixedPoints/Variant745985fcaa73daf68dd7c9985793a54cf858b2bc31c9840fa8601b2bf3754b7d.lean/declarations/prevfixed--fd589486c0271f550fd5c8da.md) | 163 | `declaration-track:fd589486c0271f550fd5c8da1907c54d6c37a801c137b80ae2c313990446f847` |
| 28 | `def` | [nextFixed](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/FixedPoints/Variant745985fcaa73daf68dd7c9985793a54cf858b2bc31c9840fa8601b2bf3754b7d.lean/declarations/nextfixed--ca98170d0d7cd3b67698bc97.md) | 174 | `declaration-track:ca98170d0d7cd3b67698bc974f466c8a052c2ef16efa9cd5fc9df9691d1467be` |
| 29 | `theorem` | [prevFixed_le](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/FixedPoints/Variant745985fcaa73daf68dd7c9985793a54cf858b2bc31c9840fa8601b2bf3754b7d.lean/declarations/prevfixed-le--6b894ed10b808ec4b4e3edbf.md) | 177 | `result-track:6b894ed10b808ec4b4e3edbf1057d0cd36ec54a79429bfe1cd5fe904adc47b88` |
| 30 | `theorem` | [le_nextFixed](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/FixedPoints/Variant745985fcaa73daf68dd7c9985793a54cf858b2bc31c9840fa8601b2bf3754b7d.lean/declarations/le-nextfixed--ac6408b1bd18dd44c56a2449.md) | 180 | `result-track:ac6408b1bd18dd44c56a244947391168861aef2bcc39ed331131fad6c2a80416` |
| 31 | `theorem` | [nextFixed_le](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/FixedPoints/Variant745985fcaa73daf68dd7c9985793a54cf858b2bc31c9840fa8601b2bf3754b7d.lean/declarations/nextfixed-le--1034c51fc52781bca33ca5fa.md) | 183 | `result-track:1034c51fc52781bca33ca5fa6848ba2beef0939547daadce81f4877f4cfcd5fd` |
| 32 | `theorem` | [nextFixed_le_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/FixedPoints/Variant745985fcaa73daf68dd7c9985793a54cf858b2bc31c9840fa8601b2bf3754b7d.lean/declarations/nextfixed-le-iff--7cf95691385689741b40d8ce.md) | 188 | `result-track:7cf95691385689741b40d8cecf52b87688af1fedec3bac58fbce34ba6a0fa76d` |
| 33 | `theorem` | [le_prevFixed_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/FixedPoints/Variant745985fcaa73daf68dd7c9985793a54cf858b2bc31c9840fa8601b2bf3754b7d.lean/declarations/le-prevfixed-iff--2cca238700b08eba8ab13819.md) | 193 | `result-track:2cca238700b08eba8ab1381977fe82473bf053faac76382acd564d20bda38023` |
| 34 | `theorem` | [le_prevFixed](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/FixedPoints/Variant745985fcaa73daf68dd7c9985793a54cf858b2bc31c9840fa8601b2bf3754b7d.lean/declarations/le-prevfixed--ae70cb300758385082f34d73.md) | 197 | `result-track:ae70cb300758385082f34d730b57f30ca6b2e1526651e3aec556feccefc235f2` |
| 35 | `theorem` | [le_map_sup_fixedPoints](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/FixedPoints/Variant745985fcaa73daf68dd7c9985793a54cf858b2bc31c9840fa8601b2bf3754b7d.lean/declarations/le-map-sup-fixedpoints--a96b55af70ee907282c0bfbe.md) | 201 | `result-track:a96b55af70ee907282c0bfbead3c7f63692848b49bf0eb43535549646b4f5fb9` |
| 36 | `theorem` | [map_inf_fixedPoints_le](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/FixedPoints/Variant745985fcaa73daf68dd7c9985793a54cf858b2bc31c9840fa8601b2bf3754b7d.lean/declarations/map-inf-fixedpoints-le--6c370f44039bd176cded2654.md) | 207 | `result-track:6c370f44039bd176cded265478464c498d2ed4bcc016aeca307222fc96aa690b` |
| 37 | `theorem` | [le_map_sSup_subset_fixedPoints](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/FixedPoints/Variant745985fcaa73daf68dd7c9985793a54cf858b2bc31c9840fa8601b2bf3754b7d.lean/declarations/le-map-ssup-subset-fixedpoints--caaf1069fe803fb1ef879e39.md) | 210 | `result-track:caaf1069fe803fb1ef879e398fca73f92c5cc5d4d74630c0e7ec5fbc53f46f16` |
| 38 | `theorem` | [map_sInf_subset_fixedPoints_le](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/FixedPoints/Variant745985fcaa73daf68dd7c9985793a54cf858b2bc31c9840fa8601b2bf3754b7d.lean/declarations/map-sinf-subset-fixedpoints-le--4e92899beeebff1d9284a3df.md) | 214 | `result-track:4e92899beeebff1d9284a3df711ee06143221f2df17b629b59d7faf2395e61dd` |
| 39 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/FixedPoints/Variant745985fcaa73daf68dd7c9985793a54cf858b2bc31c9840fa8601b2bf3754b7d.lean/declarations/instance--2b2cb307825f57a1bd00fa13.md) | 228 | `declaration-track:2b2cb307825f57a1bd00fa1367b7bbb2804ba63e172f55b39a25b7bda6d6bffd` |
| 40 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/FixedPoints/Variant745985fcaa73daf68dd7c9985793a54cf858b2bc31c9840fa8601b2bf3754b7d.lean/declarations/instance--2a5217fefb08fa03ce8b96cc.md) | 235 | `declaration-track:2a5217fefb08fa03ce8b96cc4de68cf54c0b2a59fa87047a0b1c9b24988a0d63` |
| 41 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/FixedPoints/Variant745985fcaa73daf68dd7c9985793a54cf858b2bc31c9840fa8601b2bf3754b7d.lean/declarations/instance--ee7bb81fdccd3fc8ba4a8d90.md) | 239 | `declaration-track:ee7bb81fdccd3fc8ba4a8d90fad308e3e233784e1b51f060f5cb9727beeea5d6` |
| 42 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/FixedPoints/Variant745985fcaa73daf68dd7c9985793a54cf858b2bc31c9840fa8601b2bf3754b7d.lean/declarations/instance--fec442428e570f9ef4989a14.md) | 249 | `declaration-track:fec442428e570f9ef4989a14b146eac316563de249842093bd0da9031b48b886` |
| 43 | `instance` | [completeLattice](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/FixedPoints/Variant745985fcaa73daf68dd7c9985793a54cf858b2bc31c9840fa8601b2bf3754b7d.lean/declarations/completelattice--cc4f2edbdc717abce0ebadbf.md) | 259 | `declaration-track:cc4f2edbdc717abce0ebadbf35ca96e6a2cd16ff407543d4716644d4d18b3cb0` |
| 44 | `theorem` | [lfp_eq_sSup_iterate](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/FixedPoints/Variant745985fcaa73daf68dd7c9985793a54cf858b2bc31c9840fa8601b2bf3754b7d.lean/declarations/lfp-eq-ssup-iterate--7333c2d739a0e2dcad151830.md) | 273 | `result-track:7333c2d739a0e2dcad15183074a30c54a2c1210564302b2ddc061d7decae6465` |
| 45 | `theorem` | [gfp_eq_sInf_iterate](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/FixedPoints/Variant745985fcaa73daf68dd7c9985793a54cf858b2bc31c9840fa8601b2bf3754b7d.lean/declarations/gfp-eq-sinf-iterate--5d8a09ac9e3b48b9295b4d53.md) | 283 | `result-track:5d8a09ac9e3b48b9295b4d536a26873003a7b42cc435c8ea8fea313450e9c0c6` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
