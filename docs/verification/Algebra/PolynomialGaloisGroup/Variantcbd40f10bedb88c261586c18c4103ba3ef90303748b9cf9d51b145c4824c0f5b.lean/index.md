# Verification target: GRWTSK.Algebra.PolynomialGaloisGroup.Variantcbd40f10bedb88c261586c18c4103ba3ef90303748b9cf9d51b145c4824c0f5b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f1d2db0af996bbe778cfb849e716d28a3efcc890",
  "lexical_observation_count": 42,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/PolynomialGaloisGroup/Variantcbd40f10bedb88c261586c18c4103ba3ef90303748b9cf9d51b145c4824c0f5b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/PolynomialGaloisGroup/Variantcbd40f10bedb88c261586c18c4103ba3ef90303748b9cf9d51b145c4824c0f5b.lean/index.md) · [Full source](../../../../mathematics/Algebra/PolynomialGaloisGroup/Variantcbd40f10bedb88c261586c18c4103ba3ef90303748b9cf9d51b145c4824c0f5b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f1d2db0af996bbe778cfb849e716d28a3efcc890`.

Source path: `GRWTSK/Algebra/PolynomialGaloisGroup/Variantcbd40f10bedb88c261586c18c4103ba3ef90303748b9cf9d51b145c4824c0f5b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/PolynomialGaloisGroup/Variantcbd40f10bedb88c261586c18c4103ba3ef90303748b9cf9d51b145c4824c0f5b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.FieldTheory.Galois.Basic` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [Gal](../../../../mathematics/Algebra/PolynomialGaloisGroup/Variantcbd40f10bedb88c261586c18c4103ba3ef90303748b9cf9d51b145c4824c0f5b.lean/declarations/gal--8c6cbd1e1fc7ce48e849dc62.md) | 59 | `declaration-track:8c6cbd1e1fc7ce48e849dc621bea2443a2f0d9036c7d017a010223cfbb5d580f` |
| 2 | `instance` | [instGroup](../../../../mathematics/Algebra/PolynomialGaloisGroup/Variantcbd40f10bedb88c261586c18c4103ba3ef90303748b9cf9d51b145c4824c0f5b.lean/declarations/instgroup--4499f4b3e26462d888e62e6c.md) | 66 | `declaration-track:4499f4b3e26462d888e62e6c61bbc4d3bb22b244f4f34183296c11cdf0aca98a` |
| 3 | `instance` | [instFintype](../../../../mathematics/Algebra/PolynomialGaloisGroup/Variantcbd40f10bedb88c261586c18c4103ba3ef90303748b9cf9d51b145c4824c0f5b.lean/declarations/instfintype--cf12e33edf2dfb48555c60e7.md) | 69 | `declaration-track:cf12e33edf2dfb48555c60e754f974c4998abd5debfdc156e23c2e2b48f13a48` |
| 4 | `instance` | [(anonymous)](../../../../mathematics/Algebra/PolynomialGaloisGroup/Variantcbd40f10bedb88c261586c18c4103ba3ef90303748b9cf9d51b145c4824c0f5b.lean/declarations/instance--b2587cae7cf2dcbb646a2242.md) | 72 | `declaration-track:b2587cae7cf2dcbb646a224277093cb629fe4de8a4c43323e32f89c627edc11f` |
| 5 | `instance` | [(anonymous)](../../../../mathematics/Algebra/PolynomialGaloisGroup/Variantcbd40f10bedb88c261586c18c4103ba3ef90303748b9cf9d51b145c4824c0f5b.lean/declarations/instance--f5423e6c842f6020b0eb668b.md) | 75 | `declaration-track:f5423e6c842f6020b0eb668b75dd6858d35a6f10ea64bd47c946c26a4a3572eb` |
| 6 | `instance` | [applyMulSemiringAction](../../../../mathematics/Algebra/PolynomialGaloisGroup/Variantcbd40f10bedb88c261586c18c4103ba3ef90303748b9cf9d51b145c4824c0f5b.lean/declarations/applymulsemiringaction--6e9093a7c30b33f077f3e95c.md) | 78 | `declaration-track:6e9093a7c30b33f077f3e95c4499cf103d0eec74653acdae6ddf90e00eea47aa` |
| 7 | `theorem` | [ext](../../../../mathematics/Algebra/PolynomialGaloisGroup/Variantcbd40f10bedb88c261586c18c4103ba3ef90303748b9cf9d51b145c4824c0f5b.lean/declarations/ext--209ffb9b97448afa3c669649.md) | 82 | `result-track:209ffb9b97448afa3c6696499bac6942284195e0ef7fbcf57b66d980806cbe9f` |
| 8 | `def` | [uniqueGalOfSplits](../../../../mathematics/Algebra/PolynomialGaloisGroup/Variantcbd40f10bedb88c261586c18c4103ba3ef90303748b9cf9d51b145c4824c0f5b.lean/declarations/uniquegalofsplits--b02bd988d130913b87826efd.md) | 90 | `declaration-track:b02bd988d130913b87826efdaa1c08140b2fcaf838ae660ba9f8eec2bad049ab` |
| 9 | `instance` | [(anonymous)](../../../../mathematics/Algebra/PolynomialGaloisGroup/Variantcbd40f10bedb88c261586c18c4103ba3ef90303748b9cf9d51b145c4824c0f5b.lean/declarations/instance--1415bfbb15216c00bbb68e55.md) | 99 | `declaration-track:1415bfbb15216c00bbb68e55b36c011f4d6b12501b72c8f28511d4fa691c388a` |
| 10 | `instance` | [uniqueGalZero](../../../../mathematics/Algebra/PolynomialGaloisGroup/Variantcbd40f10bedb88c261586c18c4103ba3ef90303748b9cf9d51b145c4824c0f5b.lean/declarations/uniquegalzero--34cf591fd5594b2838551adf.md) | 102 | `declaration-track:34cf591fd5594b2838551adf17149cc653a7ad69b4eb2d05a66e6f6a2d48b293` |
| 11 | `instance` | [uniqueGalOne](../../../../mathematics/Algebra/PolynomialGaloisGroup/Variantcbd40f10bedb88c261586c18c4103ba3ef90303748b9cf9d51b145c4824c0f5b.lean/declarations/uniquegalone--862b64429bc70bab6c02cf87.md) | 105 | `declaration-track:862b64429bc70bab6c02cf872766ffc7512fac9b6e335ef54dbaf60f9e651a1a` |
| 12 | `instance` | [uniqueGalC](../../../../mathematics/Algebra/PolynomialGaloisGroup/Variantcbd40f10bedb88c261586c18c4103ba3ef90303748b9cf9d51b145c4824c0f5b.lean/declarations/uniquegalc--747714c643a357347c726107.md) | 108 | `declaration-track:747714c643a357347c72610751aae725734df083aedb3362282255d23fbf711a` |
| 13 | `instance` | [uniqueGalX](../../../../mathematics/Algebra/PolynomialGaloisGroup/Variantcbd40f10bedb88c261586c18c4103ba3ef90303748b9cf9d51b145c4824c0f5b.lean/declarations/uniquegalx--bcb7c81f81b403b6283e10f6.md) | 111 | `declaration-track:bcb7c81f81b403b6283e10f63932feaa9c3adf2dbd8f971e9f1742e6f1514d95` |
| 14 | `instance` | [uniqueGalXSubC](../../../../mathematics/Algebra/PolynomialGaloisGroup/Variantcbd40f10bedb88c261586c18c4103ba3ef90303748b9cf9d51b145c4824c0f5b.lean/declarations/uniquegalxsubc--bae1bd02ceccc5ca07a29a47.md) | 114 | `declaration-track:bae1bd02ceccc5ca07a29a4772e1e3773bcfdf4c11bcdd28996fe8b801878079` |
| 15 | `instance` | [uniqueGalXPow](../../../../mathematics/Algebra/PolynomialGaloisGroup/Variantcbd40f10bedb88c261586c18c4103ba3ef90303748b9cf9d51b145c4824c0f5b.lean/declarations/uniquegalxpow--fbffbae08342aac54d447ac5.md) | 117 | `declaration-track:fbffbae08342aac54d447ac5cf0e12889cf7bc06d610109fa1a13845afa79471` |
| 16 | `instance` | [(anonymous)](../../../../mathematics/Algebra/PolynomialGaloisGroup/Variantcbd40f10bedb88c261586c18c4103ba3ef90303748b9cf9d51b145c4824c0f5b.lean/declarations/instance--e26bae2a6731abf1cf41c31d.md) | 120 | `declaration-track:e26bae2a6731abf1cf41c31dafc8e0f5999a5faf795c01bf4905b437df15bf0d` |
| 17 | `instance` | [(anonymous)](../../../../mathematics/Algebra/PolynomialGaloisGroup/Variantcbd40f10bedb88c261586c18c4103ba3ef90303748b9cf9d51b145c4824c0f5b.lean/declarations/instance--223ba85a7479b4445fb20e1b.md) | 123 | `declaration-track:223ba85a7479b4445fb20e1b7de518dec6726eaf0932889b6963fcff9238c704` |
| 18 | `def` | [restrict](../../../../mathematics/Algebra/PolynomialGaloisGroup/Variantcbd40f10bedb88c261586c18c4103ba3ef90303748b9cf9d51b145c4824c0f5b.lean/declarations/restrict--91b294d46d13fc434cc3a36f.md) | 134 | `declaration-track:91b294d46d13fc434cc3a36f23e8eef3320dbc38a7942afb2d04d04f5e78165c` |
| 19 | `theorem` | [restrict_surjective](../../../../mathematics/Algebra/PolynomialGaloisGroup/Variantcbd40f10bedb88c261586c18c4103ba3ef90303748b9cf9d51b145c4824c0f5b.lean/declarations/restrict-surjective--d15f85c461860b8b9746effd.md) | 137 | `result-track:d15f85c461860b8b9746effda58b3683fd6ac49b32ea9eed02f3a263c3c814e5` |
| 20 | `def` | [mapRoots](../../../../mathematics/Algebra/PolynomialGaloisGroup/Variantcbd40f10bedb88c261586c18c4103ba3ef90303748b9cf9d51b145c4824c0f5b.lean/declarations/maproots--3b0a53571d46b93e231c5de1.md) | 145 | `declaration-track:3b0a53571d46b93e231c5de1498fcff8a8db7fd558ab5c03ed7ffc30f2628f66` |
| 21 | `theorem` | [mapRoots_bijective](../../../../mathematics/Algebra/PolynomialGaloisGroup/Variantcbd40f10bedb88c261586c18c4103ba3ef90303748b9cf9d51b145c4824c0f5b.lean/declarations/maproots-bijective--6abf97605a33c723de0426f5.md) | 148 | `result-track:6abf97605a33c723de0426f52668802de2bd67a3c26eb61766200a9c66410dff` |
| 22 | `def` | [rootsEquivRoots](../../../../mathematics/Algebra/PolynomialGaloisGroup/Variantcbd40f10bedb88c261586c18c4103ba3ef90303748b9cf9d51b145c4824c0f5b.lean/declarations/rootsequivroots--69b9becd792b3ff18f08cd75.md) | 164 | `declaration-track:69b9becd792b3ff18f08cd758e84fcb5f444684d24b5c69b27fa560168637eba` |
| 23 | `instance` | [galActionAux](../../../../mathematics/Algebra/PolynomialGaloisGroup/Variantcbd40f10bedb88c261586c18c4103ba3ef90303748b9cf9d51b145c4824c0f5b.lean/declarations/galactionaux--f0fc4b72a6abc0f7a97ebce1.md) | 167 | `declaration-track:f0fc4b72a6abc0f7a97ebce1ea8acb42fbcbe7b26dc3ece77fab0d3c808fd8e5` |
| 24 | `instance` | [smul](../../../../mathematics/Algebra/PolynomialGaloisGroup/Variantcbd40f10bedb88c261586c18c4103ba3ef90303748b9cf9d51b145c4824c0f5b.lean/declarations/smul--7fc99193b73a01dc16f57140.md) | 172 | `declaration-track:7fc99193b73a01dc16f57140e76cfd4dd35117ce5150b3ca265653d08660f848` |
| 25 | `theorem` | [smul_def](../../../../mathematics/Algebra/PolynomialGaloisGroup/Variantcbd40f10bedb88c261586c18c4103ba3ef90303748b9cf9d51b145c4824c0f5b.lean/declarations/smul-def--0afd06b59547e01a33d2b47c.md) | 175 | `result-track:0afd06b59547e01a33d2b47cc3ec6349949ac4d5a1c8bfad8647e6f89217b078` |
| 26 | `instance` | [galAction](../../../../mathematics/Algebra/PolynomialGaloisGroup/Variantcbd40f10bedb88c261586c18c4103ba3ef90303748b9cf9d51b145c4824c0f5b.lean/declarations/galaction--6c8c17c34ae6fd6cf5d5f306.md) | 180 | `declaration-track:6c8c17c34ae6fd6cf5d5f30692508dc56807e3eb9e8910b9609dbc0e5aaaee1b` |
| 27 | `lemma` | [galAction_isPretransitive](../../../../mathematics/Algebra/PolynomialGaloisGroup/Variantcbd40f10bedb88c261586c18c4103ba3ef90303748b9cf9d51b145c4824c0f5b.lean/declarations/galaction-ispretransitive--b22df29ae34d62e7ec666df4.md) | 185 | `result-track:b22df29ae34d62e7ec666df423bcb305123f1b047cf2783413b8ff33f2e2d9ab` |
| 28 | `theorem` | [restrict_smul](../../../../mathematics/Algebra/PolynomialGaloisGroup/Variantcbd40f10bedb88c261586c18c4103ba3ef90303748b9cf9d51b145c4824c0f5b.lean/declarations/restrict-smul--2683f11184c5c7fc9e5985ae.md) | 197 | `result-track:2683f11184c5c7fc9e5985ae39fb90a071b72ef9c1ba67c455e2a89dfda4bc51` |
| 29 | `def` | [galActionHom](../../../../mathematics/Algebra/PolynomialGaloisGroup/Variantcbd40f10bedb88c261586c18c4103ba3ef90303748b9cf9d51b145c4824c0f5b.lean/declarations/galactionhom--ec78670137843303e9cc5a18.md) | 208 | `declaration-track:ec78670137843303e9cc5a18c93dc516c05c4913420ff4e46b427266e475054c` |
| 30 | `theorem` | [galActionHom_restrict](../../../../mathematics/Algebra/PolynomialGaloisGroup/Variantcbd40f10bedb88c261586c18c4103ba3ef90303748b9cf9d51b145c4824c0f5b.lean/declarations/galactionhom-restrict--a4e45008026a634d0b1eb080.md) | 211 | `result-track:a4e45008026a634d0b1eb080d6f07677d62052f8356d4455dd9711ff4549dd54` |
| 31 | `theorem` | [galActionHom_injective](../../../../mathematics/Algebra/PolynomialGaloisGroup/Variantcbd40f10bedb88c261586c18c4103ba3ef90303748b9cf9d51b145c4824c0f5b.lean/declarations/galactionhom-injective--ba329bf81911d5e91b75f4e1.md) | 216 | `result-track:ba329bf81911d5e91b75f4e1702fe487875cba5995e66a90b251bd7f87f93371` |
| 32 | `def` | [restrictDvd](../../../../mathematics/Algebra/PolynomialGaloisGroup/Variantcbd40f10bedb88c261586c18c4103ba3ef90303748b9cf9d51b145c4824c0f5b.lean/declarations/restrictdvd--12fa090870b59396f159b0d9.md) | 234 | `declaration-track:12fa090870b59396f159b0d9a0b8c120c422c7da262d93c7b06d688b7a8f7482` |
| 33 | `theorem` | [restrictDvd_def](../../../../mathematics/Algebra/PolynomialGaloisGroup/Variantcbd40f10bedb88c261586c18c4103ba3ef90303748b9cf9d51b145c4824c0f5b.lean/declarations/restrictdvd-def--beec36c0ba54c789e969e7cb.md) | 241 | `result-track:beec36c0ba54c789e969e7cb31614438d8973f5cf2c4c220dc1287027f40e257` |
| 34 | `theorem` | [restrictDvd_surjective](../../../../mathematics/Algebra/PolynomialGaloisGroup/Variantcbd40f10bedb88c261586c18c4103ba3ef90303748b9cf9d51b145c4824c0f5b.lean/declarations/restrictdvd-surjective--f4f8fc1bfd55b9ab49c36ef6.md) | 251 | `result-track:f4f8fc1bfd55b9ab49c36ef6e220f036e5c35acafb5eabf982dba97952cf36df` |
| 35 | `def` | [restrictProd](../../../../mathematics/Algebra/PolynomialGaloisGroup/Variantcbd40f10bedb88c261586c18c4103ba3ef90303748b9cf9d51b145c4824c0f5b.lean/declarations/restrictprod--017fcdc80da2906427484dd0.md) | 261 | `declaration-track:017fcdc80da2906427484dd0b2423273792a77e3a1208b5bc427a0905f3d714a` |
| 36 | `theorem` | [restrictProd_injective](../../../../mathematics/Algebra/PolynomialGaloisGroup/Variantcbd40f10bedb88c261586c18c4103ba3ef90303748b9cf9d51b145c4824c0f5b.lean/declarations/restrictprod-injective--7c169dbfab359e2fe781498e.md) | 265 | `result-track:7c169dbfab359e2fe781498ea3c362aac41470e0e1ae3c2f28b63d7ac602a731` |
| 37 | `theorem` | [mul_splits_in_splittingField_of_mul](../../../../mathematics/Algebra/PolynomialGaloisGroup/Variantcbd40f10bedb88c261586c18c4103ba3ef90303748b9cf9d51b145c4824c0f5b.lean/declarations/mul-splits-in-splittingfield-of-mul--7058082481483d896139005d.md) | 297 | `result-track:7058082481483d896139005de384cee73e53977e4de55cc15ef156930db8e2f5` |
| 38 | `theorem` | [splits_in_splittingField_of_comp](../../../../mathematics/Algebra/PolynomialGaloisGroup/Variantcbd40f10bedb88c261586c18c4103ba3ef90303748b9cf9d51b145c4824c0f5b.lean/declarations/splits-in-splittingfield-of-comp--94e7a5336b234ab62d140556.md) | 314 | `result-track:94e7a5336b234ab62d140556cebfb8258bdb660f22e8a00599571250862982f5` |
| 39 | `def` | [restrictComp](../../../../mathematics/Algebra/PolynomialGaloisGroup/Variantcbd40f10bedb88c261586c18c4103ba3ef90303748b9cf9d51b145c4824c0f5b.lean/declarations/restrictcomp--04b245753de5b76019c1d9ee.md) | 352 | `declaration-track:04b245753de5b76019c1d9ee2b3a684de180339232454cdbb15c777771b2ce24` |
| 40 | `theorem` | [restrictComp_surjective](../../../../mathematics/Algebra/PolynomialGaloisGroup/Variantcbd40f10bedb88c261586c18c4103ba3ef90303748b9cf9d51b145c4824c0f5b.lean/declarations/restrictcomp-surjective--65109cea6f00708fcc9f1822.md) | 357 | `result-track:65109cea6f00708fcc9f182284c071bf6a78b7d0c3da49ec6e4792666a96a264` |
| 41 | `theorem` | [card_of_separable](../../../../mathematics/Algebra/PolynomialGaloisGroup/Variantcbd40f10bedb88c261586c18c4103ba3ef90303748b9cf9d51b145c4824c0f5b.lean/declarations/card-of-separable--7d17e2a67c588ab5f670e535.md) | 369 | `result-track:7d17e2a67c588ab5f670e53572785a1d1f8055a4e312297734e56e85c1f989d7` |
| 42 | `theorem` | [prime_degree_dvd_card](../../../../mathematics/Algebra/PolynomialGaloisGroup/Variantcbd40f10bedb88c261586c18c4103ba3ef90303748b9cf9d51b145c4824c0f5b.lean/declarations/prime-degree-dvd-card--9dc44d0196fd0923e892c50a.md) | 373 | `result-track:9dc44d0196fd0923e892c50a8d956ecda8f8b5feb86366ac32fc37e88bd2340d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
