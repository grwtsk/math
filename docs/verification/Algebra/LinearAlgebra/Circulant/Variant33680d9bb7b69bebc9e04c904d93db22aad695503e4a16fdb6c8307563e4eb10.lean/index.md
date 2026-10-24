# Verification target: GRWTSK.Algebra.LinearAlgebra.Circulant.Variant33680d9bb7b69bebc9e04c904d93db22aad695503e4a16fdb6c8307563e4eb10

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1632069a8a016dacdf5f713f659306358c944e5f",
  "lexical_observation_count": 28,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Circulant/Variant33680d9bb7b69bebc9e04c904d93db22aad695503e4a16fdb6c8307563e4eb10.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Circulant/Variant33680d9bb7b69bebc9e04c904d93db22aad695503e4a16fdb6c8307563e4eb10.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Circulant/Variant33680d9bb7b69bebc9e04c904d93db22aad695503e4a16fdb6c8307563e4eb10.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1632069a8a016dacdf5f713f659306358c944e5f`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Circulant/Variant33680d9bb7b69bebc9e04c904d93db22aad695503e4a16fdb6c8307563e4eb10.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Circulant/Variant33680d9bb7b69bebc9e04c904d93db22aad695503e4a16fdb6c8307563e4eb10.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.Fin.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Matrix.Symmetric` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Abel` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [circulant](../../../../../mathematics/Algebra/LinearAlgebra/Circulant/Variant33680d9bb7b69bebc9e04c904d93db22aad695503e4a16fdb6c8307563e4eb10.lean/declarations/circulant--3ca5c08ae37777ba25438c4a.md) | 46 | `declaration-track:3ca5c08ae37777ba25438c4a42bea734589c12d8b51c92d1a21f7b58e92a76a1` |
| 2 | `theorem` | [circulant_apply](../../../../../mathematics/Algebra/LinearAlgebra/Circulant/Variant33680d9bb7b69bebc9e04c904d93db22aad695503e4a16fdb6c8307563e4eb10.lean/declarations/circulant-apply--c91c8b9feeed5dcf40ca9331.md) | 51 | `result-track:c91c8b9feeed5dcf40ca93317b4e0bcd917d5ebde84cc79ed39d6f4341c37dda` |
| 3 | `theorem` | [circulant_col_zero_eq](../../../../../mathematics/Algebra/LinearAlgebra/Circulant/Variant33680d9bb7b69bebc9e04c904d93db22aad695503e4a16fdb6c8307563e4eb10.lean/declarations/circulant-col-zero-eq--487cd84b0aa8384edf1b8804.md) | 53 | `result-track:487cd84b0aa8384edf1b88043e4b80fd8e5728433abc2b94fea57ab33eded1bc` |
| 4 | `theorem` | [circulant_injective](../../../../../mathematics/Algebra/LinearAlgebra/Circulant/Variant33680d9bb7b69bebc9e04c904d93db22aad695503e4a16fdb6c8307563e4eb10.lean/declarations/circulant-injective--7be13737973bdad735d45c0b.md) | 56 | `result-track:7be13737973bdad735d45c0bbe6fa80fc8fc100173c38ab59e5ebb81a3bfa768` |
| 5 | `theorem` | [Fin.circulant_injective](../../../../../mathematics/Algebra/LinearAlgebra/Circulant/Variant33680d9bb7b69bebc9e04c904d93db22aad695503e4a16fdb6c8307563e4eb10.lean/declarations/fin-circulant-injective--a9b7a065851ad8a7eac8972b.md) | 62 | `result-track:a9b7a065851ad8a7eac8972bf8a40e9d62fc14cfb6f7119d09130c3ddb7eb200` |
| 6 | `theorem` | [circulant_inj](../../../../../mathematics/Algebra/LinearAlgebra/Circulant/Variant33680d9bb7b69bebc9e04c904d93db22aad695503e4a16fdb6c8307563e4eb10.lean/declarations/circulant-inj--79ae002a19c61f49a611347b.md) | 67 | `result-track:79ae002a19c61f49a611347b36226fc7068b147f3b307bce7994575dbfdd3929` |
| 7 | `theorem` | [Fin.circulant_inj](../../../../../mathematics/Algebra/LinearAlgebra/Circulant/Variant33680d9bb7b69bebc9e04c904d93db22aad695503e4a16fdb6c8307563e4eb10.lean/declarations/fin-circulant-inj--84832b8abadbd2a0e9897681.md) | 71 | `result-track:84832b8abadbd2a0e989768171e315f867e9cc1022fdbb779f56956bdfe9f138` |
| 8 | `theorem` | [transpose_circulant](../../../../../mathematics/Algebra/LinearAlgebra/Circulant/Variant33680d9bb7b69bebc9e04c904d93db22aad695503e4a16fdb6c8307563e4eb10.lean/declarations/transpose-circulant--cd0193294ada1e3a8aabee1c.md) | 74 | `result-track:cd0193294ada1e3a8aabee1cf27e2368a5b31f38e8448d918203ab6b895a98af` |
| 9 | `theorem` | [conjTranspose_circulant](../../../../../mathematics/Algebra/LinearAlgebra/Circulant/Variant33680d9bb7b69bebc9e04c904d93db22aad695503e4a16fdb6c8307563e4eb10.lean/declarations/conjtranspose-circulant--ff4f2c3b1b795ef699b6f757.md) | 77 | `result-track:ff4f2c3b1b795ef699b6f757262b5d1c6bc12431e126ffdc38e578f038d7ffa1` |
| 10 | `theorem` | [Fin.transpose_circulant](../../../../../mathematics/Algebra/LinearAlgebra/Circulant/Variant33680d9bb7b69bebc9e04c904d93db22aad695503e4a16fdb6c8307563e4eb10.lean/declarations/fin-transpose-circulant--8e61be341ac54ad6117167fa.md) | 80 | `result-track:8e61be341ac54ad6117167fac5a618c73c27e2576b31597d86be0a5fb3768770` |
| 11 | `theorem` | [Fin.conjTranspose_circulant](../../../../../mathematics/Algebra/LinearAlgebra/Circulant/Variant33680d9bb7b69bebc9e04c904d93db22aad695503e4a16fdb6c8307563e4eb10.lean/declarations/fin-conjtranspose-circulant--031e3ff941ec5af546be89c5.md) | 84 | `result-track:031e3ff941ec5af546be89c5af3b50898995fb8a41e8440e543a1c1a418bacd7` |
| 12 | `theorem` | [map_circulant](../../../../../mathematics/Algebra/LinearAlgebra/Circulant/Variant33680d9bb7b69bebc9e04c904d93db22aad695503e4a16fdb6c8307563e4eb10.lean/declarations/map-circulant--5e40347e6c4987cc5433b5dd.md) | 89 | `result-track:5e40347e6c4987cc5433b5dd6ff3f945047b920b738581265c44e2daf8ad9dc3` |
| 13 | `theorem` | [circulant_neg](../../../../../mathematics/Algebra/LinearAlgebra/Circulant/Variant33680d9bb7b69bebc9e04c904d93db22aad695503e4a16fdb6c8307563e4eb10.lean/declarations/circulant-neg--ca83e965d7884e6bc920d866.md) | 93 | `result-track:ca83e965d7884e6bc920d8668fb53822388de6f0318ac71d2f3829e8f234ad66` |
| 14 | `theorem` | [circulant_zero](../../../../../mathematics/Algebra/LinearAlgebra/Circulant/Variant33680d9bb7b69bebc9e04c904d93db22aad695503e4a16fdb6c8307563e4eb10.lean/declarations/circulant-zero--5cfdbf1e6ab94e180f537101.md) | 97 | `result-track:5cfdbf1e6ab94e180f537101beab0ae1f2a1cbb92f6744f01a7e2a09299bb6cf` |
| 15 | `theorem` | [circulant_add](../../../../../mathematics/Algebra/LinearAlgebra/Circulant/Variant33680d9bb7b69bebc9e04c904d93db22aad695503e4a16fdb6c8307563e4eb10.lean/declarations/circulant-add--d0884e9dbd5dd506e18d40bd.md) | 100 | `result-track:d0884e9dbd5dd506e18d40bdcfb90f436a24dd168cec2fb9afe29269621a5a80` |
| 16 | `theorem` | [circulant_sub](../../../../../mathematics/Algebra/LinearAlgebra/Circulant/Variant33680d9bb7b69bebc9e04c904d93db22aad695503e4a16fdb6c8307563e4eb10.lean/declarations/circulant-sub--04157bc22084c9d6e6da01d0.md) | 104 | `result-track:04157bc22084c9d6e6da01d0e015555e221ccf1e58f872041107544442db03fe` |
| 17 | `theorem` | [circulant_mul](../../../../../mathematics/Algebra/LinearAlgebra/Circulant/Variant33680d9bb7b69bebc9e04c904d93db22aad695503e4a16fdb6c8307563e4eb10.lean/declarations/circulant-mul--6dc433f72105491f85e6c459.md) | 110 | `result-track:6dc433f72105491f85e6c4595fecad3314e62656901af3dcf7137bd5dcecf9c1` |
| 18 | `theorem` | [Fin.circulant_mul](../../../../../mathematics/Algebra/LinearAlgebra/Circulant/Variant33680d9bb7b69bebc9e04c904d93db22aad695503e4a16fdb6c8307563e4eb10.lean/declarations/fin-circulant-mul--eb152bb5ab65dbcfc6ca83e9.md) | 118 | `result-track:eb152bb5ab65dbcfc6ca83e9c4b7b31b77c14c1d1dda3bf8af221384c16b37e7` |
| 19 | `theorem` | [circulant_mul_comm](../../../../../mathematics/Algebra/LinearAlgebra/Circulant/Variant33680d9bb7b69bebc9e04c904d93db22aad695503e4a16fdb6c8307563e4eb10.lean/declarations/circulant-mul-comm--3144baf93dc5bd32906b39fb.md) | 124 | `result-track:3144baf93dc5bd32906b39fb5d5d20a56f0507ec41d74f9b574022f9988cb9cf` |
| 20 | `theorem` | [Fin.circulant_mul_comm](../../../../../mathematics/Algebra/LinearAlgebra/Circulant/Variant33680d9bb7b69bebc9e04c904d93db22aad695503e4a16fdb6c8307563e4eb10.lean/declarations/fin-circulant-mul-comm--9fba9352b891ded8d09f8332.md) | 135 | `result-track:9fba9352b891ded8d09f8332d14b9f003ffd3dcbaf51b57543ad4c0163489f48` |
| 21 | `theorem` | [circulant_smul](../../../../../mathematics/Algebra/LinearAlgebra/Circulant/Variant33680d9bb7b69bebc9e04c904d93db22aad695503e4a16fdb6c8307563e4eb10.lean/declarations/circulant-smul--6e75fd5dc091fe448c172731.md) | 141 | `result-track:6e75fd5dc091fe448c172731a15770e5614fcdb1f2180415beabe0f472b6a75d` |
| 22 | `theorem` | [circulant_single_one](../../../../../mathematics/Algebra/LinearAlgebra/Circulant/Variant33680d9bb7b69bebc9e04c904d93db22aad695503e4a16fdb6c8307563e4eb10.lean/declarations/circulant-single-one--46da9206e3b7a72e6af65c61.md) | 145 | `result-track:46da9206e3b7a72e6af65c618461297c367a9af56c0e64c378c4f616193fc1e1` |
| 23 | `theorem` | [circulant_single](../../../../../mathematics/Algebra/LinearAlgebra/Circulant/Variant33680d9bb7b69bebc9e04c904d93db22aad695503e4a16fdb6c8307563e4eb10.lean/declarations/circulant-single--1b89180e9b509cab71c13cde.md) | 151 | `result-track:1b89180e9b509cab71c13cdec7c16a2adea00a49e5c494abbe5f5c3dcaa26765` |
| 24 | `theorem` | [Fin.circulant_ite](../../../../../mathematics/Algebra/LinearAlgebra/Circulant/Variant33680d9bb7b69bebc9e04c904d93db22aad695503e4a16fdb6c8307563e4eb10.lean/declarations/fin-circulant-ite--4686cc8e13520211c9d27a95.md) | 158 | `result-track:4686cc8e13520211c9d27a953865615aa89a178c91a71f5d13a7d9bba3ba3908` |
| 25 | `theorem` | [circulant_isSymm_iff](../../../../../mathematics/Algebra/LinearAlgebra/Circulant/Variant33680d9bb7b69bebc9e04c904d93db22aad695503e4a16fdb6c8307563e4eb10.lean/declarations/circulant-issymm-iff--7b31792c0e9c3c78035a2586.md) | 167 | `result-track:7b31792c0e9c3c78035a258647eccf8cad3f084f56ebc2d79f75f4a910f6407f` |
| 26 | `theorem` | [Fin.circulant_isSymm_iff](../../../../../mathematics/Algebra/LinearAlgebra/Circulant/Variant33680d9bb7b69bebc9e04c904d93db22aad695503e4a16fdb6c8307563e4eb10.lean/declarations/fin-circulant-issymm-iff--fe9996ebcee3d92439d74121.md) | 171 | `result-track:fe9996ebcee3d92439d7412123de9908cb7035386d0ddd0bce59b649deb58d78` |
| 27 | `theorem` | [circulant_isSymm_apply](../../../../../mathematics/Algebra/LinearAlgebra/Circulant/Variant33680d9bb7b69bebc9e04c904d93db22aad695503e4a16fdb6c8307563e4eb10.lean/declarations/circulant-issymm-apply--c83c189b46a3a0aac4a98ecb.md) | 176 | `result-track:c83c189b46a3a0aac4a98ecb14c09097d67a47bbb7dc702880ad5b88285d5162` |
| 28 | `theorem` | [Fin.circulant_isSymm_apply](../../../../../mathematics/Algebra/LinearAlgebra/Circulant/Variant33680d9bb7b69bebc9e04c904d93db22aad695503e4a16fdb6c8307563e4eb10.lean/declarations/fin-circulant-issymm-apply--a3600d26e7191552154f1e79.md) | 180 | `result-track:a3600d26e7191552154f1e794f672d3882bdcd9953f9c68967677638af52fffd` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
