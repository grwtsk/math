# Verification target: GRWTSK.Algebra.UniversalAlgebra.Prod.Variant76128e8e65a144c1249caf48af1d82b4862e5226c05ce5879c32a37cc0d6f0a3

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "139002dcd92c7f313fa8aa032e6456f336260674",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/UniversalAlgebra/Prod/Variant76128e8e65a144c1249caf48af1d82b4862e5226c05ce5879c32a37cc0d6f0a3.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/UniversalAlgebra/Prod/Variant76128e8e65a144c1249caf48af1d82b4862e5226c05ce5879c32a37cc0d6f0a3.lean/index.md) · [Full source](../../../../../mathematics/Algebra/UniversalAlgebra/Prod/Variant76128e8e65a144c1249caf48af1d82b4862e5226c05ce5879c32a37cc0d6f0a3.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `139002dcd92c7f313fa8aa032e6456f336260674`.

Source path: `GRWTSK/Algebra/UniversalAlgebra/Prod/Variant76128e8e65a144c1249caf48af1d82b4862e5226c05ce5879c32a37cc0d6f0a3.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/UniversalAlgebra/Prod/Variant76128e8e65a144c1249caf48af1d82b4862e5226c05ce5879c32a37cc0d6f0a3.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Ring.Prod` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Star.Basic` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/UniversalAlgebra/Prod/Variant76128e8e65a144c1249caf48af1d82b4862e5226c05ce5879c32a37cc0d6f0a3.lean/declarations/instance--7fefa1c82b367a7b4fbd93cb.md) | 22 | `declaration-track:7fefa1c82b367a7b4fbd93cbed8db4c93085ce840afad1f2143311e032e43b7c` |
| 2 | `theorem` | [fst_star](../../../../../mathematics/Algebra/UniversalAlgebra/Prod/Variant76128e8e65a144c1249caf48af1d82b4862e5226c05ce5879c32a37cc0d6f0a3.lean/declarations/fst-star--cce67d8f9a229030d7f7b60c.md) | 25 | `result-track:cce67d8f9a229030d7f7b60c49e135d3b9f55d5e6f7b93b4d1e6a0eb41235bd5` |
| 3 | `theorem` | [snd_star](../../../../../mathematics/Algebra/UniversalAlgebra/Prod/Variant76128e8e65a144c1249caf48af1d82b4862e5226c05ce5879c32a37cc0d6f0a3.lean/declarations/snd-star--56909e4b8cbddbbcb31da21d.md) | 29 | `result-track:56909e4b8cbddbbcb31da21defb50850bb5703189fda4fecf0b99948c1cbfc43` |
| 4 | `theorem` | [star_def](../../../../../mathematics/Algebra/UniversalAlgebra/Prod/Variant76128e8e65a144c1249caf48af1d82b4862e5226c05ce5879c32a37cc0d6f0a3.lean/declarations/star-def--49a65ca5c63f38c15d109a7a.md) | 32 | `result-track:49a65ca5c63f38c15d109a7ae25afaf02097ce204bbef0a6fc8b21b23c4bbf6e` |
| 5 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/UniversalAlgebra/Prod/Variant76128e8e65a144c1249caf48af1d82b4862e5226c05ce5879c32a37cc0d6f0a3.lean/declarations/instance--f40bb9f832909325d17e593a.md) | 35 | `declaration-track:f40bb9f832909325d17e593a0b6e3737736f080534ecb7d213779cdc8a45fefa` |
| 6 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/UniversalAlgebra/Prod/Variant76128e8e65a144c1249caf48af1d82b4862e5226c05ce5879c32a37cc0d6f0a3.lean/declarations/instance--38638a87a1a4e6be13e37f57.md) | 38 | `declaration-track:38638a87a1a4e6be13e37f579cf91e6f41125ea2a4f57d981ef93ad3b787df70` |
| 7 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/UniversalAlgebra/Prod/Variant76128e8e65a144c1249caf48af1d82b4862e5226c05ce5879c32a37cc0d6f0a3.lean/declarations/instance--7f204fe351d1e78a8a429a98.md) | 41 | `declaration-track:7f204fe351d1e78a8a429a98d67a54c20d35674b3f2cc2c9f91f20f9179ae810` |
| 8 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/UniversalAlgebra/Prod/Variant76128e8e65a144c1249caf48af1d82b4862e5226c05ce5879c32a37cc0d6f0a3.lean/declarations/instance--1bb0902d9dd18c81f4203e07.md) | 44 | `declaration-track:1bb0902d9dd18c81f4203e07f576835eb981d0816589e343abc819fb4e5fc16f` |
| 9 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/UniversalAlgebra/Prod/Variant76128e8e65a144c1249caf48af1d82b4862e5226c05ce5879c32a37cc0d6f0a3.lean/declarations/instance--acbf92e5728a5386ce0198a3.md) | 48 | `declaration-track:acbf92e5728a5386ce0198a3e9548e73a46374c96a762033e4e4a1922fda5097` |
| 10 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/UniversalAlgebra/Prod/Variant76128e8e65a144c1249caf48af1d82b4862e5226c05ce5879c32a37cc0d6f0a3.lean/declarations/instance--496a1c515c7844b94bd7add3.md) | 53 | `declaration-track:496a1c515c7844b94bd7add37fb45ee69222df58ec6beabbd2fc92e75c58ae93` |
| 11 | `theorem` | [Units.embed_product_star](../../../../../mathematics/Algebra/UniversalAlgebra/Prod/Variant76128e8e65a144c1249caf48af1d82b4862e5226c05ce5879c32a37cc0d6f0a3.lean/declarations/units-embed-product-star--7adcc899c8bf34f16e2a5de9.md) | 59 | `result-track:7adcc899c8bf34f16e2a5de986c2f6be902a61acfcc89bbc11dc8f2b4351d8b2` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
