# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Extension.Variantfde25b5e16d8eac4c5118f1230acc8584e18067099bed6ce42b4a741a2421299

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7d36dbbe13ff641f0baa99952fe506a1460be5d6",
  "lexical_observation_count": 50,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Extension/Variantfde25b5e16d8eac4c5118f1230acc8584e18067099bed6ce42b4a741a2421299.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Extension/Variantfde25b5e16d8eac4c5118f1230acc8584e18067099bed6ce42b4a741a2421299.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Extension/Variantfde25b5e16d8eac4c5118f1230acc8584e18067099bed6ce42b4a741a2421299.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7d36dbbe13ff641f0baa99952fe506a1460be5d6`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Extension/Variantfde25b5e16d8eac4c5118f1230acc8584e18067099bed6ce42b4a741a2421299.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Extension/Variantfde25b5e16d8eac4c5118f1230acc8584e18067099bed6ce42b4a741a2421299.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Bicategory.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Comma.StructuredArrow.Basic` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [LeftExtension](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Extension/Variantfde25b5e16d8eac4c5118f1230acc8584e18067099bed6ce42b4a741a2421299.lean/declarations/leftextension--0e5213d5e369e2e566408145.md) | 57 | `declaration-track:0e5213d5e369e2e566408145e576774d772122b611d4e1a68c77ecd69314d515` |
| 2 | `abbrev` | [extension](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Extension/Variantfde25b5e16d8eac4c5118f1230acc8584e18067099bed6ce42b4a741a2421299.lean/declarations/extension--1e7f788df11630a75bcd75cc.md) | 64 | `declaration-track:1e7f788df11630a75bcd75cc4dc2f9cf8e61aebb839f6745758e353fb341b91f` |
| 3 | `abbrev` | [unit](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Extension/Variantfde25b5e16d8eac4c5118f1230acc8584e18067099bed6ce42b4a741a2421299.lean/declarations/unit--37da65615305a383e8049a8a.md) | 67 | `declaration-track:37da65615305a383e8049a8a948f75b0ef5870b25de28fd27daa66e28953e83f` |
| 4 | `abbrev` | [mk](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Extension/Variantfde25b5e16d8eac4c5118f1230acc8584e18067099bed6ce42b4a741a2421299.lean/declarations/mk--6c78ebbb57fd4891cb8375b3.md) | 70 | `declaration-track:6c78ebbb57fd4891cb8375b3876e5292d55d19d38103bfb77c5ea2873df01073` |
| 5 | `abbrev` | [homMk](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Extension/Variantfde25b5e16d8eac4c5118f1230acc8584e18067099bed6ce42b4a741a2421299.lean/declarations/hommk--c764b321acecbcd27eba7091.md) | 77 | `declaration-track:c764b321acecbcd27eba7091104e0c83f60e8e62c91bc5094fcdf8761d3e4d43` |
| 6 | `theorem` | [w](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Extension/Variantfde25b5e16d8eac4c5118f1230acc8584e18067099bed6ce42b4a741a2421299.lean/declarations/w--9777ebd04234c4077ab300df.md) | 82 | `result-track:9777ebd04234c4077ab300df9b48480549d8f9a4caf3343dc966cce5c6c5c892` |
| 7 | `def` | [alongId](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Extension/Variantfde25b5e16d8eac4c5118f1230acc8584e18067099bed6ce42b4a741a2421299.lean/declarations/alongid--7cb7a5f1ef0ad75dd1ffc3bf.md) | 86 | `declaration-track:7cb7a5f1ef0ad75dd1ffc3bf0d9df7a4e32d4eee7024b0effccb40e3e2fce2cb` |
| 8 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Extension/Variantfde25b5e16d8eac4c5118f1230acc8584e18067099bed6ce42b4a741a2421299.lean/declarations/instance--2829073e445b6e3fc287d5ad.md) | 88 | `declaration-track:2829073e445b6e3fc287d5ad9ff256d6ee9f80620559337908598ab8dc605ae8` |
| 9 | `def` | [ofCompId](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Extension/Variantfde25b5e16d8eac4c5118f1230acc8584e18067099bed6ce42b4a741a2421299.lean/declarations/ofcompid--b369b470ffb96dee6a7d01e9.md) | 92 | `declaration-track:b369b470ffb96dee6a7d01e92137bff1ef1beca5c6838ac58db35e07e2fa01d4` |
| 10 | `def` | [whisker](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Extension/Variantfde25b5e16d8eac4c5118f1230acc8584e18067099bed6ce42b4a741a2421299.lean/declarations/whisker--c27659f86a8b8a5feffe2200.md) | 106 | `declaration-track:c27659f86a8b8a5feffe2200b11a597332eb9021c9dea91e229e7b64441adffb` |
| 11 | `theorem` | [whisker_extension](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Extension/Variantfde25b5e16d8eac4c5118f1230acc8584e18067099bed6ce42b4a741a2421299.lean/declarations/whisker-extension--8fa29c2c7d4c77cca391d0f3.md) | 110 | `result-track:8fa29c2c7d4c77cca391d0f38386ddab7b5d0f65462564eec36864f8a3c888ea` |
| 12 | `theorem` | [whisker_unit](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Extension/Variantfde25b5e16d8eac4c5118f1230acc8584e18067099bed6ce42b4a741a2421299.lean/declarations/whisker-unit--3c56ad67c4bcf2e5da1203ff.md) | 115 | `result-track:3c56ad67c4bcf2e5da1203ff36bf8e8281f5335db34da653e547638bb1c7f776` |
| 13 | `def` | [whiskering](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Extension/Variantfde25b5e16d8eac4c5118f1230acc8584e18067099bed6ce42b4a741a2421299.lean/declarations/whiskering--b1abc856cb586ffea3e6ad84.md) | 121 | `declaration-track:b1abc856cb586ffea3e6ad84926e6adae49f939fe07734b9c722a94e81b7817c` |
| 14 | `def` | [whiskerIdCancel](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Extension/Variantfde25b5e16d8eac4c5118f1230acc8584e18067099bed6ce42b4a741a2421299.lean/declarations/whiskeridcancel--8d5e6c5634f32e92aabdaa05.md) | 128 | `declaration-track:8d5e6c5634f32e92aabdaa055c788c6f17db15cbeb4de01a0c4ff6f01cf7d077` |
| 15 | `def` | [whiskerHom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Extension/Variantfde25b5e16d8eac4c5118f1230acc8584e18067099bed6ce42b4a741a2421299.lean/declarations/whiskerhom--515001bec0f56b17feff4add.md) | 135 | `declaration-track:515001bec0f56b17feff4add4ef33b3ba44c6b482f4534796536f8f5792a1416` |
| 16 | `def` | [whiskerIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Extension/Variantfde25b5e16d8eac4c5118f1230acc8584e18067099bed6ce42b4a741a2421299.lean/declarations/whiskeriso--cd00d3874c72858a21a04809.md) | 145 | `declaration-track:cd00d3874c72858a21a04809f31797f6943263b398d23fc86653d46be3b885c5` |
| 17 | `def` | [whiskerOfCompIdIsoSelf](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Extension/Variantfde25b5e16d8eac4c5118f1230acc8584e18067099bed6ce42b4a741a2421299.lean/declarations/whiskerofcompidisoself--95e505692b763e412c48c960.md) | 159 | `declaration-track:95e505692b763e412c48c9605fc917b19aa49c90008b807ece12c7d62a46a54c` |
| 18 | `abbrev` | [LeftLift](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Extension/Variantfde25b5e16d8eac4c5118f1230acc8584e18067099bed6ce42b4a741a2421299.lean/declarations/leftlift--3d7a52abfec311e3d8d58afc.md) | 175 | `declaration-track:3d7a52abfec311e3d8d58afc400b6e2d2091f9afa3bae1ac8d7d4ec4eeff7b36` |
| 19 | `abbrev` | [lift](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Extension/Variantfde25b5e16d8eac4c5118f1230acc8584e18067099bed6ce42b4a741a2421299.lean/declarations/lift--c42457fb2e4c8f2688ad7df9.md) | 182 | `declaration-track:c42457fb2e4c8f2688ad7df93259e99f95ca88b686ebc8d40fd2ff1cb8354646` |
| 20 | `abbrev` | [unit](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Extension/Variantfde25b5e16d8eac4c5118f1230acc8584e18067099bed6ce42b4a741a2421299.lean/declarations/unit--ff96d91876fdcdc3a4d02133.md) | 185 | `declaration-track:ff96d91876fdcdc3a4d02133461ded2107cf7e5fcc5c5ae362c2a327d424911d` |
| 21 | `abbrev` | [mk](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Extension/Variantfde25b5e16d8eac4c5118f1230acc8584e18067099bed6ce42b4a741a2421299.lean/declarations/mk--e98a57f83fb81302bc86307d.md) | 188 | `declaration-track:e98a57f83fb81302bc86307d692b97a23fb5f4b0692ab32ee592ff194e8cd5ae` |
| 22 | `abbrev` | [homMk](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Extension/Variantfde25b5e16d8eac4c5118f1230acc8584e18067099bed6ce42b4a741a2421299.lean/declarations/hommk--70f47d1584ef32ee628fbcf8.md) | 195 | `declaration-track:70f47d1584ef32ee628fbcf85c4ea817093cf80ebc632e88fc77c54fa6eb2763` |
| 23 | `theorem` | [w](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Extension/Variantfde25b5e16d8eac4c5118f1230acc8584e18067099bed6ce42b4a741a2421299.lean/declarations/w--34c682bb274dacef140dd957.md) | 200 | `result-track:34c682bb274dacef140dd957a08fed67001b0604e9b27cf017fa929355bd7063` |
| 24 | `def` | [alongId](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Extension/Variantfde25b5e16d8eac4c5118f1230acc8584e18067099bed6ce42b4a741a2421299.lean/declarations/alongid--13b902c7b4dd1b7ac424b197.md) | 204 | `declaration-track:13b902c7b4dd1b7ac424b197d09d95284fab4d083844aeb1ec0e0476920f7468` |
| 25 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Extension/Variantfde25b5e16d8eac4c5118f1230acc8584e18067099bed6ce42b4a741a2421299.lean/declarations/instance--1e8ba7d5e53eb4b2f90084b2.md) | 206 | `declaration-track:1e8ba7d5e53eb4b2f90084b2bfb6160b4b68c72464a71b1ed5a34ea1d6b4b2e4` |
| 26 | `def` | [ofIdComp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Extension/Variantfde25b5e16d8eac4c5118f1230acc8584e18067099bed6ce42b4a741a2421299.lean/declarations/ofidcomp--1e89f2528d658f7c5b85cefa.md) | 210 | `declaration-track:1e89f2528d658f7c5b85cefa0e0d9000130da026469c2fa475d0c1677005e5ee` |
| 27 | `def` | [whisker](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Extension/Variantfde25b5e16d8eac4c5118f1230acc8584e18067099bed6ce42b4a741a2421299.lean/declarations/whisker--fb529dacefb6708731179125.md) | 224 | `declaration-track:fb529dacefb670873117912566eed5de49d9c1e6adfd1c94b6531cf18accd03c` |
| 28 | `theorem` | [whisker_lift](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Extension/Variantfde25b5e16d8eac4c5118f1230acc8584e18067099bed6ce42b4a741a2421299.lean/declarations/whisker-lift--dc019dbe3172bf8000bcfe7e.md) | 228 | `result-track:dc019dbe3172bf8000bcfe7eeceb3c5de37fdd89254063a93de741641658dbaf` |
| 29 | `theorem` | [whisker_unit](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Extension/Variantfde25b5e16d8eac4c5118f1230acc8584e18067099bed6ce42b4a741a2421299.lean/declarations/whisker-unit--e10a5c950807138eb86b0950.md) | 233 | `result-track:e10a5c950807138eb86b095032052680d0f28be59ee65a6ccb4586a2300c0f01` |
| 30 | `def` | [whiskering](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Extension/Variantfde25b5e16d8eac4c5118f1230acc8584e18067099bed6ce42b4a741a2421299.lean/declarations/whiskering--fda63be6f3497b271dc847f4.md) | 239 | `declaration-track:fda63be6f3497b271dc847f4abfd7db98851594f8a01b15941f380747fbdd9e7` |
| 31 | `def` | [whiskerIdCancel](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Extension/Variantfde25b5e16d8eac4c5118f1230acc8584e18067099bed6ce42b4a741a2421299.lean/declarations/whiskeridcancel--d2bf5d854a2b6c485a3b6349.md) | 248 | `declaration-track:d2bf5d854a2b6c485a3b6349334bed69fb2a86371e16e8496c50561c34bc36b0` |
| 32 | `def` | [whiskerHom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Extension/Variantfde25b5e16d8eac4c5118f1230acc8584e18067099bed6ce42b4a741a2421299.lean/declarations/whiskerhom--ff903be792935752672615c2.md) | 255 | `declaration-track:ff903be792935752672615c27df8868e4a774edc408f0064217540051ffe4e9f` |
| 33 | `def` | [whiskerIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Extension/Variantfde25b5e16d8eac4c5118f1230acc8584e18067099bed6ce42b4a741a2421299.lean/declarations/whiskeriso--ce087d845fe139601e550e87.md) | 265 | `declaration-track:ce087d845fe139601e550e87d2c2b32a7913d142f3ea6186c8e067f040e29d0d` |
| 34 | `def` | [whiskerOfIdCompIsoSelf](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Extension/Variantfde25b5e16d8eac4c5118f1230acc8584e18067099bed6ce42b4a741a2421299.lean/declarations/whiskerofidcompisoself--de6b24990876ecc59a327da6.md) | 279 | `declaration-track:de6b24990876ecc59a327da6b8acbabd247a2d435739c3ad17ffe7201d4d4368` |
| 35 | `abbrev` | [RightExtension](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Extension/Variantfde25b5e16d8eac4c5118f1230acc8584e18067099bed6ce42b4a741a2421299.lean/declarations/rightextension--36ad374bac379c7993ae0094.md) | 295 | `declaration-track:36ad374bac379c7993ae0094fca9bb9d09df999290c6b30375078c5eb4d8d733` |
| 36 | `abbrev` | [extension](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Extension/Variantfde25b5e16d8eac4c5118f1230acc8584e18067099bed6ce42b4a741a2421299.lean/declarations/extension--6d6f62c87f69939a1ecb7a7d.md) | 302 | `declaration-track:6d6f62c87f69939a1ecb7a7d2104b89e0ae2815a9f2553f11782224ac484f70d` |
| 37 | `abbrev` | [counit](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Extension/Variantfde25b5e16d8eac4c5118f1230acc8584e18067099bed6ce42b4a741a2421299.lean/declarations/counit--82848ced8fe7ccba635850a3.md) | 305 | `declaration-track:82848ced8fe7ccba635850a389480610a25bab879c5c88ca2d195c9f9316cdea` |
| 38 | `abbrev` | [mk](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Extension/Variantfde25b5e16d8eac4c5118f1230acc8584e18067099bed6ce42b4a741a2421299.lean/declarations/mk--5bf82819650c69bea676b086.md) | 308 | `declaration-track:5bf82819650c69bea676b0869a9fb69a9f5749e693b367ba84741efa6113d6e1` |
| 39 | `abbrev` | [homMk](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Extension/Variantfde25b5e16d8eac4c5118f1230acc8584e18067099bed6ce42b4a741a2421299.lean/declarations/hommk--e026e3474d7d2efb0288a0dc.md) | 313 | `declaration-track:e026e3474d7d2efb0288a0dc50e09283a2e89fafd2dd5438e4b117c53650f3cc` |
| 40 | `theorem` | [w](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Extension/Variantfde25b5e16d8eac4c5118f1230acc8584e18067099bed6ce42b4a741a2421299.lean/declarations/w--c9558f6e401dfe55b9ad83d1.md) | 318 | `result-track:c9558f6e401dfe55b9ad83d1d7928f9a7d656bd58f8b8cd0dc0b4dbd8a1d3318` |
| 41 | `def` | [alongId](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Extension/Variantfde25b5e16d8eac4c5118f1230acc8584e18067099bed6ce42b4a741a2421299.lean/declarations/alongid--e17587cfca6385d4517f23d5.md) | 323 | `declaration-track:e17587cfca6385d4517f23d5d7e8102f8f8feb1a98d596df34c73d5ad5f4410f` |
| 42 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Extension/Variantfde25b5e16d8eac4c5118f1230acc8584e18067099bed6ce42b4a741a2421299.lean/declarations/instance--36734623350214dfa2cc86a8.md) | 325 | `declaration-track:36734623350214dfa2cc86a8bd12061841fb98afd1530e2b89019ce295c55f90` |
| 43 | `abbrev` | [RightLift](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Extension/Variantfde25b5e16d8eac4c5118f1230acc8584e18067099bed6ce42b4a741a2421299.lean/declarations/rightlift--e9851d0472ac0dfb2fdc0f60.md) | 340 | `declaration-track:e9851d0472ac0dfb2fdc0f60667e8c23fbf2eb09483cde3475e54b4b2d831544` |
| 44 | `abbrev` | [lift](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Extension/Variantfde25b5e16d8eac4c5118f1230acc8584e18067099bed6ce42b4a741a2421299.lean/declarations/lift--a04cabecf4c594eaff4b6f49.md) | 347 | `declaration-track:a04cabecf4c594eaff4b6f49de332c97864986e219d517df2e448eca547dd4d5` |
| 45 | `abbrev` | [counit](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Extension/Variantfde25b5e16d8eac4c5118f1230acc8584e18067099bed6ce42b4a741a2421299.lean/declarations/counit--43df5801a8a77d1c13940951.md) | 350 | `declaration-track:43df5801a8a77d1c139409519642ff124b69b9254d39a1e21f4cc1a021641d40` |
| 46 | `abbrev` | [mk](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Extension/Variantfde25b5e16d8eac4c5118f1230acc8584e18067099bed6ce42b4a741a2421299.lean/declarations/mk--3c3f892b5b2688e0fe4fc660.md) | 353 | `declaration-track:3c3f892b5b2688e0fe4fc660b21fe66a8006ee18d131a41259c1de89ad8a7110` |
| 47 | `abbrev` | [homMk](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Extension/Variantfde25b5e16d8eac4c5118f1230acc8584e18067099bed6ce42b4a741a2421299.lean/declarations/hommk--9f130bc780c66eb3e096824a.md) | 358 | `declaration-track:9f130bc780c66eb3e096824a62b4b855e91ba7ddf8e71c605b3cfe3a00a5d5cf` |
| 48 | `theorem` | [w](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Extension/Variantfde25b5e16d8eac4c5118f1230acc8584e18067099bed6ce42b4a741a2421299.lean/declarations/w--ea08829b717cd62478e86241.md) | 363 | `result-track:ea08829b717cd62478e86241ebce033428812e4f7dda5d57ea5f6ce9d6dab8d6` |
| 49 | `def` | [alongId](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Extension/Variantfde25b5e16d8eac4c5118f1230acc8584e18067099bed6ce42b4a741a2421299.lean/declarations/alongid--a08a59f63c061927aa20c136.md) | 368 | `declaration-track:a08a59f63c061927aa20c136af9233c3e824dd7fd87412250181c72fecd2f42e` |
| 50 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Extension/Variantfde25b5e16d8eac4c5118f1230acc8584e18067099bed6ce42b4a741a2421299.lean/declarations/instance--b7934629b3d45b61a4cec942.md) | 370 | `declaration-track:b7934629b3d45b61a4cec942ca8ff9d08c44e37de69c61ce12a8aca9241bd827` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
