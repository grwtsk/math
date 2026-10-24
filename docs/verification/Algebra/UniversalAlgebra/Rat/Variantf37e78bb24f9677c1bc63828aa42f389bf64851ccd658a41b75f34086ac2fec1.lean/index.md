# Verification target: GRWTSK.Algebra.UniversalAlgebra.Rat.Variantf37e78bb24f9677c1bc63828aa42f389bf64851ccd658a41b75f34086ac2fec1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "69d70c5d4a273db2d238df5fc14e9af7c426b017",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/UniversalAlgebra/Rat/Variantf37e78bb24f9677c1bc63828aa42f389bf64851ccd658a41b75f34086ac2fec1.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/UniversalAlgebra/Rat/Variantf37e78bb24f9677c1bc63828aa42f389bf64851ccd658a41b75f34086ac2fec1.lean/index.md) · [Full source](../../../../../mathematics/Algebra/UniversalAlgebra/Rat/Variantf37e78bb24f9677c1bc63828aa42f389bf64851ccd658a41b75f34086ac2fec1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `69d70c5d4a273db2d238df5fc14e9af7c426b017`.

Source path: `GRWTSK/Algebra/UniversalAlgebra/Rat/Variantf37e78bb24f9677c1bc63828aa42f389bf64851ccd658a41b75f34086ac2fec1.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/UniversalAlgebra/Rat/Variantf37e78bb24f9677c1bc63828aa42f389bf64851ccd658a41b75f34086ac2fec1.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Field.Defs` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.GroupWithZero.Action.Defs` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/UniversalAlgebra/Rat/Variantf37e78bb24f9677c1bc63828aa42f389bf64851ccd658a41b75f34086ac2fec1.lean/declarations/instance--4f5d3d8ba9d96b2d93254f50.md) | 30 | `declaration-track:4f5d3d8ba9d96b2d93254f5004978968516f81684d398e941bc9612d462e03f0` |
| 2 | `instance` | [instIsScalarTowerRight](../../../../../mathematics/Algebra/UniversalAlgebra/Rat/Variantf37e78bb24f9677c1bc63828aa42f389bf64851ccd658a41b75f34086ac2fec1.lean/declarations/instisscalartowerright--c7d3664cb8370a151b6bbb48.md) | 34 | `declaration-track:c7d3664cb8370a151b6bbb48238d7a491637c40516d35dc3fac1084abe442079` |
| 3 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/UniversalAlgebra/Rat/Variantf37e78bb24f9677c1bc63828aa42f389bf64851ccd658a41b75f34086ac2fec1.lean/declarations/instance--b715dd757454788559b444d4.md) | 42 | `declaration-track:b715dd757454788559b444d40ffc3781dbed59e6a43af7acd9137ed4dddb49cd` |
| 4 | `instance` | [instIsScalarTowerRight](../../../../../mathematics/Algebra/UniversalAlgebra/Rat/Variantf37e78bb24f9677c1bc63828aa42f389bf64851ccd658a41b75f34086ac2fec1.lean/declarations/instisscalartowerright--5a180591138b68e0012ada5d.md) | 46 | `declaration-track:5a180591138b68e0012ada5d13f54d0843ff924f6a989f7508d2cb922ea63118` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
