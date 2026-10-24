# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Functor.Variantb155634d40e5c6def856ebe34f39ae24574a94a506ee434f5a10c1f4ddcb633b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "07a471036be4f5012b86de8bcc0c5f244ec3d06e",
  "lexical_observation_count": 45,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Functor/Variantb155634d40e5c6def856ebe34f39ae24574a94a506ee434f5a10c1f4ddcb633b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Functor/Variantb155634d40e5c6def856ebe34f39ae24574a94a506ee434f5a10c1f4ddcb633b.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Functor/Variantb155634d40e5c6def856ebe34f39ae24574a94a506ee434f5a10c1f4ddcb633b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `07a471036be4f5012b86de8bcc0c5f244ec3d06e`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Functor/Variantb155634d40e5c6def856ebe34f39ae24574a94a506ee434f5a10c1f4ddcb633b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Functor/Variantb155634d40e5c6def856ebe34f39ae24574a94a506ee434f5a10c1f4ddcb633b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Tactic.Attr.Register` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [Functor.map_id](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Functor/Variantb155634d40e5c6def856ebe34f39ae24574a94a506ee434f5a10c1f4ddcb633b.lean/declarations/functor-map-id--e8e1ac313bb774e99e96d1bc.md) | 48 | `result-track:e8e1ac313bb774e99e96d1bc401cc6b3fd2743ad1a9dd8dcc9da94170ffa9a37` |
| 2 | `theorem` | [Functor.map_comp_map](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Functor/Variantb155634d40e5c6def856ebe34f39ae24574a94a506ee434f5a10c1f4ddcb633b.lean/declarations/functor-map-comp-map--b496c20afa6144bcfe7e1ba5.md) | 50 | `result-track:b496c20afa6144bcfe7e1ba51a0003a85ff298973a7e1e76714b3e3615e8ae3c` |
| 3 | `theorem` | [Functor.ext](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Functor/Variantb155634d40e5c6def856ebe34f39ae24574a94a506ee434f5a10c1f4ddcb633b.lean/declarations/functor-ext--d9570032858bca2cee952070.md) | 55 | `result-track:d9570032858bca2cee952070ab5404505356d9939f6305f6d7911d075d92e220` |
| 4 | `def` | [Const](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Functor/Variantb155634d40e5c6def856ebe34f39ae24574a94a506ee434f5a10c1f4ddcb633b.lean/declarations/const--a6421270a31b54766b44565d.md) | 75 | `declaration-track:a6421270a31b54766b44565d206b49cd2dc7e0e87a138b5a35bb7c89843005b9` |
| 5 | `def` | [Const.mk](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Functor/Variantb155634d40e5c6def856ebe34f39ae24574a94a506ee434f5a10c1f4ddcb633b.lean/declarations/const-mk--6cf011522fe4936ce953aaa9.md) | 81 | `declaration-track:6cf011522fe4936ce953aaa98367242459dd3781292721646a2c5a3a5b2a48f5` |
| 6 | `def` | [Const.mk'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Functor/Variantb155634d40e5c6def856ebe34f39ae24574a94a506ee434f5a10c1f4ddcb633b.lean/declarations/const-mk--995086c821a5a110c8f8a777.md) | 86 | `declaration-track:995086c821a5a110c8f8a77774c650206f3d602f0d429a69f586bbaf81bfecf8` |
| 7 | `def` | [Const.run](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Functor/Variantb155634d40e5c6def856ebe34f39ae24574a94a506ee434f5a10c1f4ddcb633b.lean/declarations/const-run--648e539e7947eb926e122601.md) | 90 | `declaration-track:648e539e7947eb926e12260149941cf9bb3d3dac7adcbfd373a93d3b579139a3` |
| 8 | `theorem` | [ext](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Functor/Variantb155634d40e5c6def856ebe34f39ae24574a94a506ee434f5a10c1f4ddcb633b.lean/declarations/ext--78c06f6078080a4ae87be66f.md) | 95 | `result-track:78c06f6078080a4ae87be66f0de527f4108a2ef0e9ce212108bdf96d58cff0bd` |
| 9 | `def` | [map](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Functor/Variantb155634d40e5c6def856ebe34f39ae24574a94a506ee434f5a10c1f4ddcb633b.lean/declarations/map--7f19b8316b015667f4faf52e.md) | 100 | `declaration-track:7f19b8316b015667f4faf52e77189e0517bff8b9d8ddbad4dc00a57abdbf0366` |
| 10 | `instance` | [functor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Functor/Variantb155634d40e5c6def856ebe34f39ae24574a94a506ee434f5a10c1f4ddcb633b.lean/declarations/functor--ec09c09b36560576a2bdfe1a.md) | 103 | `declaration-track:ec09c09b36560576a2bdfe1a9ffb92d3bed5f63b7516f69d00fae6bb1ddd1072` |
| 11 | `instance` | [lawfulFunctor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Functor/Variantb155634d40e5c6def856ebe34f39ae24574a94a506ee434f5a10c1f4ddcb633b.lean/declarations/lawfulfunctor--881ea2f8413db9737bbb117a.md) | 105 | `declaration-track:881ea2f8413db9737bbb117a44310d326f4eec514db6c2b7a8b327da23a29a93` |
| 12 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Functor/Variantb155634d40e5c6def856ebe34f39ae24574a94a506ee434f5a10c1f4ddcb633b.lean/declarations/instance--3564312b74f06b850a89f99d.md) | 107 | `declaration-track:3564312b74f06b850a89f99db2558cbd63d9ec90593a60c0ade3a314e7952ad4` |
| 13 | `def` | [AddConst](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Functor/Variantb155634d40e5c6def856ebe34f39ae24574a94a506ee434f5a10c1f4ddcb633b.lean/declarations/addconst--ba7579e90f65c7c830505972.md) | 116 | `declaration-track:ba7579e90f65c7c830505972cf56d55dad26eed8a41ee61cef31c1afe726825c` |
| 14 | `def` | [AddConst.mk](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Functor/Variantb155634d40e5c6def856ebe34f39ae24574a94a506ee434f5a10c1f4ddcb633b.lean/declarations/addconst-mk--b6793c073df520ca56708452.md) | 122 | `declaration-track:b6793c073df520ca56708452a088cba144145ec48a1faff69d60c476bdde0a13` |
| 15 | `def` | [AddConst.run](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Functor/Variantb155634d40e5c6def856ebe34f39ae24574a94a506ee434f5a10c1f4ddcb633b.lean/declarations/addconst-run--b9b55d232f653b0aca72fb30.md) | 126 | `declaration-track:b9b55d232f653b0aca72fb300fa8c6d5d8446087e5de812e9e573e9e24472427` |
| 16 | `instance` | [AddConst.functor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Functor/Variantb155634d40e5c6def856ebe34f39ae24574a94a506ee434f5a10c1f4ddcb633b.lean/declarations/addconst-functor--9b3bacc50827d456e9d8ed6f.md) | 129 | `declaration-track:9b3bacc50827d456e9d8ed6f355c38cf3ee34bb300c663785fc14f7f618b8a94` |
| 17 | `instance` | [AddConst.lawfulFunctor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Functor/Variantb155634d40e5c6def856ebe34f39ae24574a94a506ee434f5a10c1f4ddcb633b.lean/declarations/addconst-lawfulfunctor--4d3723409404a8fec7d84ac3.md) | 132 | `declaration-track:4d3723409404a8fec7d84ac336dbc2b04ea4a64f124b9d907bc0c6574b005b0d` |
| 18 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Functor/Variantb155634d40e5c6def856ebe34f39ae24574a94a506ee434f5a10c1f4ddcb633b.lean/declarations/instance--14dbeb10fd1ee71e8b32ee33.md) | 135 | `declaration-track:14dbeb10fd1ee71e8b32ee33c44dd48005e15bc4c6b372561fce9fd7ed2e83f2` |
| 19 | `def` | [Comp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Functor/Variantb155634d40e5c6def856ebe34f39ae24574a94a506ee434f5a10c1f4ddcb633b.lean/declarations/comp--c3f76b42ede94c6f9e8ab3a1.md) | 141 | `declaration-track:c3f76b42ede94c6f9e8ab3a10e61b44700de4e4510017893c5d1b36e78fdbf7b` |
| 20 | `def` | [Comp.mk](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Functor/Variantb155634d40e5c6def856ebe34f39ae24574a94a506ee434f5a10c1f4ddcb633b.lean/declarations/comp-mk--0e60256ad27b7b573d4b1099.md) | 147 | `declaration-track:0e60256ad27b7b573d4b1099849dca0200e7884180a2911448465e1b9084ca06` |
| 21 | `def` | [Comp.run](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Functor/Variantb155634d40e5c6def856ebe34f39ae24574a94a506ee434f5a10c1f4ddcb633b.lean/declarations/comp-run--c36779174656272bb6d723ec.md) | 151 | `declaration-track:c36779174656272bb6d723ec592a6ba2b917009654d84ce943bb7ad2d426b1eb` |
| 22 | `theorem` | [Comp.run_mk](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Functor/Variantb155634d40e5c6def856ebe34f39ae24574a94a506ee434f5a10c1f4ddcb633b.lean/declarations/comp-run-mk--961cbaa957d9cca5ad8b6a43.md) | 155 | `result-track:961cbaa957d9cca5ad8b6a43c733fc459fce0451190f6f99a4fc48f923c774c6` |
| 23 | `theorem` | [Comp.mk_run](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Functor/Variantb155634d40e5c6def856ebe34f39ae24574a94a506ee434f5a10c1f4ddcb633b.lean/declarations/comp-mk-run--97837443d5f605a4c58968dd.md) | 159 | `result-track:97837443d5f605a4c58968dd9aaabe9369facda528e7ec8cad082e334538b045` |
| 24 | `theorem` | [ext](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Functor/Variantb155634d40e5c6def856ebe34f39ae24574a94a506ee434f5a10c1f4ddcb633b.lean/declarations/ext--706bdbb7ecf361a3c9c8eb94.md) | 166 | `result-track:706bdbb7ecf361a3c9c8eb94c84c35dd257f65b217e2221d64d1c128512d586c` |
| 25 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Functor/Variantb155634d40e5c6def856ebe34f39ae24574a94a506ee434f5a10c1f4ddcb633b.lean/declarations/instance--b824fcf71ec61541cab42881.md) | 169 | `declaration-track:b824fcf71ec61541cab42881fb49e32d3888483f26df7b7226150d9d6d1f1487` |
| 26 | `def` | [map](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Functor/Variantb155634d40e5c6def856ebe34f39ae24574a94a506ee434f5a10c1f4ddcb633b.lean/declarations/map--4dab231547cd2f5361d45eb2.md) | 175 | `declaration-track:4dab231547cd2f5361d45eb2bc2df7ad417505e74c6b8fdae4dac3e1f1e5c47a` |
| 27 | `instance` | [functor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Functor/Variantb155634d40e5c6def856ebe34f39ae24574a94a506ee434f5a10c1f4ddcb633b.lean/declarations/functor--fed62d93ccd574440570d282.md) | 178 | `declaration-track:fed62d93ccd574440570d282148049e5b894ac62ee77e68b98b1ce5511e06009` |
| 28 | `theorem` | [map_mk](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Functor/Variantb155634d40e5c6def856ebe34f39ae24574a94a506ee434f5a10c1f4ddcb633b.lean/declarations/map-mk--c7fc8590dbed783d2b64321c.md) | 181 | `result-track:c7fc8590dbed783d2b64321ce12adb92493b9e1967f0b9f2728a838a8256a351` |
| 29 | `theorem` | [run_map](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Functor/Variantb155634d40e5c6def856ebe34f39ae24574a94a506ee434f5a10c1f4ddcb633b.lean/declarations/run-map--206a66f5675345f9b0419587.md) | 185 | `result-track:206a66f5675345f9b041958760de439384485483186d0d084327ca15318fde1d` |
| 30 | `theorem` | [id_map](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Functor/Variantb155634d40e5c6def856ebe34f39ae24574a94a506ee434f5a10c1f4ddcb633b.lean/declarations/id-map--92d7a47d2668737bfd2c41c7.md) | 193 | `result-track:92d7a47d2668737bfd2c41c76f071c29233b2e7172f489ff09303dc1fefff6ed` |
| 31 | `theorem` | [comp_map](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Functor/Variantb155634d40e5c6def856ebe34f39ae24574a94a506ee434f5a10c1f4ddcb633b.lean/declarations/comp-map--2ebc8ec9e15798c1baf0617d.md) | 197 | `result-track:2ebc8ec9e15798c1baf0617de8091c6b0caa178e231cb7c956f426f2b7b60a85` |
| 32 | `instance` | [lawfulFunctor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Functor/Variantb155634d40e5c6def856ebe34f39ae24574a94a506ee434f5a10c1f4ddcb633b.lean/declarations/lawfulfunctor--fc97a30067d46805274367a8.md) | 201 | `declaration-track:fc97a30067d46805274367a8c78f4c1d835ab3b80dfc8bbde8f48e8b40db2bda` |
| 33 | `theorem` | [functor_comp_id](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Functor/Variantb155634d40e5c6def856ebe34f39ae24574a94a506ee434f5a10c1f4ddcb633b.lean/declarations/functor-comp-id--a32b149492dd07457eb6d2f3.md) | 206 | `result-track:a32b149492dd07457eb6d2f377dbd5ff04c488de0a112cb44df505651c8e1af7` |
| 34 | `theorem` | [functor_id_comp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Functor/Variantb155634d40e5c6def856ebe34f39ae24574a94a506ee434f5a10c1f4ddcb633b.lean/declarations/functor-id-comp--fc2c6d94a346bade43066ab8.md) | 210 | `result-track:fc2c6d94a346bade43066ab8d8180f1da354d0bd4437948717b5c95b80b1e2e3` |
| 35 | `def` | [seq](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Functor/Variantb155634d40e5c6def856ebe34f39ae24574a94a506ee434f5a10c1f4ddcb633b.lean/declarations/seq--35271a506b3f32454f6aea8e.md) | 225 | `declaration-track:35271a506b3f32454f6aea8e5ff84f4f4159629c029b07433c94adfa61c5c14d` |
| 36 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Functor/Variantb155634d40e5c6def856ebe34f39ae24574a94a506ee434f5a10c1f4ddcb633b.lean/declarations/instance--9d437e2955fea3f3eb792e5d.md) | 230 | `declaration-track:9d437e2955fea3f3eb792e5dacb5cec23e1fedd090f2c9c6c28ac622a3f28882` |
| 37 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Functor/Variantb155634d40e5c6def856ebe34f39ae24574a94a506ee434f5a10c1f4ddcb633b.lean/declarations/instance--8fa9f38a5ee202578c2a1e17.md) | 233 | `declaration-track:8fa9f38a5ee202578c2a1e170283fdd2d2fc21a278d156e1bdbe78be9b1b33ba` |
| 38 | `theorem` | [run_pure](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Functor/Variantb155634d40e5c6def856ebe34f39ae24574a94a506ee434f5a10c1f4ddcb633b.lean/declarations/run-pure--76b96aa719dc3fbee796fcdc.md) | 237 | `result-track:76b96aa719dc3fbee796fcdc19a459847821120e15d374448e69bd0aec5f7406` |
| 39 | `theorem` | [run_seq](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Functor/Variantb155634d40e5c6def856ebe34f39ae24574a94a506ee434f5a10c1f4ddcb633b.lean/declarations/run-seq--de029c098cac5bea9ac87ba6.md) | 241 | `result-track:de029c098cac5bea9ac87ba6152050d0a78cb93fc11cb08d2336b10879421129` |
| 40 | `instance` | [instApplicativeComp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Functor/Variantb155634d40e5c6def856ebe34f39ae24574a94a506ee434f5a10c1f4ddcb633b.lean/declarations/instapplicativecomp--fd67cdb9891a69e2095678c9.md) | 245 | `declaration-track:fd67cdb9891a69e2095678c9edc70a639ca4a11dc2a13c907086fb85698f587f` |
| 41 | `def` | [Liftp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Functor/Variantb155634d40e5c6def856ebe34f39ae24574a94a506ee434f5a10c1f4ddcb633b.lean/declarations/liftp--bff7e44bc3ebf937bc97d000.md) | 254 | `declaration-track:bff7e44bc3ebf937bc97d00031f38e4fff45e5b063ed5db5019b0fb30fad340b` |
| 42 | `def` | [Liftr](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Functor/Variantb155634d40e5c6def856ebe34f39ae24574a94a506ee434f5a10c1f4ddcb633b.lean/declarations/liftr--7b9dcfea95e3a05a3450597b.md) | 260 | `declaration-track:7b9dcfea95e3a05a3450597b03d8614eaf6755f0d6b22cc6989e6c3fa9e130e9` |
| 43 | `def` | [supp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Functor/Variantb155634d40e5c6def856ebe34f39ae24574a94a506ee434f5a10c1f4ddcb633b.lean/declarations/supp--99a730958a743967a803f970.md) | 267 | `declaration-track:99a730958a743967a803f9705a2695e433509f1f3a044d89b2cd3e920cc4930f` |
| 44 | `theorem` | [of_mem_supp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Functor/Variantb155634d40e5c6def856ebe34f39ae24574a94a506ee434f5a10c1f4ddcb633b.lean/declarations/of-mem-supp--2c860f346f5e0a05fdd64269.md) | 270 | `result-track:2c860f346f5e0a05fdd64269e025f67a1b9f019b8357f14479fce1477418e83a` |
| 45 | `abbrev` | [mapConstRev](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Functor/Variantb155634d40e5c6def856ebe34f39ae24574a94a506ee434f5a10c1f4ddcb633b.lean/declarations/mapconstrev--cee090334002708d9abcfc6f.md) | 276 | `declaration-track:cee090334002708d9abcfc6fd03de5fbbf617ea05385cbdfb8d57dd45420f92e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
