# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.HomologicalAlgebra.InjectiveResolution.Variant11c88cd12fc2701bd1c62b0a353eec15b9cc421cf8d784592112cc1c320c4384

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b8e27831190922dcd4254730a41ee4fd6dc851d4",
  "lexical_observation_count": 27,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/InjectiveResolution/Variant11c88cd12fc2701bd1c62b0a353eec15b9cc421cf8d784592112cc1c320c4384.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/InjectiveResolution/Variant11c88cd12fc2701bd1c62b0a353eec15b9cc421cf8d784592112cc1c320c4384.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/InjectiveResolution/Variant11c88cd12fc2701bd1c62b0a353eec15b9cc421cf8d784592112cc1c320c4384.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b8e27831190922dcd4254730a41ee4fd6dc851d4`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/InjectiveResolution/Variant11c88cd12fc2701bd1c62b0a353eec15b9cc421cf8d784592112cc1c320c4384.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/InjectiveResolution/Variant11c88cd12fc2701bd1c62b0a353eec15b9cc421cf8d784592112cc1c320c4384.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Homology.QuasiIso` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Preadditive.InjectiveResolution` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Homology.HomotopyCategory` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [descFZero](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/InjectiveResolution/Variant11c88cd12fc2701bd1c62b0a353eec15b9cc421cf8d784592112cc1c320c4384.lean/declarations/descfzero--272f126ccb53c0360579745c.md) | 62 | `declaration-track:272f126ccb53c0360579745c6c23e5c3db4859e571ccf773c08dc0209ca037fa` |
| 2 | `def` | [descFOne](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/InjectiveResolution/Variant11c88cd12fc2701bd1c62b0a353eec15b9cc421cf8d784592112cc1c320c4384.lean/declarations/descfone--1fd35b8f5b4ab7613f428f29.md) | 74 | `declaration-track:1fd35b8f5b4ab7613f428f29db8aef0c14d938ab9c3a5996d4cae26e0d231f35` |
| 3 | `theorem` | [descFOne_zero_comm](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/InjectiveResolution/Variant11c88cd12fc2701bd1c62b0a353eec15b9cc421cf8d784592112cc1c320c4384.lean/declarations/descfone-zero-comm--255877a5e5191cd73d9785e1.md) | 81 | `result-track:255877a5e5191cd73d9785e17e6ce00d3837f6a06ea278265db8bf1da76b4b31` |
| 4 | `def` | [descFSucc](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/InjectiveResolution/Variant11c88cd12fc2701bd1c62b0a353eec15b9cc421cf8d784592112cc1c320c4384.lean/declarations/descfsucc--e1e4b9739f234b3911dc3e2d.md) | 88 | `declaration-track:e1e4b9739f234b3911dc3e2d8498a771c93a4c14c97b4225de536d701bb3410c` |
| 5 | `def` | [desc](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/InjectiveResolution/Variant11c88cd12fc2701bd1c62b0a353eec15b9cc421cf8d784592112cc1c320c4384.lean/declarations/desc--07e558fa60897b9c4357e78f.md) | 100 | `declaration-track:07e558fa60897b9c4357e78f48a74c84dcd2ea8c7741ebdc1db99c474f8c753f` |
| 6 | `theorem` | [desc_commutes](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/InjectiveResolution/Variant11c88cd12fc2701bd1c62b0a353eec15b9cc421cf8d784592112cc1c320c4384.lean/declarations/desc-commutes--12a311911b44c24358f78889.md) | 108 | `result-track:12a311911b44c24358f788899ff436905d88e4ca74290878d952411d1e156162` |
| 7 | `def` | [descHomotopyZeroZero](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/InjectiveResolution/Variant11c88cd12fc2701bd1c62b0a353eec15b9cc421cf8d784592112cc1c320c4384.lean/declarations/deschomotopyzerozero--0df385d19c62322883574063.md) | 116 | `declaration-track:0df385d19c6232288357406359077f0c55af13defe9ade4751b93e263dc52cf1` |
| 8 | `def` | [descHomotopyZeroOne](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/InjectiveResolution/Variant11c88cd12fc2701bd1c62b0a353eec15b9cc421cf8d784592112cc1c320c4384.lean/declarations/deschomotopyzeroone--994b225d0df6bbd9ad41610e.md) | 123 | `declaration-track:994b225d0df6bbd9ad41610ed4f51e2f7f868ca63d3c52fbf4004d0f921b0420` |
| 9 | `def` | [descHomotopyZeroSucc](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/InjectiveResolution/Variant11c88cd12fc2701bd1c62b0a353eec15b9cc421cf8d784592112cc1c320c4384.lean/declarations/deschomotopyzerosucc--93802c8bcc5734ae5e2ec314.md) | 132 | `declaration-track:93802c8bcc5734ae5e2ec31473729c38d72a7d7aa3ecd316dfced512f540ab18` |
| 10 | `def` | [descHomotopyZero](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/InjectiveResolution/Variant11c88cd12fc2701bd1c62b0a353eec15b9cc421cf8d784592112cc1c320c4384.lean/declarations/deschomotopyzero--efc0ac465e182bd10443186d.md) | 147 | `declaration-track:efc0ac465e182bd10443186de0f042ef85d3486d7ce1975eaf2ba834e07039d8` |
| 11 | `def` | [descHomotopy](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/InjectiveResolution/Variant11c88cd12fc2701bd1c62b0a353eec15b9cc421cf8d784592112cc1c320c4384.lean/declarations/deschomotopy--3c72a21648247d4ddfbf7b1d.md) | 155 | `declaration-track:3c72a21648247d4ddfbf7b1d23269de999df5a112d0741efdc9e6fecd81485f9` |
| 12 | `def` | [descIdHomotopy](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/InjectiveResolution/Variant11c88cd12fc2701bd1c62b0a353eec15b9cc421cf8d784592112cc1c320c4384.lean/declarations/descidhomotopy--95d49ef116155fedd4278ec7.md) | 162 | `declaration-track:95d49ef116155fedd4278ec7408d4a487dcebc86703c7dd7dfb59fa736b42706` |
| 13 | `def` | [descCompHomotopy](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/InjectiveResolution/Variant11c88cd12fc2701bd1c62b0a353eec15b9cc421cf8d784592112cc1c320c4384.lean/declarations/desccomphomotopy--81aceda1af500f99fc8db1b1.md) | 168 | `declaration-track:81aceda1af500f99fc8db1b15cffad383c32e50afc095a82b5823aa4690ce468` |
| 14 | `def` | [homotopyEquiv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/InjectiveResolution/Variant11c88cd12fc2701bd1c62b0a353eec15b9cc421cf8d784592112cc1c320c4384.lean/declarations/homotopyequiv--4a690c52f5eabe5da02b446a.md) | 176 | `declaration-track:4a690c52f5eabe5da02b446a86713797b4e507abc9ed9129f984a9baf1982190` |
| 15 | `theorem` | [homotopyEquiv_hom_ι](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/InjectiveResolution/Variant11c88cd12fc2701bd1c62b0a353eec15b9cc421cf8d784592112cc1c320c4384.lean/declarations/homotopyequiv-hom--62a839fdc9d0c331b8996d18.md) | 187 | `result-track:62a839fdc9d0c331b8996d187396ebd098ad929b5ae4ad5bf13a9b1a9d05f3fa` |
| 16 | `theorem` | [homotopyEquiv_inv_ι](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/InjectiveResolution/Variant11c88cd12fc2701bd1c62b0a353eec15b9cc421cf8d784592112cc1c320c4384.lean/declarations/homotopyequiv-inv--955f24ec910c3b7643a6f656.md) | 192 | `result-track:955f24ec910c3b7643a6f656460d48e4edf1f9499dd3a0ea584d30358c0e8d69` |
| 17 | `abbrev` | [injectiveResolution](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/InjectiveResolution/Variant11c88cd12fc2701bd1c62b0a353eec15b9cc421cf8d784592112cc1c320c4384.lean/declarations/injectiveresolution--376bd9347b3739d6b04063e0.md) | 205 | `declaration-track:376bd9347b3739d6b04063e039f76bda682f5eab3189ccf0abcaf7dc21fba0d7` |
| 18 | `abbrev` | [injectiveResolution.ι](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/InjectiveResolution/Variant11c88cd12fc2701bd1c62b0a353eec15b9cc421cf8d784592112cc1c320c4384.lean/declarations/injectiveresolution--df0874d3c6ebe2858e91d2c9.md) | 211 | `declaration-track:df0874d3c6ebe2858e91d2c9f86047824dc5b3c8ab318a16de586e97c5de0a6f` |
| 19 | `abbrev` | [injectiveResolution.desc](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/InjectiveResolution/Variant11c88cd12fc2701bd1c62b0a353eec15b9cc421cf8d784592112cc1c320c4384.lean/declarations/injectiveresolution-desc--89629ced3f5efa6d24392de3.md) | 218 | `declaration-track:89629ced3f5efa6d24392de3cfdf18cf6e60b4cb6586770f3dbb15f5cbde6613` |
| 20 | `def` | [injectiveResolutions](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/InjectiveResolution/Variant11c88cd12fc2701bd1c62b0a353eec15b9cc421cf8d784592112cc1c320c4384.lean/declarations/injectiveresolutions--5425785b8ed864c793000b2a.md) | 230 | `declaration-track:5425785b8ed864c793000b2aaa240cff74272890a1d569f1687854ff55c5c3b9` |
| 21 | `theorem` | [exact_f_d](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/InjectiveResolution/Variant11c88cd12fc2701bd1c62b0a353eec15b9cc421cf8d784592112cc1c320c4384.lean/declarations/exact-f-d--ab03c3478efd96af76d4ea04.md) | 249 | `result-track:ab03c3478efd96af76d4ea0460e7ce3fd054933f135f22f2f0bf8ac6f15f48b9` |
| 22 | `def` | [ofCocomplex](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/InjectiveResolution/Variant11c88cd12fc2701bd1c62b0a353eec15b9cc421cf8d784592112cc1c320c4384.lean/declarations/ofcocomplex--241ea60343343203eacf90e1.md) | 272 | `declaration-track:241ea60343343203eacf90e11145a373c367bf4a43592160f404dad152f95e95` |
| 23 | `theorem` | [ofCocomplex_sq_01_comm](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/InjectiveResolution/Variant11c88cd12fc2701bd1c62b0a353eec15b9cc421cf8d784592112cc1c320c4384.lean/declarations/ofcocomplex-sq-01-comm--90f11f9827fc4e9bd4e38784.md) | 282 | `result-track:90f11f9827fc4e9bd4e38784c9d417099f994014b0d99aba94e13b6ea472b6b8` |
| 24 | `theorem` | [exact_ofCocomplex](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/InjectiveResolution/Variant11c88cd12fc2701bd1c62b0a353eec15b9cc421cf8d784592112cc1c320c4384.lean/declarations/exact-ofcocomplex--42610e132044add1c01a5588.md) | 291 | `result-track:42610e132044add1c01a5588a22b50914113d5b68686f698c57edcd7d1afee6b` |
| 25 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/InjectiveResolution/Variant11c88cd12fc2701bd1c62b0a353eec15b9cc421cf8d784592112cc1c320c4384.lean/declarations/instance--72fc346f853b223daae4d2cf.md) | 325 | `declaration-track:72fc346f853b223daae4d2cfb6021006964bc5b1b02987d46e87aa46934ac50c` |
| 26 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/InjectiveResolution/Variant11c88cd12fc2701bd1c62b0a353eec15b9cc421cf8d784592112cc1c320c4384.lean/declarations/instance--c829f133285be859848fa319.md) | 327 | `declaration-track:c829f133285be859848fa319fb919b9ec66cb0287ea2cbde7b3398a48392e597` |
| 27 | `def` | [HomologicalComplex.Hom.fromSingle₀InjectiveResolution](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/InjectiveResolution/Variant11c88cd12fc2701bd1c62b0a353eec15b9cc421cf8d784592112cc1c320c4384.lean/declarations/homologicalcomplex-hom-fromsingle-injectiveresolution--535ca5058a502e8063d2a73e.md) | 339 | `declaration-track:535ca5058a502e8063d2a73e2490438f1fab1bd9afa9feca227bc8ae1e3b709f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
