# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.HomologicalAlgebra.InjectiveResolution.Variant363ad724b9add54bda1898a6a8bdce35b4a501800f391318e0d0fe3a0f447711

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1cf6bd7ccde0865f7108ecfa0d1d99b8a01a9dca",
  "lexical_observation_count": 27,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/InjectiveResolution/Variant363ad724b9add54bda1898a6a8bdce35b4a501800f391318e0d0fe3a0f447711.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/InjectiveResolution/Variant363ad724b9add54bda1898a6a8bdce35b4a501800f391318e0d0fe3a0f447711.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/InjectiveResolution/Variant363ad724b9add54bda1898a6a8bdce35b4a501800f391318e0d0fe3a0f447711.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1cf6bd7ccde0865f7108ecfa0d1d99b8a01a9dca`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/InjectiveResolution/Variant363ad724b9add54bda1898a6a8bdce35b4a501800f391318e0d0fe3a0f447711.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/InjectiveResolution/Variant363ad724b9add54bda1898a6a8bdce35b4a501800f391318e0d0fe3a0f447711.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Homology.QuasiIso` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Preadditive.InjectiveResolution` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Homology.HomotopyCategory` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [descFZero](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/InjectiveResolution/Variant363ad724b9add54bda1898a6a8bdce35b4a501800f391318e0d0fe3a0f447711.lean/declarations/descfzero--6e188a5b5305457251a444ab.md) | 54 | `declaration-track:6e188a5b5305457251a444ab942e6b085ca80b98cb6306b9bca404fc45ee6af1` |
| 2 | `def` | [descFOne](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/InjectiveResolution/Variant363ad724b9add54bda1898a6a8bdce35b4a501800f391318e0d0fe3a0f447711.lean/declarations/descfone--75a581a065ac33d1b1c04470.md) | 66 | `declaration-track:75a581a065ac33d1b1c04470d24110a33fdae2403659e3fb125ee3c298e9aea8` |
| 3 | `theorem` | [descFOne_zero_comm](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/InjectiveResolution/Variant363ad724b9add54bda1898a6a8bdce35b4a501800f391318e0d0fe3a0f447711.lean/declarations/descfone-zero-comm--7d12e7d0c5fda17185bedbca.md) | 73 | `result-track:7d12e7d0c5fda17185bedbcadddf623f59b56af201492c0ba2da9aede79b8ac1` |
| 4 | `def` | [descFSucc](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/InjectiveResolution/Variant363ad724b9add54bda1898a6a8bdce35b4a501800f391318e0d0fe3a0f447711.lean/declarations/descfsucc--798f833666f90b183fdc9bec.md) | 80 | `declaration-track:798f833666f90b183fdc9becb3b91937eea5b30937fa357fd5fb72a191057c12` |
| 5 | `def` | [desc](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/InjectiveResolution/Variant363ad724b9add54bda1898a6a8bdce35b4a501800f391318e0d0fe3a0f447711.lean/declarations/desc--855d9a1cbdd117713679e5c3.md) | 92 | `declaration-track:855d9a1cbdd117713679e5c31b16c1370986cbb5d643aeb569f69728cab02cd9` |
| 6 | `theorem` | [desc_commutes](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/InjectiveResolution/Variant363ad724b9add54bda1898a6a8bdce35b4a501800f391318e0d0fe3a0f447711.lean/declarations/desc-commutes--280fe79a77d322b248704986.md) | 100 | `result-track:280fe79a77d322b248704986fd36e69477006960ef0c89aa110dd64848ec5f31` |
| 7 | `def` | [descHomotopyZeroZero](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/InjectiveResolution/Variant363ad724b9add54bda1898a6a8bdce35b4a501800f391318e0d0fe3a0f447711.lean/declarations/deschomotopyzerozero--e9b4197d8a0c1cdd67331f71.md) | 108 | `declaration-track:e9b4197d8a0c1cdd67331f7101beafcefa27a5901ff63dd07709313ce52fce6b` |
| 8 | `def` | [descHomotopyZeroOne](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/InjectiveResolution/Variant363ad724b9add54bda1898a6a8bdce35b4a501800f391318e0d0fe3a0f447711.lean/declarations/deschomotopyzeroone--b9a31ff53dd14d87d6b6453c.md) | 115 | `declaration-track:b9a31ff53dd14d87d6b6453cd9a70d592aab5ceebf08772567c77a07872a0cd1` |
| 9 | `def` | [descHomotopyZeroSucc](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/InjectiveResolution/Variant363ad724b9add54bda1898a6a8bdce35b4a501800f391318e0d0fe3a0f447711.lean/declarations/deschomotopyzerosucc--ec89ddf44c0798fd1ed8569f.md) | 124 | `declaration-track:ec89ddf44c0798fd1ed8569f4cc654b40bfb7ed97499f9a755c790bedd92e2fc` |
| 10 | `def` | [descHomotopyZero](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/InjectiveResolution/Variant363ad724b9add54bda1898a6a8bdce35b4a501800f391318e0d0fe3a0f447711.lean/declarations/deschomotopyzero--4d37f6a7347aa7f5ea3ae36f.md) | 139 | `declaration-track:4d37f6a7347aa7f5ea3ae36f30078321c4505326a516c172da278836565506d3` |
| 11 | `def` | [descHomotopy](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/InjectiveResolution/Variant363ad724b9add54bda1898a6a8bdce35b4a501800f391318e0d0fe3a0f447711.lean/declarations/deschomotopy--227fb7d79261410afee0e93a.md) | 147 | `declaration-track:227fb7d79261410afee0e93a93ea3cee4dec80c1f73037ff6d90a7e4e7cd4c5a` |
| 12 | `def` | [descIdHomotopy](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/InjectiveResolution/Variant363ad724b9add54bda1898a6a8bdce35b4a501800f391318e0d0fe3a0f447711.lean/declarations/descidhomotopy--8a8a17d5ca40496004031aba.md) | 154 | `declaration-track:8a8a17d5ca40496004031abad2d92da2399ced63228423873a1a453d8eb4e9be` |
| 13 | `def` | [descCompHomotopy](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/InjectiveResolution/Variant363ad724b9add54bda1898a6a8bdce35b4a501800f391318e0d0fe3a0f447711.lean/declarations/desccomphomotopy--b41e1394b95b8fd03a3c0182.md) | 160 | `declaration-track:b41e1394b95b8fd03a3c018294bcdd8234917ed3fa33107ec6fb8b4255945812` |
| 14 | `def` | [homotopyEquiv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/InjectiveResolution/Variant363ad724b9add54bda1898a6a8bdce35b4a501800f391318e0d0fe3a0f447711.lean/declarations/homotopyequiv--10d12a8553f0bf987187bdaf.md) | 168 | `declaration-track:10d12a8553f0bf987187bdaf8a7ddadf9a818d7596533d152cb65c75bb2c5aea` |
| 15 | `theorem` | [homotopyEquiv_hom_ι](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/InjectiveResolution/Variant363ad724b9add54bda1898a6a8bdce35b4a501800f391318e0d0fe3a0f447711.lean/declarations/homotopyequiv-hom--fbdf6a7185523f10cb57ad46.md) | 179 | `result-track:fbdf6a7185523f10cb57ad468010e69a99fe8a338ccde3ec4a3bdd27d6a3c5ef` |
| 16 | `theorem` | [homotopyEquiv_inv_ι](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/InjectiveResolution/Variant363ad724b9add54bda1898a6a8bdce35b4a501800f391318e0d0fe3a0f447711.lean/declarations/homotopyequiv-inv--12476f911e1ba920dbd58803.md) | 184 | `result-track:12476f911e1ba920dbd588035125059d274b865263916a3aa85dfbfa76506b42` |
| 17 | `abbrev` | [injectiveResolution](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/InjectiveResolution/Variant363ad724b9add54bda1898a6a8bdce35b4a501800f391318e0d0fe3a0f447711.lean/declarations/injectiveresolution--d67447815fc351b2bcc15318.md) | 197 | `declaration-track:d67447815fc351b2bcc153185a96ef825130c30a9668d2b04f592ae5363d1625` |
| 18 | `abbrev` | [injectiveResolution.ι](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/InjectiveResolution/Variant363ad724b9add54bda1898a6a8bdce35b4a501800f391318e0d0fe3a0f447711.lean/declarations/injectiveresolution--36fbc3c1208d3ae73cee5650.md) | 203 | `declaration-track:36fbc3c1208d3ae73cee5650ec0260000c6605ac2a5a7daf71f4dfc6c4fa05a6` |
| 19 | `abbrev` | [injectiveResolution.desc](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/InjectiveResolution/Variant363ad724b9add54bda1898a6a8bdce35b4a501800f391318e0d0fe3a0f447711.lean/declarations/injectiveresolution-desc--7a31e9293842ceb2ab64be63.md) | 210 | `declaration-track:7a31e9293842ceb2ab64be63f64e67310264f4bff303c664b5a8e185e65ad701` |
| 20 | `def` | [injectiveResolutions](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/InjectiveResolution/Variant363ad724b9add54bda1898a6a8bdce35b4a501800f391318e0d0fe3a0f447711.lean/declarations/injectiveresolutions--ca9f9e2f48116e043fcb5f81.md) | 222 | `declaration-track:ca9f9e2f48116e043fcb5f81d0536c120a676a87bc8917175ae5091e9b70b787` |
| 21 | `theorem` | [exact_f_d](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/InjectiveResolution/Variant363ad724b9add54bda1898a6a8bdce35b4a501800f391318e0d0fe3a0f447711.lean/declarations/exact-f-d--e2f0206b7cb9bb347f31f547.md) | 241 | `result-track:e2f0206b7cb9bb347f31f547de279684ad5657166b983e02bcdad339f3f9d120` |
| 22 | `def` | [ofCocomplex](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/InjectiveResolution/Variant363ad724b9add54bda1898a6a8bdce35b4a501800f391318e0d0fe3a0f447711.lean/declarations/ofcocomplex--77615a5dc43bd3e3b9d30543.md) | 264 | `declaration-track:77615a5dc43bd3e3b9d30543b32320454c775dc2bf91456ae4df1cee8bec3a9c` |
| 23 | `theorem` | [ofCocomplex_sq_01_comm](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/InjectiveResolution/Variant363ad724b9add54bda1898a6a8bdce35b4a501800f391318e0d0fe3a0f447711.lean/declarations/ofcocomplex-sq-01-comm--0aab3f8a3d61f2a3ea178dab.md) | 274 | `result-track:0aab3f8a3d61f2a3ea178dab45ff182d17c5647ec0af4039aff97bc708a2a426` |
| 24 | `theorem` | [exact_ofCocomplex](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/InjectiveResolution/Variant363ad724b9add54bda1898a6a8bdce35b4a501800f391318e0d0fe3a0f447711.lean/declarations/exact-ofcocomplex--2ef5a422b38b7d10b519bb6c.md) | 283 | `result-track:2ef5a422b38b7d10b519bb6c5758a1740a5537ccef64c133c5513ab64a70f0b5` |
| 25 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/InjectiveResolution/Variant363ad724b9add54bda1898a6a8bdce35b4a501800f391318e0d0fe3a0f447711.lean/declarations/instance--2610a2f9ec55f601449700b1.md) | 317 | `declaration-track:2610a2f9ec55f601449700b1d7aa02cee24f5ed7502e19e3e2f076616ce97a3e` |
| 26 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/InjectiveResolution/Variant363ad724b9add54bda1898a6a8bdce35b4a501800f391318e0d0fe3a0f447711.lean/declarations/instance--a58163f4c937f56096b8d232.md) | 319 | `declaration-track:a58163f4c937f56096b8d2322fa08757c7540ca8f1dc7d368844e49f19a6da86` |
| 27 | `def` | [HomologicalComplex.Hom.fromSingle₀InjectiveResolution](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/InjectiveResolution/Variant363ad724b9add54bda1898a6a8bdce35b4a501800f391318e0d0fe3a0f447711.lean/declarations/homologicalcomplex-hom-fromsingle-injectiveresolution--1f6abc9f168877a4cd8b5733.md) | 331 | `declaration-track:1f6abc9f168877a4cd8b5733fadcbbaeb07f2c4e3c952f9f43464a2d3abbdcd8` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
