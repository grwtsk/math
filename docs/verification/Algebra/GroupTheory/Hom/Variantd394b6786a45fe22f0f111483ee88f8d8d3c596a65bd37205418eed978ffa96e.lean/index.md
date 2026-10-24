# Verification target: GRWTSK.Algebra.GroupTheory.Hom.Variantd394b6786a45fe22f0f111483ee88f8d8d3c596a65bd37205418eed978ffa96e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "415287a0a29ab51d1f92595a51aecd9ac4c0ccf3",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Hom/Variantd394b6786a45fe22f0f111483ee88f8d8d3c596a65bd37205418eed978ffa96e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/Hom/Variantd394b6786a45fe22f0f111483ee88f8d8d3c596a65bd37205418eed978ffa96e.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/Hom/Variantd394b6786a45fe22f0f111483ee88f8d8d3c596a65bd37205418eed978ffa96e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `415287a0a29ab51d1f92595a51aecd9ac4c0ccf3`.

Source path: `GRWTSK/Algebra/GroupTheory/Hom/Variantd394b6786a45fe22f0f111483ee88f8d8d3c596a65bd37205418eed978ffa96e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Hom/Variantd394b6786a45fe22f0f111483ee88f8d8d3c596a65bd37205418eed978ffa96e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Module.Pi` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [distribSMul](../../../../../mathematics/Algebra/GroupTheory/Hom/Variantd394b6786a45fe22f0f111483ee88f8d8d3c596a65bd37205418eed978ffa96e.lean/declarations/distribsmul--b5d507f1aec74a9b1a89ee51.md) | 30 | `declaration-track:b5d507f1aec74a9b1a89ee51693df72abab3b890f9d05dac2f37a98ffc57ec77` |
| 2 | `instance` | [distribMulAction](../../../../../mathematics/Algebra/GroupTheory/Hom/Variantd394b6786a45fe22f0f111483ee88f8d8d3c596a65bd37205418eed978ffa96e.lean/declarations/distribmulaction--cdcd5354ac87852e1173c695.md) | 38 | `declaration-track:cdcd5354ac87852e1173c695a8e9008d736304ebddd1a2a099e4be305382fcd9` |
| 3 | `theorem` | [coe_smul](../../../../../mathematics/Algebra/GroupTheory/Hom/Variantd394b6786a45fe22f0f111483ee88f8d8d3c596a65bd37205418eed978ffa96e.lean/declarations/coe-smul--8751087ca0953e8e4fb3bf47.md) | 45 | `result-track:8751087ca0953e8e4fb3bf471b8e1cd9a8eb7109bdc335a163b3587c83b16cee` |
| 4 | `theorem` | [smul_apply](../../../../../mathematics/Algebra/GroupTheory/Hom/Variantd394b6786a45fe22f0f111483ee88f8d8d3c596a65bd37205418eed978ffa96e.lean/declarations/smul-apply--13f59d31ca3a6a1ad0085f12.md) | 48 | `result-track:13f59d31ca3a6a1ad0085f1264c335626587cef25ed2ecfd2a435d3400e60cb4` |
| 5 | `instance` | [smulCommClass](../../../../../mathematics/Algebra/GroupTheory/Hom/Variantd394b6786a45fe22f0f111483ee88f8d8d3c596a65bd37205418eed978ffa96e.lean/declarations/smulcommclass--b8f3bccabfdbfe7aff469de1.md) | 52 | `declaration-track:b8f3bccabfdbfe7aff469de1dd12addec7484bb98e8e23ecc5b7d91aa19fd47c` |
| 6 | `instance` | [isScalarTower](../../../../../mathematics/Algebra/GroupTheory/Hom/Variantd394b6786a45fe22f0f111483ee88f8d8d3c596a65bd37205418eed978ffa96e.lean/declarations/isscalartower--f0a624d6118f5bf82923528e.md) | 56 | `declaration-track:f0a624d6118f5bf82923528e207b48ffdb4f798c9b3dcb58b62ad19b9b564506` |
| 7 | `instance` | [isCentralScalar](../../../../../mathematics/Algebra/GroupTheory/Hom/Variantd394b6786a45fe22f0f111483ee88f8d8d3c596a65bd37205418eed978ffa96e.lean/declarations/iscentralscalar--300adf3daa58d722d0f21d29.md) | 60 | `declaration-track:300adf3daa58d722d0f21d2949ce12ceedc4152e83fd52a58f6de0b4f4ac887f` |
| 8 | `def` | [smulLeft](../../../../../mathematics/Algebra/GroupTheory/Hom/Variantd394b6786a45fe22f0f111483ee88f8d8d3c596a65bd37205418eed978ffa96e.lean/declarations/smulleft--7dc79d216307c3f5c56f48b9.md) | 69 | `declaration-track:7dc79d216307c3f5c56f48b929a0f95d07e3b1e194d8a6182e8755573ccbdc55` |
| 9 | `def` | [smul](../../../../../mathematics/Algebra/GroupTheory/Hom/Variantd394b6786a45fe22f0f111483ee88f8d8d3c596a65bd37205418eed978ffa96e.lean/declarations/smul--ad5484b44f76c9c4be19c54d.md) | 76 | `declaration-track:ad5484b44f76c9c4be19c54dcdb93353662232e3183f7c5b269a2fda6c12f9fc` |
| 10 | `theorem` | [coe_smul'](../../../../../mathematics/Algebra/GroupTheory/Hom/Variantd394b6786a45fe22f0f111483ee88f8d8d3c596a65bd37205418eed978ffa96e.lean/declarations/coe-smul--e2ff41a632435288bca24794.md) | 81 | `result-track:e2ff41a632435288bca2479497f0f6cd1b7ff07e8085ccc32e448f18ae6e8db1` |
| 11 | `instance` | [module](../../../../../mathematics/Algebra/GroupTheory/Hom/Variantd394b6786a45fe22f0f111483ee88f8d8d3c596a65bd37205418eed978ffa96e.lean/declarations/module--7523dfb8b4723d2bec3fa286.md) | 84 | `declaration-track:7523dfb8b4723d2bec3fa286da8faf32ac1c5daa32d22406e775ab8ff26aba6e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
