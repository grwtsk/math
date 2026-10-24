# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.GlobalProjection.Variante4c0e11aa11042f69cabf5de73f5bc7c878ec6b0e8fb204e6b3c8ecc554c2f7e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "daff3aa517821978c367d0f0c3f4b9d318970df8",
  "lexical_observation_count": 22,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/GlobalProjection/Variante4c0e11aa11042f69cabf5de73f5bc7c878ec6b0e8fb204e6b3c8ecc554c2f7e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/GlobalProjection/Variante4c0e11aa11042f69cabf5de73f5bc7c878ec6b0e8fb204e6b3c8ecc554c2f7e.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/GlobalProjection/Variante4c0e11aa11042f69cabf5de73f5bc7c878ec6b0e8fb204e6b3c8ecc554c2f7e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `daff3aa517821978c367d0f0c3f4b9d318970df8`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/GlobalProjection/Variante4c0e11aa11042f69cabf5de73f5bc7c878ec6b0e8fb204e6b3c8ecc554c2f7e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/GlobalProjection/Variante4c0e11aa11042f69cabf5de73f5bc7c878ec6b0e8fb204e6b3c8ecc554c2f7e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `BitMatrix.FiniteField.Galois` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Finset.Sort` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [MatrixLocus](../../../../mathematics/CombinatoricsAndDiscreteMathematics/GlobalProjection/Variante4c0e11aa11042f69cabf5de73f5bc7c878ec6b0e8fb204e6b3c8ecc554c2f7e.lean/declarations/matrixlocus--65134d3be13d68dcd61fea71.md) | 16 | `declaration-track:65134d3be13d68dcd61fea718a9f1d984a35e2d581b2312de9df3fe556e21137` |
| 2 | `def` | [rowEmbed](../../../../mathematics/CombinatoricsAndDiscreteMathematics/GlobalProjection/Variante4c0e11aa11042f69cabf5de73f5bc7c878ec6b0e8fb204e6b3c8ecc554c2f7e.lean/declarations/rowembed--cfd9f89fee47c6f003e946c6.md) | 26 | `declaration-track:cfd9f89fee47c6f003e946c635e803bcaf6418bcb164a9ef1ccc579100ae023f` |
| 3 | `def` | [columnEmbed](../../../../mathematics/CombinatoricsAndDiscreteMathematics/GlobalProjection/Variante4c0e11aa11042f69cabf5de73f5bc7c878ec6b0e8fb204e6b3c8ecc554c2f7e.lean/declarations/columnembed--7462cd5aebd52450301f3c3e.md) | 30 | `declaration-track:7462cd5aebd52450301f3c3ebca6d9f7d9883d09cf2e455994b5f2497f8ba9c1` |
| 4 | `theorem` | [rowEmbed_mem](../../../../mathematics/CombinatoricsAndDiscreteMathematics/GlobalProjection/Variante4c0e11aa11042f69cabf5de73f5bc7c878ec6b0e8fb204e6b3c8ecc554c2f7e.lean/declarations/rowembed-mem--e0975f220636cd1725615db9.md) | 34 | `result-track:e0975f220636cd1725615db91175fee32a88f0361a55a036a07d937e02f947fc` |
| 5 | `theorem` | [columnEmbed_mem](../../../../mathematics/CombinatoricsAndDiscreteMathematics/GlobalProjection/Variante4c0e11aa11042f69cabf5de73f5bc7c878ec6b0e8fb204e6b3c8ecc554c2f7e.lean/declarations/columnembed-mem--a06ee562732734e679cf129e.md) | 39 | `result-track:a06ee562732734e679cf129e3946cd5c626a3d2ffca62ed50939749cb6dabe9f` |
| 6 | `theorem` | [rowEmbed_injective](../../../../mathematics/CombinatoricsAndDiscreteMathematics/GlobalProjection/Variante4c0e11aa11042f69cabf5de73f5bc7c878ec6b0e8fb204e6b3c8ecc554c2f7e.lean/declarations/rowembed-injective--9e7346fb2537f7cf0c617c78.md) | 43 | `result-track:9e7346fb2537f7cf0c617c78892bdfa48ca415bfd6774d2780ca74818b868e5c` |
| 7 | `theorem` | [columnEmbed_injective](../../../../mathematics/CombinatoricsAndDiscreteMathematics/GlobalProjection/Variante4c0e11aa11042f69cabf5de73f5bc7c878ec6b0e8fb204e6b3c8ecc554c2f7e.lean/declarations/columnembed-injective--590c0cf1cc445806335dcca8.md) | 47 | `result-track:590c0cf1cc445806335dcca8187ee42f05aad9b4a39d62ad49bab119f37b1804` |
| 8 | `def` | [localRow?](../../../../mathematics/CombinatoricsAndDiscreteMathematics/GlobalProjection/Variante4c0e11aa11042f69cabf5de73f5bc7c878ec6b0e8fb204e6b3c8ecc554c2f7e.lean/declarations/localrow--8155595cd74d4141fc5adffb.md) | 52 | `declaration-track:8155595cd74d4141fc5adffb71ae957f51197d7074b2481bcecbca436999c732` |
| 9 | `def` | [localColumn?](../../../../mathematics/CombinatoricsAndDiscreteMathematics/GlobalProjection/Variante4c0e11aa11042f69cabf5de73f5bc7c878ec6b0e8fb204e6b3c8ecc554c2f7e.lean/declarations/localcolumn--70864d191c8b7c94aa723b30.md) | 59 | `declaration-track:70864d191c8b7c94aa723b30a3bed7fb6c1150178a75c639d8c2deb53406efef` |
| 10 | `theorem` | [localRow?_rowEmbed](../../../../mathematics/CombinatoricsAndDiscreteMathematics/GlobalProjection/Variante4c0e11aa11042f69cabf5de73f5bc7c878ec6b0e8fb204e6b3c8ecc554c2f7e.lean/declarations/localrow-rowembed--1924ada4fdb8bdf9d40dcd20.md) | 67 | `result-track:1924ada4fdb8bdf9d40dcd207dec2e697aee7c02a106f891e0c32fc06d562abc` |
| 11 | `theorem` | [localColumn?_columnEmbed](../../../../mathematics/CombinatoricsAndDiscreteMathematics/GlobalProjection/Variante4c0e11aa11042f69cabf5de73f5bc7c878ec6b0e8fb204e6b3c8ecc554c2f7e.lean/declarations/localcolumn-columnembed--d226ca5fd4bf04b4f5be2c7f.md) | 79 | `result-track:d226ca5fd4bf04b4f5be2c7f29e37ca4519f41cc74e6f3144380be24596068c1` |
| 12 | `theorem` | [localRow?_eq_none_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/GlobalProjection/Variante4c0e11aa11042f69cabf5de73f5bc7c878ec6b0e8fb204e6b3c8ecc554c2f7e.lean/declarations/localrow-eq-none-iff--d2b7cce0a170214646d9ae33.md) | 91 | `result-track:d2b7cce0a170214646d9ae33cfc869ee5a8fbc3918f6898a03181bf9e8ce9565` |
| 13 | `theorem` | [localColumn?_eq_none_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/GlobalProjection/Variante4c0e11aa11042f69cabf5de73f5bc7c878ec6b0e8fb204e6b3c8ecc554c2f7e.lean/declarations/localcolumn-eq-none-iff--99a84bbddf17d76a20853397.md) | 95 | `result-track:99a84bbddf17d76a20853397ab309f34233eacbc23faca29092dcdad0e12b51a` |
| 14 | `theorem` | [localRow?_eq_some_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/GlobalProjection/Variante4c0e11aa11042f69cabf5de73f5bc7c878ec6b0e8fb204e6b3c8ecc554c2f7e.lean/declarations/localrow-eq-some-iff--6af9eda3ff2b62ead6b5b596.md) | 99 | `result-track:6af9eda3ff2b62ead6b5b596b3ea9701f5f9292a61ea3c4f4f4d969d51ddf47b` |
| 15 | `theorem` | [localColumn?_eq_some_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/GlobalProjection/Variante4c0e11aa11042f69cabf5de73f5bc7c878ec6b0e8fb204e6b3c8ecc554c2f7e.lean/declarations/localcolumn-eq-some-iff--ecee7750d02ed9db60acef5e.md) | 114 | `result-track:ecee7750d02ed9db60acef5ed2b21d6606214511ef3e368e1e3cd2e5896f28eb` |
| 16 | `theorem` | [rowEmbed_range](../../../../mathematics/CombinatoricsAndDiscreteMathematics/GlobalProjection/Variante4c0e11aa11042f69cabf5de73f5bc7c878ec6b0e8fb204e6b3c8ecc554c2f7e.lean/declarations/rowembed-range--b6178c2ada55cfd904de987c.md) | 129 | `result-track:b6178c2ada55cfd904de987c45e0f43f34559227c24eca6a47281f522cc69deb` |
| 17 | `theorem` | [columnEmbed_range](../../../../mathematics/CombinatoricsAndDiscreteMathematics/GlobalProjection/Variante4c0e11aa11042f69cabf5de73f5bc7c878ec6b0e8fb204e6b3c8ecc554c2f7e.lean/declarations/columnembed-range--fdb066ece74f3e9f545caea0.md) | 133 | `result-track:fdb066ece74f3e9f545caea0c9efc901f06cacadfc378fa039339ebba6d76d00` |
| 18 | `def` | [coordinateOfOffset](../../../../mathematics/CombinatoricsAndDiscreteMathematics/GlobalProjection/Variante4c0e11aa11042f69cabf5de73f5bc7c878ec6b0e8fb204e6b3c8ecc554c2f7e.lean/declarations/coordinateofoffset--62bd56478102c5508caeae4e.md) | 140 | `declaration-track:62bd56478102c5508caeae4e4fd6520c545d981c096a00087c43eb146336dfed` |
| 19 | `theorem` | [coordinateOfOffset_flatIdx](../../../../mathematics/CombinatoricsAndDiscreteMathematics/GlobalProjection/Variante4c0e11aa11042f69cabf5de73f5bc7c878ec6b0e8fb204e6b3c8ecc554c2f7e.lean/declarations/coordinateofoffset-flatidx--2bc8434ccd903162e4b34ce0.md) | 145 | `result-track:2bc8434ccd903162e4b34ce0a4a253c2ded70377c533dc3f28385abcab55dbac` |
| 20 | `def` | [rowMajorOffsets](../../../../mathematics/CombinatoricsAndDiscreteMathematics/GlobalProjection/Variante4c0e11aa11042f69cabf5de73f5bc7c878ec6b0e8fb204e6b3c8ecc554c2f7e.lean/declarations/rowmajoroffsets--a9db901f30ce112b589fda21.md) | 156 | `declaration-track:a9db901f30ce112b589fda21201e9cd84714a5d94ce68cb8b7d1fefe5690f837` |
| 21 | `theorem` | [mem_rowMajorOffsets_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/GlobalProjection/Variante4c0e11aa11042f69cabf5de73f5bc7c878ec6b0e8fb204e6b3c8ecc554c2f7e.lean/declarations/mem-rowmajoroffsets-iff--59e5367000fffc56fdcb5269.md) | 161 | `result-track:59e5367000fffc56fdcb5269abea548c1dc78a9f16d19ce1ef560dc2e891d68b` |
| 22 | `theorem` | [flatIdx_mem_rowMajorOffsets_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/GlobalProjection/Variante4c0e11aa11042f69cabf5de73f5bc7c878ec6b0e8fb204e6b3c8ecc554c2f7e.lean/declarations/flatidx-mem-rowmajoroffsets-iff--9d0d7ba2a7e3dca2a7e87d6d.md) | 169 | `result-track:9d0d7ba2a7e3dca2a7e87d6d2afa86afa1209933b7b30d26e4619edaa3d02b8d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
