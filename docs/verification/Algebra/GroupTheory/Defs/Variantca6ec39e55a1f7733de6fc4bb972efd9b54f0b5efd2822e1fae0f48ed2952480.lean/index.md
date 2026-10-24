# Verification target: GRWTSK.Algebra.GroupTheory.Defs.Variantca6ec39e55a1f7733de6fc4bb972efd9b54f0b5efd2822e1fae0f48ed2952480

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "edf4e68c70c2fb534da4d77b205d7e0a7d8500b1",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Defs/Variantca6ec39e55a1f7733de6fc4bb972efd9b54f0b5efd2822e1fae0f48ed2952480.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/Defs/Variantca6ec39e55a1f7733de6fc4bb972efd9b54f0b5efd2822e1fae0f48ed2952480.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/Defs/Variantca6ec39e55a1f7733de6fc4bb972efd9b54f0b5efd2822e1fae0f48ed2952480.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `edf4e68c70c2fb534da4d77b205d7e0a7d8500b1`.

Source path: `GRWTSK/Algebra/GroupTheory/Defs/Variantca6ec39e55a1f7733de6fc4bb972efd9b54f0b5efd2822e1fae0f48ed2952480.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Defs/Variantca6ec39e55a1f7733de6fc4bb972efd9b54f0b5efd2822e1fae0f48ed2952480.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.GroupWithZero.Action.Defs` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.Torsion` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [NoZeroSMulDivisors](../../../../../mathematics/Algebra/GroupTheory/Defs/Variantca6ec39e55a1f7733de6fc4bb972efd9b54f0b5efd2822e1fae0f48ed2952480.lean/declarations/nozerosmuldivisors--0c389ec2b42eecde8ac5b387.md) | 29 | `declaration-track:0c389ec2b42eecde8ac5b387eda4e0553d662db577f9aa7f141b436c0ec15cdc` |
| 2 | `theorem` | [Function.Injective.noZeroSMulDivisors](../../../../../mathematics/Algebra/GroupTheory/Defs/Variantca6ec39e55a1f7733de6fc4bb972efd9b54f0b5efd2822e1fae0f48ed2952480.lean/declarations/function-injective-nozerosmuldivisors--9b187c6252d00784e4a085c4.md) | 36 | `result-track:9b187c6252d00784e4a085c492a27c14690dd83c4d9fa9cc68afbaef205348bf` |
| 3 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Defs/Variantca6ec39e55a1f7733de6fc4bb972efd9b54f0b5efd2822e1fae0f48ed2952480.lean/declarations/instance--32eaf689947731d2cde070fa.md) | 43 | `declaration-track:32eaf689947731d2cde070fad080e56ccc1f978bd1783f4a5e3a182191c03db3` |
| 4 | `theorem` | [smul_ne_zero](../../../../../mathematics/Algebra/GroupTheory/Defs/Variantca6ec39e55a1f7733de6fc4bb972efd9b54f0b5efd2822e1fae0f48ed2952480.lean/declarations/smul-ne-zero--1a0a1e5587e63f96157bc852.md) | 47 | `result-track:1a0a1e5587e63f96157bc852162ce094c5e75089bd5cea66b8739823232218f1` |
| 5 | `theorem` | [smul_eq_zero](../../../../../mathematics/Algebra/GroupTheory/Defs/Variantca6ec39e55a1f7733de6fc4bb972efd9b54f0b5efd2822e1fae0f48ed2952480.lean/declarations/smul-eq-zero--bb95a6a21fd187dfa6bf76e4.md) | 56 | `result-track:bb95a6a21fd187dfa6bf76e4e8bd7fa5719c8aaf7b9bc619a972d311d4934827` |
| 6 | `theorem` | [smul_ne_zero_iff](../../../../../mathematics/Algebra/GroupTheory/Defs/Variantca6ec39e55a1f7733de6fc4bb972efd9b54f0b5efd2822e1fae0f48ed2952480.lean/declarations/smul-ne-zero-iff--4caac6463004adc7ed3ec388.md) | 60 | `result-track:4caac6463004adc7ed3ec38848569ee372d64e9a036622f046a44020a936c1e1` |
| 7 | `lemma` | [smul_eq_zero_iff_left](../../../../../mathematics/Algebra/GroupTheory/Defs/Variantca6ec39e55a1f7733de6fc4bb972efd9b54f0b5efd2822e1fae0f48ed2952480.lean/declarations/smul-eq-zero-iff-left--9755811e4351575ca2432a48.md) | 62 | `result-track:9755811e4351575ca2432a486d768046fb7337a8facd5832e35573ad17daca94` |
| 8 | `lemma` | [smul_eq_zero_iff_right](../../../../../mathematics/Algebra/GroupTheory/Defs/Variantca6ec39e55a1f7733de6fc4bb972efd9b54f0b5efd2822e1fae0f48ed2952480.lean/declarations/smul-eq-zero-iff-right--743088f7242da38f15f311f3.md) | 63 | `result-track:743088f7242da38f15f311f37edea2ed11c682fedeb9545ec49133a9b42ca094` |
| 9 | `lemma` | [smul_ne_zero_iff_left](../../../../../mathematics/Algebra/GroupTheory/Defs/Variantca6ec39e55a1f7733de6fc4bb972efd9b54f0b5efd2822e1fae0f48ed2952480.lean/declarations/smul-ne-zero-iff-left--4cce2e32721bb6bcf9110e30.md) | 64 | `result-track:4cce2e32721bb6bcf9110e3009f40a1da85f3e938423bba40efb72ea2ad86805` |
| 10 | `lemma` | [smul_ne_zero_iff_right](../../../../../mathematics/Algebra/GroupTheory/Defs/Variantca6ec39e55a1f7733de6fc4bb972efd9b54f0b5efd2822e1fae0f48ed2952480.lean/declarations/smul-ne-zero-iff-right--b83c9276e4b77d08866f1c50.md) | 65 | `result-track:b83c9276e4b77d08866f1c50bfb31bc26b227014b274d870a45c79a9ee9f169e` |
| 11 | `instance` | [IsAddTorsionFree.to_noZeroSMulDivisors_nat](../../../../../mathematics/Algebra/GroupTheory/Defs/Variantca6ec39e55a1f7733de6fc4bb972efd9b54f0b5efd2822e1fae0f48ed2952480.lean/declarations/isaddtorsionfree-to-nozerosmuldivisors-nat--c3be05b110197f9fe7114270.md) | 69 | `declaration-track:c3be05b110197f9fe711427049282d197375dc7a5932045bb8003b3bcf4718c0` |
| 12 | `instance` | [IsAddTorsionFree.to_noZeroSMulDivisors_int](../../../../../mathematics/Algebra/GroupTheory/Defs/Variantca6ec39e55a1f7733de6fc4bb972efd9b54f0b5efd2822e1fae0f48ed2952480.lean/declarations/isaddtorsionfree-to-nozerosmuldivisors-int--30b6d53375753a5aa2b5da5d.md) | 74 | `declaration-track:30b6d53375753a5aa2b5da5d1fe8ebeb07146de64503e55760edb91f1158a54b` |
| 13 | `lemma` | [noZeroSMulDivisors_nat_iff_isAddTorsionFree](../../../../../mathematics/Algebra/GroupTheory/Defs/Variantca6ec39e55a1f7733de6fc4bb972efd9b54f0b5efd2822e1fae0f48ed2952480.lean/declarations/nozerosmuldivisors-nat-iff-isaddtorsionfree--efe016b04c48a1a259e48ebf.md) | 80 | `result-track:efe016b04c48a1a259e48ebff9d88260f53d453e3754ef0dcd3e78b2ebbf1cc9` |
| 14 | `lemma` | [noZeroSMulDivisors_int_iff_isAddTorsionFree](../../../../../mathematics/Algebra/GroupTheory/Defs/Variantca6ec39e55a1f7733de6fc4bb972efd9b54f0b5efd2822e1fae0f48ed2952480.lean/declarations/nozerosmuldivisors-int-iff-isaddtorsionfree--d0e16309866479f24c7394ac.md) | 89 | `result-track:d0e16309866479f24c7394ac1634ab5e6351b16f31d1ca439bdc107c6957f65b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
