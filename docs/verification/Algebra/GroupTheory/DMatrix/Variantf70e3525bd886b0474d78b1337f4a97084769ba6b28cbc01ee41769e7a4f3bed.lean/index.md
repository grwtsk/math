# Verification target: GRWTSK.Algebra.GroupTheory.DMatrix.Variantf70e3525bd886b0474d78b1337f4a97084769ba6b28cbc01ee41769e7a4f3bed

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8137a0d5902fa040ddcea4984554feedc8a101cf",
  "lexical_observation_count": 33,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/DMatrix/Variantf70e3525bd886b0474d78b1337f4a97084769ba6b28cbc01ee41769e7a4f3bed.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/DMatrix/Variantf70e3525bd886b0474d78b1337f4a97084769ba6b28cbc01ee41769e7a4f3bed.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/DMatrix/Variantf70e3525bd886b0474d78b1337f4a97084769ba6b28cbc01ee41769e7a4f3bed.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8137a0d5902fa040ddcea4984554feedc8a101cf`.

Source path: `GRWTSK/Algebra/GroupTheory/DMatrix/Variantf70e3525bd886b0474d78b1337f4a97084769ba6b28cbc01ee41769e7a4f3bed.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/DMatrix/Variantf70e3525bd886b0474d78b1337f4a97084769ba6b28cbc01ee41769e7a4f3bed.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.Hom.Defs` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.Pi.Basic` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [DMatrix](../../../../../mathematics/Algebra/GroupTheory/DMatrix/Variantf70e3525bd886b0474d78b1337f4a97084769ba6b28cbc01ee41769e7a4f3bed.lean/declarations/dmatrix--757353f1eebefdb1b6e36de2.md) | 21 | `declaration-track:757353f1eebefdb1b6e36de2e37eac195f68a685724abe76829a7f5797331722` |
| 2 | `theorem` | [ext_iff](../../../../../mathematics/Algebra/GroupTheory/DMatrix/Variantf70e3525bd886b0474d78b1337f4a97084769ba6b28cbc01ee41769e7a4f3bed.lean/declarations/ext-iff--7af6a6799db9faa1855206b1.md) | 33 | `result-track:7af6a6799db9faa1855206b1099620687a49b30bd5abf31b62b122a82a425e5b` |
| 3 | `theorem` | [ext](../../../../../mathematics/Algebra/GroupTheory/DMatrix/Variantf70e3525bd886b0474d78b1337f4a97084769ba6b28cbc01ee41769e7a4f3bed.lean/declarations/ext--62f73be2a6d7a5c852cb4e98.md) | 37 | `result-track:62f73be2a6d7a5c852cb4e9838288adecdc485e3eb78b161750210fb661c5717` |
| 4 | `def` | [map](../../../../../mathematics/Algebra/GroupTheory/DMatrix/Variantf70e3525bd886b0474d78b1337f4a97084769ba6b28cbc01ee41769e7a4f3bed.lean/declarations/map--e7ec2a07087755e658ded5d7.md) | 43 | `declaration-track:e7ec2a07087755e658ded5d7069a47b17965b7691db145835f98c8f3a67ad1ef` |
| 5 | `theorem` | [map_apply](../../../../../mathematics/Algebra/GroupTheory/DMatrix/Variantf70e3525bd886b0474d78b1337f4a97084769ba6b28cbc01ee41769e7a4f3bed.lean/declarations/map-apply--0e239c8ba1780776e8f403fd.md) | 47 | `result-track:0e239c8ba1780776e8f403fd3416b8864285849ced141f8abd7749ec2f750244` |
| 6 | `theorem` | [map_map](../../../../../mathematics/Algebra/GroupTheory/DMatrix/Variantf70e3525bd886b0474d78b1337f4a97084769ba6b28cbc01ee41769e7a4f3bed.lean/declarations/map-map--ae83f37ea9daa995688c6344.md) | 51 | `result-track:ae83f37ea9daa995688c634421444d40294fa73b7bfd87f8954824a10848db8a` |
| 7 | `def` | [transpose](../../../../../mathematics/Algebra/GroupTheory/DMatrix/Variantf70e3525bd886b0474d78b1337f4a97084769ba6b28cbc01ee41769e7a4f3bed.lean/declarations/transpose--6a0636c5802daa7b75902a91.md) | 56 | `declaration-track:6a0636c5802daa7b75902a916d4ec3fac08acdfef98e12b4ec8188f55c359302` |
| 8 | `def` | [col](../../../../../mathematics/Algebra/GroupTheory/DMatrix/Variantf70e3525bd886b0474d78b1337f4a97084769ba6b28cbc01ee41769e7a4f3bed.lean/declarations/col--58bf2a87eac5b808f64d183e.md) | 63 | `declaration-track:58bf2a87eac5b808f64d183e17ce132bd8bae4a311e5d66ebfd01a2804756381` |
| 9 | `def` | [row](../../../../../mathematics/Algebra/GroupTheory/DMatrix/Variantf70e3525bd886b0474d78b1337f4a97084769ba6b28cbc01ee41769e7a4f3bed.lean/declarations/row--b63c4a779af470035618ba80.md) | 67 | `declaration-track:b63c4a779af470035618ba8078c734815b722a2b06b72327c06732e8ab00dba2` |
| 10 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/DMatrix/Variantf70e3525bd886b0474d78b1337f4a97084769ba6b28cbc01ee41769e7a4f3bed.lean/declarations/instance--a7c6058a4f66125f4e4da57f.md) | 70 | `declaration-track:a7c6058a4f66125f4e4da57fcaf25f075d94bdac62ef33a2d8177a8eeb3ae075` |
| 11 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/DMatrix/Variantf70e3525bd886b0474d78b1337f4a97084769ba6b28cbc01ee41769e7a4f3bed.lean/declarations/instance--310732d013f5a43e4d73b369.md) | 73 | `declaration-track:310732d013f5a43e4d73b369a2672c7316d8b30aea9b4e91b4f6ea2c52011720` |
| 12 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/DMatrix/Variantf70e3525bd886b0474d78b1337f4a97084769ba6b28cbc01ee41769e7a4f3bed.lean/declarations/instance--654240c84567548ef74309c2.md) | 76 | `declaration-track:654240c84567548ef74309c27f22ad7608c0ce66e3777c9c9866683d23754f5e` |
| 13 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/DMatrix/Variantf70e3525bd886b0474d78b1337f4a97084769ba6b28cbc01ee41769e7a4f3bed.lean/declarations/instance--6e73a021c43ba9bfa09b1648.md) | 79 | `declaration-track:6e73a021c43ba9bfa09b16486b665d25d8373cef50606fce603f5fd968222ab1` |
| 14 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/DMatrix/Variantf70e3525bd886b0474d78b1337f4a97084769ba6b28cbc01ee41769e7a4f3bed.lean/declarations/instance--e726204ecc04ceb01ff00c8f.md) | 82 | `declaration-track:e726204ecc04ceb01ff00c8fd6d767631637d6cb9e05709f07c1fd4dedd43b40` |
| 15 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/DMatrix/Variantf70e3525bd886b0474d78b1337f4a97084769ba6b28cbc01ee41769e7a4f3bed.lean/declarations/instance--acf9988ca3f0f77b577f2e15.md) | 85 | `declaration-track:acf9988ca3f0f77b577f2e15511d281ecb9812384f370d18b50132a9698bce64` |
| 16 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/DMatrix/Variantf70e3525bd886b0474d78b1337f4a97084769ba6b28cbc01ee41769e7a4f3bed.lean/declarations/instance--6fa1cf3e9307b33dbc3afdbc.md) | 88 | `declaration-track:6fa1cf3e9307b33dbc3afdbc449d2a8134f6820e4f46cfd0ac27667d50d2b8d5` |
| 17 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/DMatrix/Variantf70e3525bd886b0474d78b1337f4a97084769ba6b28cbc01ee41769e7a4f3bed.lean/declarations/instance--ff6f9882d0e34f7576ea5b05.md) | 91 | `declaration-track:ff6f9882d0e34f7576ea5b0562a24fe8d326f69d65090a2771e493afed081437` |
| 18 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/DMatrix/Variantf70e3525bd886b0474d78b1337f4a97084769ba6b28cbc01ee41769e7a4f3bed.lean/declarations/instance--f8ef3bff291a31c8ea73f479.md) | 94 | `declaration-track:f8ef3bff291a31c8ea73f47965040a7b017896459c1ffdb7636f9d576f786d61` |
| 19 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/DMatrix/Variantf70e3525bd886b0474d78b1337f4a97084769ba6b28cbc01ee41769e7a4f3bed.lean/declarations/instance--66828bf3448f0c47e256886a.md) | 97 | `declaration-track:66828bf3448f0c47e256886a9d75280ebe610c4ef9d1978ed73b849a7dc3a7c3` |
| 20 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/DMatrix/Variantf70e3525bd886b0474d78b1337f4a97084769ba6b28cbc01ee41769e7a4f3bed.lean/declarations/instance--df703e64bd6981d2175a14f3.md) | 100 | `declaration-track:df703e64bd6981d2175a14f3e57f6092f2d04ad44760f318dbd0da3ae44f2930` |
| 21 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/DMatrix/Variantf70e3525bd886b0474d78b1337f4a97084769ba6b28cbc01ee41769e7a4f3bed.lean/declarations/instance--6b2b15796dba51cfb1888afc.md) | 103 | `declaration-track:6b2b15796dba51cfb1888afc01a634cdd4bc248173a83b7fb2ded8afa9e44d3f` |
| 22 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/DMatrix/Variantf70e3525bd886b0474d78b1337f4a97084769ba6b28cbc01ee41769e7a4f3bed.lean/declarations/instance--43347422cda6d867b2fe0bca.md) | 106 | `declaration-track:43347422cda6d867b2fe0bca936aeb984268973988f3672ec08547e307f00843` |
| 23 | `theorem` | [zero_apply](../../../../../mathematics/Algebra/GroupTheory/DMatrix/Variantf70e3525bd886b0474d78b1337f4a97084769ba6b28cbc01ee41769e7a4f3bed.lean/declarations/zero-apply--309d4ba69a7c83e31a7f0596.md) | 110 | `result-track:309d4ba69a7c83e31a7f059639da7f8fb768902bb90fe595a5d8ab9949c25c01` |
| 24 | `theorem` | [neg_apply](../../../../../mathematics/Algebra/GroupTheory/DMatrix/Variantf70e3525bd886b0474d78b1337f4a97084769ba6b28cbc01ee41769e7a4f3bed.lean/declarations/neg-apply--c824df77a1dc680b8b57e39d.md) | 113 | `result-track:c824df77a1dc680b8b57e39d3f4bbc4eac33ecc56627f2d5e68709943b980da6` |
| 25 | `theorem` | [add_apply](../../../../../mathematics/Algebra/GroupTheory/DMatrix/Variantf70e3525bd886b0474d78b1337f4a97084769ba6b28cbc01ee41769e7a4f3bed.lean/declarations/add-apply--f4ce8c7429db400e79b5dad3.md) | 116 | `result-track:f4ce8c7429db400e79b5dad34f5f5e0a8f46602478d8b7deb04d3ab47b268304` |
| 26 | `theorem` | [sub_apply](../../../../../mathematics/Algebra/GroupTheory/DMatrix/Variantf70e3525bd886b0474d78b1337f4a97084769ba6b28cbc01ee41769e7a4f3bed.lean/declarations/sub-apply--8434e33da66d3c6a9f3bd6c7.md) | 120 | `result-track:8434e33da66d3c6a9f3bd6c77c2d4212ab70a272908a23878bc4a92b13b464ba` |
| 27 | `theorem` | [map_zero](../../../../../mathematics/Algebra/GroupTheory/DMatrix/Variantf70e3525bd886b0474d78b1337f4a97084769ba6b28cbc01ee41769e7a4f3bed.lean/declarations/map-zero--b2477117e12f29ae50266ce8.md) | 124 | `result-track:b2477117e12f29ae50266ce8e592baf613365eb831b20c6d2abbea7a26ade013` |
| 28 | `theorem` | [map_add](../../../../../mathematics/Algebra/GroupTheory/DMatrix/Variantf70e3525bd886b0474d78b1337f4a97084769ba6b28cbc01ee41769e7a4f3bed.lean/declarations/map-add--8c613c68fedbdf8a4ed3314b.md) | 128 | `result-track:8c613c68fedbdf8a4ed3314b86f9f96c22c5475546fc29917b6a36e404a718a6` |
| 29 | `theorem` | [map_sub](../../../../../mathematics/Algebra/GroupTheory/DMatrix/Variantf70e3525bd886b0474d78b1337f4a97084769ba6b28cbc01ee41769e7a4f3bed.lean/declarations/map-sub--83afab23a4e42e8957d168cb.md) | 133 | `result-track:83afab23a4e42e8957d168cbfc61de47922cab690504213f60d85dd58d83f967` |
| 30 | `instance` | [subsingleton_of_empty_left](../../../../../mathematics/Algebra/GroupTheory/DMatrix/Variantf70e3525bd886b0474d78b1337f4a97084769ba6b28cbc01ee41769e7a4f3bed.lean/declarations/subsingleton-of-empty-left--ea1993f49486abdb5f027d2d.md) | 138 | `declaration-track:ea1993f49486abdb5f027d2d040f36aa0d11c63ba8303b650aae9ebd487cdee3` |
| 31 | `instance` | [subsingleton_of_empty_right](../../../../../mathematics/Algebra/GroupTheory/DMatrix/Variantf70e3525bd886b0474d78b1337f4a97084769ba6b28cbc01ee41769e7a4f3bed.lean/declarations/subsingleton-of-empty-right--282b02ac56f9930924721eb5.md) | 143 | `declaration-track:282b02ac56f9930924721eb5621f0aa60295b0001df90d5c418e696852b20976` |
| 32 | `def` | [AddMonoidHom.mapDMatrix](../../../../../mathematics/Algebra/GroupTheory/DMatrix/Variantf70e3525bd886b0474d78b1337f4a97084769ba6b28cbc01ee41769e7a4f3bed.lean/declarations/addmonoidhom-mapdmatrix--02ca521a1c6ab261eacdf8bb.md) | 150 | `declaration-track:02ca521a1c6ab261eacdf8bb8ab8d880697aa8d2f70615d5d1355085cda84c2d` |
| 33 | `theorem` | [AddMonoidHom.mapDMatrix_apply](../../../../../mathematics/Algebra/GroupTheory/DMatrix/Variantf70e3525bd886b0474d78b1337f4a97084769ba6b28cbc01ee41769e7a4f3bed.lean/declarations/addmonoidhom-mapdmatrix-apply--4fcd5081f608b5d80dd5a8b2.md) | 157 | `result-track:4fcd5081f608b5d80dd5a8b20b3ef66a0b59d8771f4ab9deb5aafab0c7ce8662` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
