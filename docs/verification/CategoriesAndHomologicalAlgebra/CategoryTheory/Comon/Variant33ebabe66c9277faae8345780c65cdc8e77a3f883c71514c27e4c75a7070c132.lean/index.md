# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Comon.Variant33ebabe66c9277faae8345780c65cdc8e77a3f883c71514c27e4c75a7070c132

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9d5e2952dc8313da9e466043546adbe58d6acc58",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Comon/Variant33ebabe66c9277faae8345780c65cdc8e77a3f883c71514c27e4c75a7070c132.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Comon/Variant33ebabe66c9277faae8345780c65cdc8e77a3f883c71514c27e4c75a7070c132.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Comon/Variant33ebabe66c9277faae8345780c65cdc8e77a3f883c71514c27e4c75a7070c132.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9d5e2952dc8313da9e466043546adbe58d6acc58`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Comon/Variant33ebabe66c9277faae8345780c65cdc8e77a3f883c71514c27e4c75a7070c132.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Comon/Variant33ebabe66c9277faae8345780c65cdc8e77a3f883c71514c27e4c75a7070c132.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Monoidal.Cartesian.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Monoidal.Comon_` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [cartesianComon_](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Comon/Variant33ebabe66c9277faae8345780c65cdc8e77a3f883c71514c27e4c75a7070c132.lean/declarations/cartesiancomon--3336fd13c96c8a63689df0cc.md) | 38 | `declaration-track:3336fd13c96c8a63689df0cce66a7deb94d3dfa3c1cc7d531a0758523d483736` |
| 2 | `theorem` | [counit_eq_toUnit](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Comon/Variant33ebabe66c9277faae8345780c65cdc8e77a3f883c71514c27e4c75a7070c132.lean/declarations/counit-eq-tounit--1c40dc5675c464c0919a0362.md) | 48 | `result-track:1c40dc5675c464c0919a0362d7fac1186ca680ec543f1be36fd4397a619be056` |
| 3 | `theorem` | [comul_eq_lift](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Comon/Variant33ebabe66c9277faae8345780c65cdc8e77a3f883c71514c27e4c75a7070c132.lean/declarations/comul-eq-lift--fe740e029fb9ddc076e68828.md) | 52 | `result-track:fe740e029fb9ddc076e688285ac2ed6082f6f0a847d27490eca0f705eff7a3e0` |
| 4 | `def` | [iso_cartesianComon_](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Comon/Variant33ebabe66c9277faae8345780c65cdc8e77a3f883c71514c27e4c75a7070c132.lean/declarations/iso-cartesiancomon--a0ea032a67a5c77b0e2c4069.md) | 63 | `declaration-track:a0ea032a67a5c77b0e2c406981cbe52e03f18d1d87099d58811a7dfcc0e08e1f` |
| 5 | `def` | [comonEquiv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Comon/Variant33ebabe66c9277faae8345780c65cdc8e77a3f883c71514c27e4c75a7070c132.lean/declarations/comonequiv--f94d4935f4c0e1572ac8b54a.md) | 71 | `declaration-track:f94d4935f4c0e1572ac8b54af3495736cffdf581f9f122995f0fc493dfc633f3` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
