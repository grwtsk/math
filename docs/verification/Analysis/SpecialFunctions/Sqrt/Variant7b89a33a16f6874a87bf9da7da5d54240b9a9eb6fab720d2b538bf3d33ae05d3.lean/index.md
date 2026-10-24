# Verification target: GRWTSK.Analysis.SpecialFunctions.Sqrt.Variant7b89a33a16f6874a87bf9da7da5d54240b9a9eb6fab720d2b538bf3d33ae05d3

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "79deea21d6286d727033ad963caa86948884b234",
  "lexical_observation_count": 26,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/SpecialFunctions/Sqrt/Variant7b89a33a16f6874a87bf9da7da5d54240b9a9eb6fab720d2b538bf3d33ae05d3.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/SpecialFunctions/Sqrt/Variant7b89a33a16f6874a87bf9da7da5d54240b9a9eb6fab720d2b538bf3d33ae05d3.lean/index.md) · [Full source](../../../../../mathematics/Analysis/SpecialFunctions/Sqrt/Variant7b89a33a16f6874a87bf9da7da5d54240b9a9eb6fab720d2b538bf3d33ae05d3.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `79deea21d6286d727033ad963caa86948884b234`.

Source path: `GRWTSK/Analysis/SpecialFunctions/Sqrt/Variant7b89a33a16f6874a87bf9da7da5d54240b9a9eb6fab720d2b538bf3d33ae05d3.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/SpecialFunctions/Sqrt/Variant7b89a33a16f6874a87bf9da7da5d54240b9a9eb6fab720d2b538bf3d33ae05d3.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.SpecialFunctions.Pow.Real` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [Complex.sqrt](../../../../../mathematics/Analysis/SpecialFunctions/Sqrt/Variant7b89a33a16f6874a87bf9da7da5d54240b9a9eb6fab720d2b538bf3d33ae05d3.lean/declarations/complex-sqrt--267c3ff3ee0d5c0b92e81511.md) | 34 | `declaration-track:267c3ff3ee0d5c0b92e81511473bcbe9a75f7a599dd48ac67ecd50a42b4e61b3` |
| 2 | `theorem` | [Complex.sqrt_zero](../../../../../mathematics/Analysis/SpecialFunctions/Sqrt/Variant7b89a33a16f6874a87bf9da7da5d54240b9a9eb6fab720d2b538bf3d33ae05d3.lean/declarations/complex-sqrt-zero--7ca095ac3f7e4e87b24c6e33.md) | 36 | `result-track:7ca095ac3f7e4e87b24c6e3396030d5199dcf48317592e2035ab573e6d0279d8` |
| 3 | `theorem` | [Complex.sqrt_one](../../../../../mathematics/Analysis/SpecialFunctions/Sqrt/Variant7b89a33a16f6874a87bf9da7da5d54240b9a9eb6fab720d2b538bf3d33ae05d3.lean/declarations/complex-sqrt-one--432d04a254624c8e14b5a77b.md) | 37 | `result-track:432d04a254624c8e14b5a77b5bbf1031631fa4ac18da3a1238f373e0d44d9cc1` |
| 4 | `theorem` | [Complex.sqrt_eq_real_add_ite](../../../../../mathematics/Analysis/SpecialFunctions/Sqrt/Variant7b89a33a16f6874a87bf9da7da5d54240b9a9eb6fab720d2b538bf3d33ae05d3.lean/declarations/complex-sqrt-eq-real-add-ite--4a3eb1899b60a56cb7a36f27.md) | 39 | `result-track:4a3eb1899b60a56cb7a36f27e53ae82f56d4358768d00494745800821193037d` |
| 5 | `lemma` | [sqrt_eq_exp](../../../../../mathematics/Analysis/SpecialFunctions/Sqrt/Variant7b89a33a16f6874a87bf9da7da5d54240b9a9eb6fab720d2b538bf3d33ae05d3.lean/declarations/sqrt-eq-exp--5a01825a58f104f7d34f1249.md) | 48 | `result-track:5a01825a58f104f7d34f12492e000b85170f8bb95e2ea0d381835c4064aeae60` |
| 6 | `def` | [RCLike.sqrt](../../../../../mathematics/Analysis/SpecialFunctions/Sqrt/Variant7b89a33a16f6874a87bf9da7da5d54240b9a9eb6fab720d2b538bf3d33ae05d3.lean/declarations/rclike-sqrt--0a13cf6f4abe54be17d2d4ce.md) | 52 | `declaration-track:0a13cf6f4abe54be17d2d4cefa31513aa9d909f3bd8bb13599fdf7e872a3da91` |
| 7 | `theorem` | [RCLike.sqrt_eq_ite](../../../../../mathematics/Analysis/SpecialFunctions/Sqrt/Variant7b89a33a16f6874a87bf9da7da5d54240b9a9eb6fab720d2b538bf3d33ae05d3.lean/declarations/rclike-sqrt-eq-ite--5d64350aa45ee804ef144f5a.md) | 54 | `result-track:5d64350aa45ee804ef144f5a8c594326cb112bcfb26ee3910619bf0767fbde2c` |
| 8 | `theorem` | [RCLike.sqrt_eq_real_add_ite](../../../../../mathematics/Analysis/SpecialFunctions/Sqrt/Variant7b89a33a16f6874a87bf9da7da5d54240b9a9eb6fab720d2b538bf3d33ae05d3.lean/declarations/rclike-sqrt-eq-real-add-ite--c00d7d30ffdde575b8da8888.md) | 67 | `result-track:c00d7d30ffdde575b8da8888d55ca7be2f35da228ff67ef9fafcd0b3b3c757f4` |
| 9 | `theorem` | [RCLike.sqrt_zero](../../../../../mathematics/Analysis/SpecialFunctions/Sqrt/Variant7b89a33a16f6874a87bf9da7da5d54240b9a9eb6fab720d2b538bf3d33ae05d3.lean/declarations/rclike-sqrt-zero--30569ef4bcacbd89c7ae8ce8.md) | 75 | `result-track:30569ef4bcacbd89c7ae8ce808c6439e8dda8e29bef84a6bf812ec132513f20e` |
| 10 | `theorem` | [RCLike.sqrt_one](../../../../../mathematics/Analysis/SpecialFunctions/Sqrt/Variant7b89a33a16f6874a87bf9da7da5d54240b9a9eb6fab720d2b538bf3d33ae05d3.lean/declarations/rclike-sqrt-one--9495c8b9f63fb64143b489e9.md) | 76 | `result-track:9495c8b9f63fb64143b489e96cc9383f0ca69362d372c5634fdab2f965349ba2` |
| 11 | `theorem` | [Complex.re_sqrt_ofReal](../../../../../mathematics/Analysis/SpecialFunctions/Sqrt/Variant7b89a33a16f6874a87bf9da7da5d54240b9a9eb6fab720d2b538bf3d33ae05d3.lean/declarations/complex-re-sqrt-ofreal--b05d7e4085a2f6233dc00f9f.md) | 78 | `result-track:b05d7e4085a2f6233dc00f9fad38cf097e45e5ddd4662fd27f8ab3dd69590ceb` |
| 12 | `theorem` | [RCLike.re_sqrt_ofReal](../../../../../mathematics/Analysis/SpecialFunctions/Sqrt/Variant7b89a33a16f6874a87bf9da7da5d54240b9a9eb6fab720d2b538bf3d33ae05d3.lean/declarations/rclike-re-sqrt-ofreal--fc9c084a7e0d4509ab3d8ef1.md) | 83 | `result-track:fc9c084a7e0d4509ab3d8ef1609988a6d716dbcabfb5f891cf96d3ad9ff90119` |
| 13 | `theorem` | [RCLike.sqrt_real](../../../../../mathematics/Analysis/SpecialFunctions/Sqrt/Variant7b89a33a16f6874a87bf9da7da5d54240b9a9eb6fab720d2b538bf3d33ae05d3.lean/declarations/rclike-sqrt-real--bb29257130f19772db65673e.md) | 87 | `result-track:bb29257130f19772db65673e1942131543bea5bf32a7fc247311cf4591c5d5e8` |
| 14 | `theorem` | [RCLike.sqrt_complex](../../../../../mathematics/Analysis/SpecialFunctions/Sqrt/Variant7b89a33a16f6874a87bf9da7da5d54240b9a9eb6fab720d2b538bf3d33ae05d3.lean/declarations/rclike-sqrt-complex--b074c6cf836bbd7b6c741362.md) | 90 | `result-track:b074c6cf836bbd7b6c74136297cc47b31d17e14998bab19d3287a3ac5c579ac5` |
| 15 | `theorem` | [Complex.sqrt_of_nonneg](../../../../../mathematics/Analysis/SpecialFunctions/Sqrt/Variant7b89a33a16f6874a87bf9da7da5d54240b9a9eb6fab720d2b538bf3d33ae05d3.lean/declarations/complex-sqrt-of-nonneg--97ac480f20eae07e4d1033ca.md) | 93 | `result-track:97ac480f20eae07e4d1033cad9a7aeb39c3529123b9b4f8e5d51b4ae15eb7456` |
| 16 | `theorem` | [RCLike.sqrt_map](../../../../../mathematics/Analysis/SpecialFunctions/Sqrt/Variant7b89a33a16f6874a87bf9da7da5d54240b9a9eb6fab720d2b538bf3d33ae05d3.lean/declarations/rclike-sqrt-map--29ab9900b757e4704925b3da.md) | 100 | `result-track:29ab9900b757e4704925b3da5ab24dbae7d337a30ec0897e022e1c32b7e24a3c` |
| 17 | `theorem` | [Complex.sqrt_map](../../../../../mathematics/Analysis/SpecialFunctions/Sqrt/Variant7b89a33a16f6874a87bf9da7da5d54240b9a9eb6fab720d2b538bf3d33ae05d3.lean/declarations/complex-sqrt-map--53072a8da21897bf79206451.md) | 106 | `result-track:53072a8da21897bf79206451f30d489311ad29faf5a7edc83628eba5d183f337` |
| 18 | `theorem` | [RCLike.sqrt_of_nonneg](../../../../../mathematics/Analysis/SpecialFunctions/Sqrt/Variant7b89a33a16f6874a87bf9da7da5d54240b9a9eb6fab720d2b538bf3d33ae05d3.lean/declarations/rclike-sqrt-of-nonneg--cb5be3291cb1e53b1ae87b09.md) | 110 | `result-track:cb5be3291cb1e53b1ae87b09796514328cc1dc56c164d8148577a012a01e4538` |
| 19 | `theorem` | [Complex.sqrt_neg_of_nonneg](../../../../../mathematics/Analysis/SpecialFunctions/Sqrt/Variant7b89a33a16f6874a87bf9da7da5d54240b9a9eb6fab720d2b538bf3d33ae05d3.lean/declarations/complex-sqrt-neg-of-nonneg--ed90a9dbc463a4fd09e596fe.md) | 117 | `result-track:ed90a9dbc463a4fd09e596fe9c5e377211416abf4fa498fd1249bebf5aaa6f99` |
| 20 | `theorem` | [RCLike.sqrt_neg_of_nonneg](../../../../../mathematics/Analysis/SpecialFunctions/Sqrt/Variant7b89a33a16f6874a87bf9da7da5d54240b9a9eb6fab720d2b538bf3d33ae05d3.lean/declarations/rclike-sqrt-neg-of-nonneg--1958e7e2d8abcb6f5f32e800.md) | 125 | `result-track:1958e7e2d8abcb6f5f32e800e715ce3ab8862099e15ad029223a7d1cbc97c26e` |
| 21 | `theorem` | [Complex.sqrt_neg_one](../../../../../mathematics/Analysis/SpecialFunctions/Sqrt/Variant7b89a33a16f6874a87bf9da7da5d54240b9a9eb6fab720d2b538bf3d33ae05d3.lean/declarations/complex-sqrt-neg-one--a264c404cd91ac299ae500e1.md) | 133 | `result-track:a264c404cd91ac299ae500e1a9635baaaa1b8a2a0131008acc51464b0de79343` |
| 22 | `theorem` | [RCLike.sqrt_neg_one](../../../../../mathematics/Analysis/SpecialFunctions/Sqrt/Variant7b89a33a16f6874a87bf9da7da5d54240b9a9eb6fab720d2b538bf3d33ae05d3.lean/declarations/rclike-sqrt-neg-one--620c79463228240ce09246f1.md) | 136 | `result-track:620c79463228240ce09246f1b2dc3b9060acf28bbb9c67d4cf0494874f18faf1` |
| 23 | `theorem` | [Complex.sqrt_I](../../../../../mathematics/Analysis/SpecialFunctions/Sqrt/Variant7b89a33a16f6874a87bf9da7da5d54240b9a9eb6fab720d2b538bf3d33ae05d3.lean/declarations/complex-sqrt-i--4b37079062ef25eac8f14282.md) | 139 | `result-track:4b37079062ef25eac8f142828a9078af41d07131ebdb987a06407c3a42af97e4` |
| 24 | `theorem` | [Complex.sqrt_neg_I](../../../../../mathematics/Analysis/SpecialFunctions/Sqrt/Variant7b89a33a16f6874a87bf9da7da5d54240b9a9eb6fab720d2b538bf3d33ae05d3.lean/declarations/complex-sqrt-neg-i--887c5daa49e008167647742b.md) | 143 | `result-track:887c5daa49e008167647742bf8150734e3ca166c8b12b5838c056c0658c2f55a` |
| 25 | `theorem` | [RCLike.sqrt_I](../../../../../mathematics/Analysis/SpecialFunctions/Sqrt/Variant7b89a33a16f6874a87bf9da7da5d54240b9a9eb6fab720d2b538bf3d33ae05d3.lean/declarations/rclike-sqrt-i--8222999ae402f573219e7a10.md) | 147 | `result-track:8222999ae402f573219e7a105a33a2bcf60a46a94af7dc16896dd08f8a37741a` |
| 26 | `theorem` | [RCLike.sqrt_neg_I](../../../../../mathematics/Analysis/SpecialFunctions/Sqrt/Variant7b89a33a16f6874a87bf9da7da5d54240b9a9eb6fab720d2b538bf3d33ae05d3.lean/declarations/rclike-sqrt-neg-i--4c0f58d8f5799a9c6d3f099b.md) | 154 | `result-track:4c0f58d8f5799a9c6d3f099ba6d586870d0481587e674969cff5a783d91ee24a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
