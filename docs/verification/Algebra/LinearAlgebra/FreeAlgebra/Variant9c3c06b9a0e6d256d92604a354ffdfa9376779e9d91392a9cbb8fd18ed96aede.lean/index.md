# Verification target: GRWTSK.Algebra.LinearAlgebra.FreeAlgebra.Variant9c3c06b9a0e6d256d92604a354ffdfa9376779e9d91392a9cbb8fd18ed96aede

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "fa173666cd2439d7cfd6816c4995606818da2015",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/FreeAlgebra/Variant9c3c06b9a0e6d256d92604a354ffdfa9376779e9d91392a9cbb8fd18ed96aede.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/FreeAlgebra/Variant9c3c06b9a0e6d256d92604a354ffdfa9376779e9d91392a9cbb8fd18ed96aede.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/FreeAlgebra/Variant9c3c06b9a0e6d256d92604a354ffdfa9376779e9d91392a9cbb8fd18ed96aede.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `fa173666cd2439d7cfd6816c4995606818da2015`.

Source path: `GRWTSK/Algebra/LinearAlgebra/FreeAlgebra/Variant9c3c06b9a0e6d256d92604a354ffdfa9376779e9d91392a9cbb8fd18ed96aede.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/FreeAlgebra/Variant9c3c06b9a0e6d256d92604a354ffdfa9376779e9d91392a9cbb8fd18ed96aede.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.FreeAlgebra` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Basis.Cardinality` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Dimension.StrongRankCondition` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Dimension.Subsingleton` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Finsupp.VectorSpace` — import line 15; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.FreeModule.Basic` — import line 16; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.FreeModule.StrongRankCondition` — import line 17; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [basisFreeMonoid](../../../../../mathematics/Algebra/LinearAlgebra/FreeAlgebra/Variant9c3c06b9a0e6d256d92604a354ffdfa9376779e9d91392a9cbb8fd18ed96aede.lean/declarations/basisfreemonoid--9377e892b8751164c9664b97.md) | 42 | `declaration-track:9377e892b8751164c9664b97e4d92341a03a4e620137565024817a582a0cd971` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/FreeAlgebra/Variant9c3c06b9a0e6d256d92604a354ffdfa9376779e9d91392a9cbb8fd18ed96aede.lean/declarations/instance--900aa9d2c176cb5cc29f73b8.md) | 45 | `declaration-track:900aa9d2c176cb5cc29f73b8acdf43b6ee9c396154540e473f18358b110593ed` |
| 3 | `theorem` | [rank_eq](../../../../../mathematics/Algebra/LinearAlgebra/FreeAlgebra/Variant9c3c06b9a0e6d256d92604a354ffdfa9376779e9d91392a9cbb8fd18ed96aede.lean/declarations/rank-eq--339f8b8a80593bb2054379fc.md) | 51 | `result-track:339f8b8a80593bb2054379fc18fbc733f6c968a887c7fdc9f4fc5d1935d05d3e` |
| 4 | `theorem` | [Algebra.rank_adjoin_le](../../../../../mathematics/Algebra/LinearAlgebra/FreeAlgebra/Variant9c3c06b9a0e6d256d92604a354ffdfa9376779e9d91392a9cbb8fd18ed96aede.lean/declarations/algebra-rank-adjoin-le--0b967a22fe80691674f6a75d.md) | 60 | `result-track:0b967a22fe80691674f6a75d8be546358a040e2043b8da324818891edd28f316` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
