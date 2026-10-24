# Verification target: GRWTSK.Algebra.LinearAlgebra.BaseChange.Variant654590af1938e16ededa991bc2a87e20363defb17f07ed89e5cd092abd0edb01

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a79c7c15d4cf14bcb10f6afba71d05b565755d00",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/BaseChange/Variant654590af1938e16ededa991bc2a87e20363defb17f07ed89e5cd092abd0edb01.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/BaseChange/Variant654590af1938e16ededa991bc2a87e20363defb17f07ed89e5cd092abd0edb01.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/BaseChange/Variant654590af1938e16ededa991bc2a87e20363defb17f07ed89e5cd092abd0edb01.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a79c7c15d4cf14bcb10f6afba71d05b565755d00`.

Source path: `GRWTSK/Algebra/LinearAlgebra/BaseChange/Variant654590af1938e16ededa991bc2a87e20363defb17f07ed89e5cd092abd0edb01.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/BaseChange/Variant654590af1938e16ededa991bc2a87e20363defb17f07ed89e5cd092abd0edb01.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Algebra.Rat` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.PerfectPairing.Restrict` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.RootSystem.IsValuedIn` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [IsBalanced](../../../../../mathematics/Algebra/LinearAlgebra/BaseChange/Variant654590af1938e16ededa991bc2a87e20363defb17f07ed89e5cd092abd0edb01.lean/declarations/isbalanced--6173c76ebbbdb9fad372ccb7.md) | 40 | `declaration-track:6173c76ebbbdb9fad372ccb78632d899eda8ac89bfb1450882b91c1b3a0e8460` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/BaseChange/Variant654590af1938e16ededa991bc2a87e20363defb17f07ed89e5cd092abd0edb01.lean/declarations/instance--0cf0938c81329226e879877f.md) | 44 | `declaration-track:0cf0938c81329226e879877fd4de7f852458dd78a603506a23fd23e9338b92d6` |
| 3 | `def` | [restrictScalars'](../../../../../mathematics/Algebra/LinearAlgebra/BaseChange/Variant654590af1938e16ededa991bc2a87e20363defb17f07ed89e5cd092abd0edb01.lean/declarations/restrictscalars--565c8ffcf63c2b26dd89b96e.md) | 67 | `declaration-track:565c8ffcf63c2b26dd89b96e77f2404aca7a08fe75cf4dd9b90aee05aae57820` |
| 4 | `lemma` | [restrictScalars_toPerfectPairing_apply_apply](../../../../../mathematics/Algebra/LinearAlgebra/BaseChange/Variant654590af1938e16ededa991bc2a87e20363defb17f07ed89e5cd092abd0edb01.lean/declarations/restrictscalars-toperfectpairing-apply-apply--9d1fefb2b6aee5f65d97fbbd.md) | 97 | `result-track:9d1fefb2b6aee5f65d97fbbd2196ba76f7ef98bc254446e3a61689458f7ba11b` |
| 5 | `lemma` | [restrictScalars_coe_root](../../../../../mathematics/Algebra/LinearAlgebra/BaseChange/Variant654590af1938e16ededa991bc2a87e20363defb17f07ed89e5cd092abd0edb01.lean/declarations/restrictscalars-coe-root--a2bdb19ae53164502489869a.md) | 102 | `result-track:a2bdb19ae53164502489869a32e4b858ffae6de4ebc4190c94aa80e378a6e67a` |
| 6 | `lemma` | [restrictScalars_coe_coroot](../../../../../mathematics/Algebra/LinearAlgebra/BaseChange/Variant654590af1938e16ededa991bc2a87e20363defb17f07ed89e5cd092abd0edb01.lean/declarations/restrictscalars-coe-coroot--fb3d4e5bdd5ea204a0c85ebc.md) | 106 | `result-track:fb3d4e5bdd5ea204a0c85ebcf311d202a779e47e60b46c401dc9983ec1497770` |
| 7 | `lemma` | [restrictScalars_pairing](../../../../../mathematics/Algebra/LinearAlgebra/BaseChange/Variant654590af1938e16ededa991bc2a87e20363defb17f07ed89e5cd092abd0edb01.lean/declarations/restrictscalars-pairing--9c125595b7131fa8c626a491.md) | 110 | `result-track:9c125595b7131fa8c626a49130dd7f751afa9f74a163ea75b584fa0cf5175d04` |
| 8 | `abbrev` | [restrictScalars](../../../../../mathematics/Algebra/LinearAlgebra/BaseChange/Variant654590af1938e16ededa991bc2a87e20363defb17f07ed89e5cd092abd0edb01.lean/declarations/restrictscalars--858f709aa12c7e126d57d192.md) | 118 | `declaration-track:858f709aa12c7e126d57d192f93b02a297dbbc95cf4e51b05d45692c932626ea` |
| 9 | `abbrev` | [restrictScalarsRat](../../../../../mathematics/Algebra/LinearAlgebra/BaseChange/Variant654590af1938e16ededa991bc2a87e20363defb17f07ed89e5cd092abd0edb01.lean/declarations/restrictscalarsrat--dfd81a387c29431a03f3057f.md) | 123 | `declaration-track:dfd81a387c29431a03f3057fbf0b2c5f69239852fc279cd0988382cbcbc24adf` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
