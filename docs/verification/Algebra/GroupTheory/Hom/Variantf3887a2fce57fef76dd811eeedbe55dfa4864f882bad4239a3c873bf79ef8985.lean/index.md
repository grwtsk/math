# Verification target: GRWTSK.Algebra.GroupTheory.Hom.Variantf3887a2fce57fef76dd811eeedbe55dfa4864f882bad4239a3c873bf79ef8985

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "160e694f5878f2970ca8ffc4c3434896b4eec44e",
  "lexical_observation_count": 21,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Hom/Variantf3887a2fce57fef76dd811eeedbe55dfa4864f882bad4239a3c873bf79ef8985.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/Hom/Variantf3887a2fce57fef76dd811eeedbe55dfa4864f882bad4239a3c873bf79ef8985.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/Hom/Variantf3887a2fce57fef76dd811eeedbe55dfa4864f882bad4239a3c873bf79ef8985.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `160e694f5878f2970ca8ffc4c3434896b4eec44e`.

Source path: `GRWTSK/Algebra/GroupTheory/Hom/Variantf3887a2fce57fef76dd811eeedbe55dfa4864f882bad4239a3c873bf79ef8985.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Hom/Variantf3887a2fce57fef76dd811eeedbe55dfa4864f882bad4239a3c873bf79ef8985.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.Hom.Instances` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.GroupWithZero.Action.End` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Module.End` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Ring.Opposite` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.GroupAction.DomAct.Basic` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [instDistribSMul](../../../../../mathematics/Algebra/GroupTheory/Hom/Variantf3887a2fce57fef76dd811eeedbe55dfa4864f882bad4239a3c873bf79ef8985.lean/declarations/instdistribsmul--2395aff24dab6fcaef510875.md) | 32 | `declaration-track:2395aff24dab6fcaef510875a8d9949460d687dbce0a107ad3fb79b16a9b1540` |
| 2 | `instance` | [instDistribMulAction](../../../../../mathematics/Algebra/GroupTheory/Hom/Variantf3887a2fce57fef76dd811eeedbe55dfa4864f882bad4239a3c873bf79ef8985.lean/declarations/instdistribmulaction--19f4006ad93c7efbf7e8420c.md) | 39 | `declaration-track:19f4006ad93c7efbf7e8420cbeb5e7e22d38bfd05a8b12a4d1318fda34875dff` |
| 3 | `theorem` | [coe_smul](../../../../../mathematics/Algebra/GroupTheory/Hom/Variantf3887a2fce57fef76dd811eeedbe55dfa4864f882bad4239a3c873bf79ef8985.lean/declarations/coe-smul--34c848e532b5543321424afc.md) | 45 | `result-track:34c848e532b5543321424afc2efd05c8a7f8b88bf2cd1b38bbb84d2c64c816f4` |
| 4 | `theorem` | [smul_apply](../../../../../mathematics/Algebra/GroupTheory/Hom/Variantf3887a2fce57fef76dd811eeedbe55dfa4864f882bad4239a3c873bf79ef8985.lean/declarations/smul-apply--0f42c65d773c75a00b35cb71.md) | 47 | `result-track:0f42c65d773c75a00b35cb7116f44c5589f528ac03bfb1f8e3e0a8cc59c2a219` |
| 5 | `instance` | [smulCommClass](../../../../../mathematics/Algebra/GroupTheory/Hom/Variantf3887a2fce57fef76dd811eeedbe55dfa4864f882bad4239a3c873bf79ef8985.lean/declarations/smulcommclass--d5988cd5c49c31577546fea1.md) | 50 | `declaration-track:d5988cd5c49c31577546fea18ada6f79758da8c5aa170660d69e64aa5256960d` |
| 6 | `instance` | [isScalarTower](../../../../../mathematics/Algebra/GroupTheory/Hom/Variantf3887a2fce57fef76dd811eeedbe55dfa4864f882bad4239a3c873bf79ef8985.lean/declarations/isscalartower--e1f3123421a7f200093e4d59.md) | 53 | `declaration-track:e1f3123421a7f200093e4d596963232f1f7467482265730b5d007b1b73ea0714` |
| 7 | `instance` | [isCentralScalar](../../../../../mathematics/Algebra/GroupTheory/Hom/Variantf3887a2fce57fef76dd811eeedbe55dfa4864f882bad4239a3c873bf79ef8985.lean/declarations/iscentralscalar--95e0961688b58be36cfe59f9.md) | 56 | `declaration-track:95e0961688b58be36cfe59f90c95ba8ed5bf7cf1dc880151858d25fd5b260f90` |
| 8 | `instance` | [instModule](../../../../../mathematics/Algebra/GroupTheory/Hom/Variantf3887a2fce57fef76dd811eeedbe55dfa4864f882bad4239a3c873bf79ef8985.lean/declarations/instmodule--51286414f390208cdf21913e.md) | 62 | `declaration-track:51286414f390208cdf21913e6d47a9a58adfa832ae4476ce19254c5c524c3cb3` |
| 9 | `instance` | [instDomMulActModule](../../../../../mathematics/Algebra/GroupTheory/Hom/Variantf3887a2fce57fef76dd811eeedbe55dfa4864f882bad4239a3c873bf79ef8985.lean/declarations/instdommulactmodule--4922944a2fe722f0d123765e.md) | 66 | `declaration-track:4922944a2fe722f0d123765e20f28e5a14c331a2764fc15036f608cba9987ef5` |
| 10 | `instance` | [instDistribSMul](../../../../../mathematics/Algebra/GroupTheory/Hom/Variantf3887a2fce57fef76dd811eeedbe55dfa4864f882bad4239a3c873bf79ef8985.lean/declarations/instdistribsmul--2c5b128473945f1b9178f0fe.md) | 90 | `declaration-track:2c5b128473945f1b9178f0fe6f5812b0ebb0ebb89b370e0e6bdda98b3ddb1f71` |
| 11 | `instance` | [instDistribMulAction](../../../../../mathematics/Algebra/GroupTheory/Hom/Variantf3887a2fce57fef76dd811eeedbe55dfa4864f882bad4239a3c873bf79ef8985.lean/declarations/instdistribmulaction--d4a4595dc684710cb70c4ee7.md) | 95 | `declaration-track:d4a4595dc684710cb70c4ee7c9c72a4b7bde667c26a0d89430ca10359cfbf855` |
| 12 | `theorem` | [coe_smul](../../../../../mathematics/Algebra/GroupTheory/Hom/Variantf3887a2fce57fef76dd811eeedbe55dfa4864f882bad4239a3c873bf79ef8985.lean/declarations/coe-smul--d89c2e91b4fffca727c3c4ee.md) | 98 | `result-track:d89c2e91b4fffca727c3c4eeaf4ddae5edbb22295262abf039657a52d7184ccd` |
| 13 | `theorem` | [smul_apply](../../../../../mathematics/Algebra/GroupTheory/Hom/Variantf3887a2fce57fef76dd811eeedbe55dfa4864f882bad4239a3c873bf79ef8985.lean/declarations/smul-apply--31bd96f8654b6093d5a7ad4e.md) | 100 | `result-track:31bd96f8654b6093d5a7ad4e0ccb947450ae8e44bd3bcab643da9afd4aec608c` |
| 14 | `instance` | [smulCommClass](../../../../../mathematics/Algebra/GroupTheory/Hom/Variantf3887a2fce57fef76dd811eeedbe55dfa4864f882bad4239a3c873bf79ef8985.lean/declarations/smulcommclass--1433e407b938ec4ac6dd3a15.md) | 103 | `declaration-track:1433e407b938ec4ac6dd3a1562e924c8bda83ee1f01ea20e3e900646a8709467` |
| 15 | `instance` | [isScalarTower](../../../../../mathematics/Algebra/GroupTheory/Hom/Variantf3887a2fce57fef76dd811eeedbe55dfa4864f882bad4239a3c873bf79ef8985.lean/declarations/isscalartower--8552d94694f1291befded172.md) | 106 | `declaration-track:8552d94694f1291befded172ceeba49fdb2f11766e4f0c80fa7a1a8ab38914ae` |
| 16 | `instance` | [isCentralScalar](../../../../../mathematics/Algebra/GroupTheory/Hom/Variantf3887a2fce57fef76dd811eeedbe55dfa4864f882bad4239a3c873bf79ef8985.lean/declarations/iscentralscalar--ade371ed180c3d82dfd167bc.md) | 109 | `declaration-track:ade371ed180c3d82dfd167bc0e49efe320dc525da7a7c5b22b79cf073f881a01` |
| 17 | `instance` | [instModule](../../../../../mathematics/Algebra/GroupTheory/Hom/Variantf3887a2fce57fef76dd811eeedbe55dfa4864f882bad4239a3c873bf79ef8985.lean/declarations/instmodule--54606d2af2b4dcb307736225.md) | 115 | `declaration-track:54606d2af2b4dcb30773622567a63b9edb5b0ecd2f90b8fd2228405bb7f58ebf` |
| 18 | `instance` | [applyModule](../../../../../mathematics/Algebra/GroupTheory/Hom/Variantf3887a2fce57fef76dd811eeedbe55dfa4864f882bad4239a3c873bf79ef8985.lean/declarations/applymodule--b2b7a7f2bf72e7fae5f50ce9.md) | 121 | `declaration-track:b2b7a7f2bf72e7fae5f50ce94cd00f6aa00e95f7b0d74d2d6f51f2bc8c303297` |
| 19 | `def` | [smulLeft](../../../../../mathematics/Algebra/GroupTheory/Hom/Variantf3887a2fce57fef76dd811eeedbe55dfa4864f882bad4239a3c873bf79ef8985.lean/declarations/smulleft--aac0e69180b3ca0be856ccbf.md) | 133 | `declaration-track:aac0e69180b3ca0be856ccbf242a77cc71d96622cf93f914660bd4614f55c352` |
| 20 | `def` | [smul](../../../../../mathematics/Algebra/GroupTheory/Hom/Variantf3887a2fce57fef76dd811eeedbe55dfa4864f882bad4239a3c873bf79ef8985.lean/declarations/smul--f904ca946759a27f58f12831.md) | 138 | `declaration-track:f904ca946759a27f58f128316427bcfeb744465235a55e7a72bc5191fe641ed2` |
| 21 | `theorem` | [coe_smul'](../../../../../mathematics/Algebra/GroupTheory/Hom/Variantf3887a2fce57fef76dd811eeedbe55dfa4864f882bad4239a3c873bf79ef8985.lean/declarations/coe-smul--77eea7e9e2af9faddda84c75.md) | 141 | `result-track:77eea7e9e2af9faddda84c7504d2f094e1ab9a563f3bdfcfae6a4dd66dd1f50f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
