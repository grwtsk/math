# Verification target: GRWTSK.Algebra.Pointwise.Variantfca19587f3f21159fa19eb5f0a973c26cf6226295ca84d2422c08f4c78fc2e75

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b1cdb09257208bd2d37b4fc92a9a3ef41f4e0976",
  "lexical_observation_count": 25,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Pointwise/Variantfca19587f3f21159fa19eb5f0a973c26cf6226295ca84d2422c08f4c78fc2e75.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Pointwise/Variantfca19587f3f21159fa19eb5f0a973c26cf6226295ca84d2422c08f4c78fc2e75.lean/index.md) · [Full source](../../../../mathematics/Algebra/Pointwise/Variantfca19587f3f21159fa19eb5f0a973c26cf6226295ca84d2422c08f4c78fc2e75.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b1cdb09257208bd2d37b4fc92a9a3ef41f4e0976`.

Source path: `GRWTSK/Algebra/Pointwise/Variantfca19587f3f21159fa19eb5f0a973c26cf6226295ca84d2422c08f4c78fc2e75.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Pointwise/Variantfca19587f3f21159fa19eb5f0a973c26cf6226295ca84d2422c08f4c78fc2e75.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Star.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Set.Finite.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Set.Lattice.Image` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.Pointwise.Set.Basic` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [star](../../../../mathematics/Algebra/Pointwise/Variantfca19587f3f21159fa19eb5f0a973c26cf6226295ca84d2422c08f4c78fc2e75.lean/declarations/star--7005dc18cc94ae1dfafa1a80.md) | 35 | `declaration-track:7005dc18cc94ae1dfafa1a803543d7b21b30a1e007c7e6ae3454dade3ef5e874` |
| 2 | `theorem` | [star_empty](../../../../mathematics/Algebra/Pointwise/Variantfca19587f3f21159fa19eb5f0a973c26cf6226295ca84d2422c08f4c78fc2e75.lean/declarations/star-empty--9154cb19a915f57913e2169f.md) | 40 | `result-track:9154cb19a915f57913e2169f0f066bb0c196690ea662855ee2f024d1ac3fbc83` |
| 3 | `theorem` | [star_univ](../../../../mathematics/Algebra/Pointwise/Variantfca19587f3f21159fa19eb5f0a973c26cf6226295ca84d2422c08f4c78fc2e75.lean/declarations/star-univ--ec87d56388b66f99d6cb8034.md) | 43 | `result-track:ec87d56388b66f99d6cb8034ea903477968772a0d60353e15a4f7810d357aa00` |
| 4 | `theorem` | [nonempty_star](../../../../mathematics/Algebra/Pointwise/Variantfca19587f3f21159fa19eb5f0a973c26cf6226295ca84d2422c08f4c78fc2e75.lean/declarations/nonempty-star--3125a822a7e6de9a992caff9.md) | 46 | `result-track:3125a822a7e6de9a992caff9c0e3153f32833715c523624ab850cad918f256bf` |
| 5 | `theorem` | [Nonempty.star](../../../../mathematics/Algebra/Pointwise/Variantfca19587f3f21159fa19eb5f0a973c26cf6226295ca84d2422c08f4c78fc2e75.lean/declarations/nonempty-star--228b9a2e6044f0d0454a90a0.md) | 49 | `result-track:228b9a2e6044f0d0454a90a0f7b5a6dcc4b37171f0255176989ff62385b4ee45` |
| 6 | `theorem` | [mem_star](../../../../mathematics/Algebra/Pointwise/Variantfca19587f3f21159fa19eb5f0a973c26cf6226295ca84d2422c08f4c78fc2e75.lean/declarations/mem-star--e21ccaf25be0bbe58e7bae43.md) | 53 | `result-track:e21ccaf25be0bbe58e7bae43e1494ca044f567c0eb27ce89e366aa78ee678074` |
| 7 | `theorem` | [star_mem_star](../../../../mathematics/Algebra/Pointwise/Variantfca19587f3f21159fa19eb5f0a973c26cf6226295ca84d2422c08f4c78fc2e75.lean/declarations/star-mem-star--04113d6164e575e7275d3eca.md) | 55 | `result-track:04113d6164e575e7275d3eca98e239de2bfa0bf58214cb8711c5333d488ca427` |
| 8 | `theorem` | [star_preimage](../../../../mathematics/Algebra/Pointwise/Variantfca19587f3f21159fa19eb5f0a973c26cf6226295ca84d2422c08f4c78fc2e75.lean/declarations/star-preimage--6edb7ea2c53be35ebe9faff7.md) | 58 | `result-track:6edb7ea2c53be35ebe9faff741e5028692dea2c88828d6fc5382f3c7dadb7c52` |
| 9 | `theorem` | [image_star](../../../../mathematics/Algebra/Pointwise/Variantfca19587f3f21159fa19eb5f0a973c26cf6226295ca84d2422c08f4c78fc2e75.lean/declarations/image-star--5cc5cf40b044588a83b5a1f0.md) | 61 | `result-track:5cc5cf40b044588a83b5a1f08b87cce1939cb60b550396e32fc65d3cba6e8dfe` |
| 10 | `theorem` | [inter_star](../../../../mathematics/Algebra/Pointwise/Variantfca19587f3f21159fa19eb5f0a973c26cf6226295ca84d2422c08f4c78fc2e75.lean/declarations/inter-star--91b2bbb7e3e28c1231d1b39e.md) | 66 | `result-track:91b2bbb7e3e28c1231d1b39ed72075e6a84160505bac55bb898a6e04d2d56de8` |
| 11 | `theorem` | [union_star](../../../../mathematics/Algebra/Pointwise/Variantfca19587f3f21159fa19eb5f0a973c26cf6226295ca84d2422c08f4c78fc2e75.lean/declarations/union-star--d10c992baf1133331c7d21af.md) | 69 | `result-track:d10c992baf1133331c7d21afa8979e57f6591759b8501e860bec5c66deaadd87` |
| 12 | `theorem` | [iInter_star](../../../../mathematics/Algebra/Pointwise/Variantfca19587f3f21159fa19eb5f0a973c26cf6226295ca84d2422c08f4c78fc2e75.lean/declarations/iinter-star--ab5897587d40bfbf29faacb6.md) | 72 | `result-track:ab5897587d40bfbf29faacb6538ebc7623bdaf62ac3a7a84423e791223ab9fa8` |
| 13 | `theorem` | [iUnion_star](../../../../mathematics/Algebra/Pointwise/Variantfca19587f3f21159fa19eb5f0a973c26cf6226295ca84d2422c08f4c78fc2e75.lean/declarations/iunion-star--0b63af28ab9b4582c04d388c.md) | 76 | `result-track:0b63af28ab9b4582c04d388cea7540a0554c34187d01b076601face394bbe3c5` |
| 14 | `theorem` | [compl_star](../../../../mathematics/Algebra/Pointwise/Variantfca19587f3f21159fa19eb5f0a973c26cf6226295ca84d2422c08f4c78fc2e75.lean/declarations/compl-star--7fd9fa5ce58b79964996b396.md) | 80 | `result-track:7fd9fa5ce58b79964996b3962b474de1d6e7d196e5c42b6d41bd7efd91b27d4a` |
| 15 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Pointwise/Variantfca19587f3f21159fa19eb5f0a973c26cf6226295ca84d2422c08f4c78fc2e75.lean/declarations/instance--8c6d57b05ef2367b0edaefab.md) | 83 | `declaration-track:8c6d57b05ef2367b0edaefab9104649e284ba4922d59fa0e23f5ed95f5050781` |
| 16 | `theorem` | [star_subset_star](../../../../mathematics/Algebra/Pointwise/Variantfca19587f3f21159fa19eb5f0a973c26cf6226295ca84d2422c08f4c78fc2e75.lean/declarations/star-subset-star--4ea57c5b4cc4a23881adfb96.md) | 88 | `result-track:4ea57c5b4cc4a23881adfb9623b5bb03c478edc25e4c66e65d7d6d0f797a99fe` |
| 17 | `theorem` | [star_subset](../../../../mathematics/Algebra/Pointwise/Variantfca19587f3f21159fa19eb5f0a973c26cf6226295ca84d2422c08f4c78fc2e75.lean/declarations/star-subset--51dc3e721029fb74c2ea2e8c.md) | 91 | `result-track:51dc3e721029fb74c2ea2e8caa76fd963905290ca3092ebe1c6745de7321238a` |
| 18 | `theorem` | [Finite.star](../../../../mathematics/Algebra/Pointwise/Variantfca19587f3f21159fa19eb5f0a973c26cf6226295ca84d2422c08f4c78fc2e75.lean/declarations/finite-star--afeaac20965430745a9e3dbf.md) | 94 | `result-track:afeaac20965430745a9e3dbff0c31ac9458294b75964c1326803051a8e074c4b` |
| 19 | `theorem` | [star_singleton](../../../../mathematics/Algebra/Pointwise/Variantfca19587f3f21159fa19eb5f0a973c26cf6226295ca84d2422c08f4c78fc2e75.lean/declarations/star-singleton--ca7afb6ebd3129024e7e1ed0.md) | 97 | `result-track:ca7afb6ebd3129024e7e1ed0c5d0768a0e6754c66ffaf71606a8cc107bbc433b` |
| 20 | `theorem` | [star_mul](../../../../mathematics/Algebra/Pointwise/Variantfca19587f3f21159fa19eb5f0a973c26cf6226295ca84d2422c08f4c78fc2e75.lean/declarations/star-mul--5133f9dba87ca22aafa3d8db.md) | 101 | `result-track:5133f9dba87ca22aafa3d8dbd8fcb1276997bf14a59628857c89ccbf68205f03` |
| 21 | `theorem` | [star_add](../../../../mathematics/Algebra/Pointwise/Variantfca19587f3f21159fa19eb5f0a973c26cf6226295ca84d2422c08f4c78fc2e75.lean/declarations/star-add--f9e34a75f113d99fb500404f.md) | 105 | `result-track:f9e34a75f113d99fb500404f9fcd5b882f282eccac97ddd18d3fda8e17fd2d89` |
| 22 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Pointwise/Variantfca19587f3f21159fa19eb5f0a973c26cf6226295ca84d2422c08f4c78fc2e75.lean/declarations/instance--34ce626e96071c87c6399e17.md) | 110 | `declaration-track:34ce626e96071c87c6399e17a07a10f50c23f574be607de520bf12310a5be5e4` |
| 23 | `theorem` | [star_inv](../../../../mathematics/Algebra/Pointwise/Variantfca19587f3f21159fa19eb5f0a973c26cf6226295ca84d2422c08f4c78fc2e75.lean/declarations/star-inv--d70ffc196be6914fcca6c221.md) | 116 | `result-track:d70ffc196be6914fcca6c22119d532391a33686018d34261aa891c0cbbbee45a` |
| 24 | `theorem` | [star_inv'](../../../../mathematics/Algebra/Pointwise/Variantfca19587f3f21159fa19eb5f0a973c26cf6226295ca84d2422c08f4c78fc2e75.lean/declarations/star-inv--092d0b4d607ccd5b615e0918.md) | 120 | `result-track:092d0b4d607ccd5b615e091840afdd51462acc899ff371d6d7b0a4949ff5335d` |
| 25 | `lemma` | [StarMemClass.star_coe_eq](../../../../mathematics/Algebra/Pointwise/Variantfca19587f3f21159fa19eb5f0a973c26cf6226295ca84d2422c08f4c78fc2e75.lean/declarations/starmemclass-star-coe-eq--b453f87244aae00e58d87473.md) | 127 | `result-track:b453f87244aae00e58d874738c352b6bde03f36ca5f7122d9e90f63484667e38` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
