# Verification target: GRWTSK.Topology.GeneralTopology.Basic.Variant14e3a0136290798752e013bb05b4757dd7aaaa9799b17b2c115edadd68baa6f0

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d92d33a5ece91fed015b7c766248dd5f203ad2b8",
  "lexical_observation_count": 40,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Basic/Variant14e3a0136290798752e013bb05b4757dd7aaaa9799b17b2c115edadd68baa6f0.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant14e3a0136290798752e013bb05b4757dd7aaaa9799b17b2c115edadd68baa6f0.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant14e3a0136290798752e013bb05b4757dd7aaaa9799b17b2c115edadd68baa6f0.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d92d33a5ece91fed015b7c766248dd5f203ad2b8`.

Source path: `GRWTSK/Topology/GeneralTopology/Basic/Variant14e3a0136290798752e013bb05b4757dd7aaaa9799b17b2c115edadd68baa6f0.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Basic/Variant14e3a0136290798752e013bb05b4757dd7aaaa9799b17b2c115edadd68baa6f0.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Convex.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Convex.Hull` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Normed.Module.Basic` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Bornology.Absorbs` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [Balanced](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant14e3a0136290798752e013bb05b4757dd7aaaa9799b17b2c115edadd68baa6f0.lean/declarations/balanced--e9d15a4605b65426f677298b.md) | 65 | `declaration-track:e9d15a4605b65426f677298be80269739b014866e7a7834d2fd7bfce34275c20` |
| 2 | `lemma` | [absorbs_iff_norm](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant14e3a0136290798752e013bb05b4757dd7aaaa9799b17b2c115edadd68baa6f0.lean/declarations/absorbs-iff-norm--ac7dd683239d981f00edc2c6.md) | 68 | `result-track:ac7dd683239d981f00edc2c65c8784c4a9e74897792415472d2e807d0d5d4d1a` |
| 3 | `lemma` | [Absorbs.exists_pos](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant14e3a0136290798752e013bb05b4757dd7aaaa9799b17b2c115edadd68baa6f0.lean/declarations/absorbs-exists-pos--c6905d545756d296a1770080.md) | 73 | `result-track:c6905d545756d296a1770080af53e60e0d365890a18b662c81212dcbfbb5bbe7` |
| 4 | `theorem` | [balanced_iff_smul_mem](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant14e3a0136290798752e013bb05b4757dd7aaaa9799b17b2c115edadd68baa6f0.lean/declarations/balanced-iff-smul-mem--eb40d9e86a8f83b00ec61eac.md) | 77 | `result-track:eb40d9e86a8f83b00ec61eaca219322c6daad6fd40b92e7ad16d00b42fda0f8f` |
| 5 | `theorem` | [balanced_iff_closedBall_smul](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant14e3a0136290798752e013bb05b4757dd7aaaa9799b17b2c115edadd68baa6f0.lean/declarations/balanced-iff-closedball-smul--9a76ab2a01bfe6639fcdcffc.md) | 82 | `result-track:9a76ab2a01bfe6639fcdcffc43b6ebd363943134328eb155cf01ed0991453e28` |
| 6 | `theorem` | [balanced_empty](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant14e3a0136290798752e013bb05b4757dd7aaaa9799b17b2c115edadd68baa6f0.lean/declarations/balanced-empty--93c3ad1d099f3059bdad7095.md) | 86 | `result-track:93c3ad1d099f3059bdad7095321d15bfdcfae8ad33fd1659b5afd5c74824be89` |
| 7 | `theorem` | [balanced_univ](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant14e3a0136290798752e013bb05b4757dd7aaaa9799b17b2c115edadd68baa6f0.lean/declarations/balanced-univ--f9da97ba836def2f139fa409.md) | 89 | `result-track:f9da97ba836def2f139fa4096616f76989c22acb289f6a9c1d68cd589bd5f3dc` |
| 8 | `theorem` | [Balanced.union](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant14e3a0136290798752e013bb05b4757dd7aaaa9799b17b2c115edadd68baa6f0.lean/declarations/balanced-union--1634ac451c66b0c688399d0f.md) | 91 | `result-track:1634ac451c66b0c688399d0f3498923aaa2958ac3bf1d8a959f560afdfc3aad3` |
| 9 | `theorem` | [Balanced.inter](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant14e3a0136290798752e013bb05b4757dd7aaaa9799b17b2c115edadd68baa6f0.lean/declarations/balanced-inter--a1ae4bbf0447ed7e43a4724a.md) | 94 | `result-track:a1ae4bbf0447ed7e43a4724acf6240e4d22063b6aa546ef74e253a8e889fb9d3` |
| 10 | `theorem` | [balanced_iUnion](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant14e3a0136290798752e013bb05b4757dd7aaaa9799b17b2c115edadd68baa6f0.lean/declarations/balanced-iunion--454999329b1a6b862d469446.md) | 97 | `result-track:454999329b1a6b862d4694467ebb4688d6e705f69b88e7eb54f7b701dd88c556` |
| 11 | `theorem` | [balanced_iUnion₂](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant14e3a0136290798752e013bb05b4757dd7aaaa9799b17b2c115edadd68baa6f0.lean/declarations/balanced-iunion--579da22b36e809fa336ceb60.md) | 100 | `result-track:579da22b36e809fa336ceb6015abea29ec5e9c56f2c4173e9326cb5a039fdd83` |
| 12 | `theorem` | [Balanced.sInter](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant14e3a0136290798752e013bb05b4757dd7aaaa9799b17b2c115edadd68baa6f0.lean/declarations/balanced-sinter--271e64468cc42df19a2be6ea.md) | 104 | `result-track:271e64468cc42df19a2be6eaeb2c1a2a18d22b10db58b71dfc56d15297d954f3` |
| 13 | `theorem` | [balanced_iInter](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant14e3a0136290798752e013bb05b4757dd7aaaa9799b17b2c115edadd68baa6f0.lean/declarations/balanced-iinter--e2f47f64e9e2c1d471e8e35e.md) | 107 | `result-track:e2f47f64e9e2c1d471e8e35e49585f4bf0395cb8969b2083b5a6667bf874e916` |
| 14 | `theorem` | [balanced_iInter₂](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant14e3a0136290798752e013bb05b4757dd7aaaa9799b17b2c115edadd68baa6f0.lean/declarations/balanced-iinter--122d351a39760faf8d21430f.md) | 110 | `result-track:122d351a39760faf8d21430f9149a6de98af3ac2c813588bd576627d0a0c71fa` |
| 15 | `theorem` | [Balanced.mulActionHom_preimage](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant14e3a0136290798752e013bb05b4757dd7aaaa9799b17b2c115edadd68baa6f0.lean/declarations/balanced-mulactionhom-preimage--19945cbbb25f522ab0924166.md) | 114 | `result-track:19945cbbb25f522ab0924166e015d8b910dda88ac75efe95e3a98d5179f50fbc` |
| 16 | `theorem` | [Balanced.smul](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant14e3a0136290798752e013bb05b4757dd7aaaa9799b17b2c115edadd68baa6f0.lean/declarations/balanced-smul--713b6db51ccf10b79dac4350.md) | 121 | `result-track:713b6db51ccf10b79dac4350cca766b93ca61c483fb700d1c0e5fc5305ff6668` |
| 17 | `theorem` | [Balanced.neg](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant14e3a0136290798752e013bb05b4757dd7aaaa9799b17b2c115edadd68baa6f0.lean/declarations/balanced-neg--ab095b73d89cf93501fd1242.md) | 130 | `result-track:ab095b73d89cf93501fd124264ed1e86abf75ffd74232a462999e559d0ef954b` |
| 18 | `theorem` | [balanced_neg](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant14e3a0136290798752e013bb05b4757dd7aaaa9799b17b2c115edadd68baa6f0.lean/declarations/balanced-neg--183b0b00511f0a3c7fca69f6.md) | 134 | `result-track:183b0b00511f0a3c7fca69f6b3615bd96e43f842a5004ae5746b99c17ab86ec2` |
| 19 | `theorem` | [Balanced.neg_mem_iff](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant14e3a0136290798752e013bb05b4757dd7aaaa9799b17b2c115edadd68baa6f0.lean/declarations/balanced-neg-mem-iff--533420dd57e0afa975aa20a4.md) | 137 | `result-track:533420dd57e0afa975aa20a4a568183c86d25ff3aac961a924f5d656f3880c15` |
| 20 | `theorem` | [Balanced.neg_eq](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant14e3a0136290798752e013bb05b4757dd7aaaa9799b17b2c115edadd68baa6f0.lean/declarations/balanced-neg-eq--f1fa4328078efc5ad4da3e7e.md) | 141 | `result-track:f1fa4328078efc5ad4da3e7e803e382c234e1583e1d999f9b8a5fc6acd1791b1` |
| 21 | `theorem` | [Balanced.add](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant14e3a0136290798752e013bb05b4757dd7aaaa9799b17b2c115edadd68baa6f0.lean/declarations/balanced-add--9ecbd77995736ef44d8a9488.md) | 144 | `result-track:9ecbd77995736ef44d8a9488c8061e55706ca69903e50e2db12e8781bd4f418e` |
| 22 | `theorem` | [Balanced.sub](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant14e3a0136290798752e013bb05b4757dd7aaaa9799b17b2c115edadd68baa6f0.lean/declarations/balanced-sub--5711e70dcc62af5ca8ad7bb7.md) | 147 | `result-track:5711e70dcc62af5ca8ad7bb7febad6f361d4b9f6933437021067b98e49dd9d74` |
| 23 | `theorem` | [balanced_zero](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant14e3a0136290798752e013bb05b4757dd7aaaa9799b17b2c115edadd68baa6f0.lean/declarations/balanced-zero--c698dada9275af0276a2d51c.md) | 151 | `result-track:c698dada9275af0276a2d51c548d49dfcdf42c3612c25270e97bbcc5cd76977f` |
| 24 | `theorem` | [absorbs_iff_eventually_nhdsNE_zero](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant14e3a0136290798752e013bb05b4757dd7aaaa9799b17b2c115edadd68baa6f0.lean/declarations/absorbs-iff-eventually-nhdsne-zero--0a22515042cca37b6f3165b9.md) | 161 | `result-track:0a22515042cca37b6f3165b956a607e489db1406f70ee87be74231f9a86ebfaa` |
| 25 | `theorem` | [absorbent_iff_eventually_nhdsNE_zero](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant14e3a0136290798752e013bb05b4757dd7aaaa9799b17b2c115edadd68baa6f0.lean/declarations/absorbent-iff-eventually-nhdsne-zero--3ee2ef754f56d008db4178a9.md) | 173 | `result-track:3ee2ef754f56d008db4178a9abcf32c52f2b1c239f32b563c9f13f11d8e4a4ee` |
| 26 | `theorem` | [absorbs_iff_eventually_nhds_zero](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant14e3a0136290798752e013bb05b4757dd7aaaa9799b17b2c115edadd68baa6f0.lean/declarations/absorbs-iff-eventually-nhds-zero--7b6b580f37b446a61f4bd57b.md) | 185 | `result-track:7b6b580f37b446a61f4bd57b4097ccd0a995d1de5bac256cf8f6e15db92a27ef` |
| 27 | `theorem` | [Absorbs.eventually_nhds_zero](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant14e3a0136290798752e013bb05b4757dd7aaaa9799b17b2c115edadd68baa6f0.lean/declarations/absorbs-eventually-nhds-zero--900c12d80699c0bd822adf0a.md) | 192 | `result-track:900c12d80699c0bd822adf0a87a463b76d124e09ccacd4dea8725fe54409a5e1` |
| 28 | `theorem` | [Balanced.smul_mono](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant14e3a0136290798752e013bb05b4757dd7aaaa9799b17b2c115edadd68baa6f0.lean/declarations/balanced-smul-mono--a48e328a9fb204a20af3cd54.md) | 200 | `result-track:a48e328a9fb204a20af3cd546b1eb569df358ee2d49391d82f81b19973e1ba36` |
| 29 | `theorem` | [Balanced.smul_mem_mono](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant14e3a0136290798752e013bb05b4757dd7aaaa9799b17b2c115edadd68baa6f0.lean/declarations/balanced-smul-mem-mono--ff99e0e36462740a9a50108b.md) | 210 | `result-track:ff99e0e36462740a9a50108b923e3b744056e3cf87929c195041962880df8470` |
| 30 | `theorem` | [Balanced.subset_smul](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant14e3a0136290798752e013bb05b4757dd7aaaa9799b17b2c115edadd68baa6f0.lean/declarations/balanced-subset-smul--d954783f839e74ef6e6a7a20.md) | 221 | `result-track:d954783f839e74ef6e6a7a20850c1e02c4b30ff3ccad71f6a400321498c03e21` |
| 31 | `theorem` | [Balanced.smul_congr](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant14e3a0136290798752e013bb05b4757dd7aaaa9799b17b2c115edadd68baa6f0.lean/declarations/balanced-smul-congr--b13099e84c8e03f833379770.md) | 224 | `result-track:b13099e84c8e03f833379770d4ea740158ea2037c63da1bd38dbb43dc0b3be78` |
| 32 | `theorem` | [Balanced.smul_eq](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant14e3a0136290798752e013bb05b4757dd7aaaa9799b17b2c115edadd68baa6f0.lean/declarations/balanced-smul-eq--35b5f30211a0db83100832d8.md) | 227 | `result-track:35b5f30211a0db83100832d888597b93f74b129cc3c82c89702975b8948b0942` |
| 33 | `theorem` | [Balanced.absorbs_self](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant14e3a0136290798752e013bb05b4757dd7aaaa9799b17b2c115edadd68baa6f0.lean/declarations/balanced-absorbs-self--d16222f75dc4651c1a7085e8.md) | 231 | `result-track:d16222f75dc4651c1a7085e8ba71f6d4b4d66633352aae8e1e0ccdbb4cf557dd` |
| 34 | `theorem` | [Balanced.smul_mem_iff](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant14e3a0136290798752e013bb05b4757dd7aaaa9799b17b2c115edadd68baa6f0.lean/declarations/balanced-smul-mem-iff--5701cbe9b14c389369927dc4.md) | 240 | `result-track:5701cbe9b14c389369927dc4168a1f9adf0900581029427f0a3728c2f7e1f746` |
| 35 | `theorem` | [absorbent_nhds_zero](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant14e3a0136290798752e013bb05b4757dd7aaaa9799b17b2c115edadd68baa6f0.lean/declarations/absorbent-nhds-zero--43c47a4a6f6fbce591dfa60d.md) | 246 | `result-track:43c47a4a6f6fbce591dfa60d95b87b7ebfbde14dd81be303d7ed9cec625199d9` |
| 36 | `theorem` | [Balanced.zero_insert_interior](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant14e3a0136290798752e013bb05b4757dd7aaaa9799b17b2c115edadd68baa6f0.lean/declarations/balanced-zero-insert-interior--00579198eac56a1d6e2c91ce.md) | 251 | `result-track:00579198eac56a1d6e2c91cebb553c906957d9fbd1bb948c4dcace6ad897f27c` |
| 37 | `theorem` | [Balanced.interior](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant14e3a0136290798752e013bb05b4757dd7aaaa9799b17b2c115edadd68baa6f0.lean/declarations/balanced-interior--19dd13bd4b51e69e70be790b.md) | 262 | `result-track:19dd13bd4b51e69e70be790b405624e49609e72cc87180e62b31ec71964e51e4` |
| 38 | `theorem` | [Balanced.closure](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant14e3a0136290798752e013bb05b4757dd7aaaa9799b17b2c115edadd68baa6f0.lean/declarations/balanced-closure--b338a2832a59214fe0525a38.md) | 267 | `result-track:b338a2832a59214fe0525a3850f9e15efa755986e87859a3b86098301b1b7ef6` |
| 39 | `theorem` | [Balanced.convexHull](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant14e3a0136290798752e013bb05b4757dd7aaaa9799b17b2c115edadd68baa6f0.lean/declarations/balanced-convexhull--8b265fe6fdfb45e6f08d97bc.md) | 279 | `result-track:8b265fe6fdfb45e6f08d97bc09d653365ece53334c00e1462ccd89714e10a493` |
| 40 | `theorem` | [balanced_iff_neg_mem](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant14e3a0136290798752e013bb05b4757dd7aaaa9799b17b2c115edadd68baa6f0.lean/declarations/balanced-iff-neg-mem--0282707a2248bcf9ea90967b.md) | 294 | `result-track:0282707a2248bcf9ea90967bcefb839659a7ef6d80de3053a1b8a16f78ae6e54` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
