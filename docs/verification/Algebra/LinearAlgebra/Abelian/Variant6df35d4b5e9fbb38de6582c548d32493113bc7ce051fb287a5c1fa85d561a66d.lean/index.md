# Verification target: GRWTSK.Algebra.LinearAlgebra.Abelian.Variant6df35d4b5e9fbb38de6582c548d32493113bc7ce051fb287a5c1fa85d561a66d

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e932ec6d5942f13c26cdce5c7e6db0d7e85eade6",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Abelian/Variant6df35d4b5e9fbb38de6582c548d32493113bc7ce051fb287a5c1fa85d561a66d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Abelian/Variant6df35d4b5e9fbb38de6582c548d32493113bc7ce051fb287a5c1fa85d561a66d.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Abelian/Variant6df35d4b5e9fbb38de6582c548d32493113bc7ce051fb287a5c1fa85d561a66d.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e932ec6d5942f13c26cdce5c7e6db0d7e85eade6`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Abelian/Variant6df35d4b5e9fbb38de6582c548d32493113bc7ce051fb287a5c1fa85d561a66d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Abelian/Variant6df35d4b5e9fbb38de6582c548d32493113bc7ce051fb287a5c1fa85d561a66d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.LinearAlgebra.Isomorphisms` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Category.ModuleCat.Kernels` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Category.ModuleCat.Limits` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Abelian.Basic` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [normalMono](../../../../../mathematics/Algebra/LinearAlgebra/Abelian/Variant6df35d4b5e9fbb38de6582c548d32493113bc7ce051fb287a5c1fa85d561a66d.lean/declarations/normalmono--3b4bc4c5741eff1664b744e3.md) | 39 | `declaration-track:3b4bc4c5741eff1664b744e35994595498509e6080039c85d9bc3dce08e9ecc2` |
| 2 | `def` | [normalEpi](../../../../../mathematics/Algebra/LinearAlgebra/Abelian/Variant6df35d4b5e9fbb38de6582c548d32493113bc7ce051fb287a5c1fa85d561a66d.lean/declarations/normalepi--34a6177dcd7edf07016989dd.md) | 60 | `declaration-track:34a6177dcd7edf07016989dd1042a9ca788b0ba26932cfab18838f05188c5feb` |
| 3 | `instance` | [abelian](../../../../../mathematics/Algebra/LinearAlgebra/Abelian/Variant6df35d4b5e9fbb38de6582c548d32493113bc7ce051fb287a5c1fa85d561a66d.lean/declarations/abelian--9ada0e8f84251ec27b30c905.md) | 80 | `declaration-track:9ada0e8f84251ec27b30c905a2ba0ba290fa1c3705438015ae41d0367480ca37` |
| 4 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Abelian/Variant6df35d4b5e9fbb38de6582c548d32493113bc7ce051fb287a5c1fa85d561a66d.lean/declarations/instance--de4b544e68ba85ded749f20f.md) | 88 | `declaration-track:de4b544e68ba85ded749f20f2c2ebd9840cb66911a68c427b47b0cf7e2fcd4c3` |
| 5 | `instance` | [forget_reflectsLimitsOfSize](../../../../../mathematics/Algebra/LinearAlgebra/Abelian/Variant6df35d4b5e9fbb38de6582c548d32493113bc7ce051fb287a5c1fa85d561a66d.lean/declarations/forget-reflectslimitsofsize--40013e130c243feab2d101f8.md) | 93 | `declaration-track:40013e130c243feab2d101f880c1fbd8837c0f72fa4d828b36b41053a743f123` |
| 6 | `instance` | [forget₂_reflectsLimitsOfSize](../../../../../mathematics/Algebra/LinearAlgebra/Abelian/Variant6df35d4b5e9fbb38de6582c548d32493113bc7ce051fb287a5c1fa85d561a66d.lean/declarations/forget-reflectslimitsofsize--3397c02a2ea3a158b3f9fffd.md) | 97 | `declaration-track:3397c02a2ea3a158b3f9fffd0d706acc167d617ff6a4a604ae7e5cb931ddef2a` |
| 7 | `instance` | [forget_reflectsLimits](../../../../../mathematics/Algebra/LinearAlgebra/Abelian/Variant6df35d4b5e9fbb38de6582c548d32493113bc7ce051fb287a5c1fa85d561a66d.lean/declarations/forget-reflectslimits--a9656ee58df6b8c49b983049.md) | 101 | `declaration-track:a9656ee58df6b8c49b9830491eb5a901ebfaf1ef79b912e06e3759c4209d367f` |
| 8 | `instance` | [forget₂_reflectsLimits](../../../../../mathematics/Algebra/LinearAlgebra/Abelian/Variant6df35d4b5e9fbb38de6582c548d32493113bc7ce051fb287a5c1fa85d561a66d.lean/declarations/forget-reflectslimits--92094cadceccf5b19bf42594.md) | 104 | `declaration-track:92094cadceccf5b19bf4259477e11e7cffe14eda451dfb823f10d3ac6f79f9be` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
