# Verification target: GRWTSK.Algebra.LinearAlgebra.Basic.Variant5a4ec7242f08e3adff0a1167524b8c349b6ff0e7dbda0459a0ef32b74fc3be47

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "87acffcbfa9444b83e13bc4513ba68c9b3936cbc",
  "lexical_observation_count": 27,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Basic/Variant5a4ec7242f08e3adff0a1167524b8c349b6ff0e7dbda0459a0ef32b74fc3be47.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant5a4ec7242f08e3adff0a1167524b8c349b6ff0e7dbda0459a0ef32b74fc3be47.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant5a4ec7242f08e3adff0a1167524b8c349b6ff0e7dbda0459a0ef32b74fc3be47.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `87acffcbfa9444b83e13bc4513ba68c9b3936cbc`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Basic/Variant5a4ec7242f08e3adff0a1167524b8c349b6ff0e7dbda0459a0ef32b74fc3be47.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_SOURCE_DEPENDENCY`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Basic/Variant5a4ec7242f08e3adff0a1167524b8c349b6ff0e7dbda0459a0ef32b74fc3be47.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Algebra.Tower` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.BilinearMap` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [add_left](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant5a4ec7242f08e3adff0a1167524b8c349b6ff0e7dbda0459a0ef32b74fc3be47.lean/declarations/add-left--fa23bb001e86e592dbdaf682.md) | 61 | `result-track:fa23bb001e86e592dbdaf68246a1ade46c18868804c6cc72e5f0a9fbd28cae95` |
| 2 | `theorem` | [smul_left](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant5a4ec7242f08e3adff0a1167524b8c349b6ff0e7dbda0459a0ef32b74fc3be47.lean/declarations/smul-left--354ffb582e0c92588a7b0a0b.md) | 63 | `result-track:354ffb582e0c92588a7b0a0b818e3448981d828ec0e9c60710b6630477fb4952` |
| 3 | `theorem` | [add_right](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant5a4ec7242f08e3adff0a1167524b8c349b6ff0e7dbda0459a0ef32b74fc3be47.lean/declarations/add-right--e019512749257c868c21eefb.md) | 65 | `result-track:e019512749257c868c21eefb0149d0cbf695ad9d2e91bfd6bf7da30a58b5bfe3` |
| 4 | `theorem` | [smul_right](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant5a4ec7242f08e3adff0a1167524b8c349b6ff0e7dbda0459a0ef32b74fc3be47.lean/declarations/smul-right--588d872b0daf4cafa9209ffd.md) | 67 | `result-track:588d872b0daf4cafa9209ffd94ecd3542acf6878aa27f250a5feeb8745e48e11` |
| 5 | `theorem` | [zero_left](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant5a4ec7242f08e3adff0a1167524b8c349b6ff0e7dbda0459a0ef32b74fc3be47.lean/declarations/zero-left--00c185d083e033f2386e3c07.md) | 69 | `result-track:00c185d083e033f2386e3c0705b71edb0a66229f137286844c8f60f91737ec92` |
| 6 | `theorem` | [zero_right](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant5a4ec7242f08e3adff0a1167524b8c349b6ff0e7dbda0459a0ef32b74fc3be47.lean/declarations/zero-right--16ca09ccb5c355207618dc08.md) | 71 | `result-track:16ca09ccb5c355207618dc0843b121e2c6e7ed9574b2cc511e854af644ae7eec` |
| 7 | `theorem` | [neg_left](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant5a4ec7242f08e3adff0a1167524b8c349b6ff0e7dbda0459a0ef32b74fc3be47.lean/declarations/neg-left--42643fd2cf914bdac7242008.md) | 73 | `result-track:42643fd2cf914bdac72420080ca06640069270b0eaba81a1f3acb275894034a1` |
| 8 | `theorem` | [neg_right](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant5a4ec7242f08e3adff0a1167524b8c349b6ff0e7dbda0459a0ef32b74fc3be47.lean/declarations/neg-right--61a2c804ad82b424c4767553.md) | 75 | `result-track:61a2c804ad82b424c47675536773e88734fa44289cd8408e7057670cf83ec187` |
| 9 | `theorem` | [sub_left](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant5a4ec7242f08e3adff0a1167524b8c349b6ff0e7dbda0459a0ef32b74fc3be47.lean/declarations/sub-left--c211547521e97288a6da08c9.md) | 77 | `result-track:c211547521e97288a6da08c9140009de15b430b9a5175e2f8e35e418adf634ad` |
| 10 | `theorem` | [sub_right](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant5a4ec7242f08e3adff0a1167524b8c349b6ff0e7dbda0459a0ef32b74fc3be47.lean/declarations/sub-right--1579f2a0bde2b3927184a642.md) | 79 | `result-track:1579f2a0bde2b3927184a6420375fb1d546ffd94961407b4928f8a6feb16e34f` |
| 11 | `lemma` | [smul_left_of_tower](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant5a4ec7242f08e3adff0a1167524b8c349b6ff0e7dbda0459a0ef32b74fc3be47.lean/declarations/smul-left-of-tower--8591e43236be25c7db22248d.md) | 81 | `result-track:8591e43236be25c7db22248d865a841b49edec3a7473d7ee37d5d0d2c5269cb4` |
| 12 | `lemma` | [smul_right_of_tower](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant5a4ec7242f08e3adff0a1167524b8c349b6ff0e7dbda0459a0ef32b74fc3be47.lean/declarations/smul-right-of-tower--040152a4202edc7b21c27b03.md) | 84 | `result-track:040152a4202edc7b21c27b0372d5dc439b934d6c40b1953acb8e2c1535fd166d` |
| 13 | `theorem` | [coe_injective](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant5a4ec7242f08e3adff0a1167524b8c349b6ff0e7dbda0459a0ef32b74fc3be47.lean/declarations/coe-injective--942487e979a24ec05ab746ac.md) | 90 | `result-track:942487e979a24ec05ab746ac6e18f0a864c54b0adcdb854d7542377c1419213a` |
| 14 | `theorem` | [ext](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant5a4ec7242f08e3adff0a1167524b8c349b6ff0e7dbda0459a0ef32b74fc3be47.lean/declarations/ext--0fdea5bc2b6bf59ef53e77f0.md) | 96 | `result-track:0fdea5bc2b6bf59ef53e77f08d7fa71cd265afbecd378837ec3dcf3462e7495c` |
| 15 | `theorem` | [congr_fun](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant5a4ec7242f08e3adff0a1167524b8c349b6ff0e7dbda0459a0ef32b74fc3be47.lean/declarations/congr-fun--7baeda045ebc659f88834d9b.md) | 98 | `result-track:7baeda045ebc659f88834d9b511307ed4829acf235439464310de8f5025a46a8` |
| 16 | `theorem` | [zero_apply](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant5a4ec7242f08e3adff0a1167524b8c349b6ff0e7dbda0459a0ef32b74fc3be47.lean/declarations/zero-apply--d92d53abe63a0802e24161f2.md) | 101 | `result-track:d92d53abe63a0802e24161f2dbd7849ba9712dccef3ba78d468b2403e0fa27eb` |
| 17 | `theorem` | [add_apply](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant5a4ec7242f08e3adff0a1167524b8c349b6ff0e7dbda0459a0ef32b74fc3be47.lean/declarations/add-apply--a772f7459ea4ed0448db1e8c.md) | 107 | `result-track:a772f7459ea4ed0448db1e8c88adca99ce69618b9cd336bf764b58571554774a` |
| 18 | `theorem` | [neg_apply](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant5a4ec7242f08e3adff0a1167524b8c349b6ff0e7dbda0459a0ef32b74fc3be47.lean/declarations/neg-apply--8a2cf25192d7559597f781db.md) | 111 | `result-track:8a2cf25192d7559597f781dbda95d6ec605fdc7f33cb0a15fb34605d07252362` |
| 19 | `theorem` | [sub_apply](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant5a4ec7242f08e3adff0a1167524b8c349b6ff0e7dbda0459a0ef32b74fc3be47.lean/declarations/sub-apply--eae84a09d088475704347009.md) | 115 | `result-track:eae84a09d08847570434700960c0f528b6105194a8733b9776290f47c728ef34` |
| 20 | `def` | [coeFnAddMonoidHom](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant5a4ec7242f08e3adff0a1167524b8c349b6ff0e7dbda0459a0ef32b74fc3be47.lean/declarations/coefnaddmonoidhom--9d6a40665ad2052581f2491f.md) | 120 | `declaration-track:9d6a40665ad2052581f2491f66672880128aaa9ff7cacad975ff6aa25fac2a10` |
| 21 | `def` | [flipHomAux](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant5a4ec7242f08e3adff0a1167524b8c349b6ff0e7dbda0459a0ef32b74fc3be47.lean/declarations/fliphomaux--34ffe780c49e0bcf87948e27.md) | 130 | `declaration-track:34ffe780c49e0bcf87948e27055f45a10d261706e52a730309521618983cc40b` |
| 22 | `theorem` | [flip_flip_aux](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant5a4ec7242f08e3adff0a1167524b8c349b6ff0e7dbda0459a0ef32b74fc3be47.lean/declarations/flip-flip-aux--dac0d5af1cfccf79b087f4cf.md) | 139 | `result-track:dac0d5af1cfccf79b087f4cfc18e1679c45d1ad52fb26223f6d91be5a6d9efb9` |
| 23 | `def` | [flipHom](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant5a4ec7242f08e3adff0a1167524b8c349b6ff0e7dbda0459a0ef32b74fc3be47.lean/declarations/fliphom--389ad82e101c6e8eb2b31f76.md) | 145 | `declaration-track:389ad82e101c6e8eb2b31f76e62a899539a7bf39883181fc85b6f2b5795c2665` |
| 24 | `theorem` | [flip_apply](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant5a4ec7242f08e3adff0a1167524b8c349b6ff0e7dbda0459a0ef32b74fc3be47.lean/declarations/flip-apply--b73dbfe0e54c7003f6a4bc42.md) | 152 | `result-track:b73dbfe0e54c7003f6a4bc42efaff7d5226614914ff8ce7cc318b4ce567e4eae` |
| 25 | `theorem` | [flip_flip](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant5a4ec7242f08e3adff0a1167524b8c349b6ff0e7dbda0459a0ef32b74fc3be47.lean/declarations/flip-flip--706a58d034fdb8b6f4af86fa.md) | 155 | `result-track:706a58d034fdb8b6f4af86fad6702a95269f456fd843f0404d0e0baa456510b5` |
| 26 | `abbrev` | [flip](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant5a4ec7242f08e3adff0a1167524b8c349b6ff0e7dbda0459a0ef32b74fc3be47.lean/declarations/flip--3ff35480bae6fceb99aeca32.md) | 162 | `declaration-track:3ff35480bae6fceb99aeca3220a61057a39c8e491dd61c370ca1ed5c6efd565d` |
| 27 | `def` | [restrict](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant5a4ec7242f08e3adff0a1167524b8c349b6ff0e7dbda0459a0ef32b74fc3be47.lean/declarations/restrict--1af4d3824b5c936a18741bea.md) | 169 | `declaration-track:1af4d3824b5c936a18741beaf08cc5f3cc3dc64273faef0a3db6220ea58e8931` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
