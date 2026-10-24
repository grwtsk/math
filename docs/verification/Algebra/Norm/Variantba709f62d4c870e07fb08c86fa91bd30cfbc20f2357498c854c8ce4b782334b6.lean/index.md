# Verification target: GRWTSK.Algebra.Norm.Variantba709f62d4c870e07fb08c86fa91bd30cfbc20f2357498c854c8ce4b782334b6

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2486a2afb03f3916458767e2d08ef83745bcfa22",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Norm/Variantba709f62d4c870e07fb08c86fa91bd30cfbc20f2357498c854c8ce4b782334b6.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Norm/Variantba709f62d4c870e07fb08c86fa91bd30cfbc20f2357498c854c8ce4b782334b6.lean/index.md) · [Full source](../../../../mathematics/Algebra/Norm/Variantba709f62d4c870e07fb08c86fa91bd30cfbc20f2357498c854c8ce4b782334b6.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2486a2afb03f3916458767e2d08ef83745bcfa22`.

Source path: `GRWTSK/Algebra/Norm/Variantba709f62d4c870e07fb08c86fa91bd30cfbc20f2357498c854c8ce4b782334b6.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Norm/Variantba709f62d4c870e07fb08c86fa91bd30cfbc20f2357498c854c8ce4b782334b6.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.NumberTheory.NumberField.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Localization.NormTrace` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Norm.Transitivity` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [Algebra.coe_norm_int](../../../../mathematics/Algebra/Norm/Variantba709f62d4c870e07fb08c86fa91bd30cfbc20f2357498c854c8ce4b782334b6.lean/declarations/algebra-coe-norm-int--5f1c5bed3a4e7e403f72dd57.md) | 40 | `result-track:5f1c5bed3a4e7e403f72dd570435551452a73cf9b5934bad4146a9b5aceea75f` |
| 2 | `theorem` | [Algebra.coe_trace_int](../../../../mathematics/Algebra/Norm/Variantba709f62d4c870e07fb08c86fa91bd30cfbc20f2357498c854c8ce4b782334b6.lean/declarations/algebra-coe-trace-int--d6977fee908d66edb72405ba.md) | 43 | `result-track:d6977fee908d66edb72405ba59a60de2375b1ff9112bf96549669049159cd4c0` |
| 3 | `def` | [norm](../../../../mathematics/Algebra/Norm/Variantba709f62d4c870e07fb08c86fa91bd30cfbc20f2357498c854c8ce4b782334b6.lean/declarations/norm--20c8efa0063e82bc544d58ba.md) | 53 | `declaration-track:20c8efa0063e82bc544d58ba0a919362683ee344ef04dd78aaffe6f3acac0b86` |
| 4 | `lemma` | [coe_norm](../../../../mathematics/Algebra/Norm/Variantba709f62d4c870e07fb08c86fa91bd30cfbc20f2357498c854c8ce4b782334b6.lean/declarations/coe-norm--fefc6233af5aa6d4041667b9.md) | 58 | `result-track:fefc6233af5aa6d4041667b9753047e0a44bc58bd40397d06252949b3d8dbc5d` |
| 5 | `theorem` | [coe_algebraMap_norm](../../../../mathematics/Algebra/Norm/Variantba709f62d4c870e07fb08c86fa91bd30cfbc20f2357498c854c8ce4b782334b6.lean/declarations/coe-algebramap-norm--4102b66941edf5a9537dfcf3.md) | 61 | `result-track:4102b66941edf5a9537dfcf3ccf98a0bcf005163563837b5eac116bd0a07104e` |
| 6 | `theorem` | [algebraMap_norm_algebraMap](../../../../mathematics/Algebra/Norm/Variantba709f62d4c870e07fb08c86fa91bd30cfbc20f2357498c854c8ce4b782334b6.lean/declarations/algebramap-norm-algebramap--5b1c03565ac7babc45be651e.md) | 65 | `result-track:5b1c03565ac7babc45be651ea96e577eedcc8e1fdecab1190941d91c4db582df` |
| 7 | `theorem` | [norm_algebraMap](../../../../mathematics/Algebra/Norm/Variantba709f62d4c870e07fb08c86fa91bd30cfbc20f2357498c854c8ce4b782334b6.lean/declarations/norm-algebramap--c791b5f4c8b94f750fe30e3c.md) | 69 | `result-track:c791b5f4c8b94f750fe30e3c0904e27f0d03c43db9b9c25b13c4d4a5c0f66f52` |
| 8 | `theorem` | [isUnit_norm_of_isGalois](../../../../mathematics/Algebra/Norm/Variantba709f62d4c870e07fb08c86fa91bd30cfbc20f2357498c854c8ce4b782334b6.lean/declarations/isunit-norm-of-isgalois--1d34b425913fa7aa126f6737.md) | 75 | `result-track:1d34b425913fa7aa126f67374b3dbdc963937d99cb0126e04d7e2f7fb2009bec` |
| 9 | `theorem` | [dvd_norm](../../../../mathematics/Algebra/Norm/Variantba709f62d4c870e07fb08c86fa91bd30cfbc20f2357498c854c8ce4b782334b6.lean/declarations/dvd-norm--e7759bba5b89298d8f33aab5.md) | 92 | `result-track:e7759bba5b89298d8f33aab5ac1430c1aa0504d174775e009c1453a5d59e29d3` |
| 10 | `theorem` | [norm_norm](../../../../mathematics/Algebra/Norm/Variantba709f62d4c870e07fb08c86fa91bd30cfbc20f2357498c854c8ce4b782334b6.lean/declarations/norm-norm--9f6d31fc5e574b703bd4f879.md) | 105 | `result-track:9f6d31fc5e574b703bd4f879e9615766835f12d29ffeef2072ca5ebcfcecccdf` |
| 11 | `theorem` | [isUnit_norm](../../../../mathematics/Algebra/Norm/Variantba709f62d4c870e07fb08c86fa91bd30cfbc20f2357498c854c8ce4b782334b6.lean/declarations/isunit-norm--379e43034a71456879827614.md) | 111 | `result-track:379e43034a71456879827614572dfa5930934ecdd2f95999ec0285f43b673713` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
