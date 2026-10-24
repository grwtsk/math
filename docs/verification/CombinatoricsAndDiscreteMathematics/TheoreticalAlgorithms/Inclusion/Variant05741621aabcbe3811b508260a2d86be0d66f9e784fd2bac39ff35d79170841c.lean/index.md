# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Inclusion.Variant05741621aabcbe3811b508260a2d86be0d66f9e784fd2bac39ff35d79170841c

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6ef9b3d93dc58d5e9c51e375c838dc6c9e536270",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Inclusion/Variant05741621aabcbe3811b508260a2d86be0d66f9e784fd2bac39ff35d79170841c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Inclusion/Variant05741621aabcbe3811b508260a2d86be0d66f9e784fd2bac39ff35d79170841c.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Inclusion/Variant05741621aabcbe3811b508260a2d86be0d66f9e784fd2bac39ff35d79170841c.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6ef9b3d93dc58d5e9c51e375c838dc6c9e536270`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Inclusion/Variant05741621aabcbe3811b508260a2d86be0d66f9e784fd2bac39ff35d79170841c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Inclusion/Variant05741621aabcbe3811b508260a2d86be0d66f9e784fd2bac39ff35d79170841c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Set.Basic` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [inclusion](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Inclusion/Variant05741621aabcbe3811b508260a2d86be0d66f9e784fd2bac39ff35d79170841c.lean/declarations/inclusion--5af407c82a727ad7197fa77f.md) | 17 | `declaration-track:5af407c82a727ad7197fa77fc699f2e72581fcb52d8de549104e31935e24b98d` |
| 2 | `theorem` | [inclusion_self](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Inclusion/Variant05741621aabcbe3811b508260a2d86be0d66f9e784fd2bac39ff35d79170841c.lean/declarations/inclusion-self--a4a17f8ee04f92e7d4ba7f55.md) | 19 | `result-track:a4a17f8ee04f92e7d4ba7f5526e4ae730241af60f7118049e28fa9edaff34265` |
| 3 | `theorem` | [inclusion_eq_id](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Inclusion/Variant05741621aabcbe3811b508260a2d86be0d66f9e784fd2bac39ff35d79170841c.lean/declarations/inclusion-eq-id--6c1fe9fce0a182816b10d5cd.md) | 23 | `result-track:6c1fe9fce0a182816b10d5cda95c2a4d39eaf6dae9db033fde1f624a80a3e1f5` |
| 4 | `theorem` | [inclusion_mk](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Inclusion/Variant05741621aabcbe3811b508260a2d86be0d66f9e784fd2bac39ff35d79170841c.lean/declarations/inclusion-mk--cd82f91812bb23b5a21b4e96.md) | 27 | `result-track:cd82f91812bb23b5a21b4e961fb1499998dc7e526dabd46a2f41c9ea0976cd0c` |
| 5 | `theorem` | [inclusion_right](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Inclusion/Variant05741621aabcbe3811b508260a2d86be0d66f9e784fd2bac39ff35d79170841c.lean/declarations/inclusion-right--3d58acd3dc7a50898bad09c2.md) | 30 | `result-track:3d58acd3dc7a50898bad09c2d4158fe1e6a6927667acf235edd576fc9d31d824` |
| 6 | `theorem` | [inclusion_inclusion](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Inclusion/Variant05741621aabcbe3811b508260a2d86be0d66f9e784fd2bac39ff35d79170841c.lean/declarations/inclusion-inclusion--99e86c8ec4acad82a0081b2f.md) | 35 | `result-track:99e86c8ec4acad82a0081b2f38be04bb7fa455df6b9b32cbb916fb64dd47ea08` |
| 7 | `theorem` | [inclusion_comp_inclusion](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Inclusion/Variant05741621aabcbe3811b508260a2d86be0d66f9e784fd2bac39ff35d79170841c.lean/declarations/inclusion-comp-inclusion--be9a5be2db55d27f9d0e3000.md) | 41 | `result-track:be9a5be2db55d27f9d0e30000e159cb5b31af4979f3383c5f279840be06fa436` |
| 8 | `theorem` | [coe_inclusion](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Inclusion/Variant05741621aabcbe3811b508260a2d86be0d66f9e784fd2bac39ff35d79170841c.lean/declarations/coe-inclusion--468100f8c6c84e15bbbe36f2.md) | 46 | `result-track:468100f8c6c84e15bbbe36f262a8c976e34d64295cdb5fbc394e031250aa6bb9` |
| 9 | `theorem` | [val_comp_inclusion](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Inclusion/Variant05741621aabcbe3811b508260a2d86be0d66f9e784fd2bac39ff35d79170841c.lean/declarations/val-comp-inclusion--86d7167d4cfa7f4e41debd05.md) | 49 | `result-track:86d7167d4cfa7f4e41debd05924a4c8bfd09c7ff02a9736bb827f43867cd8ae3` |
| 10 | `theorem` | [inclusion_injective](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Inclusion/Variant05741621aabcbe3811b508260a2d86be0d66f9e784fd2bac39ff35d79170841c.lean/declarations/inclusion-injective--81c17a3797137efbbbec12ac.md) | 52 | `result-track:81c17a3797137efbbbec12ac46330a0bc3dbd4b276f7d1c534d0d15256cd64a0` |
| 11 | `theorem` | [inclusion_inj](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Inclusion/Variant05741621aabcbe3811b508260a2d86be0d66f9e784fd2bac39ff35d79170841c.lean/declarations/inclusion-inj--44e5f69c9c75097b470d9b78.md) | 55 | `result-track:44e5f69c9c75097b470d9b78100353be7c841993ba2361b752613d2c4d3bc1fb` |
| 12 | `theorem` | [eq_of_inclusion_surjective](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Inclusion/Variant05741621aabcbe3811b508260a2d86be0d66f9e784fd2bac39ff35d79170841c.lean/declarations/eq-of-inclusion-surjective--91ae3d645df4514df5ed7123.md) | 58 | `result-track:91ae3d645df4514df5ed71234237d00a32776e8b2c2f2905ccceb4438d5fca0b` |
| 13 | `theorem` | [inclusion_le_inclusion](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Inclusion/Variant05741621aabcbe3811b508260a2d86be0d66f9e784fd2bac39ff35d79170841c.lean/declarations/inclusion-le-inclusion--e0820a11b175d94473fea81e.md) | 64 | `result-track:e0820a11b175d94473fea81e528ec1c512da3fed2ef9a010ed2a4946acc10722` |
| 14 | `theorem` | [inclusion_lt_inclusion](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Inclusion/Variant05741621aabcbe3811b508260a2d86be0d66f9e784fd2bac39ff35d79170841c.lean/declarations/inclusion-lt-inclusion--fedd3fd07a9377832b4e6ec3.md) | 67 | `result-track:fedd3fd07a9377832b4e6ec3f51c7db1ddb4b3e69e0bdb64ec12f6878922f1d7` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
