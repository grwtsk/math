# Verification target: GRWTSK.Algebra.Defs.Variant8f33dd83ededf69ec2c54df57c6f5f454e7df6e5865c1c1e9d5bdbb3bcd103c9

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3d0ce1a7c1c2d7452f117ca5e8906ae148d6f802",
  "lexical_observation_count": 25,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Defs/Variant8f33dd83ededf69ec2c54df57c6f5f454e7df6e5865c1c1e9d5bdbb3bcd103c9.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Defs/Variant8f33dd83ededf69ec2c54df57c6f5f454e7df6e5865c1c1e9d5bdbb3bcd103c9.lean/index.md) · [Full source](../../../../mathematics/Algebra/Defs/Variant8f33dd83ededf69ec2c54df57c6f5f454e7df6e5865c1c1e9d5bdbb3bcd103c9.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3d0ce1a7c1c2d7452f117ca5e8906ae148d6f802`.

Source path: `GRWTSK/Algebra/Defs/Variant8f33dd83ededf69ec2c54df57c6f5f454e7df6e5865c1c1e9d5bdbb3bcd103c9.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Defs/Variant8f33dd83ededf69ec2c54df57c6f5f454e7df6e5865c1c1e9d5bdbb3bcd103c9.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Polynomial.Splits` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.FieldTheory.IntermediateField.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.FieldTheory.Minpoly.Field` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [Normal](../../../../mathematics/Algebra/Defs/Variant8f33dd83ededf69ec2c54df57c6f5f454e7df6e5865c1c1e9d5bdbb3bcd103c9.lean/declarations/normal--0029c4acf114e0db6153d6f7.md) | 31 | `declaration-track:0029c4acf114e0db6153d6f78359418c3b56f62cdb9d90f19db80dbfdba52c05` |
| 2 | `theorem` | [Normal.isIntegral](../../../../mathematics/Algebra/Defs/Variant8f33dd83ededf69ec2c54df57c6f5f454e7df6e5865c1c1e9d5bdbb3bcd103c9.lean/declarations/normal-isintegral--25758d266e412cf99f232bc5.md) | 36 | `result-track:25758d266e412cf99f232bc5c30a69b7ea1e8381b657c9141764e089ee5c95d8` |
| 3 | `theorem` | [Normal.splits](../../../../mathematics/Algebra/Defs/Variant8f33dd83ededf69ec2c54df57c6f5f454e7df6e5865c1c1e9d5bdbb3bcd103c9.lean/declarations/normal-splits--e68e5e445f4ebd609f9fc6c6.md) | 39 | `result-track:e68e5e445f4ebd609f9fc6c645633b29b2af6de8ff5448d79e8bc178437393c8` |
| 4 | `theorem` | [normal_iff](../../../../mathematics/Algebra/Defs/Variant8f33dd83ededf69ec2c54df57c6f5f454e7df6e5865c1c1e9d5bdbb3bcd103c9.lean/declarations/normal-iff--3c1cba54fe1be1a2492ae990.md) | 42 | `result-track:3c1cba54fe1be1a2492ae9907db9a1d28397482edab5fece608ee5fc39e50df0` |
| 5 | `theorem` | [Normal.out](../../../../mathematics/Algebra/Defs/Variant8f33dd83ededf69ec2c54df57c6f5f454e7df6e5865c1c1e9d5bdbb3bcd103c9.lean/declarations/normal-out--b58648e36812b52dcb0cba0f.md) | 47 | `result-track:b58648e36812b52dcb0cba0ff611ccc8458bfa4232510fce17b0675167b8029c` |
| 6 | `instance` | [normal_self](../../../../mathematics/Algebra/Defs/Variant8f33dd83ededf69ec2c54df57c6f5f454e7df6e5865c1c1e9d5bdbb3bcd103c9.lean/declarations/normal-self--69c3669506c0d08623aff205.md) | 52 | `declaration-track:69c3669506c0d08623aff2052d734679f001b1f273287e647f9f040844e08216` |
| 7 | `theorem` | [Normal.tower_top_of_normal](../../../../mathematics/Algebra/Defs/Variant8f33dd83ededf69ec2c54df57c6f5f454e7df6e5865c1c1e9d5bdbb3bcd103c9.lean/declarations/normal-tower-top-of-normal--f7081947e0d576e4ff485d39.md) | 61 | `result-track:f7081947e0d576e4ff485d396068537448ac80706ceb6cded7d1a481bbc6a170` |
| 8 | `theorem` | [AlgHom.normal_bijective](../../../../mathematics/Algebra/Defs/Variant8f33dd83ededf69ec2c54df57c6f5f454e7df6e5865c1c1e9d5bdbb3bcd103c9.lean/declarations/alghom-normal-bijective--07ff2d0f21d48bf991be7ae0.md) | 72 | `result-track:07ff2d0f21d48bf991be7ae0aa6a128dfd392c8b173f5e0130688324a4b62866` |
| 9 | `theorem` | [Normal.of_algEquiv](../../../../mathematics/Algebra/Defs/Variant8f33dd83ededf69ec2c54df57c6f5f454e7df6e5865c1c1e9d5bdbb3bcd103c9.lean/declarations/normal-of-algequiv--9f9895ff6c507e0a53108a53.md) | 78 | `result-track:9f9895ff6c507e0a53108a53ac48370056d5b443cff1a173c950eff8f07d48b0` |
| 10 | `theorem` | [AlgEquiv.transfer_normal](../../../../mathematics/Algebra/Defs/Variant8f33dd83ededf69ec2c54df57c6f5f454e7df6e5865c1c1e9d5bdbb3bcd103c9.lean/declarations/algequiv-transfer-normal--399e46c430e45776e8f926c0.md) | 84 | `result-track:399e46c430e45776e8f926c052decaad1e1011a2b01b28b76985d363b72fd611` |
| 11 | `theorem` | [restrictScalars_normal](../../../../mathematics/Algebra/Defs/Variant8f33dd83ededf69ec2c54df57c6f5f454e7df6e5865c1c1e9d5bdbb3bcd103c9.lean/declarations/restrictscalars-normal--8bac87b865149e3eb820508d.md) | 95 | `result-track:8bac87b865149e3eb820508d2226c3df3628fabaa379ce05681558c1ffbb2585` |
| 12 | `def` | [AlgHom.restrictNormalAux](../../../../mathematics/Algebra/Defs/Variant8f33dd83ededf69ec2c54df57c6f5f454e7df6e5865c1c1e9d5bdbb3bcd103c9.lean/declarations/alghom-restrictnormalaux--24e61ee3d7804117396f3e08.md) | 112 | `declaration-track:24e61ee3d7804117396f3e0849bb2deaa08977ac4a8895dd762d2c5c0adafb9d` |
| 13 | `def` | [AlgHom.restrictNormal](../../../../mathematics/Algebra/Defs/Variant8f33dd83ededf69ec2c54df57c6f5f454e7df6e5865c1c1e9d5bdbb3bcd103c9.lean/declarations/alghom-restrictnormal--a993db02115ee94853eea249.md) | 134 | `declaration-track:a993db02115ee94853eea24979bd3d906e1478d0273e49eed20a3e0a27dc4a73` |
| 14 | `def` | [AlgHom.restrictNormal'](../../../../mathematics/Algebra/Defs/Variant8f33dd83ededf69ec2c54df57c6f5f454e7df6e5865c1c1e9d5bdbb3bcd103c9.lean/declarations/alghom-restrictnormal--d2e34e6ac7c81b82d0094637.md) | 140 | `declaration-track:d2e34e6ac7c81b82d0094637ad841265326e52ec5be3345c70f917d8d761674c` |
| 15 | `theorem` | [AlgHom.restrictNormal_commutes](../../../../mathematics/Algebra/Defs/Variant8f33dd83ededf69ec2c54df57c6f5f454e7df6e5865c1c1e9d5bdbb3bcd103c9.lean/declarations/alghom-restrictnormal-commutes--a7cce33a65163c2bf4e724b5.md) | 144 | `result-track:a7cce33a65163c2bf4e724b508ab339a02f0bef3417f3a5aa1eeb71bdf448cdb` |
| 16 | `theorem` | [AlgHom.restrictNormal_comp](../../../../mathematics/Algebra/Defs/Variant8f33dd83ededf69ec2c54df57c6f5f454e7df6e5865c1c1e9d5bdbb3bcd103c9.lean/declarations/alghom-restrictnormal-comp--4de9337128c85eb64698d199.md) | 150 | `result-track:4de9337128c85eb64698d199a223051ab92cae9cda92e62165b6f82e7f434831` |
| 17 | `def` | [AlgEquiv.restrictNormal](../../../../mathematics/Algebra/Defs/Variant8f33dd83ededf69ec2c54df57c6f5f454e7df6e5865c1c1e9d5bdbb3bcd103c9.lean/declarations/algequiv-restrictnormal--d793b8e7bbe2585127cf4075.md) | 156 | `declaration-track:d793b8e7bbe2585127cf407594c2fdc47ecb3ebcaf3c7bbaf0a61281b295de41` |
| 18 | `theorem` | [AlgEquiv.restrictNormal_commutes](../../../../mathematics/Algebra/Defs/Variant8f33dd83ededf69ec2c54df57c6f5f454e7df6e5865c1c1e9d5bdbb3bcd103c9.lean/declarations/algequiv-restrictnormal-commutes--830f6cd59c5cd050c49c0222.md) | 160 | `result-track:830f6cd59c5cd050c49c0222c1b1ad17cfe4dde19490a36b0528cab5dae39867` |
| 19 | `theorem` | [AlgEquiv.restrictNormal_trans](../../../../mathematics/Algebra/Defs/Variant8f33dd83ededf69ec2c54df57c6f5f454e7df6e5865c1c1e9d5bdbb3bcd103c9.lean/declarations/algequiv-restrictnormal-trans--50e124337346888639090ab6.md) | 164 | `result-track:50e124337346888639090ab6297d1bb912b3e6280c9f1c8d5a9f4b3557f17664` |
| 20 | `def` | [AlgEquiv.restrictNormalHom](../../../../mathematics/Algebra/Defs/Variant8f33dd83ededf69ec2c54df57c6f5f454e7df6e5865c1c1e9d5bdbb3bcd103c9.lean/declarations/algequiv-restrictnormalhom--feb167014a3e67f6684253b5.md) | 171 | `declaration-track:feb167014a3e67f6684253b579c72cc4731b84b35c137e285104507499ebed23` |
| 21 | `lemma` | [AlgEquiv.restrictNormalHom_apply](../../../../mathematics/Algebra/Defs/Variant8f33dd83ededf69ec2c54df57c6f5f454e7df6e5865c1c1e9d5bdbb3bcd103c9.lean/declarations/algequiv-restrictnormalhom-apply--a651262a17bca95a8693e78f.md) | 174 | `result-track:a651262a17bca95a8693e78f884b81e7a3a1c7d70caf4327547cebd43d89b371` |
| 22 | `def` | [Normal.algHomEquivAut](../../../../mathematics/Algebra/Defs/Variant8f33dd83ededf69ec2c54df57c6f5f454e7df6e5865c1c1e9d5bdbb3bcd103c9.lean/declarations/normal-alghomequivaut--0019a93b31e37f9dacc67e29.md) | 183 | `declaration-track:0019a93b31e37f9dacc67e29cb14d24c4d7deaad61e15ca3c577d379af0f2799` |
| 23 | `theorem` | [AlgEquiv.restrictNormalHom_id](../../../../mathematics/Algebra/Defs/Variant8f33dd83ededf69ec2c54df57c6f5f454e7df6e5865c1c1e9d5bdbb3bcd103c9.lean/declarations/algequiv-restrictnormalhom-id--c434a9c7051ba58e3ae3795c.md) | 203 | `result-track:c434a9c7051ba58e3ae3795cccb341f914477f4a4936a431a80eab3282b9f0d3` |
| 24 | `theorem` | [AlgEquiv.restrictNormalHom_comp](../../../../mathematics/Algebra/Defs/Variant8f33dd83ededf69ec2c54df57c6f5f454e7df6e5865c1c1e9d5bdbb3bcd103c9.lean/declarations/algequiv-restrictnormalhom-comp--bab67ba6f30afde898242b1d.md) | 218 | `result-track:bab67ba6f30afde898242b1d9524e0991a5f07e72272ba6da954ceea3dffa55d` |
| 25 | `theorem` | [AlgEquiv.restrictNormalHom_comp_apply](../../../../mathematics/Algebra/Defs/Variant8f33dd83ededf69ec2c54df57c6f5f454e7df6e5865c1c1e9d5bdbb3bcd103c9.lean/declarations/algequiv-restrictnormalhom-comp-apply--d8159c24f314efd45a3e67e8.md) | 232 | `result-track:d8159c24f314efd45a3e67e85f75b0d4bbd0d9899dd1568d101ea6f8ab66b57a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
