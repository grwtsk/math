# Verification target: GRWTSK.Algebra.GroupTheory.Pointwise.Variant97084f4255c827c44dcff6c72a6b9fe015f7455d1f80b6caad015dca0134fa60

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "86a4227efd0663c32faf246883a39f7fa8be95bf",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Pointwise/Variant97084f4255c827c44dcff6c72a6b9fe015f7455d1f80b6caad015dca0134fa60.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/Pointwise/Variant97084f4255c827c44dcff6c72a6b9fe015f7455d1f80b6caad015dca0134fa60.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/Pointwise/Variant97084f4255c827c44dcff6c72a6b9fe015f7455d1f80b6caad015dca0134fa60.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `86a4227efd0663c32faf246883a39f7fa8be95bf`.

Source path: `GRWTSK/Algebra/GroupTheory/Pointwise/Variant97084f4255c827c44dcff6c72a6b9fe015f7455d1f80b6caad015dca0134fa60.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Pointwise/Variant97084f4255c827c44dcff6c72a6b9fe015f7455d1f80b6caad015dca0134fa60.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.GroupTheory.GroupAction.SubMulAction` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.Pointwise.Set.Basic` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Pointwise/Variant97084f4255c827c44dcff6c72a6b9fe015f7455d1f80b6caad015dca0134fa60.lean/declarations/instance--092cf496dbb6267f69f22838.md) | 38 | `declaration-track:092cf496dbb6267f69f22838ba7979b749ced2dbe5eb54c7f331c0c0723e15b9` |
| 2 | `theorem` | [coe_one](../../../../../mathematics/Algebra/GroupTheory/Pointwise/Variant97084f4255c827c44dcff6c72a6b9fe015f7455d1f80b6caad015dca0134fa60.lean/declarations/coe-one--9e3f3401f4a2f465f2f4e257.md) | 43 | `result-track:9e3f3401f4a2f465f2f4e257911e1e7169656f296d1f765ae3ef573fdded01a6` |
| 3 | `theorem` | [mem_one](../../../../../mathematics/Algebra/GroupTheory/Pointwise/Variant97084f4255c827c44dcff6c72a6b9fe015f7455d1f80b6caad015dca0134fa60.lean/declarations/mem-one--99f93dd0d2e3c6a8330368f0.md) | 47 | `result-track:99f93dd0d2e3c6a8330368f031069aa839cccfb996922b817749771fc2769fa3` |
| 4 | `theorem` | [subset_coe_one](../../../../../mathematics/Algebra/GroupTheory/Pointwise/Variant97084f4255c827c44dcff6c72a6b9fe015f7455d1f80b6caad015dca0134fa60.lean/declarations/subset-coe-one--f4aabc4b22edd058ed9026b6.md) | 50 | `result-track:f4aabc4b22edd058ed9026b6b72c0727bfb421adb8617aab7a7f5d6097f4b114` |
| 5 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Pointwise/Variant97084f4255c827c44dcff6c72a6b9fe015f7455d1f80b6caad015dca0134fa60.lean/declarations/instance--d5f83e793297461f9e7f90c1.md) | 59 | `declaration-track:d5f83e793297461f9e7f90c1e1a9ff53c0098f6cd8540c8195da62785fb6a7b9` |
| 6 | `theorem` | [coe_mul](../../../../../mathematics/Algebra/GroupTheory/Pointwise/Variant97084f4255c827c44dcff6c72a6b9fe015f7455d1f80b6caad015dca0134fa60.lean/declarations/coe-mul--0ca22e96af8b21ff1c02f820.md) | 66 | `result-track:0ca22e96af8b21ff1c02f820fa577e21c4a90843a094592847db1eec22b0a3c5` |
| 7 | `theorem` | [mem_mul](../../../../../mathematics/Algebra/GroupTheory/Pointwise/Variant97084f4255c827c44dcff6c72a6b9fe015f7455d1f80b6caad015dca0134fa60.lean/declarations/mem-mul--fd38bcc060539a43b02ea062.md) | 69 | `result-track:fd38bcc060539a43b02ea062cd40c7cab32736787eb8530eb3c47d24a5f44801` |
| 8 | `instance` | [mulOneClass](../../../../../mathematics/Algebra/GroupTheory/Pointwise/Variant97084f4255c827c44dcff6c72a6b9fe015f7455d1f80b6caad015dca0134fa60.lean/declarations/muloneclass--d925a9803bd99a00a95e5e5c.md) | 79 | `declaration-track:d925a9803bd99a00a95e5e5cdec895192c7dd50271d85d6257788d614f9bc0a3` |
| 9 | `instance` | [semiGroup](../../../../../mathematics/Algebra/GroupTheory/Pointwise/Variant97084f4255c827c44dcff6c72a6b9fe015f7455d1f80b6caad015dca0134fa60.lean/declarations/semigroup--98993e7375f211d5f5ff7009.md) | 104 | `declaration-track:98993e7375f211d5f5ff7009426dbb035cdd3185d42ca9dd7e6f6b406379da18` |
| 10 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Pointwise/Variant97084f4255c827c44dcff6c72a6b9fe015f7455d1f80b6caad015dca0134fa60.lean/declarations/instance--449bb1e961cc716582fa7230.md) | 114 | `declaration-track:449bb1e961cc716582fa723088d2aa5a14c91d8a3f65ac25c72e301af095275a` |
| 11 | `theorem` | [coe_pow](../../../../../mathematics/Algebra/GroupTheory/Pointwise/Variant97084f4255c827c44dcff6c72a6b9fe015f7455d1f80b6caad015dca0134fa60.lean/declarations/coe-pow--ba713edfab925147d39bf93b.md) | 118 | `result-track:ba713edfab925147d39bf93b4bcbd705b6ad3efd9c7463ab0461b9bdda2f8e33` |
| 12 | `theorem` | [subset_coe_pow](../../../../../mathematics/Algebra/GroupTheory/Pointwise/Variant97084f4255c827c44dcff6c72a6b9fe015f7455d1f80b6caad015dca0134fa60.lean/declarations/subset-coe-pow--af800ca7de6f724c914fb12e.md) | 124 | `result-track:af800ca7de6f724c914fb12e4d59495c8e61e571bce2e626097a98e839a225b7` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
