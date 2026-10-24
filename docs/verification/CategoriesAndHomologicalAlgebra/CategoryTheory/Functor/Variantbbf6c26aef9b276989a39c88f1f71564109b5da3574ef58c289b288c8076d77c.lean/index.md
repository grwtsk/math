# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Functor.Variantbbf6c26aef9b276989a39c88f1f71564109b5da3574ef58c289b288c8076d77c

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f1b06850dbb204dfb1b0a033aa7342ad21ae293d",
  "lexical_observation_count": 44,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Functor/Variantbbf6c26aef9b276989a39c88f1f71564109b5da3574ef58c289b288c8076d77c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Functor/Variantbbf6c26aef9b276989a39c88f1f71564109b5da3574ef58c289b288c8076d77c.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Functor/Variantbbf6c26aef9b276989a39c88f1f71564109b5da3574ef58c289b288c8076d77c.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f1b06850dbb204dfb1b0a033aa7342ad21ae293d`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Functor/Variantbbf6c26aef9b276989a39c88f1f71564109b5da3574ef58c289b288c8076d77c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Functor/Variantbbf6c26aef9b276989a39c88f1f71564109b5da3574ef58c289b288c8076d77c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Tactic.Attr.Register` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Set.Defs` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.TypeStar` — import line 13; external provider; requires a separately pinned dependency.
- `Batteries.Tactic.Lint` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [Functor.map_id](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Functor/Variantbbf6c26aef9b276989a39c88f1f71564109b5da3574ef58c289b288c8076d77c.lean/declarations/functor-map-id--dbe7c44028bb904989287bfe.md) | 45 | `result-track:dbe7c44028bb904989287bfef0988e46def950b66d0bc4c1c1ed1adf65f1c95a` |
| 2 | `theorem` | [Functor.map_comp_map](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Functor/Variantbbf6c26aef9b276989a39c88f1f71564109b5da3574ef58c289b288c8076d77c.lean/declarations/functor-map-comp-map--9fee360ab5b0b9a91bb67357.md) | 47 | `result-track:9fee360ab5b0b9a91bb673578ee8e3305e8533304adc9d725fefbf14c4ec689f` |
| 3 | `theorem` | [Functor.ext](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Functor/Variantbbf6c26aef9b276989a39c88f1f71564109b5da3574ef58c289b288c8076d77c.lean/declarations/functor-ext--6b676cf9daa5f88eac82afac.md) | 52 | `result-track:6b676cf9daa5f88eac82afac1847ecfab138206d92b567a08dc6a6192cd1c5a5` |
| 4 | `def` | [id.mk](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Functor/Variantbbf6c26aef9b276989a39c88f1f71564109b5da3574ef58c289b288c8076d77c.lean/declarations/id-mk--a13b7d52865d7425dfc16345.md) | 69 | `declaration-track:a13b7d52865d7425dfc16345d1df7b2e4af9f741da6989de09334d6652e36f87` |
| 5 | `def` | [Const](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Functor/Variantbbf6c26aef9b276989a39c88f1f71564109b5da3574ef58c289b288c8076d77c.lean/declarations/const--992cfc1d0d93eab8c09218b7.md) | 78 | `declaration-track:992cfc1d0d93eab8c09218b7cfd40a619e76e110e9bef95f9c3d0b85f9f914b8` |
| 6 | `def` | [Const.mk](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Functor/Variantbbf6c26aef9b276989a39c88f1f71564109b5da3574ef58c289b288c8076d77c.lean/declarations/const-mk--0b33c3f9f5add3e353a4719e.md) | 84 | `declaration-track:0b33c3f9f5add3e353a4719e2faa61f0ab8e6dbb77a13c8071f9c612fb82431d` |
| 7 | `def` | [Const.mk'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Functor/Variantbbf6c26aef9b276989a39c88f1f71564109b5da3574ef58c289b288c8076d77c.lean/declarations/const-mk--40131d992628d01328fcd94c.md) | 89 | `declaration-track:40131d992628d01328fcd94cc34b4fff0681c9ae84a7290a51e109397dab2943` |
| 8 | `def` | [Const.run](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Functor/Variantbbf6c26aef9b276989a39c88f1f71564109b5da3574ef58c289b288c8076d77c.lean/declarations/const-run--2af0b9215b53bbbf67e00071.md) | 93 | `declaration-track:2af0b9215b53bbbf67e000713ef419ccfd19462b273f5a54fbfdde859965d54b` |
| 9 | `theorem` | [ext](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Functor/Variantbbf6c26aef9b276989a39c88f1f71564109b5da3574ef58c289b288c8076d77c.lean/declarations/ext--468aa8f61a8ab7021d59a113.md) | 98 | `result-track:468aa8f61a8ab7021d59a113c78dca55862bc9d1ad1c8524287ee1487f422433` |
| 10 | `def` | [map](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Functor/Variantbbf6c26aef9b276989a39c88f1f71564109b5da3574ef58c289b288c8076d77c.lean/declarations/map--08bf48f01062de25cf7dc7de.md) | 103 | `declaration-track:08bf48f01062de25cf7dc7de688f007b15d03c38ec55169eb90dbe1045932fd7` |
| 11 | `instance` | [functor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Functor/Variantbbf6c26aef9b276989a39c88f1f71564109b5da3574ef58c289b288c8076d77c.lean/declarations/functor--80c4aeed0eefa0af9ab6db02.md) | 106 | `declaration-track:80c4aeed0eefa0af9ab6db023e053e725c6aefda14b3ef48307a7da338442d11` |
| 12 | `instance` | [lawfulFunctor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Functor/Variantbbf6c26aef9b276989a39c88f1f71564109b5da3574ef58c289b288c8076d77c.lean/declarations/lawfulfunctor--0ad2e090781d6885e6829ae3.md) | 108 | `declaration-track:0ad2e090781d6885e6829ae3bdad22022b01d451a6975f440822ea9e47377792` |
| 13 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Functor/Variantbbf6c26aef9b276989a39c88f1f71564109b5da3574ef58c289b288c8076d77c.lean/declarations/instance--6e657ca39f748f724fb79143.md) | 110 | `declaration-track:6e657ca39f748f724fb79143d6d1b75b2123824073de65c7d099bab8e4cb8403` |
| 14 | `def` | [AddConst](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Functor/Variantbbf6c26aef9b276989a39c88f1f71564109b5da3574ef58c289b288c8076d77c.lean/declarations/addconst--7eb25a9ba649841435e0c436.md) | 119 | `declaration-track:7eb25a9ba649841435e0c436de6139d4f82afc67c3c2cafdcda554b4e7060441` |
| 15 | `def` | [AddConst.mk](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Functor/Variantbbf6c26aef9b276989a39c88f1f71564109b5da3574ef58c289b288c8076d77c.lean/declarations/addconst-mk--e7691c14f53d553bd49cd072.md) | 125 | `declaration-track:e7691c14f53d553bd49cd07200499970e302ecd786a27649db8f8667eb943aaf` |
| 16 | `def` | [AddConst.run](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Functor/Variantbbf6c26aef9b276989a39c88f1f71564109b5da3574ef58c289b288c8076d77c.lean/declarations/addconst-run--ca083550001e0b149ca82e71.md) | 129 | `declaration-track:ca083550001e0b149ca82e71faae662d61453ae00d24b5fc4c5e78ec89d0e094` |
| 17 | `instance` | [AddConst.functor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Functor/Variantbbf6c26aef9b276989a39c88f1f71564109b5da3574ef58c289b288c8076d77c.lean/declarations/addconst-functor--d71c39c14f63ab7d949b92a2.md) | 132 | `declaration-track:d71c39c14f63ab7d949b92a22810eec423c7ac889fa912d6b653efbfffda679d` |
| 18 | `instance` | [AddConst.lawfulFunctor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Functor/Variantbbf6c26aef9b276989a39c88f1f71564109b5da3574ef58c289b288c8076d77c.lean/declarations/addconst-lawfulfunctor--4626b1c3042c75fdb9fe75e7.md) | 135 | `declaration-track:4626b1c3042c75fdb9fe75e7f75a4286e0e7e0de4420718ae9a48709cd339e3e` |
| 19 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Functor/Variantbbf6c26aef9b276989a39c88f1f71564109b5da3574ef58c289b288c8076d77c.lean/declarations/instance--25b4f5487304b33e90e71029.md) | 138 | `declaration-track:25b4f5487304b33e90e71029008415a1115276d055715e08ea28f6a76b8e4af1` |
| 20 | `def` | [Comp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Functor/Variantbbf6c26aef9b276989a39c88f1f71564109b5da3574ef58c289b288c8076d77c.lean/declarations/comp--8c0963bc9be343ca2140f777.md) | 144 | `declaration-track:8c0963bc9be343ca2140f77732133a6fdb39ba8eb979f0353d56aa902fb9867b` |
| 21 | `def` | [Comp.mk](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Functor/Variantbbf6c26aef9b276989a39c88f1f71564109b5da3574ef58c289b288c8076d77c.lean/declarations/comp-mk--480ff87413c4866794f6d033.md) | 150 | `declaration-track:480ff87413c4866794f6d0330214ef2dfbaa6d39e685294ab812df47b3dfa80a` |
| 22 | `def` | [Comp.run](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Functor/Variantbbf6c26aef9b276989a39c88f1f71564109b5da3574ef58c289b288c8076d77c.lean/declarations/comp-run--6a8d83f2d28ab3071dcf06a0.md) | 154 | `declaration-track:6a8d83f2d28ab3071dcf06a03f11dccb66c7b757cb002a599b17e8a6fe18e587` |
| 23 | `theorem` | [ext](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Functor/Variantbbf6c26aef9b276989a39c88f1f71564109b5da3574ef58c289b288c8076d77c.lean/declarations/ext--f47147b07131bfa1fb96ac06.md) | 161 | `result-track:f47147b07131bfa1fb96ac061c2b70ea8182930ceb6d092e95bffd33f20deee7` |
| 24 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Functor/Variantbbf6c26aef9b276989a39c88f1f71564109b5da3574ef58c289b288c8076d77c.lean/declarations/instance--1809803af9b010b67f132951.md) | 164 | `declaration-track:1809803af9b010b67f132951aed456378a8d1aa39aeed4d7c560800239793560` |
| 25 | `def` | [map](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Functor/Variantbbf6c26aef9b276989a39c88f1f71564109b5da3574ef58c289b288c8076d77c.lean/declarations/map--e0d2eabca0b0d68a62d74546.md) | 170 | `declaration-track:e0d2eabca0b0d68a62d745464fb8ec053ad37effde26744b1bb040896908668d` |
| 26 | `instance` | [functor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Functor/Variantbbf6c26aef9b276989a39c88f1f71564109b5da3574ef58c289b288c8076d77c.lean/declarations/functor--9eac2f7a600d1154e44e57a7.md) | 173 | `declaration-track:9eac2f7a600d1154e44e57a73040c18f3c8e2974e957d346048eb19e84429d54` |
| 27 | `theorem` | [map_mk](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Functor/Variantbbf6c26aef9b276989a39c88f1f71564109b5da3574ef58c289b288c8076d77c.lean/declarations/map-mk--c81bc35b27389ab646ef635f.md) | 176 | `result-track:c81bc35b27389ab646ef635f89d4175ac26563307a712d5255487419704a0c25` |
| 28 | `theorem` | [run_map](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Functor/Variantbbf6c26aef9b276989a39c88f1f71564109b5da3574ef58c289b288c8076d77c.lean/declarations/run-map--6df30cb3230ef1e26be89a20.md) | 180 | `result-track:6df30cb3230ef1e26be89a207af3cc2720cb912c6a81a5348d5ca57f2301a6e1` |
| 29 | `theorem` | [id_map](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Functor/Variantbbf6c26aef9b276989a39c88f1f71564109b5da3574ef58c289b288c8076d77c.lean/declarations/id-map--d60366bcf6dd96bd76d0c58a.md) | 187 | `result-track:d60366bcf6dd96bd76d0c58aa1d830b1f768cb8cee376942fd42d8456a62758d` |
| 30 | `theorem` | [comp_map](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Functor/Variantbbf6c26aef9b276989a39c88f1f71564109b5da3574ef58c289b288c8076d77c.lean/declarations/comp-map--3cf7c7ef404bd3846d65d65f.md) | 190 | `result-track:3cf7c7ef404bd3846d65d65fab233159501e5278b1d9781fd4c3019d8649ecbd` |
| 31 | `instance` | [lawfulFunctor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Functor/Variantbbf6c26aef9b276989a39c88f1f71564109b5da3574ef58c289b288c8076d77c.lean/declarations/lawfulfunctor--880e4b3e5a95e1b5ad07abef.md) | 194 | `declaration-track:880e4b3e5a95e1b5ad07abeff6035f9edbe7326c40dca0caee7795bb1490f156` |
| 32 | `theorem` | [functor_comp_id](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Functor/Variantbbf6c26aef9b276989a39c88f1f71564109b5da3574ef58c289b288c8076d77c.lean/declarations/functor-comp-id--067706cffff5ed44a8fd4863.md) | 200 | `result-track:067706cffff5ed44a8fd4863c5dff2da510e9d05facb0c8048b7b0c92d6e974c` |
| 33 | `theorem` | [functor_id_comp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Functor/Variantbbf6c26aef9b276989a39c88f1f71564109b5da3574ef58c289b288c8076d77c.lean/declarations/functor-id-comp--9fc08599549602565fd69cb2.md) | 205 | `result-track:9fc08599549602565fd69cb22c02682edeafa9facde4207e4fbbdd508793bf55` |
| 34 | `def` | [seq](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Functor/Variantbbf6c26aef9b276989a39c88f1f71564109b5da3574ef58c289b288c8076d77c.lean/declarations/seq--d2e25570b45f58ed7a81404f.md) | 220 | `declaration-track:d2e25570b45f58ed7a81404fbc3682cff6cc4005c5e69c8d03374b6fa275a145` |
| 35 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Functor/Variantbbf6c26aef9b276989a39c88f1f71564109b5da3574ef58c289b288c8076d77c.lean/declarations/instance--cc38cca8ef7185c9b8c5cac9.md) | 225 | `declaration-track:cc38cca8ef7185c9b8c5cac991559e33cfc4a1cb0f7fe4df590301bbab423469` |
| 36 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Functor/Variantbbf6c26aef9b276989a39c88f1f71564109b5da3574ef58c289b288c8076d77c.lean/declarations/instance--a38b46b8f1dd2bb7704f3b4b.md) | 228 | `declaration-track:a38b46b8f1dd2bb7704f3b4b80e08763c19c2831e265ab9cb1d7b612470a0a34` |
| 37 | `theorem` | [run_pure](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Functor/Variantbbf6c26aef9b276989a39c88f1f71564109b5da3574ef58c289b288c8076d77c.lean/declarations/run-pure--e7cad9ce4860dbff6de5e2e9.md) | 232 | `result-track:e7cad9ce4860dbff6de5e2e9aa6659019d0e7bcbe0b2fbb71f7e64619ae10136` |
| 38 | `theorem` | [run_seq](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Functor/Variantbbf6c26aef9b276989a39c88f1f71564109b5da3574ef58c289b288c8076d77c.lean/declarations/run-seq--385f50b197edc6b8f001f9b4.md) | 236 | `result-track:385f50b197edc6b8f001f9b487222ec1c45f95aebfc7b3798ed4ca83d0bda393` |
| 39 | `instance` | [instApplicativeComp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Functor/Variantbbf6c26aef9b276989a39c88f1f71564109b5da3574ef58c289b288c8076d77c.lean/declarations/instapplicativecomp--90755f4406019f3df3346ae2.md) | 240 | `declaration-track:90755f4406019f3df3346ae22f7c7bf969b8d9ac8193ebbe8a90de5844979784` |
| 40 | `def` | [Liftp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Functor/Variantbbf6c26aef9b276989a39c88f1f71564109b5da3574ef58c289b288c8076d77c.lean/declarations/liftp--6fad52362f7d622a0c9a7d3d.md) | 249 | `declaration-track:6fad52362f7d622a0c9a7d3d5649f978a35730bb0632d56ec6f50e8e04b609b9` |
| 41 | `def` | [Liftr](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Functor/Variantbbf6c26aef9b276989a39c88f1f71564109b5da3574ef58c289b288c8076d77c.lean/declarations/liftr--16b0f51f2bb2d015a674b46c.md) | 255 | `declaration-track:16b0f51f2bb2d015a674b46c99f971c37f5954712118a4b1441cfe5acbd93778` |
| 42 | `def` | [supp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Functor/Variantbbf6c26aef9b276989a39c88f1f71564109b5da3574ef58c289b288c8076d77c.lean/declarations/supp--a0bd8d3514e878617316effd.md) | 262 | `declaration-track:a0bd8d3514e878617316effdb24de4b0459ba90c2db076d6c6830e47f6c2616f` |
| 43 | `theorem` | [of_mem_supp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Functor/Variantbbf6c26aef9b276989a39c88f1f71564109b5da3574ef58c289b288c8076d77c.lean/declarations/of-mem-supp--3691cd404e3169d1fc8b79df.md) | 265 | `result-track:3691cd404e3169d1fc8b79dfae423f7e09fabf82afc34b9d1ff35d4e48f10163` |
| 44 | `abbrev` | [mapConstRev](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Functor/Variantbbf6c26aef9b276989a39c88f1f71564109b5da3574ef58c289b288c8076d77c.lean/declarations/mapconstrev--970e134657635cc008ce1ed6.md) | 271 | `declaration-track:970e134657635cc008ce1ed6e6b207fe99c9ca38576a1b43ee25d20ebee7a769` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
