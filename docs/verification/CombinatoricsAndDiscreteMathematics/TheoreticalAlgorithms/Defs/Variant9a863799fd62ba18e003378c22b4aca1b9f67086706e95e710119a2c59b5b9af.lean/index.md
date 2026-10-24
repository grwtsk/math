# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Defs.Variant9a863799fd62ba18e003378c22b4aca1b9f67086706e95e710119a2c59b5b9af

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e67b8bd01d72035f9dcf5d75a99e384292e4bb81",
  "lexical_observation_count": 49,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Defs/Variant9a863799fd62ba18e003378c22b4aca1b9f67086706e95e710119a2c59b5b9af.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Defs/Variant9a863799fd62ba18e003378c22b4aca1b9f67086706e95e710119a2c59b5b9af.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Defs/Variant9a863799fd62ba18e003378c22b4aca1b9f67086706e95e710119a2c59b5b9af.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e67b8bd01d72035f9dcf5d75a99e384292e4bb81`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Defs/Variant9a863799fd62ba18e003378c22b4aca1b9f67086706e95e710119a2c59b5b9af.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Defs/Variant9a863799fd62ba18e003378c22b4aca1b9f67086706e95e710119a2c59b5b9af.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Nat.Notation` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Control.Functor` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Data.SProd` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Util.CompileInductive` — import line 14; external provider; requires a separately pinned dependency.
- `Batteries.Tactic.Lint.Basic` — import line 15; external provider; requires a separately pinned dependency.
- `Batteries.Data.List.Lemmas` — import line 16; external provider; requires a separately pinned dependency.
- `Batteries.Logic` — import line 17; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Defs/Variant9a863799fd62ba18e003378c22b4aca1b9f67086706e95e710119a2c59b5b9af.lean/declarations/instance--09318ab0197892837edf4fd4.md) | 37 | `declaration-track:09318ab0197892837edf4fd43ccb31e1104a700c7d3d7f4a93f85d066ec70909` |
| 2 | `def` | [getI](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Defs/Variant9a863799fd62ba18e003378c22b4aca1b9f67086706e95e710119a2c59b5b9af.lean/declarations/geti--a0579bd3b94d2a9db093d0b1.md) | 42 | `declaration-track:a0579bd3b94d2a9db093d0b17cb5247fcf7a4d70372ed6ab66993f776a5371e2` |
| 3 | `def` | [headI](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Defs/Variant9a863799fd62ba18e003378c22b4aca1b9f67086706e95e710119a2c59b5b9af.lean/declarations/headi--383fc30f1f5addaa6afef0e7.md) | 46 | `declaration-track:383fc30f1f5addaa6afef0e72669aa1b3e121e0c666cfee7b956cb59ec7a55e6` |
| 4 | `theorem` | [headI_nil](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Defs/Variant9a863799fd62ba18e003378c22b4aca1b9f67086706e95e710119a2c59b5b9af.lean/declarations/headi-nil--2cb830250e28dc2c3eb7e1f3.md) | 50 | `result-track:2cb830250e28dc2c3eb7e1f3cefcbcc93420e30b315668b6bd633794f7aada1e` |
| 5 | `theorem` | [headI_cons](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Defs/Variant9a863799fd62ba18e003378c22b4aca1b9f67086706e95e710119a2c59b5b9af.lean/declarations/headi-cons--e8f2dc1ce8200f10a4da8b17.md) | 51 | `result-track:e8f2dc1ce8200f10a4da8b1737afb9a0fd116ca97fb34efb4e4674364fb8e171` |
| 6 | `def` | [getLastI](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Defs/Variant9a863799fd62ba18e003378c22b4aca1b9f67086706e95e710119a2c59b5b9af.lean/declarations/getlasti--e0e5ed472c33c38e619a6495.md) | 54 | `declaration-track:e0e5ed472c33c38e619a649520256a5f76d55e16aabf71cd557839fe69aa2d9d` |
| 7 | `def` | [takeI](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Defs/Variant9a863799fd62ba18e003378c22b4aca1b9f67086706e95e710119a2c59b5b9af.lean/declarations/takei--6e7bb87433d3ebcbaf1ffdb3.md) | 62 | `declaration-track:6e7bb87433d3ebcbaf1ffdb3193552ce4443c07b26c7d8b52d309e10cd59e44e` |
| 8 | `def` | [findM](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Defs/Variant9a863799fd62ba18e003378c22b4aca1b9f67086706e95e710119a2c59b5b9af.lean/declarations/findm--51a45442b50d80baa1b7e529.md) | 67 | `declaration-track:51a45442b50d80baa1b7e529c85ec1a21d1cc8c0b673aa60875d57b80b9fc456` |
| 9 | `def` | [findM?'](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Defs/Variant9a863799fd62ba18e003378c22b4aca1b9f67086706e95e710119a2c59b5b9af.lean/declarations/findm--065a47947c79b6229818c596.md) | 73 | `declaration-track:065a47947c79b6229818c59669386ce2f3284dee8d7a1ab0cce0306a0079d2f5` |
| 10 | `def` | [orM](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Defs/Variant9a863799fd62ba18e003378c22b4aca1b9f67086706e95e710119a2c59b5b9af.lean/declarations/orm--02fa62b046b091767165caa3.md) | 89 | `declaration-track:02fa62b046b091767165caa368498a5557ba4cc839ad7f8e866105033f944d39` |
| 11 | `def` | [andM](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Defs/Variant9a863799fd62ba18e003378c22b4aca1b9f67086706e95e710119a2c59b5b9af.lean/declarations/andm--f30aa68dd5183a4e8785a502.md) | 95 | `declaration-track:f30aa68dd5183a4e8785a5020b9575ba14a82746a2e3d4a5e77f5178fd452232` |
| 12 | `def` | [foldlIdxM](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Defs/Variant9a863799fd62ba18e003378c22b4aca1b9f67086706e95e710119a2c59b5b9af.lean/declarations/foldlidxm--cd6a852f8d93e9f658bd9555.md) | 105 | `declaration-track:cd6a852f8d93e9f658bd95551eb4fd6cbb8178428fd45ac3c4639a052700aa25` |
| 13 | `def` | [foldrIdxM](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Defs/Variant9a863799fd62ba18e003378c22b4aca1b9f67086706e95e710119a2c59b5b9af.lean/declarations/foldridxm--5e0a5c00e968fd43b7f1c004.md) | 113 | `declaration-track:5e0a5c00e968fd43b7f1c00407f5285242d9a17ca054f0ed2d4ba1f74712bc99` |
| 14 | `def` | [mapIdxMAux'](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Defs/Variant9a863799fd62ba18e003378c22b4aca1b9f67086706e95e710119a2c59b5b9af.lean/declarations/mapidxmaux--83b62ed986e43aa21aed964c.md) | 128 | `declaration-track:83b62ed986e43aa21aed964ce1dc7a07c957331ec604e896416c6327c60476be` |
| 15 | `def` | [mapIdxM'](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Defs/Variant9a863799fd62ba18e003378c22b4aca1b9f67086706e95e710119a2c59b5b9af.lean/declarations/mapidxm--5c3ee28ec2b1b919f1eca471.md) | 134 | `declaration-track:5c3ee28ec2b1b919f1eca471f537831d99302509122fd99bcc7dce000fb40c1a` |
| 16 | `def` | [Forall](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Defs/Variant9a863799fd62ba18e003378c22b4aca1b9f67086706e95e710119a2c59b5b9af.lean/declarations/forall--6e6dd601d971b784588a41fc.md) | 142 | `declaration-track:6e6dd601d971b784588a41fc34206d1cdb24efaecdf584f00c568eee349a788b` |
| 17 | `def` | [permutationsAux2](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Defs/Variant9a863799fd62ba18e003378c22b4aca1b9f67086706e95e710119a2c59b5b9af.lean/declarations/permutationsaux2--b66bbc7bb3c00d5b60b87a67.md) | 158 | `declaration-track:b66bbc7bb3c00d5b60b87a67ebd6c85a3734fe99056cc46c62ec99eb210865e6` |
| 18 | `def` | [permutationsAux.rec](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Defs/Variant9a863799fd62ba18e003378c22b4aca1b9f67086706e95e710119a2c59b5b9af.lean/declarations/permutationsaux-rec--d823e59fe1738097637d7f64.md) | 167 | `declaration-track:d823e59fe1738097637d7f6456f32c621d5ff5daeb23afbb3611a214a89baf83` |
| 19 | `def` | [permutationsAux](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Defs/Variant9a863799fd62ba18e003378c22b4aca1b9f67086706e95e710119a2c59b5b9af.lean/declarations/permutationsaux--25b401c817983fcee35cbb7c.md) | 177 | `declaration-track:25b401c817983fcee35cbb7c0a23c4f91de827f9cc4a4d1a7c42baa224b96f8b` |
| 20 | `def` | [permutations](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Defs/Variant9a863799fd62ba18e003378c22b4aca1b9f67086706e95e710119a2c59b5b9af.lean/declarations/permutations--b13c3440b11a325ca3a5c383.md) | 186 | `declaration-track:b13c3440b11a325ca3a5c38308e8acd4b0a940c68f9d772e8fae52ad1414fcf9` |
| 21 | `def` | [permutations'Aux](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Defs/Variant9a863799fd62ba18e003378c22b4aca1b9f67086706e95e710119a2c59b5b9af.lean/declarations/permutations-aux--ae2d0cb74c4b2a1aa031feb8.md) | 201 | `declaration-track:ae2d0cb74c4b2a1aa031feb8734da03ab3a212f38441672a18cc9fd2685db84b` |
| 22 | `def` | [permutations'](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Defs/Variant9a863799fd62ba18e003378c22b4aca1b9f67086706e95e710119a2c59b5b9af.lean/declarations/permutations--52d5b27f6af51508fec252a7.md) | 213 | `declaration-track:52d5b27f6af51508fec252a77f7871c6c100d2a4ed76c6d3be0d64787ce4820c` |
| 23 | `def` | [extractp](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Defs/Variant9a863799fd62ba18e003378c22b4aca1b9f67086706e95e710119a2c59b5b9af.lean/declarations/extractp--ed9bb82273d9e9b701aac2b8.md) | 221 | `declaration-track:ed9bb82273d9e9b701aac2b89bd4ebd6a9b410717db05e8c0545aa515f2a0294` |
| 24 | `instance` | [instSProd](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Defs/Variant9a863799fd62ba18e003378c22b4aca1b9f67086706e95e710119a2c59b5b9af.lean/declarations/instsprod--9a55b8208e213bcb207e74f6.md) | 232 | `declaration-track:9a55b8208e213bcb207e74f6aab920e62952c58ea87b8f79e260454caa552a27` |
| 25 | `instance` | [decidableChain](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Defs/Variant9a863799fd62ba18e003378c22b4aca1b9f67086706e95e710119a2c59b5b9af.lean/declarations/decidablechain--b0c8b8d65cb934cabb2f6656.md) | 237 | `declaration-track:b0c8b8d65cb934cabb2f665644247e9de4fe46f7e2fadb36950c4309a461dbe6` |
| 26 | `instance` | [decidableChain'](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Defs/Variant9a863799fd62ba18e003378c22b4aca1b9f67086706e95e710119a2c59b5b9af.lean/declarations/decidablechain--11b02925adcc550ebed5451f.md) | 244 | `declaration-track:11b02925adcc550ebed5451fa8dcc7a0b0368bc45f933b14a639b9c6877fbb42` |
| 27 | `def` | [dedup](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Defs/Variant9a863799fd62ba18e003378c22b4aca1b9f67086706e95e710119a2c59b5b9af.lean/declarations/dedup--779562683d628c9eca56d5f6.md) | 256 | `declaration-track:779562683d628c9eca56d5f67dbad0d08c38e20352b89f5e186c77dbd4661948` |
| 28 | `def` | [destutter'](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Defs/Variant9a863799fd62ba18e003378c22b4aca1b9f67086706e95e710119a2c59b5b9af.lean/declarations/destutter--cdccf99278e3af1728a7386c.md) | 262 | `declaration-track:cdccf99278e3af1728a7386ce546b7ccc5bc40aa84bd6bb9d08feafc55a6a736` |
| 29 | `def` | [destutter](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Defs/Variant9a863799fd62ba18e003378c22b4aca1b9f67086706e95e710119a2c59b5b9af.lean/declarations/destutter--ebb2f9d6b716f2ea6947400b.md) | 270 | `declaration-track:ebb2f9d6b716f2ea6947400b5ff2b7d0f74f58696aef86d325ee646d8d3f3e7b` |
| 30 | `def` | [chooseX](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Defs/Variant9a863799fd62ba18e003378c22b4aca1b9f67086706e95e710119a2c59b5b9af.lean/declarations/choosex--e9620e8e901ba84fd9cd6eb1.md) | 281 | `declaration-track:e9620e8e901ba84fd9cd6eb1bc9f5bef996c07fd0e1073729151f294417b2421` |
| 31 | `def` | [choose](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Defs/Variant9a863799fd62ba18e003378c22b4aca1b9f67086706e95e710119a2c59b5b9af.lean/declarations/choose--a01efeb3d54e4385b72b8f0c.md) | 295 | `declaration-track:a01efeb3d54e4385b72b8f0c8259f73b1ea89859e7df883866d48d871ac75678` |
| 32 | `def` | [mapDiagM'](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Defs/Variant9a863799fd62ba18e003378c22b4aca1b9f67086706e95e710119a2c59b5b9af.lean/declarations/mapdiagm--7494ce7325b3614a1ce28a0e.md) | 307 | `declaration-track:7494ce7325b3614a1ce28a0ed69361e34a8de13db3d346d19909cc22a97b2ead` |
| 33 | `def` | [map₂Left'](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Defs/Variant9a863799fd62ba18e003378c22b4aca1b9f67086706e95e710119a2c59b5b9af.lean/declarations/map-left--bb2823b95bbb17ccaed49c06.md) | 329 | `declaration-track:bb2823b95bbb17ccaed49c064810b386444664409fc96c3f0ded85f446a5c4a3` |
| 34 | `def` | [map₂Right'](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Defs/Variant9a863799fd62ba18e003378c22b4aca1b9f67086706e95e710119a2c59b5b9af.lean/declarations/map-right--75f4b631b660ab03c659e64e.md) | 347 | `declaration-track:75f4b631b660ab03c659e64e1233f152d4430e77a5421650c63771b174bcdf1d` |
| 35 | `def` | [map₂Left](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Defs/Variant9a863799fd62ba18e003378c22b4aca1b9f67086706e95e710119a2c59b5b9af.lean/declarations/map-left--cce3092ff85edde9f60e5083.md) | 364 | `declaration-track:cce3092ff85edde9f60e50832a33fa4afec17658aac294a954118054c466e4f8` |
| 36 | `def` | [map₂Right](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Defs/Variant9a863799fd62ba18e003378c22b4aca1b9f67086706e95e710119a2c59b5b9af.lean/declarations/map-right--874e2c135f0316af54717d09.md) | 381 | `declaration-track:874e2c135f0316af54717d090ce407949bf97de94cd874377e35c6d067a73ac0` |
| 37 | `def` | [mapAsyncChunked](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Defs/Variant9a863799fd62ba18e003378c22b4aca1b9f67086706e95e710119a2c59b5b9af.lean/declarations/mapasyncchunked--af4db4a0b0a50bc4ece8fd75.md) | 387 | `declaration-track:af4db4a0b0a50bc4ece8fd753eaca72cdb688d0793761929dee33a1b5a223768` |
| 38 | `def` | [zipWith3](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Defs/Variant9a863799fd62ba18e003378c22b4aca1b9f67086706e95e710119a2c59b5b9af.lean/declarations/zipwith3--2dbab14d304ac64f73dd42b8.md) | 401 | `declaration-track:2dbab14d304ac64f73dd42b85ae1c519793bfb09238cb7674794f7d950073755` |
| 39 | `def` | [zipWith4](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Defs/Variant9a863799fd62ba18e003378c22b4aca1b9f67086706e95e710119a2c59b5b9af.lean/declarations/zipwith4--a4b1110beec2d83d14f0962e.md) | 406 | `declaration-track:a4b1110beec2d83d14f0962ebb0bd98b1e45470f5efd1aa004f10765935e18c4` |
| 40 | `def` | [zipWith5](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Defs/Variant9a863799fd62ba18e003378c22b4aca1b9f67086706e95e710119a2c59b5b9af.lean/declarations/zipwith5--961e24f8e362156ebadcb2c3.md) | 411 | `declaration-track:961e24f8e362156ebadcb2c3c618b7ed48803e04639f0628b9e9a9f285d43228` |
| 41 | `def` | [replaceIf](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Defs/Variant9a863799fd62ba18e003378c22b4aca1b9f67086706e95e710119a2c59b5b9af.lean/declarations/replaceif--1914298c7d66bb8390f48f31.md) | 418 | `declaration-track:1914298c7d66bb8390f48f311e837ac92838b7d439e85f6534b200a10a6db530` |
| 42 | `def` | [iterate](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Defs/Variant9a863799fd62ba18e003378c22b4aca1b9f67086706e95e710119a2c59b5b9af.lean/declarations/iterate--dc408062f69822e4b5dea393.md) | 426 | `declaration-track:dc408062f69822e4b5dea39385e39e2e7dac76c72cb1cbb6f9aa11d719a2381a` |
| 43 | `def` | [iterateTR](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Defs/Variant9a863799fd62ba18e003378c22b4aca1b9f67086706e95e710119a2c59b5b9af.lean/declarations/iteratetr--867846cffb3ebf2836f079e0.md) | 432 | `declaration-track:867846cffb3ebf2836f079e05dcbc568200387500394cad63b6b1dde65a6771c` |
| 44 | `theorem` | [iterateTR_loop_eq](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Defs/Variant9a863799fd62ba18e003378c22b4aca1b9f67086706e95e710119a2c59b5b9af.lean/declarations/iteratetr-loop-eq--69c140e9fa6afe0696f11429.md) | 442 | `result-track:69c140e9fa6afe0696f11429f770e1d033391b4b3209d2f260ccc61a2f9eb42c` |
| 45 | `theorem` | [iterate_eq_iterateTR](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Defs/Variant9a863799fd62ba18e003378c22b4aca1b9f67086706e95e710119a2c59b5b9af.lean/declarations/iterate-eq-iteratetr--b01f23ab27ca835b66f0ffea.md) | 447 | `result-track:b01f23ab27ca835b66f0ffea5f0d0273d7783cf69a42eb0720f9a70c92c6783c` |
| 46 | `def` | [mapAccumr](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Defs/Variant9a863799fd62ba18e003378c22b4aca1b9f67086706e95e710119a2c59b5b9af.lean/declarations/mapaccumr--6854e0cbd1f3b847d7def697.md) | 454 | `declaration-track:6854e0cbd1f3b847d7def697bd83d87b92f6007ba0dc9edbd3e4ed2d00807c86` |
| 47 | `theorem` | [length_mapAccumr](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Defs/Variant9a863799fd62ba18e003378c22b4aca1b9f67086706e95e710119a2c59b5b9af.lean/declarations/length-mapaccumr--8dbc494de4186a50b581942f.md) | 463 | `result-track:8dbc494de4186a50b581942fa51dabb072f17e8f7c2d0ae61abfbee965dafe32` |
| 48 | `def` | [mapAccumr₂](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Defs/Variant9a863799fd62ba18e003378c22b4aca1b9f67086706e95e710119a2c59b5b9af.lean/declarations/mapaccumr--9e61c15c665d6a564f29622d.md) | 469 | `declaration-track:9e61c15c665d6a564f29622de593dd3bb282031e1ad610b54943e51c62bb4bb2` |
| 49 | `theorem` | [length_mapAccumr₂](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Defs/Variant9a863799fd62ba18e003378c22b4aca1b9f67086706e95e710119a2c59b5b9af.lean/declarations/length-mapaccumr--3e9b93c0b10252bde93abd33.md) | 479 | `result-track:3e9b93c0b10252bde93abd337563a78ef64517d71e565637e61c46edba0237b4` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
