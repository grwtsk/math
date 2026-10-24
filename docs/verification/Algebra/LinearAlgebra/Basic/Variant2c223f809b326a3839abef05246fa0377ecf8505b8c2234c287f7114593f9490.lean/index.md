# Verification target: GRWTSK.Algebra.LinearAlgebra.Basic.Variant2c223f809b326a3839abef05246fa0377ecf8505b8c2234c287f7114593f9490

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "346fb72d1d9bdf243127c698a85a2723331329c4",
  "lexical_observation_count": 44,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Basic/Variant2c223f809b326a3839abef05246fa0377ecf8505b8c2234c287f7114593f9490.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant2c223f809b326a3839abef05246fa0377ecf8505b8c2234c287f7114593f9490.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant2c223f809b326a3839abef05246fa0377ecf8505b8c2234c287f7114593f9490.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `346fb72d1d9bdf243127c698a85a2723331329c4`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Basic/Variant2c223f809b326a3839abef05246fa0377ecf8505b8c2234c287f7114593f9490.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Basic/Variant2c223f809b326a3839abef05246fa0377ecf8505b8c2234c287f7114593f9490.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.LinearAlgebra.Dual.Lemmas` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [PerfectPairing](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant2c223f809b326a3839abef05246fa0377ecf8505b8c2234c287f7114593f9490.lean/declarations/perfectpairing--c63f0b6d1aad8dc3f14c0e5b.md) | 40 | `declaration-track:c63f0b6d1aad8dc3f14c0e5bbe63e42d6a6889c8de842c1772cb4972c89744b9` |
| 2 | `def` | [mkOfInjective](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant2c223f809b326a3839abef05246fa0377ecf8505b8c2234c287f7114593f9490.lean/declarations/mkofinjective--f6a6bc2195a86b668f820174.md) | 57 | `declaration-track:f6a6bc2195a86b668f82017418b80cbce78d97af47017d7962d72716a4c77d58` |
| 3 | `def` | [mkOfInjective'](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant2c223f809b326a3839abef05246fa0377ecf8505b8c2234c287f7114593f9490.lean/declarations/mkofinjective--18df0128b01123a91b5e2ae6.md) | 71 | `declaration-track:18df0128b01123a91b5e2ae69ac5a680acb79fe4cbaa6e79ee0b99b09d9e2703` |
| 4 | `instance` | [instFunLike](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant2c223f809b326a3839abef05246fa0377ecf8505b8c2234c287f7114593f9490.lean/declarations/instfunlike--babc1405f62a7eff4a3e51a9.md) | 83 | `declaration-track:babc1405f62a7eff4a3e51a90582a94b2e0f6a35527d9b959e033990c716d543` |
| 5 | `lemma` | [toLinearMap_apply](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant2c223f809b326a3839abef05246fa0377ecf8505b8c2234c287f7114593f9490.lean/declarations/tolinearmap-apply--e62d53665b858a4cd7f8c715.md) | 88 | `result-track:e62d53665b858a4cd7f8c7155aff11454760c52c3cc0db2b9a68108017f991bd` |
| 6 | `lemma` | [mk_apply_apply](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant2c223f809b326a3839abef05246fa0377ecf8505b8c2234c287f7114593f9490.lean/declarations/mk-apply-apply--466e4ce5bd21f89f8bbe905f.md) | 93 | `result-track:466e4ce5bd21f89f8bbe905fded129f7db1533894827052788330cac4faa2036` |
| 7 | `def` | [flip](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant2c223f809b326a3839abef05246fa0377ecf8505b8c2234c287f7114593f9490.lean/declarations/flip--90b6bea81e4d11acc671c711.md) | 100 | `declaration-track:90b6bea81e4d11acc671c71143d800b523680a8c06edcd4ed95c1cbbce561713` |
| 8 | `lemma` | [flip_apply_apply](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant2c223f809b326a3839abef05246fa0377ecf8505b8c2234c287f7114593f9490.lean/declarations/flip-apply-apply--24905eba324df13ce76e38bb.md) | 106 | `result-track:24905eba324df13ce76e38bb92d54b1e864fc5db077d7d8299b74a68879c8e34` |
| 9 | `lemma` | [flip_flip](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant2c223f809b326a3839abef05246fa0377ecf8505b8c2234c287f7114593f9490.lean/declarations/flip-flip--585cd479bd92d74361e5cb09.md) | 110 | `result-track:585cd479bd92d74361e5cb0935bceea6d42e9099483a006f7053e0b12a90d7cf` |
| 10 | `def` | [toDualLeft](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant2c223f809b326a3839abef05246fa0377ecf8505b8c2234c287f7114593f9490.lean/declarations/todualleft--8be171f5032d6e362fe85272.md) | 114 | `declaration-track:8be171f5032d6e362fe85272a821bd1c333ebe9648df1f027accf2e29811e138` |
| 11 | `theorem` | [toDualLeft_apply](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant2c223f809b326a3839abef05246fa0377ecf8505b8c2234c287f7114593f9490.lean/declarations/todualleft-apply--454b6dd89893a1eae5230b54.md) | 118 | `result-track:454b6dd89893a1eae5230b54801c9691f6cb65e8af37d58c68ccf3091ce89f95` |
| 12 | `theorem` | [apply_toDualLeft_symm_apply](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant2c223f809b326a3839abef05246fa0377ecf8505b8c2234c287f7114593f9490.lean/declarations/apply-todualleft-symm-apply--619fb606a7afec5c13e85a3b.md) | 122 | `result-track:619fb606a7afec5c13e85a3b792ba4c1bcbff2a933bbf7369799caca33add59c` |
| 13 | `def` | [toDualRight](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant2c223f809b326a3839abef05246fa0377ecf8505b8c2234c287f7114593f9490.lean/declarations/todualright--f13024428bbe349a52cf8ef4.md) | 128 | `declaration-track:f13024428bbe349a52cf8ef49e66b40d721476c6a6ebd0ba12ee481375305089` |
| 14 | `theorem` | [toDualRight_apply](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant2c223f809b326a3839abef05246fa0377ecf8505b8c2234c287f7114593f9490.lean/declarations/todualright-apply--43a800469abc186a12325e33.md) | 132 | `result-track:43a800469abc186a12325e33a8e38e1274a525494f09740c36d0ab0f463c2033` |
| 15 | `theorem` | [apply_apply_toDualRight_symm](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant2c223f809b326a3839abef05246fa0377ecf8505b8c2234c287f7114593f9490.lean/declarations/apply-apply-todualright-symm--e7e9e70f389031f2432cf70c.md) | 136 | `result-track:e7e9e70f389031f2432cf70c5f9267a2273d90e446e101f08f078c182fc19a0c` |
| 16 | `theorem` | [toDualLeft_of_toDualRight_symm](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant2c223f809b326a3839abef05246fa0377ecf8505b8c2234c287f7114593f9490.lean/declarations/todualleft-of-todualright-symm--bca51b0b51659f97240b8d79.md) | 142 | `result-track:bca51b0b51659f97240b8d79ff23306885ea1f8afa4da09729196902bede677a` |
| 17 | `theorem` | [toDualRight_symm_toDualLeft](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant2c223f809b326a3839abef05246fa0377ecf8505b8c2234c287f7114593f9490.lean/declarations/todualright-symm-todualleft--94890be44a0e1fbc6ecfa074.md) | 147 | `result-track:94890be44a0e1fbc6ecfa074ccffbbb8a384db3579e8cca5277e4c90faa77bea` |
| 18 | `theorem` | [toDualRight_symm_comp_toDualLeft](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant2c223f809b326a3839abef05246fa0377ecf8505b8c2234c287f7114593f9490.lean/declarations/todualright-symm-comp-todualleft--4f8295ad220c5ecdb5164709.md) | 153 | `result-track:4f8295ad220c5ecdb5164709b14b312f8444195591de35025fd6c63fa4c89426` |
| 19 | `theorem` | [bijective_toDualRight_symm_toDualLeft](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant2c223f809b326a3839abef05246fa0377ecf8505b8c2234c287f7114593f9490.lean/declarations/bijective-todualright-symm-todualleft--c899a21ccd663ba4f23eb8c8.md) | 158 | `result-track:c899a21ccd663ba4f23eb8c80184559b652e0392746040dca5502a611d1b4a12` |
| 20 | `theorem` | [reflexive_left](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant2c223f809b326a3839abef05246fa0377ecf8505b8c2234c287f7114593f9490.lean/declarations/reflexive-left--5f55b335d814b650daed6a11.md) | 164 | `result-track:5f55b335d814b650daed6a1197635091d7aae6601d7c5cfc7f79fbf840cb9cef` |
| 21 | `theorem` | [reflexive_right](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant2c223f809b326a3839abef05246fa0377ecf8505b8c2234c287f7114593f9490.lean/declarations/reflexive-right--e2635749bc4cfda2ef5f0868.md) | 170 | `result-track:e2635749bc4cfda2ef5f08689f4e8edb55fed06ee2f0d87565546b570223a284` |
| 22 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant2c223f809b326a3839abef05246fa0377ecf8505b8c2234c287f7114593f9490.lean/declarations/instance--7eb66621e7fc65b5f41228c3.md) | 173 | `declaration-track:7eb66621e7fc65b5f41228c381f271d14c9dad710d79053c3a188abdf472ab7a` |
| 23 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant2c223f809b326a3839abef05246fa0377ecf8505b8c2234c287f7114593f9490.lean/declarations/instance--8a77814635b16800fb099e92.md) | 186 | `declaration-track:8a77814635b16800fb099e92a8a21bbb05d95ba8754bf372f70c0b2e0a6c7255` |
| 24 | `theorem` | [finrank_eq](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant2c223f809b326a3839abef05246fa0377ecf8505b8c2234c287f7114593f9490.lean/declarations/finrank-eq--2810a3290b0526d73e1caf04.md) | 191 | `result-track:2810a3290b0526d73e1caf045759b49e0e6481c03e3a5dbf3560306181358f20` |
| 25 | `structure` | [IsPerfectCompl](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant2c223f809b326a3839abef05246fa0377ecf8505b8c2234c287f7114593f9490.lean/declarations/isperfectcompl--1188e1d4b1588734b6bcff6f.md) | 198 | `declaration-track:1188e1d4b1588734b6bcff6f46ddafb8ba8381dc72c131cf665b7483eb6f5271` |
| 26 | `lemma` | [flip](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant2c223f809b326a3839abef05246fa0377ecf8505b8c2234c287f7114593f9490.lean/declarations/flip--8e5eb80419f0339b79e01781.md) | 207 | `result-track:8e5eb80419f0339b79e01781d0e8865b5bd9e69a3dd983e0653d87dd56e13003` |
| 27 | `lemma` | [flip_iff](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant2c223f809b326a3839abef05246fa0377ecf8505b8c2234c287f7114593f9490.lean/declarations/flip-iff--bd090e85ddbf5260db23e2eb.md) | 213 | `result-track:bd090e85ddbf5260db23e2eb9526ee24d545856ad375e6fbff0d33f65f6448c9` |
| 28 | `lemma` | [left_top_iff](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant2c223f809b326a3839abef05246fa0377ecf8505b8c2234c287f7114593f9490.lean/declarations/left-top-iff--870756444a9ad691a81e3d77.md) | 218 | `result-track:870756444a9ad691a81e3d77878791931eb3816f05e7dbc943dd5fb6b365c1f9` |
| 29 | `lemma` | [right_top_iff](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant2c223f809b326a3839abef05246fa0377ecf8505b8c2234c287f7114593f9490.lean/declarations/right-top-iff--ffe98b4644c387d10c3c3e52.md) | 228 | `result-track:ffe98b4644c387d10c3c3e52cbc6118eb47e951710b7a18382b0babdfcf297f9` |
| 30 | `def` | [IsReflexive.toPerfectPairingDual](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant2c223f809b326a3839abef05246fa0377ecf8505b8c2234c287f7114593f9490.lean/declarations/isreflexive-toperfectpairingdual--6e645e1a2978726564eb4d2b.md) | 241 | `declaration-track:6e645e1a2978726564eb4d2b2d5f4339b17d324fba277b3a88370fa23a02d3bb` |
| 31 | `lemma` | [IsReflexive.toPerfectPairingDual_apply](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant2c223f809b326a3839abef05246fa0377ecf8505b8c2234c287f7114593f9490.lean/declarations/isreflexive-toperfectpairingdual-apply--d3bc88b83c8dbd289738ba34.md) | 247 | `result-track:d3bc88b83c8dbd289738ba34dbc9cbb09ee2147a4cbdd7866eb7c168c76d7e3a` |
| 32 | `def` | [flip](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant2c223f809b326a3839abef05246fa0377ecf8505b8c2234c287f7114593f9490.lean/declarations/flip--eac4728f29ce0d1699fbec1c.md) | 257 | `declaration-track:eac4728f29ce0d1699fbec1cde4ea844dec605ebb819550e9ed16ca725938385` |
| 33 | `lemma` | [coe_toLinearMap_flip](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant2c223f809b326a3839abef05246fa0377ecf8505b8c2234c287f7114593f9490.lean/declarations/coe-tolinearmap-flip--853a37049134fee22117bfe5.md) | 260 | `result-track:853a37049134fee22117bfe5c4cc0f9ebcc727ea2bed1de8c7c0234c894570d0` |
| 34 | `lemma` | [flip_apply](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant2c223f809b326a3839abef05246fa0377ecf8505b8c2234c287f7114593f9490.lean/declarations/flip-apply--f5bc9c5216851bae71664dda.md) | 262 | `result-track:f5bc9c5216851bae71664ddaa6666d36ebd785b56761152d38830404adde96c3` |
| 35 | `lemma` | [symm_flip](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant2c223f809b326a3839abef05246fa0377ecf8505b8c2234c287f7114593f9490.lean/declarations/symm-flip--9174781aea50774acf43bc5e.md) | 264 | `result-track:9174781aea50774acf43bc5e971405f40dff758e08dbb44e4f2bcf2f90d03fd6` |
| 36 | `lemma` | [trans_dualMap_symm_flip](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant2c223f809b326a3839abef05246fa0377ecf8505b8c2234c287f7114593f9490.lean/declarations/trans-dualmap-symm-flip--e96cac5b90f52ee84c2db7cb.md) | 266 | `result-track:e96cac5b90f52ee84c2db7cb2ea016607a4977ba94eb3aa1ebd45cab58d87d70` |
| 37 | `lemma` | [isReflexive_of_equiv_dual_of_isReflexive](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant2c223f809b326a3839abef05246fa0377ecf8505b8c2234c287f7114593f9490.lean/declarations/isreflexive-of-equiv-dual-of-isreflexive--2680819c46db3fe5202608a1.md) | 271 | `result-track:2680819c46db3fe5202608a1bcdff0dbf540cd0989cbbef24550d561f77cc515` |
| 38 | `lemma` | [flip_flip](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant2c223f809b326a3839abef05246fa0377ecf8505b8c2234c287f7114593f9490.lean/declarations/flip-flip--2aafd52c7f3af5d409577a6c.md) | 276 | `result-track:2aafd52c7f3af5d409577a6c010ddabfac5b274ad071b8aa71111b57e24ff741` |
| 39 | `def` | [toPerfectPairing](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant2c223f809b326a3839abef05246fa0377ecf8505b8c2234c287f7114593f9490.lean/declarations/toperfectpairing--008bbd0dab707d064d4ccc13.md) | 281 | `declaration-track:008bbd0dab707d064d4ccc13aee0d6748b19090ecd183c5470ee3fcf286e371e` |
| 40 | `def` | [PerfectPairing.dual](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant2c223f809b326a3839abef05246fa0377ecf8505b8c2234c287f7114593f9490.lean/declarations/perfectpairing-dual--8fafa93f7652fece1d57e81a.md) | 289 | `declaration-track:8fafa93f7652fece1d57e81a8433b4b2bcf15137398293698bd1ae5d60a5d63f` |
| 41 | `lemma` | [dualCoannihilator_map_linearEquiv_flip](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant2c223f809b326a3839abef05246fa0377ecf8505b8c2234c287f7114593f9490.lean/declarations/dualcoannihilator-map-linearequiv-flip--fc777c2c9614b55d0873508b.md) | 299 | `result-track:fc777c2c9614b55d0873508b811ba287bc2bc58b6ffcf876bc3fcff3e9bbf53c` |
| 42 | `lemma` | [map_dualAnnihilator_linearEquiv_flip_symm](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant2c223f809b326a3839abef05246fa0377ecf8505b8c2234c287f7114593f9490.lean/declarations/map-dualannihilator-linearequiv-flip-symm--cd86d8b19523efb1068b7087.md) | 304 | `result-track:cd86d8b19523efb1068b70878cb2e07bc7f1863a26667d3ed93eb2f765813b94` |
| 43 | `lemma` | [map_dualCoannihilator_linearEquiv_flip](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant2c223f809b326a3839abef05246fa0377ecf8505b8c2234c287f7114593f9490.lean/declarations/map-dualcoannihilator-linearequiv-flip--5b8b494c04424b4b0ca4088e.md) | 310 | `result-track:5b8b494c04424b4b0ca4088e0ecdadc13cd11abc211649386798be2ba3dd2c2a` |
| 44 | `lemma` | [dualAnnihilator_map_linearEquiv_flip_symm](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant2c223f809b326a3839abef05246fa0377ecf8505b8c2234c287f7114593f9490.lean/declarations/dualannihilator-map-linearequiv-flip-symm--b639f9bb3b9f6dc0445772fc.md) | 320 | `result-track:b639f9bb3b9f6dc0445772fc46c6dded8c8d029d7b37d4848630a9fcf13734e4` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
