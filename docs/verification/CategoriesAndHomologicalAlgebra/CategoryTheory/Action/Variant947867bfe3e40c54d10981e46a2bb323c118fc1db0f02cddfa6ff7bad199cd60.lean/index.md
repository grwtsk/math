# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Action.Variant947867bfe3e40c54d10981e46a2bb323c118fc1db0f02cddfa6ff7bad199cd60

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d1256e38481751f0370168c13936877c24cb9761",
  "lexical_observation_count": 28,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Action/Variant947867bfe3e40c54d10981e46a2bb323c118fc1db0f02cddfa6ff7bad199cd60.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Action/Variant947867bfe3e40c54d10981e46a2bb323c118fc1db0f02cddfa6ff7bad199cd60.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Action/Variant947867bfe3e40c54d10981e46a2bb323c118fc1db0f02cddfa6ff7bad199cd60.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d1256e38481751f0370168c13936877c24cb9761`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Action/Variant947867bfe3e40c54d10981e46a2bb323c118fc1db0f02cddfa6ff7bad199cd60.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Action/Variant947867bfe3e40c54d10981e46a2bb323c118fc1db0f02cddfa6ff7bad199cd60.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Elements` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.IsConnected` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.SingleObj` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.GroupAction.Quotient` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.SemidirectProduct` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [actionAsFunctor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Action/Variant947867bfe3e40c54d10981e46a2bb323c118fc1db0f02cddfa6ff7bad199cd60.lean/declarations/actionasfunctor--63a1ffefdba61b91ed9cf397.md) | 43 | `declaration-track:63a1ffefdba61b91ed9cf3974f344eb45e3cbb34e168f9aa7fc23918331b32d8` |
| 2 | `def` | [ActionCategory](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Action/Variant947867bfe3e40c54d10981e46a2bb323c118fc1db0f02cddfa6ff7bad199cd60.lean/declarations/actioncategory--46ed772c994ccc872d937089.md) | 52 | `declaration-track:46ed772c994ccc872d93708944c02efe55a66e5ac9a53915028a45bfd2a556d3` |
| 3 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Action/Variant947867bfe3e40c54d10981e46a2bb323c118fc1db0f02cddfa6ff7bad199cd60.lean/declarations/instance--714c05d9d6e6caa44557db64.md) | 55 | `declaration-track:714c05d9d6e6caa44557db644df8c97793448e117960c82134dea4b612fed541` |
| 4 | `def` | [π](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Action/Variant947867bfe3e40c54d10981e46a2bb323c118fc1db0f02cddfa6ff7bad199cd60.lean/declarations/anonymous--5f5db21becc0eb80220f8670.md) | 63 | `declaration-track:5f5db21becc0eb80220f8670f79294734dcd67950b15ff2e55e1b082aa5cafce` |
| 5 | `theorem` | [π_map](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Action/Variant947867bfe3e40c54d10981e46a2bb323c118fc1db0f02cddfa6ff7bad199cd60.lean/declarations/map--eea7eb0b26d9b4a971bb1d76.md) | 67 | `result-track:eea7eb0b26d9b4a971bb1d766936b3c8ad778d1aea100a4a84eeaf1c178737e2` |
| 6 | `theorem` | [π_obj](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Action/Variant947867bfe3e40c54d10981e46a2bb323c118fc1db0f02cddfa6ff7bad199cd60.lean/declarations/obj--d7886b4c587bbb0d33d375c8.md) | 71 | `result-track:d7886b4c587bbb0d33d375c8b0eda1d19cd2aae83e5d556d874f791f7faca77d` |
| 7 | `def` | [back](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Action/Variant947867bfe3e40c54d10981e46a2bb323c118fc1db0f02cddfa6ff7bad199cd60.lean/declarations/back--a80bf61f3046e5e3e2cb2d3f.md) | 78 | `declaration-track:a80bf61f3046e5e3e2cb2d3fea78007f9b08bb2e01ea3307642050bb6109315f` |
| 8 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Action/Variant947867bfe3e40c54d10981e46a2bb323c118fc1db0f02cddfa6ff7bad199cd60.lean/declarations/instance--30c72a0ffe55e30c103d970e.md) | 80 | `declaration-track:30c72a0ffe55e30c103d970ea67eeb7cacb8ce669d0a2232daceb970b5624d6d` |
| 9 | `theorem` | [coe_back](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Action/Variant947867bfe3e40c54d10981e46a2bb323c118fc1db0f02cddfa6ff7bad199cd60.lean/declarations/coe-back--0241ef9f2781e4940b73f991.md) | 84 | `result-track:0241ef9f2781e4940b73f9918cb572f15813c1c5bdc41d44dfd0400cb08e7d07` |
| 10 | `theorem` | [back_coe](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Action/Variant947867bfe3e40c54d10981e46a2bb323c118fc1db0f02cddfa6ff7bad199cd60.lean/declarations/back-coe--97c756a67ee2e1ddb83c1254.md) | 88 | `result-track:97c756a67ee2e1ddb83c1254c9d04b9731c4f7c8ebdb579adac55903e86dc488` |
| 11 | `def` | [objEquiv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Action/Variant947867bfe3e40c54d10981e46a2bb323c118fc1db0f02cddfa6ff7bad199cd60.lean/declarations/objequiv--6a55b6e9383cc2bd5547304b.md) | 93 | `declaration-track:6a55b6e9383cc2bd5547304bbadbc89685be23a11f08fe9a9e8bba5c09b301eb` |
| 12 | `theorem` | [hom_as_subtype](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Action/Variant947867bfe3e40c54d10981e46a2bb323c118fc1db0f02cddfa6ff7bad199cd60.lean/declarations/hom-as-subtype--faf34ea78c9ee703e8bb6ea5.md) | 99 | `result-track:faf34ea78c9ee703e8bb6ea51b8ec72168dfce2cf282e46c548b0baecc56065d` |
| 13 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Action/Variant947867bfe3e40c54d10981e46a2bb323c118fc1db0f02cddfa6ff7bad199cd60.lean/declarations/instance--80527feb87f8bac93e9843b2.md) | 102 | `declaration-track:80527feb87f8bac93e9843b27ee6c4bf91823e7a5354445929510cc27b34f03f` |
| 14 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Action/Variant947867bfe3e40c54d10981e46a2bb323c118fc1db0f02cddfa6ff7bad199cd60.lean/declarations/instance--b76cea2eceecbc1bd2b622a6.md) | 105 | `declaration-track:b76cea2eceecbc1bd2b622a674ea728fe5d2ddc9a5beb27937adf12d63f74153` |
| 15 | `def` | [stabilizerIsoEnd](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Action/Variant947867bfe3e40c54d10981e46a2bb323c118fc1db0f02cddfa6ff7bad199cd60.lean/declarations/stabilizerisoend--a399654d099a80110b63978c.md) | 112 | `declaration-track:a399654d099a80110b63978cc76f6ee9d6a7e2538b301341ec20cb6906358da7` |
| 16 | `theorem` | [stabilizerIsoEnd_apply](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Action/Variant947867bfe3e40c54d10981e46a2bb323c118fc1db0f02cddfa6ff7bad199cd60.lean/declarations/stabilizerisoend-apply--aaf762f78b62bfa1b7f77b79.md) | 116 | `result-track:aaf762f78b62bfa1b7f77b794cd78bb5c800f19eab27890d4a0cf48e8b9fd6cb` |
| 17 | `theorem` | [stabilizerIsoEnd_symm_apply](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Action/Variant947867bfe3e40c54d10981e46a2bb323c118fc1db0f02cddfa6ff7bad199cd60.lean/declarations/stabilizerisoend-symm-apply--56df75e36425b12fe6bb7c2a.md) | 121 | `result-track:56df75e36425b12fe6bb7c2a069b344f3c12cb34835ffe88a0c06eb9f3afb823` |
| 18 | `theorem` | [id_val](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Action/Variant947867bfe3e40c54d10981e46a2bb323c118fc1db0f02cddfa6ff7bad199cd60.lean/declarations/id-val--117791f8e6c9a883190648cb.md) | 127 | `result-track:117791f8e6c9a883190648cb71ecc4b1691ead802ea4567b2576a59268af5afc` |
| 19 | `theorem` | [comp_val](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Action/Variant947867bfe3e40c54d10981e46a2bb323c118fc1db0f02cddfa6ff7bad199cd60.lean/declarations/comp-val--1911e479e91ffb89f4cfef5f.md) | 131 | `result-track:1911e479e91ffb89f4cfef5f627b1b54c68734ebf7ad58a6b68417695911aa56` |
| 20 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Action/Variant947867bfe3e40c54d10981e46a2bb323c118fc1db0f02cddfa6ff7bad199cd60.lean/declarations/instance--a430eb76ee29662da30b9dea.md) | 135 | `declaration-track:a430eb76ee29662da30b9dea88f6127ad65eec76f0c9ca1f208ce0d196084d4a` |
| 21 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Action/Variant947867bfe3e40c54d10981e46a2bb323c118fc1db0f02cddfa6ff7bad199cd60.lean/declarations/instance--67b6bf5b5518f99861dc65d6.md) | 144 | `declaration-track:67b6bf5b5518f99861dc65d651e2fd1fe6bafa949e7372c571f885a6590c1cbb` |
| 22 | `def` | [endMulEquivSubgroup](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Action/Variant947867bfe3e40c54d10981e46a2bb323c118fc1db0f02cddfa6ff7bad199cd60.lean/declarations/endmulequivsubgroup--e59cb56facbdd70c97df7cea.md) | 148 | `declaration-track:e59cb56facbdd70c97df7cead9169e8bb148b354c611020cf788fa0901fc9d72` |
| 23 | `def` | [homOfPair](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Action/Variant947867bfe3e40c54d10981e46a2bb323c118fc1db0f02cddfa6ff7bad199cd60.lean/declarations/homofpair--3c7253841d9da88214b2f635.md) | 153 | `declaration-track:3c7253841d9da88214b2f63506d1828ca0709298f21567353e7614fccc674b53` |
| 24 | `theorem` | [homOfPair.val](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Action/Variant947867bfe3e40c54d10981e46a2bb323c118fc1db0f02cddfa6ff7bad199cd60.lean/declarations/homofpair-val--db6f7b824bb39fc29059f1b6.md) | 157 | `result-track:db6f7b824bb39fc29059f1b6de36393d34842c526f892c888c7f12aa231058a9` |
| 25 | `def` | [cases](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Action/Variant947867bfe3e40c54d10981e46a2bb323c118fc1db0f02cddfa6ff7bad199cd60.lean/declarations/cases--338ae12783f22845d4ea842a.md) | 161 | `declaration-track:338ae12783f22845d4ea842a52cbf63495ff99a83255adc3bfe2bbff1bbbec21` |
| 26 | `lemma` | [cases'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Action/Variant947867bfe3e40c54d10981e46a2bb323c118fc1db0f02cddfa6ff7bad199cd60.lean/declarations/cases--98380c1ad1924ccd2048c311.md) | 171 | `result-track:98380c1ad1924ccd2048c311014f1ae9718ed9de94467d98ae59a57517573990` |
| 27 | `def` | [curry](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Action/Variant947867bfe3e40c54d10981e46a2bb323c118fc1db0f02cddfa6ff7bad199cd60.lean/declarations/curry--3473eb66f92b398cf26e62c0.md) | 182 | `declaration-track:3473eb66f92b398cf26e62c044f26d444ff73696cf439c82e6ef6c8f9db49c34` |
| 28 | `def` | [uncurry](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Action/Variant947867bfe3e40c54d10981e46a2bb323c118fc1db0f02cddfa6ff7bad199cd60.lean/declarations/uncurry--9657e1ee70ac9794d5c54b98.md) | 203 | `declaration-track:9657e1ee70ac9794d5c54b98c4b2a3bd454fe9e81741d4b7aad69b5604f77170` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
