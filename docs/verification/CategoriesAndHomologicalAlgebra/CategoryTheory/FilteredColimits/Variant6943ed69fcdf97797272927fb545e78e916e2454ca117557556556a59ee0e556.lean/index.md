# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.FilteredColimits.Variant6943ed69fcdf97797272927fb545e78e916e2454ca117557556556a59ee0e556

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8f4c0985ed32b815166219b1c11b64d4d533fa7a",
  "lexical_observation_count": 20,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/FilteredColimits/Variant6943ed69fcdf97797272927fb545e78e916e2454ca117557556556a59ee0e556.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FilteredColimits/Variant6943ed69fcdf97797272927fb545e78e916e2454ca117557556556a59ee0e556.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FilteredColimits/Variant6943ed69fcdf97797272927fb545e78e916e2454ca117557556556a59ee0e556.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8f4c0985ed32b815166219b1c11b64d4d533fa7a`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/FilteredColimits/Variant6943ed69fcdf97797272927fb545e78e916e2454ca117557556556a59ee0e556.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/FilteredColimits/Variant6943ed69fcdf97797272927fb545e78e916e2454ca117557556556a59ee0e556.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Category.Grp.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Category.MonCat.FilteredColimits` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [G](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FilteredColimits/Variant6943ed69fcdf97797272927fb545e78e916e2454ca117557556556a59ee0e556.lean/declarations/g--fa261b6463e0d88f6cbc0d63.md) | 57 | `declaration-track:fa261b6463e0d88f6cbc0d638ccdff82cb2424909e5bc278451a2d3d08dd41ff` |
| 2 | `abbrev` | [G.mk](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FilteredColimits/Variant6943ed69fcdf97797272927fb545e78e916e2454ca117557556556a59ee0e556.lean/declarations/g-mk--7c99c1215b5bee3e150b5c91.md) | 62 | `declaration-track:7c99c1215b5bee3e150b5c91d2ed7ba287acefc483367d126ff4ede9a4e9229f` |
| 3 | `theorem` | [G.mk_eq](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FilteredColimits/Variant6943ed69fcdf97797272927fb545e78e916e2454ca117557556556a59ee0e556.lean/declarations/g-mk-eq--deb14f7dc3f3c991c7cfc2ff.md) | 66 | `result-track:deb14f7dc3f3c991c7cfc2ff22adf496cf5156aa5860766816fe0b612b28dbf2` |
| 4 | `def` | [colimitInvAux](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FilteredColimits/Variant6943ed69fcdf97797272927fb545e78e916e2454ca117557556556a59ee0e556.lean/declarations/colimitinvaux--6631899cf3be5085103b6935.md) | 73 | `declaration-track:6631899cf3be5085103b6935332574e01335c2ab01a59207f8ba3c2ef3851133` |
| 5 | `theorem` | [colimitInvAux_eq_of_rel](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FilteredColimits/Variant6943ed69fcdf97797272927fb545e78e916e2454ca117557556556a59ee0e556.lean/declarations/colimitinvaux-eq-of-rel--31958b914cf69aa8a0efa801.md) | 77 | `result-track:31958b914cf69aa8a0efa8015c980272eac66c461daf7acc9e647954e0370098` |
| 6 | `instance` | [colimitInv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FilteredColimits/Variant6943ed69fcdf97797272927fb545e78e916e2454ca117557556556a59ee0e556.lean/declarations/colimitinv--fcfba7066862195203be6dc7.md) | 88 | `declaration-track:fcfba7066862195203be6dc7710640f01f47706703e7663499d95e2e088507db` |
| 7 | `theorem` | [colimit_inv_mk_eq](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FilteredColimits/Variant6943ed69fcdf97797272927fb545e78e916e2454ca117557556556a59ee0e556.lean/declarations/colimit-inv-mk-eq--87fb939e6fe801a5bfcece29.md) | 97 | `result-track:87fb939e6fe801a5bfcece2912a2665048e2dfe44fc2c9f6e2671cfe6af18353` |
| 8 | `instance` | [colimitGroup](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FilteredColimits/Variant6943ed69fcdf97797272927fb545e78e916e2454ca117557556556a59ee0e556.lean/declarations/colimitgroup--dc4676d7ca6fb1c5cb005cea.md) | 101 | `declaration-track:dc4676d7ca6fb1c5cb005cea4f16ba74c2b468b6e6901832cf8d2ebe611d5a05` |
| 9 | `def` | [colimit](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FilteredColimits/Variant6943ed69fcdf97797272927fb545e78e916e2454ca117557556556a59ee0e556.lean/declarations/colimit--49ac6e6d87cf839698ed581d.md) | 112 | `declaration-track:49ac6e6d87cf839698ed581dbc0d42b1e397d245079ef87490b65238dc577efb` |
| 10 | `def` | [colimitCocone](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FilteredColimits/Variant6943ed69fcdf97797272927fb545e78e916e2454ca117557556556a59ee0e556.lean/declarations/colimitcocone--74b3224fc55f496acb353a45.md) | 117 | `declaration-track:74b3224fc55f496acb353a45a9e79b8fad7abce684d27ec846a92e97612f7b53` |
| 11 | `def` | [colimitCoconeIsColimit](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FilteredColimits/Variant6943ed69fcdf97797272927fb545e78e916e2454ca117557556556a59ee0e556.lean/declarations/colimitcoconeiscolimit--edbd4237f6361355bbc80d51.md) | 126 | `declaration-track:edbd4237f6361355bbc80d51ab9a671d531d62d77528372c62ad9a0a59781de8` |
| 12 | `instance` | [forget₂Mon_preservesFilteredColimits](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FilteredColimits/Variant6943ed69fcdf97797272927fb545e78e916e2454ca117557556556a59ee0e556.lean/declarations/forget-mon-preservesfilteredcolimits--18d21ab51602e141332fc489.md) | 141 | `declaration-track:18d21ab51602e141332fc489ea51e194f3f50a97bc4a944fb212ccd574aa30c4` |
| 13 | `instance` | [forget_preservesFilteredColimits](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FilteredColimits/Variant6943ed69fcdf97797272927fb545e78e916e2454ca117557556556a59ee0e556.lean/declarations/forget-preservesfilteredcolimits--29f0f6227faf5bacad4a7766.md) | 149 | `declaration-track:29f0f6227faf5bacad4a7766715289c1d2c59eec56042b1df54c2bcb7be9b55e` |
| 14 | `abbrev` | [G](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FilteredColimits/Variant6943ed69fcdf97797272927fb545e78e916e2454ca117557556556a59ee0e556.lean/declarations/g--fc1a15bd02f675da563cfde6.md) | 171 | `declaration-track:fc1a15bd02f675da563cfde661d894ecdec012c8f009b0f8e67d7d220172e70f` |
| 15 | `instance` | [colimitCommGroup](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FilteredColimits/Variant6943ed69fcdf97797272927fb545e78e916e2454ca117557556556a59ee0e556.lean/declarations/colimitcommgroup--6a93e699055ba369b864bb1f.md) | 175 | `declaration-track:6a93e699055ba369b864bb1fb64341de450c6f06e1de6d2f8f26a061dc70738a` |
| 16 | `def` | [colimit](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FilteredColimits/Variant6943ed69fcdf97797272927fb545e78e916e2454ca117557556556a59ee0e556.lean/declarations/colimit--3e03ca6254ae2f5e3e2b98b1.md) | 182 | `declaration-track:3e03ca6254ae2f5e3e2b98b1176ff542625b3519a6baa7aad1ffe107ba486dc9` |
| 17 | `def` | [colimitCocone](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FilteredColimits/Variant6943ed69fcdf97797272927fb545e78e916e2454ca117557556556a59ee0e556.lean/declarations/colimitcocone--cc6455cb59ef2a8580914ef7.md) | 187 | `declaration-track:cc6455cb59ef2a8580914ef7cd703c5fd6adfd23c8bd9659f61e75be8cc4fd71` |
| 18 | `def` | [colimitCoconeIsColimit](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FilteredColimits/Variant6943ed69fcdf97797272927fb545e78e916e2454ca117557556556a59ee0e556.lean/declarations/colimitcoconeiscolimit--8fcbc1a13754593d78e66233.md) | 196 | `declaration-track:8fcbc1a13754593d78e66233f75e1d5a85ef37ce3a783d075b389bc7e0ca2a12` |
| 19 | `instance` | [forget₂Group_preservesFilteredColimits](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FilteredColimits/Variant6943ed69fcdf97797272927fb545e78e916e2454ca117557556556a59ee0e556.lean/declarations/forget-group-preservesfilteredcolimits--0e391e8b677dfbc689202814.md) | 211 | `declaration-track:0e391e8b677dfbc6892028149988ba010a0a20ecaa1008d05a86f2cb96945ed0` |
| 20 | `instance` | [forget_preservesFilteredColimits](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FilteredColimits/Variant6943ed69fcdf97797272927fb545e78e916e2454ca117557556556a59ee0e556.lean/declarations/forget-preservesfilteredcolimits--cab0cdbe7176926a9c2f17b9.md) | 221 | `declaration-track:cab0cdbe7176926a9c2f17b9c3dc4c020fd36d548867b2b21c412ea6c2965b74` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
