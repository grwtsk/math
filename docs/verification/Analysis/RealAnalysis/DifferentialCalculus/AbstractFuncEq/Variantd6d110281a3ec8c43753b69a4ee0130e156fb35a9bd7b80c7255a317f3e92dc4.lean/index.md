# Verification target: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.AbstractFuncEq.Variantd6d110281a3ec8c43753b69a4ee0130e156fb35a9bd7b80c7255a317f3e92dc4

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "786eaf38768954576399ea35b001bff35aa7138e",
  "lexical_observation_count": 37,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/AbstractFuncEq/Variantd6d110281a3ec8c43753b69a4ee0130e156fb35a9bd7b80c7255a317f3e92dc4.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/AbstractFuncEq/Variantd6d110281a3ec8c43753b69a4ee0130e156fb35a9bd7b80c7255a317f3e92dc4.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/AbstractFuncEq/Variantd6d110281a3ec8c43753b69a4ee0130e156fb35a9bd7b80c7255a317f3e92dc4.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `786eaf38768954576399ea35b001bff35aa7138e`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/AbstractFuncEq/Variantd6d110281a3ec8c43753b69a4ee0130e156fb35a9bd7b80c7255a317f3e92dc4.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/AbstractFuncEq/Variantd6d110281a3ec8c43753b69a4ee0130e156fb35a9bd7b80c7255a317f3e92dc4.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [WeakFEPair](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/AbstractFuncEq/Variantd6d110281a3ec8c43753b69a4ee0130e156fb35a9bd7b80c7255a317f3e92dc4.lean/declarations/weakfepair--dc994e0f3eeb91da94cae7f2.md) | 82 | `declaration-track:dc994e0f3eeb91da94cae7f2f44d984f37808f9da29fcca60b35a0bdb0b7f652` |
| 2 | `structure` | [IsStrongFEPair](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/AbstractFuncEq/Variantd6d110281a3ec8c43753b69a4ee0130e156fb35a9bd7b80c7255a317f3e92dc4.lean/declarations/isstrongfepair--d5162b43e30536cb8556abda.md) | 102 | `declaration-track:d5162b43e30536cb8556abdac87b73a9afe791d1709185bb3bb852b59896759a` |
| 3 | `lemma` | [WeakFEPair.h_feq'](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/AbstractFuncEq/Variantd6d110281a3ec8c43753b69a4ee0130e156fb35a9bd7b80c7255a317f3e92dc4.lean/declarations/weakfepair-h-feq--1a2e24c95ade6b2fe6ccb6ce.md) | 109 | `result-track:1a2e24c95ade6b2fe6ccb6ce21ccfb938611b366d08b30dd8c426f1dd3213bb0` |
| 4 | `def` | [WeakFEPair.symm](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/AbstractFuncEq/Variantd6d110281a3ec8c43753b69a4ee0130e156fb35a9bd7b80c7255a317f3e92dc4.lean/declarations/weakfepair-symm--2fa938298a64182840d1cc0c.md) | 118 | `declaration-track:2fa938298a64182840d1cc0c2c90eb1797b608d9444c008a6bc74a2cbd4192b5` |
| 5 | `lemma` | [isStrongFEPair_symm](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/AbstractFuncEq/Variantd6d110281a3ec8c43753b69a4ee0130e156fb35a9bd7b80c7255a317f3e92dc4.lean/declarations/isstrongfepair-symm--defe91f14ec67bb744446d88.md) | 133 | `result-track:defe91f14ec67bb744446d886fef76f04dda40370ddb52f38850cb3ae6dd6867` |
| 6 | `lemma` | [IsStrongFEPair.symm](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/AbstractFuncEq/Variantd6d110281a3ec8c43753b69a4ee0130e156fb35a9bd7b80c7255a317f3e92dc4.lean/declarations/isstrongfepair-symm--16a6d6b8f5a173a8937deff1.md) | 138 | `result-track:16a6d6b8f5a173a8937deff181134de21401d6fa325b4fbb87e8053bda4275da` |
| 7 | `lemma` | [hf_zero](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/AbstractFuncEq/Variantd6d110281a3ec8c43753b69a4ee0130e156fb35a9bd7b80c7255a317f3e92dc4.lean/declarations/hf-zero--3b9eb84d0503a5670ab7159f.md) | 152 | `result-track:3b9eb84d0503a5670ab7159f3756f87261ff5b490640ba7400e4f7dd8833c870` |
| 8 | `lemma` | [hf_zero'](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/AbstractFuncEq/Variantd6d110281a3ec8c43753b69a4ee0130e156fb35a9bd7b80c7255a317f3e92dc4.lean/declarations/hf-zero--14dccb97776857728a9e9a2f.md) | 174 | `result-track:14dccb97776857728a9e9a2fee5e3fb4326e927080348eddca478139b5066f47` |
| 9 | `theorem` | [functional_equation_aux](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/AbstractFuncEq/Variantd6d110281a3ec8c43753b69a4ee0130e156fb35a9bd7b80c7255a317f3e92dc4.lean/declarations/functional-equation-aux--3e2323b0084eed2d4220815a.md) | 186 | `result-track:3e2323b0084eed2d4220815ae1774d26e9693cde56ecc41712e4db62ec7b82b9` |
| 10 | `lemma` | [hf_top](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/AbstractFuncEq/Variantd6d110281a3ec8c43753b69a4ee0130e156fb35a9bd7b80c7255a317f3e92dc4.lean/declarations/hf-top--a0e8ff84b076ba8a39847e1e.md) | 215 | `result-track:a0e8ff84b076ba8a39847e1e642a995e5fbbfd09b20c87762abacc62564d6452` |
| 11 | `lemma` | [hf_zero](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/AbstractFuncEq/Variantd6d110281a3ec8c43753b69a4ee0130e156fb35a9bd7b80c7255a317f3e92dc4.lean/declarations/hf-zero--76d0cbc227dadff6b17f41f9.md) | 219 | `result-track:76d0cbc227dadff6b17f41f9b2adef423a555dd7264389b189bdcaf4299ecf3d` |
| 12 | `theorem` | [mellinConvergent](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/AbstractFuncEq/Variantd6d110281a3ec8c43753b69a4ee0130e156fb35a9bd7b80c7255a317f3e92dc4.lean/declarations/mellinconvergent--b1cf242a513f3dec09ce4a48.md) | 224 | `result-track:b1cf242a513f3dec09ce4a48cbee88085577cb85a26dbc332180f10f422af9c0` |
| 13 | `theorem` | [differentiable_mellin](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/AbstractFuncEq/Variantd6d110281a3ec8c43753b69a4ee0130e156fb35a9bd7b80c7255a317f3e92dc4.lean/declarations/differentiable-mellin--ca4107293a06d0d41990db5d.md) | 231 | `result-track:ca4107293a06d0d41990db5d930de16d948d3f0db83ed608387956f77782b8d3` |
| 14 | `def` | [f_modif](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/AbstractFuncEq/Variantd6d110281a3ec8c43753b69a4ee0130e156fb35a9bd7b80c7255a317f3e92dc4.lean/declarations/f-modif--ac3a26d63dd898540d22e12b.md) | 249 | `declaration-track:ac3a26d63dd898540d22e12be3ecb787da3cb80f04e106d34a455813c974221d` |
| 15 | `def` | [g_modif](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/AbstractFuncEq/Variantd6d110281a3ec8c43753b69a4ee0130e156fb35a9bd7b80c7255a317f3e92dc4.lean/declarations/g-modif--8878748136caa8ea62ecd11f.md) | 254 | `declaration-track:8878748136caa8ea62ecd11fae1dafab62b2b6eae786db092bd46aaac8297a2c` |
| 16 | `lemma` | [hf_modif_int](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/AbstractFuncEq/Variantd6d110281a3ec8c43753b69a4ee0130e156fb35a9bd7b80c7255a317f3e92dc4.lean/declarations/hf-modif-int--22abb75ae3a13516dd0b32f3.md) | 258 | `result-track:22abb75ae3a13516dd0b32f331c0a7b46760429e91055a5421dc19f5a719e7c2` |
| 17 | `lemma` | [hf_modif_FE](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/AbstractFuncEq/Variantd6d110281a3ec8c43753b69a4ee0130e156fb35a9bd7b80c7255a317f3e92dc4.lean/declarations/hf-modif-fe--8aae9f89803924d7cf6cecce.md) | 271 | `result-track:8aae9f89803924d7cf6cecce55bb81d492b3fff3b1ac9d81910d814e298f395b` |
| 18 | `lemma` | [hf_modif_top](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/AbstractFuncEq/Variantd6d110281a3ec8c43753b69a4ee0130e156fb35a9bd7b80c7255a317f3e92dc4.lean/declarations/hf-modif-top--a82d890b849efc11cf841d74.md) | 289 | `result-track:a82d890b849efc11cf841d74e10d74cf16b08379c5ea7aade169a5b757980dd0` |
| 19 | `def` | [toStrongFEPair](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/AbstractFuncEq/Variantd6d110281a3ec8c43753b69a4ee0130e156fb35a9bd7b80c7255a317f3e92dc4.lean/declarations/tostrongfepair--fad686e722bfc1c52b69fb1b.md) | 300 | `declaration-track:fad686e722bfc1c52b69fb1b7d0402e091070ea437a01fd9102df13184c7ae93` |
| 20 | `lemma` | [isStrongFEPair_toStrongFEPair](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/AbstractFuncEq/Variantd6d110281a3ec8c43753b69a4ee0130e156fb35a9bd7b80c7255a317f3e92dc4.lean/declarations/isstrongfepair-tostrongfepair--6b55bd08418ec77e50a87c3e.md) | 315 | `result-track:6b55bd08418ec77e50a87c3e5d8e733aafaa200a698c26b41b231d8eac2aa9ae` |
| 21 | `lemma` | [f_modif_aux1](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/AbstractFuncEq/Variantd6d110281a3ec8c43753b69a4ee0130e156fb35a9bd7b80c7255a317f3e92dc4.lean/declarations/f-modif-aux1--c60336f35f9f8b97454cdead.md) | 320 | `result-track:c60336f35f9f8b97454cdead26ac95dccb70277992a46a0e3afd01853e5de7a5` |
| 22 | `lemma` | [f_modif_aux2](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/AbstractFuncEq/Variantd6d110281a3ec8c43753b69a4ee0130e156fb35a9bd7b80c7255a317f3e92dc4.lean/declarations/f-modif-aux2--dbdde16fd63336243bdcf25c.md) | 336 | `result-track:dbdde16fd63336243bdcf25c981ea1c4b055a93de590604dd73b7c50a347cbd1` |
| 23 | `def` | [Λ₀](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/AbstractFuncEq/Variantd6d110281a3ec8c43753b69a4ee0130e156fb35a9bd7b80c7255a317f3e92dc4.lean/declarations/anonymous--631fa78325993367e90423ec.md) | 378 | `declaration-track:631fa78325993367e90423ec3166f5d066b1df22a99973b75ec99eb13babf3ed` |
| 24 | `def` | [Λ](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/AbstractFuncEq/Variantd6d110281a3ec8c43753b69a4ee0130e156fb35a9bd7b80c7255a317f3e92dc4.lean/declarations/anonymous--e2914d547658c1d9aa618690.md) | 381 | `declaration-track:e2914d547658c1d9aa6186901357ef34bcfb71541ff58b103cd22f6dded696d0` |
| 25 | `lemma` | [Λ₀_eq](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/AbstractFuncEq/Variantd6d110281a3ec8c43753b69a4ee0130e156fb35a9bd7b80c7255a317f3e92dc4.lean/declarations/eq--23ccbe7881b1d0fba59a1595.md) | 383 | `result-track:23ccbe7881b1d0fba59a159592fc347ce179e86551c696bdf01a44dbf4e821ba` |
| 26 | `lemma` | [symm_Λ₀_eq](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/AbstractFuncEq/Variantd6d110281a3ec8c43753b69a4ee0130e156fb35a9bd7b80c7255a317f3e92dc4.lean/declarations/symm-eq--33dbf3b0ad9201c3bda5831a.md) | 387 | `result-track:33dbf3b0ad9201c3bda5831aa1cf387bfdd15d6d3d57f0a7efd6b5f41274bb9a` |
| 27 | `theorem` | [differentiable_Λ₀](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/AbstractFuncEq/Variantd6d110281a3ec8c43753b69a4ee0130e156fb35a9bd7b80c7255a317f3e92dc4.lean/declarations/differentiable--5ce73d9e513db180febacad1.md) | 391 | `result-track:5ce73d9e513db180febacad1cdee84314c4939c1835bf5327ea86710cbd7de55` |
| 28 | `theorem` | [differentiableAt_Λ](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/AbstractFuncEq/Variantd6d110281a3ec8c43753b69a4ee0130e156fb35a9bd7b80c7255a317f3e92dc4.lean/declarations/differentiableat--bc56d591b707512ccf9b6ae7.md) | 394 | `result-track:bc56d591b707512ccf9b6ae72508b2c1990ca931e771087a5126aa047bebf40d` |
| 29 | `theorem` | [hasMellin](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/AbstractFuncEq/Variantd6d110281a3ec8c43753b69a4ee0130e156fb35a9bd7b80c7255a317f3e92dc4.lean/declarations/hasmellin--41e49e80a5be6588425898c3.md) | 407 | `result-track:41e49e80a5be6588425898c30f354286a70baa01812aca522b554986c338411b` |
| 30 | `theorem` | [functional_equation₀](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/AbstractFuncEq/Variantd6d110281a3ec8c43753b69a4ee0130e156fb35a9bd7b80c7255a317f3e92dc4.lean/declarations/functional-equation--9ccd9ffef2ee13d132a8af99.md) | 423 | `result-track:9ccd9ffef2ee13d132a8af99c784de080c7660954e94233c93d47a820011abd6` |
| 31 | `theorem` | [functional_equation](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/AbstractFuncEq/Variantd6d110281a3ec8c43753b69a4ee0130e156fb35a9bd7b80c7255a317f3e92dc4.lean/declarations/functional-equation--5630b47d8e22d963181b572c.md) | 427 | `result-track:5630b47d8e22d963181b572cb1459c46a856c277f0d4844b00b543df80e76b40` |
| 32 | `theorem` | [Λ_residue_k](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/AbstractFuncEq/Variantd6d110281a3ec8c43753b69a4ee0130e156fb35a9bd7b80c7255a317f3e92dc4.lean/declarations/residue-k--353902b8a3391cbb5e46b967.md) | 433 | `result-track:353902b8a3391cbb5e46b967d09801ddc5bf3e0ca0a4e17d0d490e000127176f` |
| 33 | `theorem` | [Λ_residue_zero](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/AbstractFuncEq/Variantd6d110281a3ec8c43753b69a4ee0130e156fb35a9bd7b80c7255a317f3e92dc4.lean/declarations/residue-zero--8d34518e128ede49e714486b.md) | 449 | `result-track:8d34518e128ede49e714486b102f73e9ed5c48efe493166958db140d87a0ae6a` |
| 34 | `lemma` | [Λ_eq](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/AbstractFuncEq/Variantd6d110281a3ec8c43753b69a4ee0130e156fb35a9bd7b80c7255a317f3e92dc4.lean/declarations/eq--2c2a7b782c4e569a091311b6.md) | 474 | `result-track:2c2a7b782c4e569a091311b6b0e9a585ad8c8dd0a10cde03c6dbe40e3c50e8b9` |
| 35 | `lemma` | [symm_Λ_eq](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/AbstractFuncEq/Variantd6d110281a3ec8c43753b69a4ee0130e156fb35a9bd7b80c7255a317f3e92dc4.lean/declarations/symm-eq--4345802fe91c4362a5e196bb.md) | 483 | `result-track:4345802fe91c4362a5e196bb93ef7b32023486bd56c14c15a8b07d90f492e616` |
| 36 | `theorem` | [hasMellin](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/AbstractFuncEq/Variantd6d110281a3ec8c43753b69a4ee0130e156fb35a9bd7b80c7255a317f3e92dc4.lean/declarations/hasmellin--bd343a45d20ddd65fd62c864.md) | 486 | `result-track:bd343a45d20ddd65fd62c864c1f2eb5f446081e732cb73cd4f4d3cf3f7b6365e` |
| 37 | `theorem` | [differentiable_Λ](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/AbstractFuncEq/Variantd6d110281a3ec8c43753b69a4ee0130e156fb35a9bd7b80c7255a317f3e92dc4.lean/declarations/differentiable--481f1eb04986dfbb01619717.md) | 490 | `result-track:481f1eb04986dfbb01619717f162b30cfa26ef985089d25b08e5c99738a09db8` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
