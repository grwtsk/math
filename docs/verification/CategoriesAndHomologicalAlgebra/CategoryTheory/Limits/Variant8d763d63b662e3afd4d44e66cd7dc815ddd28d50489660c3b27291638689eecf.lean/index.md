# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Limits.Variant8d763d63b662e3afd4d44e66cd7dc815ddd28d50489660c3b27291638689eecf

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6e63395feb1fbe30f9c4d3a41c31f6316fc62ac6",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant8d763d63b662e3afd4d44e66cd7dc815ddd28d50489660c3b27291638689eecf.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant8d763d63b662e3afd4d44e66cd7dc815ddd28d50489660c3b27291638689eecf.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant8d763d63b662e3afd4d44e66cd7dc815ddd28d50489660c3b27291638689eecf.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6e63395feb1fbe30f9c4d3a41c31f6316fc62ac6`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant8d763d63b662e3afd4d44e66cd7dc815ddd28d50489660c3b27291638689eecf.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant8d763d63b662e3afd4d44e66cd7dc815ddd28d50489660c3b27291638689eecf.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Monoidal.Internal.FunctorCategory` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Monoidal.Limits` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Preserves.Basic` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [limit](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant8d763d63b662e3afd4d44e66cd7dc815ddd28d50489660c3b27291638689eecf.lean/declarations/limit--1030d40551d3654f3e3e34f0.md) | 46 | `declaration-track:1030d40551d3654f3e3e34f0ea0104361b5b3015bfcb440c6e0e497df0468931` |
| 2 | `def` | [limitCone](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant8d763d63b662e3afd4d44e66cd7dc815ddd28d50489660c3b27291638689eecf.lean/declarations/limitcone--f94905bc0e0e2edc4f812a00.md) | 52 | `declaration-track:f94905bc0e0e2edc4f812a0072cc05ae44b4c4c0bea68278098f99c95eddee90` |
| 3 | `def` | [forgetMapConeLimitConeIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant8d763d63b662e3afd4d44e66cd7dc815ddd28d50489660c3b27291638689eecf.lean/declarations/forgetmapconelimitconeiso--f69448595dc1de6ca7d7b3c0.md) | 61 | `declaration-track:f69448595dc1de6ca7d7b3c0bac6626a6a5f4bf3d419a6f4ae5a6d8898a7c077` |
| 4 | `def` | [limitConeIsLimit](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant8d763d63b662e3afd4d44e66cd7dc815ddd28d50489660c3b27291638689eecf.lean/declarations/limitconeislimit--7cb0f6c61eafc2084628b697.md) | 69 | `declaration-track:7cb0f6c61eafc2084628b697dd4bf1812bb478e855a2d6a2386738c4c7146256` |
| 5 | `instance` | [hasLimitsOfShape](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant8d763d63b662e3afd4d44e66cd7dc815ddd28d50489660c3b27291638689eecf.lean/declarations/haslimitsofshape--bc693358f5bda573bfc66ccc.md) | 85 | `declaration-track:bc693358f5bda573bfc66ccc8ad09bc37f9b1c817c7fd834c61f16382b071b60` |
| 6 | `instance` | [forget_freservesLimitsOfShape](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant8d763d63b662e3afd4d44e66cd7dc815ddd28d50489660c3b27291638689eecf.lean/declarations/forget-freserveslimitsofshape--4d0858be6308b780a35ffb0d.md) | 90 | `declaration-track:4d0858be6308b780a35ffb0d419a7e4ad71edc7ae60c40e05c91fa25f10d608f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
