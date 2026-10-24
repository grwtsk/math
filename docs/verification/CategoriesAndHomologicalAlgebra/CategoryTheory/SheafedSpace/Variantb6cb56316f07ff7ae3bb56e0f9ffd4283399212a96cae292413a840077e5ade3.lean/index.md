# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.SheafedSpace.Variantb6cb56316f07ff7ae3bb56e0f9ffd4283399212a96cae292413a840077e5ade3

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "caadf5af7b1b46d3c98431dd1585bb0224fca987",
  "lexical_observation_count": 40,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/SheafedSpace/Variantb6cb56316f07ff7ae3bb56e0f9ffd4283399212a96cae292413a840077e5ade3.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SheafedSpace/Variantb6cb56316f07ff7ae3bb56e0f9ffd4283399212a96cae292413a840077e5ade3.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SheafedSpace/Variantb6cb56316f07ff7ae3bb56e0f9ffd4283399212a96cae292413a840077e5ade3.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `caadf5af7b1b46d3c98431dd1585bb0224fca987`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/SheafedSpace/Variantb6cb56316f07ff7ae3bb56e0f9ffd4283399212a96cae292413a840077e5ade3.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/SheafedSpace/Variantb6cb56316f07ff7ae3bb56e0f9ffd4283399212a96cae292413a840077e5ade3.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Geometry.RingedSpace.PresheafedSpace.HasColimits` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Geometry.RingedSpace.Stalks` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Sheaves.Functors` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [SheafedSpace](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SheafedSpace/Variantb6cb56316f07ff7ae3bb56e0f9ffd4283399212a96cae292413a840077e5ade3.lean/declarations/sheafedspace--b1f24a6cd151fdf9a57dc002.md) | 38 | `declaration-track:b1f24a6cd151fdf9a57dc0023b48b44832a37db4363e5da05bbe8b72626434d3` |
| 2 | `instance` | [coeCarrier](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SheafedSpace/Variantb6cb56316f07ff7ae3bb56e0f9ffd4283399212a96cae292413a840077e5ade3.lean/declarations/coecarrier--448b4ffeb37a2eda7c432ec3.md) | 47 | `declaration-track:448b4ffeb37a2eda7c432ec3799317bffabd41c2c3f867fbf998226780503793` |
| 3 | `instance` | [coeSort](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SheafedSpace/Variantb6cb56316f07ff7ae3bb56e0f9ffd4283399212a96cae292413a840077e5ade3.lean/declarations/coesort--c79e57227e95c5dbb7b859ee.md) | 49 | `declaration-track:c79e57227e95c5dbb7b859ee13e7ea78860b8c60efde583f1720fb08e7f09403` |
| 4 | `def` | [sheaf](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SheafedSpace/Variantb6cb56316f07ff7ae3bb56e0f9ffd4283399212a96cae292413a840077e5ade3.lean/declarations/sheaf--4ca6682860de69abb3a7e49d.md) | 53 | `declaration-track:4ca6682860de69abb3a7e49d50c3a46b8549a44857d5a984a1cc478693a263df` |
| 5 | `theorem` | [mk_coe](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SheafedSpace/Variantb6cb56316f07ff7ae3bb56e0f9ffd4283399212a96cae292413a840077e5ade3.lean/declarations/mk-coe--58f5c0376b726a1225736648.md) | 63 | `result-track:58f5c0376b726a1225736648b6557191028c92170b70aa04624c954427004c9d` |
| 6 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SheafedSpace/Variantb6cb56316f07ff7ae3bb56e0f9ffd4283399212a96cae292413a840077e5ade3.lean/declarations/instance--79ceacf57b6a0904b7c4f302.md) | 69 | `declaration-track:79ceacf57b6a0904b7c4f302b5008e4322febee14b15e94e483ac7e9dca95820` |
| 7 | `def` | [unit](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SheafedSpace/Variantb6cb56316f07ff7ae3bb56e0f9ffd4283399212a96cae292413a840077e5ade3.lean/declarations/unit--a1aad02e6f366f595299dd44.md) | 73 | `declaration-track:a1aad02e6f366f595299dd44a8e9e93557173f7a8126455c9512c42a4305714c` |
| 8 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SheafedSpace/Variantb6cb56316f07ff7ae3bb56e0f9ffd4283399212a96cae292413a840077e5ade3.lean/declarations/instance--934ae032db9f3945059c8d93.md) | 76 | `declaration-track:934ae032db9f3945059c8d93af5f9675f8938cf017586246705b33775ccd2f85` |
| 9 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SheafedSpace/Variantb6cb56316f07ff7ae3bb56e0f9ffd4283399212a96cae292413a840077e5ade3.lean/declarations/instance--74f22e352e4f8a0f3349b20f.md) | 79 | `declaration-track:74f22e352e4f8a0f3349b20fd655d6bf16ea664b50a62109cf5bdb5db75b80a1` |
| 10 | `theorem` | [ext](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SheafedSpace/Variantb6cb56316f07ff7ae3bb56e0f9ffd4283399212a96cae292413a840077e5ade3.lean/declarations/ext--c1bca25ad4fb573dddb9c05c.md) | 84 | `result-track:c1bca25ad4fb573dddb9c05c4086353e641762aa47c769d381ad310acfe86133` |
| 11 | `def` | [isoMk](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SheafedSpace/Variantb6cb56316f07ff7ae3bb56e0f9ffd4283399212a96cae292413a840077e5ade3.lean/declarations/isomk--9a2ecffd0bfcd095bf821461.md) | 90 | `declaration-track:9a2ecffd0bfcd095bf821461eedaac29bde1cb42eb9ce5b54c803f9d1869e98d` |
| 12 | `def` | [forgetToPresheafedSpace](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SheafedSpace/Variantb6cb56316f07ff7ae3bb56e0f9ffd4283399212a96cae292413a840077e5ade3.lean/declarations/forgettopresheafedspace--065caa334877b8bd02b018e5.md) | 98 | `declaration-track:065caa334877b8bd02b018e500d8472654e7e9a492c460485e137054d3ddb689` |
| 13 | `instance` | [forgetToPresheafedSpace_full](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SheafedSpace/Variantb6cb56316f07ff7ae3bb56e0f9ffd4283399212a96cae292413a840077e5ade3.lean/declarations/forgettopresheafedspace-full--134d42fb5cb2512393ac8230.md) | 103 | `declaration-track:134d42fb5cb2512393ac823005be9f167fb065c42f8f0412d92070547c41c712` |
| 14 | `instance` | [forgetToPresheafedSpace_faithful](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SheafedSpace/Variantb6cb56316f07ff7ae3bb56e0f9ffd4283399212a96cae292413a840077e5ade3.lean/declarations/forgettopresheafedspace-faithful--2e503ccfb7b4f4ec0263bd9b.md) | 106 | `declaration-track:2e503ccfb7b4f4ec0263bd9b6dde4ba2f8eab5c72e734b7bc6f02544afc50a24` |
| 15 | `instance` | [is_presheafedSpace_iso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SheafedSpace/Variantb6cb56316f07ff7ae3bb56e0f9ffd4283399212a96cae292413a840077e5ade3.lean/declarations/is-presheafedspace-iso--c69220c3f95bed111f503d06.md) | 108 | `declaration-track:c69220c3f95bed111f503d068741afaf4ab77bac2eeb1122bcdc94071b608a48` |
| 16 | `theorem` | [id_base](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SheafedSpace/Variantb6cb56316f07ff7ae3bb56e0f9ffd4283399212a96cae292413a840077e5ade3.lean/declarations/id-base--b8b7e535f61e671e7a5be5e5.md) | 117 | `result-track:b8b7e535f61e671e7a5be5e50f0da6e7361d1842b5795f56de1de277fa75c323` |
| 17 | `theorem` | [id_c](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SheafedSpace/Variantb6cb56316f07ff7ae3bb56e0f9ffd4283399212a96cae292413a840077e5ade3.lean/declarations/id-c--a8fb87fe7ede675a0aaa4d66.md) | 120 | `result-track:a8fb87fe7ede675a0aaa4d66f1f56066d9a887d561793e98f6bcc92a2825ca5e` |
| 18 | `theorem` | [id_c_app](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SheafedSpace/Variantb6cb56316f07ff7ae3bb56e0f9ffd4283399212a96cae292413a840077e5ade3.lean/declarations/id-c-app--40b7668d1736b509c4131f95.md) | 125 | `result-track:40b7668d1736b509c4131f952a6db0eacb19b10f920f76eb0f6f910bef7571b3` |
| 19 | `theorem` | [comp_base](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SheafedSpace/Variantb6cb56316f07ff7ae3bb56e0f9ffd4283399212a96cae292413a840077e5ade3.lean/declarations/comp-base--0e63e2178312ec89c18780f8.md) | 129 | `result-track:0e63e2178312ec89c18780f8cbf377aa40f8cdea5302d96ef637df0f63660d46` |
| 20 | `theorem` | [comp_c_app](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SheafedSpace/Variantb6cb56316f07ff7ae3bb56e0f9ffd4283399212a96cae292413a840077e5ade3.lean/declarations/comp-c-app--e4121bec9199f0796a99b9b3.md) | 134 | `result-track:e4121bec9199f0796a99b9b36baad4ac1c2f75f89ae9c24fb2c123de6f4639ff` |
| 21 | `theorem` | [comp_c_app'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SheafedSpace/Variantb6cb56316f07ff7ae3bb56e0f9ffd4283399212a96cae292413a840077e5ade3.lean/declarations/comp-c-app--a1afdfa29724882a40b9a9cf.md) | 138 | `result-track:a1afdfa29724882a40b9a9cf9d769132192784e51a25ac257b000d49ca6adb3b` |
| 22 | `theorem` | [congr_app](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SheafedSpace/Variantb6cb56316f07ff7ae3bb56e0f9ffd4283399212a96cae292413a840077e5ade3.lean/declarations/congr-app--f13ec46245ca491bc4282b30.md) | 142 | `result-track:f13ec46245ca491bc4282b30435f8a57222e078a5f88b59fc29b6cf74481a618` |
| 23 | `def` | [forget](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SheafedSpace/Variantb6cb56316f07ff7ae3bb56e0f9ffd4283399212a96cae292413a840077e5ade3.lean/declarations/forget--72165de3eb82e79d399300cc.md) | 149 | `declaration-track:72165de3eb82e79d399300cca86b3b097fbe6c1fe85477dec397d438b181fdfb` |
| 24 | `def` | [restrict](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SheafedSpace/Variantb6cb56316f07ff7ae3bb56e0f9ffd4283399212a96cae292413a840077e5ade3.lean/declarations/restrict--f6480e0998be3518a76090ca.md) | 159 | `declaration-track:f6480e0998be3518a76090ca91e0936d386244e7c97cdcbcaf54e74674710ba2` |
| 25 | `def` | [ofRestrict](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SheafedSpace/Variantb6cb56316f07ff7ae3bb56e0f9ffd4283399212a96cae292413a840077e5ade3.lean/declarations/ofrestrict--2c87588b7f34884cbcde9a92.md) | 166 | `declaration-track:2c87588b7f34884cbcde9a920c34108655c64e7949e3b073bca522c9a14b6fbe` |
| 26 | `def` | [restrictTopIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SheafedSpace/Variantb6cb56316f07ff7ae3bb56e0f9ffd4283399212a96cae292413a840077e5ade3.lean/declarations/restricttopiso--97c6e3864a6dc482f8c37246.md) | 172 | `declaration-track:97c6e3864a6dc482f8c372465ecd26d23bfc7cebc66febc7ce12f8593440cb66` |
| 27 | `def` | [Γ](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SheafedSpace/Variantb6cb56316f07ff7ae3bb56e0f9ffd4283399212a96cae292413a840077e5ade3.lean/declarations/anonymous--91f67f2a5fbb13e7275dd06d.md) | 177 | `declaration-track:91f67f2a5fbb13e7275dd06da35d38d08e08825a936a1a192b865dc07fa8109b` |
| 28 | `theorem` | [Γ_def](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SheafedSpace/Variantb6cb56316f07ff7ae3bb56e0f9ffd4283399212a96cae292413a840077e5ade3.lean/declarations/def--2ef1522e4b7738f3ba2cc0c6.md) | 180 | `result-track:2ef1522e4b7738f3ba2cc0c6fbcbed066b6556107a2c804ace7627ebfefe46e9` |
| 29 | `theorem` | [Γ_obj](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SheafedSpace/Variantb6cb56316f07ff7ae3bb56e0f9ffd4283399212a96cae292413a840077e5ade3.lean/declarations/obj--c83873b0c225b4a424cc6884.md) | 184 | `result-track:c83873b0c225b4a424cc68846c135ae7854f87da5e5e7606987be2bc25cd9ec3` |
| 30 | `theorem` | [Γ_obj_op](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SheafedSpace/Variantb6cb56316f07ff7ae3bb56e0f9ffd4283399212a96cae292413a840077e5ade3.lean/declarations/obj-op--588bd483f6e2debba9da5319.md) | 187 | `result-track:588bd483f6e2debba9da531909148b3ef7b73aeec9d4a4a5ce26284ad7cbe640` |
| 31 | `theorem` | [Γ_map](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SheafedSpace/Variantb6cb56316f07ff7ae3bb56e0f9ffd4283399212a96cae292413a840077e5ade3.lean/declarations/map--967cce666b50ba2d2a94f831.md) | 191 | `result-track:967cce666b50ba2d2a94f83166e33eac6e25e669cfd3339d1d4fc03a5462fdf9` |
| 32 | `theorem` | [Γ_map_op](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SheafedSpace/Variantb6cb56316f07ff7ae3bb56e0f9ffd4283399212a96cae292413a840077e5ade3.lean/declarations/map-op--48acaacf4d19ea359f6f645b.md) | 194 | `result-track:48acaacf4d19ea359f6f645bcd221eca75a1cdc8abc993fce0dc9c53393f6028` |
| 33 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SheafedSpace/Variantb6cb56316f07ff7ae3bb56e0f9ffd4283399212a96cae292413a840077e5ade3.lean/declarations/instance--f4af6c5ec3fb4335b0ecbaa5.md) | 197 | `declaration-track:f4af6c5ec3fb4335b0ecbaa56d907ddb881b1a44cb96c4cbcf1b0073da96717f` |
| 34 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SheafedSpace/Variantb6cb56316f07ff7ae3bb56e0f9ffd4283399212a96cae292413a840077e5ade3.lean/declarations/instance--46fc5f6811a7786c78087a48.md) | 205 | `declaration-track:46fc5f6811a7786c78087a482fc9a8bd408d02ff302e50137cac370ec1a41c3f` |
| 35 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SheafedSpace/Variantb6cb56316f07ff7ae3bb56e0f9ffd4283399212a96cae292413a840077e5ade3.lean/declarations/instance--e32ab9c5f82da59dc8468c85.md) | 208 | `declaration-track:e32ab9c5f82da59dc8468c85ad19f586744cdb7738943a91b75ce8d1cf36dfff` |
| 36 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SheafedSpace/Variantb6cb56316f07ff7ae3bb56e0f9ffd4283399212a96cae292413a840077e5ade3.lean/declarations/instance--fdae3afbaabc7d47a2c11287.md) | 212 | `declaration-track:fdae3afbaabc7d47a2c11287ef1524cbe9837ff7b545cd8e207df6bbd34a32e9` |
| 37 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SheafedSpace/Variantb6cb56316f07ff7ae3bb56e0f9ffd4283399212a96cae292413a840077e5ade3.lean/declarations/instance--5b0f51a14370b95b174893fd.md) | 214 | `declaration-track:5b0f51a14370b95b174893fd1c3262c8ebee2b4cbece99bde20c7aa025172128` |
| 38 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SheafedSpace/Variantb6cb56316f07ff7ae3bb56e0f9ffd4283399212a96cae292413a840077e5ade3.lean/declarations/instance--fdc1f9052751a4e085f2fad4.md) | 218 | `declaration-track:fdc1f9052751a4e085f2fad43f8ed9927ac44611754ce3269f71b172d48104da` |
| 39 | `lemma` | [hom_stalk_ext](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SheafedSpace/Variantb6cb56316f07ff7ae3bb56e0f9ffd4283399212a96cae292413a840077e5ade3.lean/declarations/hom-stalk-ext--ff5f144a98ca957cc13a230f.md) | 230 | `result-track:ff5f144a98ca957cc13a230f6a0a7ce9dfda5e6e5b68827120a2b15fcddf7b10` |
| 40 | `lemma` | [mono_of_base_injective_of_stalk_epi](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SheafedSpace/Variantb6cb56316f07ff7ae3bb56e0f9ffd4283399212a96cae292413a840077e5ade3.lean/declarations/mono-of-base-injective-of-stalk-epi--8e4188afe52a9d1dfda9cee9.md) | 245 | `result-track:8e4188afe52a9d1dfda9cee97fd26d50bedb40dc4eade3b73273bc6ea9d8260d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
