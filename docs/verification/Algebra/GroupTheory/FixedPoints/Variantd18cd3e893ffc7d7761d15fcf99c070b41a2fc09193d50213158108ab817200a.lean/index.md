# Verification target: GRWTSK.Algebra.GroupTheory.FixedPoints.Variantd18cd3e893ffc7d7761d15fcf99c070b41a2fc09193d50213158108ab817200a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3142750e6825a5ad4b607b744e62eae3673d9281",
  "lexical_observation_count": 19,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/FixedPoints/Variantd18cd3e893ffc7d7761d15fcf99c070b41a2fc09193d50213158108ab817200a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/FixedPoints/Variantd18cd3e893ffc7d7761d15fcf99c070b41a2fc09193d50213158108ab817200a.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/FixedPoints/Variantd18cd3e893ffc7d7761d15fcf99c070b41a2fc09193d50213158108ab817200a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3142750e6825a5ad4b607b744e62eae3673d9281`.

Source path: `GRWTSK/Algebra/GroupTheory/FixedPoints/Variantd18cd3e893ffc7d7761d15fcf99c070b41a2fc09193d50213158108ab817200a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/FixedPoints/Variantd18cd3e893ffc7d7761d15fcf99c070b41a2fc09193d50213158108ab817200a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.Action.Pointwise.Set.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.Commute.Basic` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Dynamics.PeriodicPts.Defs` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.GroupAction.Defs` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [fixedBy_inv](../../../../../mathematics/Algebra/GroupTheory/FixedPoints/Variantd18cd3e893ffc7d7761d15fcf99c070b41a2fc09193d50213158108ab817200a.lean/declarations/fixedby-inv--9dee4d513a39925409d9c7e6.md) | 68 | `result-track:9dee4d513a39925409d9c7e64c900f7a83aa5f55b42f4f627b01a30c3dd55af9` |
| 2 | `theorem` | [smul_mem_fixedBy_iff_mem_fixedBy](../../../../../mathematics/Algebra/GroupTheory/FixedPoints/Variantd18cd3e893ffc7d7761d15fcf99c070b41a2fc09193d50213158108ab817200a.lean/declarations/smul-mem-fixedby-iff-mem-fixedby--836b0c3659fdce9575391780.md) | 73 | `result-track:836b0c3659fdce95753917804200d14bc0dbd6d784e8625f61a4ff3481aee009` |
| 3 | `theorem` | [smul_inv_mem_fixedBy_iff_mem_fixedBy](../../../../../mathematics/Algebra/GroupTheory/FixedPoints/Variantd18cd3e893ffc7d7761d15fcf99c070b41a2fc09193d50213158108ab817200a.lean/declarations/smul-inv-mem-fixedby-iff-mem-fixedby--97354f865ea5dc392e9108fe.md) | 79 | `result-track:97354f865ea5dc392e9108fe7cea5d872ebad0f17616501d50a026f0aba52e4c` |
| 4 | `theorem` | [minimalPeriod_eq_one_iff_fixedBy](../../../../../mathematics/Algebra/GroupTheory/FixedPoints/Variantd18cd3e893ffc7d7761d15fcf99c070b41a2fc09193d50213158108ab817200a.lean/declarations/minimalperiod-eq-one-iff-fixedby--95eefce9bc58a1fb3bc4566d.md) | 84 | `result-track:95eefce9bc58a1fb3bc4566d9388ee152de33110a50ebf00006e277b229c12e3` |
| 5 | `theorem` | [fixedBy_subset_fixedBy_zpow](../../../../../mathematics/Algebra/GroupTheory/FixedPoints/Variantd18cd3e893ffc7d7761d15fcf99c070b41a2fc09193d50213158108ab817200a.lean/declarations/fixedby-subset-fixedby-zpow--46b0a11a180dee99b6fcb2f7.md) | 90 | `result-track:46b0a11a180dee99b6fcb2f781f05ff80892d34287337ab0c5a0f944c3e0ba07` |
| 6 | `theorem` | [fixedBy_one_eq_univ](../../../../../mathematics/Algebra/GroupTheory/FixedPoints/Variantd18cd3e893ffc7d7761d15fcf99c070b41a2fc09193d50213158108ab817200a.lean/declarations/fixedby-one-eq-univ--56faf6c8bba65c087b428479.md) | 99 | `result-track:56faf6c8bba65c087b42847928539fde77538fe9fc1273c64f375e423c20f5ba` |
| 7 | `theorem` | [fixedBy_mul](../../../../../mathematics/Algebra/GroupTheory/FixedPoints/Variantd18cd3e893ffc7d7761d15fcf99c070b41a2fc09193d50213158108ab817200a.lean/declarations/fixedby-mul--e5ff0c85ae27ce4cddc2e2d5.md) | 104 | `result-track:e5ff0c85ae27ce4cddc2e2d565fb3373cfff11772a510b781bb05e02e97699b4` |
| 8 | `theorem` | [smul_fixedBy](../../../../../mathematics/Algebra/GroupTheory/FixedPoints/Variantd18cd3e893ffc7d7761d15fcf99c070b41a2fc09193d50213158108ab817200a.lean/declarations/smul-fixedby--5863fbb6fdbf8384b3715264.md) | 110 | `result-track:5863fbb6fdbf8384b3715264252f66b2b32a68e9524c2728184cec69a8180286` |
| 9 | `theorem` | [set_mem_fixedBy_iff](../../../../../mathematics/Algebra/GroupTheory/FixedPoints/Variantd18cd3e893ffc7d7761d15fcf99c070b41a2fc09193d50213158108ab817200a.lean/declarations/set-mem-fixedby-iff--edbb08203f6be0bcf92d0703.md) | 132 | `result-track:edbb08203f6be0bcf92d0703baeea0dd4dd3f28d020847418c639f39182e8790` |
| 10 | `theorem` | [smul_mem_of_set_mem_fixedBy](../../../../../mathematics/Algebra/GroupTheory/FixedPoints/Variantd18cd3e893ffc7d7761d15fcf99c070b41a2fc09193d50213158108ab817200a.lean/declarations/smul-mem-of-set-mem-fixedby--39d99198c4a74eff9cf89bea.md) | 137 | `result-track:39d99198c4a74eff9cf89beab221520b60d34c2ddc8effe09def388c53ed51c7` |
| 11 | `theorem` | [set_mem_fixedBy_of_subset_fixedBy](../../../../../mathematics/Algebra/GroupTheory/FixedPoints/Variantd18cd3e893ffc7d7761d15fcf99c070b41a2fc09193d50213158108ab817200a.lean/declarations/set-mem-fixedby-of-subset-fixedby--e53cb2696990610bb9e40e45.md) | 150 | `result-track:e53cb2696990610bb9e40e4549a81db8fe47ebcd49b85d79450a69ef7d2d6891` |
| 12 | `theorem` | [smul_subset_of_set_mem_fixedBy](../../../../../mathematics/Algebra/GroupTheory/FixedPoints/Variantd18cd3e893ffc7d7761d15fcf99c070b41a2fc09193d50213158108ab817200a.lean/declarations/smul-subset-of-set-mem-fixedby--1e6537b55e82f2e07719af08.md) | 159 | `result-track:1e6537b55e82f2e07719af0858c3ef30fbbb4828840e39dbc02b514d831034d9` |
| 13 | `theorem` | [set_mem_fixedBy_of_movedBy_subset](../../../../../mathematics/Algebra/GroupTheory/FixedPoints/Variantd18cd3e893ffc7d7761d15fcf99c070b41a2fc09193d50213158108ab817200a.lean/declarations/set-mem-fixedby-of-movedby-subset--7ede69d8cd99435a404deadb.md) | 170 | `result-track:7ede69d8cd99435a404deadb0f736834cd95810b84f95c0a7b853c608c9d6f5f` |
| 14 | `theorem` | [fixedBy_mem_fixedBy_of_commute](../../../../../mathematics/Algebra/GroupTheory/FixedPoints/Variantd18cd3e893ffc7d7761d15fcf99c070b41a2fc09193d50213158108ab817200a.lean/declarations/fixedby-mem-fixedby-of-commute--f083447c2867df3ba4d8232f.md) | 204 | `result-track:f083447c2867df3ba4d8232f62b2aa70f8a9da1f1ec8528eb422f0e1d94c76c8` |
| 15 | `theorem` | [smul_zpow_fixedBy_eq_of_commute](../../../../../mathematics/Algebra/GroupTheory/FixedPoints/Variantd18cd3e893ffc7d7761d15fcf99c070b41a2fc09193d50213158108ab817200a.lean/declarations/smul-zpow-fixedby-eq-of-commute--dc97166fc3e82e7b4f8a2717.md) | 214 | `result-track:dc97166fc3e82e7b4f8a2717e34a09709ff42153fb516c95a8669d63ce4b2fd0` |
| 16 | `theorem` | [movedBy_mem_fixedBy_of_commute](../../../../../mathematics/Algebra/GroupTheory/FixedPoints/Variantd18cd3e893ffc7d7761d15fcf99c070b41a2fc09193d50213158108ab817200a.lean/declarations/movedby-mem-fixedby-of-commute--d8523633895b619bb5297882.md) | 224 | `result-track:d8523633895b619bb5297882947a9ea8a36e09cf32af7bfdb657d330b6b94b15` |
| 17 | `theorem` | [smul_zpow_movedBy_eq_of_commute](../../../../../mathematics/Algebra/GroupTheory/FixedPoints/Variantd18cd3e893ffc7d7761d15fcf99c070b41a2fc09193d50213158108ab817200a.lean/declarations/smul-zpow-movedby-eq-of-commute--fc4c66dc368378622ce93e55.md) | 232 | `result-track:fc4c66dc368378622ce93e55c2eba6b8d5e5ffcb972fc325eecad0b5c17a7476` |
| 18 | `theorem` | [fixedBy_eq_univ_iff_eq_one](../../../../../mathematics/Algebra/GroupTheory/FixedPoints/Variantd18cd3e893ffc7d7761d15fcf99c070b41a2fc09193d50213158108ab817200a.lean/declarations/fixedby-eq-univ-iff-eq-one--6030393ac08aaa4b9cee313c.md) | 247 | `result-track:6030393ac08aaa4b9cee313c630a2595746cd9b519fbafc38d12f3d4492762d7` |
| 19 | `theorem` | [not_commute_of_disjoint_movedBy_preimage](../../../../../mathematics/Algebra/GroupTheory/FixedPoints/Variantd18cd3e893ffc7d7761d15fcf99c070b41a2fc09193d50213158108ab817200a.lean/declarations/not-commute-of-disjoint-movedby-preimage--e4b4a358f9d8252a5bec23e2.md) | 257 | `result-track:e4b4a358f9d8252a5bec23e2ad39dead521b943df68329edfb1703c27eff9ec5` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
