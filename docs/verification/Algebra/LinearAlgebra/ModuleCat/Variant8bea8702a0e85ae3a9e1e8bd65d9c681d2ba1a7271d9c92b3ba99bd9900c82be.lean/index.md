# Verification target: GRWTSK.Algebra.LinearAlgebra.ModuleCat.Variant8bea8702a0e85ae3a9e1e8bd65d9c681d2ba1a7271d9c92b3ba99bd9900c82be

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ff4c6c50f53b542bc1ffe0c4c82615ba208a743c",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/ModuleCat/Variant8bea8702a0e85ae3a9e1e8bd65d9c681d2ba1a7271d9c92b3ba99bd9900c82be.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/ModuleCat/Variant8bea8702a0e85ae3a9e1e8bd65d9c681d2ba1a7271d9c92b3ba99bd9900c82be.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/ModuleCat/Variant8bea8702a0e85ae3a9e1e8bd65d9c681d2ba1a7271d9c92b3ba99bd9900c82be.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ff4c6c50f53b542bc1ffe0c4c82615ba208a743c`.

Source path: `GRWTSK/Algebra/LinearAlgebra/ModuleCat/Variant8bea8702a0e85ae3a9e1e8bd65d9c681d2ba1a7271d9c92b3ba99bd9900c82be.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/ModuleCat/Variant8bea8702a0e85ae3a9e1e8bd65d9c681d2ba1a7271d9c92b3ba99bd9900c82be.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Homology.Homotopy` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Category.ModuleCat.Abelian` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Category.ModuleCat.Subobject` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.ConcreteCategory` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [homology_ext](../../../../../mathematics/Algebra/LinearAlgebra/ModuleCat/Variant8bea8702a0e85ae3a9e1e8bd65d9c681d2ba1a7271d9c92b3ba99bd9900c82be.lean/declarations/homology-ext--0392f03ac0ced17be70ace7c.md) | 38 | `result-track:0392f03ac0ced17be70ace7c5e804482dc17a16a53b9035729711eea974d4b1b` |
| 2 | `abbrev` | [toCycles](../../../../../mathematics/Algebra/LinearAlgebra/ModuleCat/Variant8bea8702a0e85ae3a9e1e8bd65d9c681d2ba1a7271d9c92b3ba99bd9900c82be.lean/declarations/tocycles--993e7087119e91856b619ad6.md) | 55 | `declaration-track:993e7087119e91856b619ad67a2b2eb5bdc6a93eac425febf22adecd15ba94ee` |
| 3 | `theorem` | [cycles_ext](../../../../../mathematics/Algebra/LinearAlgebra/ModuleCat/Variant8bea8702a0e85ae3a9e1e8bd65d9c681d2ba1a7271d9c92b3ba99bd9900c82be.lean/declarations/cycles-ext--e3e5b5ad8be04447589d659f.md) | 62 | `result-track:e3e5b5ad8be04447589d659f0b83148ffbc5ec238c5cf5b6da3085f2ec7b846a` |
| 4 | `theorem` | [cyclesMap_toCycles](../../../../../mathematics/Algebra/LinearAlgebra/ModuleCat/Variant8bea8702a0e85ae3a9e1e8bd65d9c681d2ba1a7271d9c92b3ba99bd9900c82be.lean/declarations/cyclesmap-tocycles--7513d6c54010cfc17bd214da.md) | 73 | `result-track:7513d6c54010cfc17bd214dadd604c58d313ab5072a8d98a8f00a4e010a524d8` |
| 5 | `abbrev` | [toHomology](../../../../../mathematics/Algebra/LinearAlgebra/ModuleCat/Variant8bea8702a0e85ae3a9e1e8bd65d9c681d2ba1a7271d9c92b3ba99bd9900c82be.lean/declarations/tohomology--9a425b8fe33167f1687648a7.md) | 82 | `declaration-track:9a425b8fe33167f1687648a7aa8f4de8abb66d316873059d44506d8d372fd8a0` |
| 6 | `theorem` | [homology_ext'](../../../../../mathematics/Algebra/LinearAlgebra/ModuleCat/Variant8bea8702a0e85ae3a9e1e8bd65d9c681d2ba1a7271d9c92b3ba99bd9900c82be.lean/declarations/homology-ext--1293ddff47856732a8e3c1b6.md) | 89 | `result-track:1293ddff47856732a8e3c1b67b96a796abddb5f124c02762831a4204cde60710` |
| 7 | `example` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/ModuleCat/Variant8bea8702a0e85ae3a9e1e8bd65d9c681d2ba1a7271d9c92b3ba99bd9900c82be.lean/declarations/example--e99f2c5aa783bd2e79ea3ad8.md) | 101 | `declaration-track:e99f2c5aa783bd2e79ea3ad81dff95392ba63399c747d750d2dc75be9f217b2e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
