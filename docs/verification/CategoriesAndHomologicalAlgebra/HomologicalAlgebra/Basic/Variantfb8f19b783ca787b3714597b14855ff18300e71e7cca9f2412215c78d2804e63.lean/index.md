# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.HomologicalAlgebra.Basic.Variantfb8f19b783ca787b3714597b14855ff18300e71e7cca9f2412215c78d2804e63

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f481dc2aa653b1ca26ce019ff109ebbadadcc462",
  "lexical_observation_count": 40,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Basic/Variantfb8f19b783ca787b3714597b14855ff18300e71e7cca9f2412215c78d2804e63.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Basic/Variantfb8f19b783ca787b3714597b14855ff18300e71e7cca9f2412215c78d2804e63.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Basic/Variantfb8f19b783ca787b3714597b14855ff18300e71e7cca9f2412215c78d2804e63.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f481dc2aa653b1ca26ce019ff109ebbadadcc462`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Basic/Variantfb8f19b783ca787b3714597b14855ff18300e71e7cca9f2412215c78d2804e63.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Basic/Variantfb8f19b783ca787b3714597b14855ff18300e71e7cca9f2412215c78d2804e63.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Homology.HomotopyCategory.HomologicalFunctor` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Homology.HomotopyCategory.ShiftSequence` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Homology.HomotopyCategory.SingleFunctors` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Homology.HomotopyCategory.Triangulated` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Homology.Localization` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [subcategoryAcyclic](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Basic/Variantfb8f19b783ca787b3714597b14855ff18300e71e7cca9f2412215c78d2804e63.lean/declarations/subcategoryacyclic--560a6f8604fa9e8b5ba45908.md) | 72 | `declaration-track:560a6f8604fa9e8b5ba45908bc6d443c9aed5a22c8061f4e8828d0b5a7e9ad26` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Basic/Variantfb8f19b783ca787b3714597b14855ff18300e71e7cca9f2412215c78d2804e63.lean/declarations/instance--2908ae35d61ad2c4e571b26a.md) | 76 | `declaration-track:2908ae35d61ad2c4e571b26a62a56bb606c6eab2bf7b0f94b155f151bdd3e750` |
| 3 | `lemma` | [mem_subcategoryAcyclic_iff](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Basic/Variantfb8f19b783ca787b3714597b14855ff18300e71e7cca9f2412215c78d2804e63.lean/declarations/mem-subcategoryacyclic-iff--150678145344950afa08dbc6.md) | 82 | `result-track:150678145344950afa08dbc657fa63c17ef35e3bcc18b8d26d6bde9dff20b631` |
| 4 | `lemma` | [quotient_obj_mem_subcategoryAcyclic_iff_exactAt](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Basic/Variantfb8f19b783ca787b3714597b14855ff18300e71e7cca9f2412215c78d2804e63.lean/declarations/quotient-obj-mem-subcategoryacyclic-iff-exactat--d2f51757bc5448f797f8658c.md) | 86 | `result-track:d2f51757bc5448f797f8658ce560aee716d08ac5b19c4995594b032d17334f56` |
| 5 | `lemma` | [quasiIso_eq_subcategoryAcyclic_W](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Basic/Variantfb8f19b783ca787b3714597b14855ff18300e71e7cca9f2412215c78d2804e63.lean/declarations/quasiiso-eq-subcategoryacyclic-w--00a672be5f738fc9c4ba71b2.md) | 95 | `result-track:00a672be5f738fc9c4ba71b2ac49d87976158f82d37aa2f39331049c03a4225b` |
| 6 | `abbrev` | [HasDerivedCategory](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Basic/Variantfb8f19b783ca787b3714597b14855ff18300e71e7cca9f2412215c78d2804e63.lean/declarations/hasderivedcategory--47b6b9b435781b0dbda891ca.md) | 105 | `declaration-track:47b6b9b435781b0dbda891ca15d738b2aeb7e48be2da5c234ce9b7f8befa07fc` |
| 7 | `def` | [HasDerivedCategory.standard](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Basic/Variantfb8f19b783ca787b3714597b14855ff18300e71e7cca9f2412215c78d2804e63.lean/declarations/hasderivedcategory-standard--efa893054dda110ac3ab1947.md) | 111 | `declaration-track:efa893054dda110ac3ab19477fec6d176c8f89ef7b3f0072f953c2ac1d2be8c5` |
| 8 | `def` | [DerivedCategory](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Basic/Variantfb8f19b783ca787b3714597b14855ff18300e71e7cca9f2412215c78d2804e63.lean/declarations/derivedcategory--b4c8b0f6bb400a51048ae0c8.md) | 117 | `declaration-track:b4c8b0f6bb400a51048ae0c8a3646b8f4088b461f1d457584aabc691c32d048b` |
| 9 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Basic/Variantfb8f19b783ca787b3714597b14855ff18300e71e7cca9f2412215c78d2804e63.lean/declarations/instance--3fde347847bb9d848fdbc9cf.md) | 121 | `declaration-track:3fde347847bb9d848fdbc9cfa7df6531a07221d3fea01632d228d85b3de86683` |
| 10 | `def` | [Q](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Basic/Variantfb8f19b783ca787b3714597b14855ff18300e71e7cca9f2412215c78d2804e63.lean/declarations/q--bc15856a7c2aa27472918b30.md) | 128 | `declaration-track:bc15856a7c2aa27472918b30981b797b16f9a34b78a5becd150ae919b1f66e4e` |
| 11 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Basic/Variantfb8f19b783ca787b3714597b14855ff18300e71e7cca9f2412215c78d2804e63.lean/declarations/instance--058dc9d6ea060c0a2963bcc7.md) | 130 | `declaration-track:058dc9d6ea060c0a2963bcc74a9fb5d5ca4e2e92b71cb0f170fe68a6c53a764a` |
| 12 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Basic/Variantfb8f19b783ca787b3714597b14855ff18300e71e7cca9f2412215c78d2804e63.lean/declarations/instance--dcb716a7bf9afea59d6ab4db.md) | 135 | `declaration-track:dcb716a7bf9afea59d6ab4db03c38d78c6d5d5a3972d3d209499e54c7f66cc71` |
| 13 | `def` | [Qh](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Basic/Variantfb8f19b783ca787b3714597b14855ff18300e71e7cca9f2412215c78d2804e63.lean/declarations/qh--5d97d7a27ce422ac640f7563.md) | 141 | `declaration-track:5d97d7a27ce422ac640f75632a26f694972a2947276e87698bdfd37c3d941088` |
| 14 | `def` | [quotientCompQhIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Basic/Variantfb8f19b783ca787b3714597b14855ff18300e71e7cca9f2412215c78d2804e63.lean/declarations/quotientcompqhiso--169e629fb9f3cac78b754307.md) | 147 | `declaration-track:169e629fb9f3cac78b75430786df12ff67dc322aafb0abe9f9ecaed6d4a46c46` |
| 15 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Basic/Variantfb8f19b783ca787b3714597b14855ff18300e71e7cca9f2412215c78d2804e63.lean/declarations/instance--bafd84af542547744a0661db.md) | 150 | `declaration-track:bafd84af542547744a0661db9e5b1e78fc58f133a9f6c395b6825c402bdc1a1f` |
| 16 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Basic/Variantfb8f19b783ca787b3714597b14855ff18300e71e7cca9f2412215c78d2804e63.lean/declarations/instance--2941051961a0ba7072c6ef0f.md) | 154 | `declaration-track:2941051961a0ba7072c6ef0f063afd0073c078e0724e541c0d736cecafc84279` |
| 17 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Basic/Variantfb8f19b783ca787b3714597b14855ff18300e71e7cca9f2412215c78d2804e63.lean/declarations/instance--12b93c57d546176f0d51c029.md) | 158 | `declaration-track:12b93c57d546176f0d51c029b36c550ec49406221e5f19add90de6e0d585cdec` |
| 18 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Basic/Variantfb8f19b783ca787b3714597b14855ff18300e71e7cca9f2412215c78d2804e63.lean/declarations/instance--5d872181ee0021c106dbcec9.md) | 161 | `declaration-track:5d872181ee0021c106dbcec9a58bfded4b45a1c6cf4d0e3962e896dc8fd8f03d` |
| 19 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Basic/Variantfb8f19b783ca787b3714597b14855ff18300e71e7cca9f2412215c78d2804e63.lean/declarations/instance--27cfbcd5acdb21af5553f220.md) | 164 | `declaration-track:27cfbcd5acdb21af5553f22047b04e6f26bd9230347ae7155c5b1981cea1245b` |
| 20 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Basic/Variantfb8f19b783ca787b3714597b14855ff18300e71e7cca9f2412215c78d2804e63.lean/declarations/instance--78cb69ca7e51e7de01e4b051.md) | 167 | `declaration-track:78cb69ca7e51e7de01e4b05196061e22f79e8d611fd18df017529f5745838dc4` |
| 21 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Basic/Variantfb8f19b783ca787b3714597b14855ff18300e71e7cca9f2412215c78d2804e63.lean/declarations/instance--08d9c3513f85d74134463d46.md) | 170 | `declaration-track:08d9c3513f85d74134463d4602446947394a6aa0722cd39be969cc5b533d419e` |
| 22 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Basic/Variantfb8f19b783ca787b3714597b14855ff18300e71e7cca9f2412215c78d2804e63.lean/declarations/instance--97102789a628d1e4c8bb79a5.md) | 173 | `declaration-track:97102789a628d1e4c8bb79a55ab1be629aceb3be42f0589245cbb66cd16f48b5` |
| 23 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Basic/Variantfb8f19b783ca787b3714597b14855ff18300e71e7cca9f2412215c78d2804e63.lean/declarations/instance--e9e627081b53ffb599f79978.md) | 176 | `declaration-track:e9e627081b53ffb599f79978bfe1d4456e97f2eee7fe4e23ad12c43c478c45dc` |
| 24 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Basic/Variantfb8f19b783ca787b3714597b14855ff18300e71e7cca9f2412215c78d2804e63.lean/declarations/instance--9828d5d8cbfecf52ca7a0752.md) | 179 | `declaration-track:9828d5d8cbfecf52ca7a0752e89a4837cf11f965671920a8c817bdefefa8d9dd` |
| 25 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Basic/Variantfb8f19b783ca787b3714597b14855ff18300e71e7cca9f2412215c78d2804e63.lean/declarations/instance--b4db4c9876d2be50a7581ed1.md) | 182 | `declaration-track:b4db4c9876d2be50a7581ed190d880d028208be0386592d8b5c5a8ae5b188b13` |
| 26 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Basic/Variantfb8f19b783ca787b3714597b14855ff18300e71e7cca9f2412215c78d2804e63.lean/declarations/instance--9aa6b2a8eb0a645e4be63926.md) | 187 | `declaration-track:9aa6b2a8eb0a645e4be63926b33e5314e4e88c6a436d51716e0f5829d98f2ae0` |
| 27 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Basic/Variantfb8f19b783ca787b3714597b14855ff18300e71e7cca9f2412215c78d2804e63.lean/declarations/instance--f416ea7c3e640d3019562c73.md) | 191 | `declaration-track:f416ea7c3e640d3019562c73ccf5c8bd6dac3e28de7d263aca1e717bfc5e4f26` |
| 28 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Basic/Variantfb8f19b783ca787b3714597b14855ff18300e71e7cca9f2412215c78d2804e63.lean/declarations/instance--c3164bb56fbe0ef5b5e2982a.md) | 195 | `declaration-track:c3164bb56fbe0ef5b5e2982afcb93c482da9b0643502c38a8f3f884c3d1f3aeb` |
| 29 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Basic/Variantfb8f19b783ca787b3714597b14855ff18300e71e7cca9f2412215c78d2804e63.lean/declarations/instance--220cdeb6f661b174d99cc3a6.md) | 199 | `declaration-track:220cdeb6f661b174d99cc3a6eb6c100f73ae6c9146f8b951fd5294b57c926223` |
| 30 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Basic/Variantfb8f19b783ca787b3714597b14855ff18300e71e7cca9f2412215c78d2804e63.lean/declarations/instance--6270efcb22c950e1ab20fdec.md) | 202 | `declaration-track:6270efcb22c950e1ab20fdec866cd76fb23d8abc439dcbc8b67e5561a9c92df7` |
| 31 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Basic/Variantfb8f19b783ca787b3714597b14855ff18300e71e7cca9f2412215c78d2804e63.lean/declarations/instance--eb0ffff543c807023d8eb0f4.md) | 206 | `declaration-track:eb0ffff543c807023d8eb0f42f3b9bf1d1b5c527a40359da5c6cb9a18daa855e` |
| 32 | `lemma` | [mem_distTriang_iff](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Basic/Variantfb8f19b783ca787b3714597b14855ff18300e71e7cca9f2412215c78d2804e63.lean/declarations/mem-disttriang-iff--733fd1348a7ad5ced9babdcd.md) | 211 | `result-track:733fd1348a7ad5ced9babdcdc8c8ea344956de2329987d33562b35f3536815e4` |
| 33 | `def` | [singleFunctors](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Basic/Variantfb8f19b783ca787b3714597b14855ff18300e71e7cca9f2412215c78d2804e63.lean/declarations/singlefunctors--6daf9170695b144fb2e644fe.md) | 228 | `declaration-track:6daf9170695b144fb2e644fe1397715ca7c7dab9eb117cda84b86df3f2435eeb` |
| 34 | `abbrev` | [singleFunctor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Basic/Variantfb8f19b783ca787b3714597b14855ff18300e71e7cca9f2412215c78d2804e63.lean/declarations/singlefunctor--9ca9757d72a840bef0f2e703.md) | 233 | `declaration-track:9ca9757d72a840bef0f2e703d52d29af0e7ea9aeed868e25effb9ed7972d96c7` |
| 35 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Basic/Variantfb8f19b783ca787b3714597b14855ff18300e71e7cca9f2412215c78d2804e63.lean/declarations/instance--6962fb7f68bed0bd45f73031.md) | 235 | `declaration-track:6962fb7f68bed0bd45f730311069cf54bd4023a25b6ccd40414fbc5c20e0cae6` |
| 36 | `def` | [singleFunctorsPostcompQhIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Basic/Variantfb8f19b783ca787b3714597b14855ff18300e71e7cca9f2412215c78d2804e63.lean/declarations/singlefunctorspostcompqhiso--f9494b7ffa3094b49dcfa2ba.md) | 242 | `declaration-track:f9494b7ffa3094b49dcfa2ba2f3ba4ec3a66b51d476f5c2f0ab94c7a02128b20` |
| 37 | `def` | [singleFunctorsPostcompQIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Basic/Variantfb8f19b783ca787b3714597b14855ff18300e71e7cca9f2412215c78d2804e63.lean/declarations/singlefunctorspostcompqiso--1404936dbd1ad67d3575bd87.md) | 248 | `declaration-track:1404936dbd1ad67d3575bd87421ca20cc312ffc546cb7dfe929035e3d51c1921` |
| 38 | `lemma` | [singleFunctorsPostcompQIso_hom_hom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Basic/Variantfb8f19b783ca787b3714597b14855ff18300e71e7cca9f2412215c78d2804e63.lean/declarations/singlefunctorspostcompqiso-hom-hom--15e762ee6c56836e2588d7e1.md) | 256 | `result-track:15e762ee6c56836e2588d7e1afa306ecd02cbbc0a546cf139bf7cc18dfd186b8` |
| 39 | `lemma` | [singleFunctorsPostcompQIso_inv_hom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Basic/Variantfb8f19b783ca787b3714597b14855ff18300e71e7cca9f2412215c78d2804e63.lean/declarations/singlefunctorspostcompqiso-inv-hom--27f90f9e82869c4d5a87618d.md) | 265 | `result-track:27f90f9e82869c4d5a87618dff8b810750b4d39e51a5f17f896dc49944f73b47` |
| 40 | `lemma` | [isIso_Q_map_iff_quasiIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Basic/Variantfb8f19b783ca787b3714597b14855ff18300e71e7cca9f2412215c78d2804e63.lean/declarations/isiso-q-map-iff-quasiiso--547a1725468f9c0c7c9f7d74.md) | 275 | `result-track:547a1725468f9c0c7c9f7d74b2e907a294d2075bdd15e39a4f923bf1127b319f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
