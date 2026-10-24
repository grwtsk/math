# Verification target: GRWTSK.Algebra.GroupTheory.Prod.Variant92cb9a1b30a0aa6f89605a49ee049050c366225d5100ec88c3665143bcab5d8b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "524fe63548fdc7fd4a04d44817f2f0b7cdccd46a",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Prod/Variant92cb9a1b30a0aa6f89605a49ee049050c366225d5100ec88c3665143bcab5d8b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/Prod/Variant92cb9a1b30a0aa6f89605a49ee049050c366225d5100ec88c3665143bcab5d8b.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/Prod/Variant92cb9a1b30a0aa6f89605a49ee049050c366225d5100ec88c3665143bcab5d8b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `524fe63548fdc7fd4a04d44817f2f0b7cdccd46a`.

Source path: `GRWTSK/Algebra/GroupTheory/Prod/Variant92cb9a1b30a0aa6f89605a49ee049050c366225d5100ec88c3665143bcab5d8b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Prod/Variant92cb9a1b30a0aa6f89605a49ee049050c366225d5100ec88c3665143bcab5d8b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.Action.Prod` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.GroupWithZero.Action.End` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [smul_zero_mk](../../../../../mathematics/Algebra/GroupTheory/Prod/Variant92cb9a1b30a0aa6f89605a49ee049050c366225d5100ec88c3665143bcab5d8b.lean/declarations/smul-zero-mk--a217e1c47f826d4c1fb2d880.md) | 31 | `result-track:a217e1c47f826d4c1fb2d8806c18301cc1a4d318698b094e89fac7b4c9b19624` |
| 2 | `theorem` | [smul_mk_zero](../../../../../mathematics/Algebra/GroupTheory/Prod/Variant92cb9a1b30a0aa6f89605a49ee049050c366225d5100ec88c3665143bcab5d8b.lean/declarations/smul-mk-zero--806c6babd3ee2998696a7ea4.md) | 34 | `result-track:806c6babd3ee2998696a7ea44e891b607a7e5fa0abbc2d7138143d92c4831fc6` |
| 3 | `instance` | [smulZeroClass](../../../../../mathematics/Algebra/GroupTheory/Prod/Variant92cb9a1b30a0aa6f89605a49ee049050c366225d5100ec88c3665143bcab5d8b.lean/declarations/smulzeroclass--6a58c3deb15f88af22c0c471.md) | 39 | `declaration-track:6a58c3deb15f88af22c0c471ae3626b37c40ffb05d808344e16c2dcf1d65eebf` |
| 4 | `instance` | [distribSMul](../../../../../mathematics/Algebra/GroupTheory/Prod/Variant92cb9a1b30a0aa6f89605a49ee049050c366225d5100ec88c3665143bcab5d8b.lean/declarations/distribsmul--e3a3b06521ec6ae3b0809978.md) | 42 | `declaration-track:e3a3b06521ec6ae3b0809978ab826b3a07eb9a831f65a1dcbdedddb7baae8c30` |
| 5 | `instance` | [distribMulAction](../../../../../mathematics/Algebra/GroupTheory/Prod/Variant92cb9a1b30a0aa6f89605a49ee049050c366225d5100ec88c3665143bcab5d8b.lean/declarations/distribmulaction--71e8fa4e220aa72bdc1a340f.md) | 46 | `declaration-track:71e8fa4e220aa72bdc1a340f82851cd0e26ffadf33b63c6bb0372a5112c8365c` |
| 6 | `instance` | [mulDistribMulAction](../../../../../mathematics/Algebra/GroupTheory/Prod/Variant92cb9a1b30a0aa6f89605a49ee049050c366225d5100ec88c3665143bcab5d8b.lean/declarations/muldistribmulaction--dde8c5cda8ef0a58654fcfc5.md) | 50 | `declaration-track:dde8c5cda8ef0a58654fcfc51413ad6695645556d63e41f1f46a4184b40486cd` |
| 7 | `abbrev` | [DistribMulAction.prodOfSMulCommClass](../../../../../mathematics/Algebra/GroupTheory/Prod/Variant92cb9a1b30a0aa6f89605a49ee049050c366225d5100ec88c3665143bcab5d8b.lean/declarations/distribmulaction-prodofsmulcommclass--94c3641704b9750c0504c705.md) | 64 | `declaration-track:94c3641704b9750c0504c70552503673a83ca3444f6d1ec47af3bc4ec2d14269` |
| 8 | `def` | [DistribMulAction.prodEquiv](../../../../../mathematics/Algebra/GroupTheory/Prod/Variant92cb9a1b30a0aa6f89605a49ee049050c366225d5100ec88c3665143bcab5d8b.lean/declarations/distribmulaction-prodequiv--921cdd96a210bff7a4a7118a.md) | 72 | `declaration-track:921cdd96a210bff7a4a7118a309bff295c92542010e0a470938e43426536793d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
