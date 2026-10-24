# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Subcategory.Variantff57f4cfbcbb767b99bfe24d0468807776d323f63c09d6a3c98544a7c3c8a609

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f5d20689a66ea3179d481f44d91547e741876c92",
  "lexical_observation_count": 28,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Subcategory/Variantff57f4cfbcbb767b99bfe24d0468807776d323f63c09d6a3c98544a7c3c8a609.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Subcategory/Variantff57f4cfbcbb767b99bfe24d0468807776d323f63c09d6a3c98544a7c3c8a609.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Subcategory/Variantff57f4cfbcbb767b99bfe24d0468807776d323f63c09d6a3c98544a7c3c8a609.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f5d20689a66ea3179d481f44d91547e741876c92`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Subcategory/Variantff57f4cfbcbb767b99bfe24d0468807776d323f63c09d6a3c98544a7c3c8a609.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Subcategory/Variantff57f4cfbcbb767b99bfe24d0468807776d323f63c09d6a3c98544a7c3c8a609.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Monoidal.Braided.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Monoidal.Linear` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Monoidal.Transport` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Preadditive.AdditiveFunctor` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Linear.LinearFunctor` — import line 15; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Closed.Monoidal` — import line 16; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [TensorLE](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Subcategory/Variantff57f4cfbcbb767b99bfe24d0468807776d323f63c09d6a3c98544a7c3c8a609.lean/declarations/tensorle--4db963de00670d5fb1ab2f24.md) | 51 | `declaration-track:4db963de00670d5fb1ab2f24488bfb76a695d4fc29c0bcfdf8e8d268b64ba12b` |
| 2 | `lemma` | [prop_tensor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Subcategory/Variantff57f4cfbcbb767b99bfe24d0468807776d323f63c09d6a3c98544a7c3c8a609.lean/declarations/prop-tensor--58790b82930acfaf02e70480.md) | 54 | `result-track:58790b82930acfaf02e704806e9fbdbf0fa2580c75ab2c02026676565e2557a7` |
| 3 | `class` | [ContainsUnit](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Subcategory/Variantff57f4cfbcbb767b99bfe24d0468807776d323f63c09d6a3c98544a7c3c8a609.lean/declarations/containsunit--6790de2b438225e12eb5dd2a.md) | 60 | `declaration-track:6790de2b438225e12eb5dd2a0394122e3bb7252315bc7ff0372a68936ab2a250` |
| 4 | `lemma` | [prop_unit](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Subcategory/Variantff57f4cfbcbb767b99bfe24d0468807776d323f63c09d6a3c98544a7c3c8a609.lean/declarations/prop-unit--07ac0a632a4794f15182d341.md) | 63 | `result-track:07ac0a632a4794f15182d341461640a8500c0928422584d71516dad1505c9303` |
| 5 | `class` | [IsMonoidal](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Subcategory/Variantff57f4cfbcbb767b99bfe24d0468807776d323f63c09d6a3c98544a7c3c8a609.lean/declarations/ismonoidal--a59bc006f45b3a7e8a19bb02.md) | 68 | `declaration-track:a59bc006f45b3a7e8a19bb025ded182439e156dca4ae08b8efa5dc2683714788` |
| 6 | `class` | [IsMonoidalClosed](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Subcategory/Variantff57f4cfbcbb767b99bfe24d0468807776d323f63c09d6a3c98544a7c3c8a609.lean/declarations/ismonoidalclosed--c8e29a4153a869cbcd6fd4bb.md) | 73 | `declaration-track:c8e29a4153a869cbcd6fd4bba726df7e9c53aec2fd731cdf39a73248c0bf8a34` |
| 7 | `lemma` | [prop_ihom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Subcategory/Variantff57f4cfbcbb767b99bfe24d0468807776d323f63c09d6a3c98544a7c3c8a609.lean/declarations/prop-ihom--306327e22839e266126d7597.md) | 76 | `result-track:306327e22839e266126d759742e43f403f5ee43dbc794b80b6131e6c9b215721` |
| 8 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Subcategory/Variantff57f4cfbcbb767b99bfe24d0468807776d323f63c09d6a3c98544a7c3c8a609.lean/declarations/instance--a607afdb32a94b4a76780b71.md) | 83 | `declaration-track:a607afdb32a94b4a76780b71c6394ff5812a57ae151646a0fea7eb1082d9f5d6` |
| 9 | `instance` | [fullMonoidalSubcategory](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Subcategory/Variantff57f4cfbcbb767b99bfe24d0468807776d323f63c09d6a3c98544a7c3c8a609.lean/declarations/fullmonoidalsubcategory--995fb0fe1fd2dde484a24290.md) | 97 | `declaration-track:995fb0fe1fd2dde484a242907e3aa48c00000e2255b6356b2bf268e5c705f65e` |
| 10 | `instance` | [monoidalι](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Subcategory/Variantff57f4cfbcbb767b99bfe24d0468807776d323f63c09d6a3c98544a7c3c8a609.lean/declarations/monoidal--9a40306e2ac7dcaa43ef0953.md) | 105 | `declaration-track:9a40306e2ac7dcaa43ef0953c02eaa04189112f84fc1d66113b557bd230dbfee` |
| 11 | `lemma` | [ι_ε](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Subcategory/Variantff57f4cfbcbb767b99bfe24d0468807776d323f63c09d6a3c98544a7c3c8a609.lean/declarations/anonymous--4b092831e20aed378cfafac8.md) | 112 | `result-track:4b092831e20aed378cfafac86ac44aaf853740a9d3e2e60e4e4d478b934eb11c` |
| 12 | `lemma` | [ι_η](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Subcategory/Variantff57f4cfbcbb767b99bfe24d0468807776d323f63c09d6a3c98544a7c3c8a609.lean/declarations/anonymous--cc18dbfb9df2c2d2f6d45183.md) | 113 | `result-track:cc18dbfb9df2c2d2f6d45183158b125b50097595b70e09cec75fad5d5820bd3d` |
| 13 | `lemma` | [ι_μ](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Subcategory/Variantff57f4cfbcbb767b99bfe24d0468807776d323f63c09d6a3c98544a7c3c8a609.lean/declarations/anonymous--6b1ddb78757f656afac3fe5c.md) | 114 | `result-track:6b1ddb78757f656afac3fe5cac5ae25a4f6dcc5fac2829d3a78b3ae5d3cf2795` |
| 14 | `lemma` | [ι_δ](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Subcategory/Variantff57f4cfbcbb767b99bfe24d0468807776d323f63c09d6a3c98544a7c3c8a609.lean/declarations/anonymous--d3765b0724c074f3d8d06de3.md) | 115 | `result-track:d3765b0724c074f3d8d06de34c89dd9ba96e5301516d6dc28cc887ceb3ce3e4a` |
| 15 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Subcategory/Variantff57f4cfbcbb767b99bfe24d0468807776d323f63c09d6a3c98544a7c3c8a609.lean/declarations/instance--1d25f45d0bf5ca7ba5162af8.md) | 121 | `declaration-track:1d25f45d0bf5ca7ba5162af8829ce1dab56bfefe03e8575d98dfcb3e14709bca` |
| 16 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Subcategory/Variantff57f4cfbcbb767b99bfe24d0468807776d323f63c09d6a3c98544a7c3c8a609.lean/declarations/instance--8902d1a8c0bce63f685df68b.md) | 126 | `declaration-track:8902d1a8c0bce63f685df68b400423e53663b818749f0a56dc2b4ba66fbf5a65` |
| 17 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Subcategory/Variantff57f4cfbcbb767b99bfe24d0468807776d323f63c09d6a3c98544a7c3c8a609.lean/declarations/instance--678671e624f6022f85349c3e.md) | 137 | `declaration-track:678671e624f6022f85349c3e9f8d29e0b7d11756d8da65d1c106f24e9c6c9c35` |
| 18 | `lemma` | [ιOfLE_ε](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Subcategory/Variantff57f4cfbcbb767b99bfe24d0468807776d323f63c09d6a3c98544a7c3c8a609.lean/declarations/ofle--71a3e9fb4abc550eb93cea2a.md) | 142 | `result-track:71a3e9fb4abc550eb93cea2a1b7d91d16a41e80209007e9ea5f1c575a4ac0d70` |
| 19 | `lemma` | [ιOfLE_η](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Subcategory/Variantff57f4cfbcbb767b99bfe24d0468807776d323f63c09d6a3c98544a7c3c8a609.lean/declarations/ofle--5f1d8f5201ef8f3dafe5cd96.md) | 143 | `result-track:5f1d8f5201ef8f3dafe5cd96fd5089a0385836bbfbb2a31bd4b3ef796c49f460` |
| 20 | `lemma` | [ιOfLE_μ](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Subcategory/Variantff57f4cfbcbb767b99bfe24d0468807776d323f63c09d6a3c98544a7c3c8a609.lean/declarations/ofle--8213e4ee4b419aeaa0883ab8.md) | 144 | `result-track:8213e4ee4b419aeaa0883ab83213412ced8598b29e712756078d8bbfac2e8025` |
| 21 | `lemma` | [ιOfLE_δ](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Subcategory/Variantff57f4cfbcbb767b99bfe24d0468807776d323f63c09d6a3c98544a7c3c8a609.lean/declarations/ofle--232498382a23c3982f18caaf.md) | 145 | `result-track:232498382a23c3982f18caaf85bee7653ef0c2da65b9db6dfd89fc5eabe9a4f1` |
| 22 | `instance` | [fullBraidedSubcategory](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Subcategory/Variantff57f4cfbcbb767b99bfe24d0468807776d323f63c09d6a3c98544a7c3c8a609.lean/declarations/fullbraidedsubcategory--7e8a8f2d19abcbcf46a28b19.md) | 155 | `declaration-track:7e8a8f2d19abcbcf46a28b191e32ea613bc88688d88dab3f4fe29a1d07e1635b` |
| 23 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Subcategory/Variantff57f4cfbcbb767b99bfe24d0468807776d323f63c09d6a3c98544a7c3c8a609.lean/declarations/instance--b0434f2b2115eac5f606c69b.md) | 161 | `declaration-track:b0434f2b2115eac5f606c69ba14f1f75eb8dd5c3cdcc13c5408bfa634f4c7541` |
| 24 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Subcategory/Variantff57f4cfbcbb767b99bfe24d0468807776d323f63c09d6a3c98544a7c3c8a609.lean/declarations/instance--f71eacad7a957dfb4991d5ed.md) | 167 | `declaration-track:f71eacad7a957dfb4991d5edbcac7e00500e8f4156d4542b04f274acbf5572bb` |
| 25 | `instance` | [fullSymmetricSubcategory](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Subcategory/Variantff57f4cfbcbb767b99bfe24d0468807776d323f63c09d6a3c98544a7c3c8a609.lean/declarations/fullsymmetricsubcategory--185a1c7373c9159c5929e19d.md) | 176 | `declaration-track:185a1c7373c9159c5929e19da70092f64283bd4591751eeb9f9d80de0329a726` |
| 26 | `instance` | [fullMonoidalClosedSubcategory](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Subcategory/Variantff57f4cfbcbb767b99bfe24d0468807776d323f63c09d6a3c98544a7c3c8a609.lean/declarations/fullmonoidalclosedsubcategory--68ca34e7c48dd328e2681a74.md) | 185 | `declaration-track:68ca34e7c48dd328e2681a741d1de86ca3d2ed65329c6e84549d44b6ee0493eb` |
| 27 | `theorem` | [ihom_obj](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Subcategory/Variantff57f4cfbcbb767b99bfe24d0468807776d323f63c09d6a3c98544a7c3c8a609.lean/declarations/ihom-obj--d9da6a1a0b9044a75a2ec02d.md) | 202 | `result-track:d9da6a1a0b9044a75a2ec02d6874e1ee8ac91b71d2984b2d2b2c619db3e9d798` |
| 28 | `theorem` | [ihom_map](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Subcategory/Variantff57f4cfbcbb767b99bfe24d0468807776d323f63c09d6a3c98544a7c3c8a609.lean/declarations/ihom-map--b0f7bcabd9300c76a0770b7f.md) | 207 | `result-track:b0f7bcabd9300c76a0770b7f3170ed260a65f5093f10a210253441f9006ca82e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
