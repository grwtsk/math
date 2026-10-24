# Verification target: GRWTSK.Algebra.CommutativeAlgebra.Polynomial.Variant8474f04a5a9bf61842a30cc78d832a6e59faad5e55b6a761f42fb056bd7e8cda

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5acec8c5d00fba6e2119d3be5ddeff97c7b5fe82",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/CommutativeAlgebra/Polynomial/Variant8474f04a5a9bf61842a30cc78d832a6e59faad5e55b6a761f42fb056bd7e8cda.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/CommutativeAlgebra/Polynomial/Variant8474f04a5a9bf61842a30cc78d832a6e59faad5e55b6a761f42fb056bd7e8cda.lean/index.md) · [Full source](../../../../../mathematics/Algebra/CommutativeAlgebra/Polynomial/Variant8474f04a5a9bf61842a30cc78d832a6e59faad5e55b6a761f42fb056bd7e8cda.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5acec8c5d00fba6e2119d3be5ddeff97c7b5fe82`.

Source path: `GRWTSK/Algebra/CommutativeAlgebra/Polynomial/Variant8474f04a5a9bf61842a30cc78d832a6e59faad5e55b6a761f42fb056bd7e8cda.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/CommutativeAlgebra/Polynomial/Variant8474f04a5a9bf61842a30cc78d832a6e59faad5e55b6a761f42fb056bd7e8cda.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Polynomial.Eval.Degree` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Polynomial.Inductions` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.RewriteSearch` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `example` | [(anonymous)](../../../../../mathematics/Algebra/CommutativeAlgebra/Polynomial/Variant8474f04a5a9bf61842a30cc78d832a6e59faad5e55b6a761f42fb056bd7e8cda.lean/declarations/example--ca2ac31dcf97679085deab56.md) | 54 | `declaration-track:ca2ac31dcf97679085deab5633e3fae1456669827965fa6cab6c16cb94e5d6ee` |
| 2 | `example` | [(anonymous)](../../../../../mathematics/Algebra/CommutativeAlgebra/Polynomial/Variant8474f04a5a9bf61842a30cc78d832a6e59faad5e55b6a761f42fb056bd7e8cda.lean/declarations/example--195a924e5a351385dd581fe9.md) | 72 | `declaration-track:195a924e5a351385dd581fe99983bde30df84c267ffa7f6935edda480890b950` |
| 3 | `example` | [(anonymous)](../../../../../mathematics/Algebra/CommutativeAlgebra/Polynomial/Variant8474f04a5a9bf61842a30cc78d832a6e59faad5e55b6a761f42fb056bd7e8cda.lean/declarations/example--c0e84ebe8abd626bbf6ec6ec.md) | 108 | `declaration-track:c0e84ebe8abd626bbf6ec6ec081754e8f92c709444c7987c2b9066c73ae89df7` |
| 4 | `example` | [(anonymous)](../../../../../mathematics/Algebra/CommutativeAlgebra/Polynomial/Variant8474f04a5a9bf61842a30cc78d832a6e59faad5e55b6a761f42fb056bd7e8cda.lean/declarations/example--0f036d8168b37abc50ec2bac.md) | 118 | `declaration-track:0f036d8168b37abc50ec2bacacc9243154d5b6163578524b28ad743809fbba2e` |
| 5 | `example` | [(anonymous)](../../../../../mathematics/Algebra/CommutativeAlgebra/Polynomial/Variant8474f04a5a9bf61842a30cc78d832a6e59faad5e55b6a761f42fb056bd7e8cda.lean/declarations/example--ca2971204e85d25b4ff920d6.md) | 127 | `declaration-track:ca2971204e85d25b4ff920d67bd751fb7d427c0c4c85e11ba76a1ad761a0835b` |
| 6 | `example` | [(anonymous)](../../../../../mathematics/Algebra/CommutativeAlgebra/Polynomial/Variant8474f04a5a9bf61842a30cc78d832a6e59faad5e55b6a761f42fb056bd7e8cda.lean/declarations/example--1ad6c2f455362f1c8a661903.md) | 146 | `declaration-track:1ad6c2f455362f1c8a6619034e8566f1d3c82553e1106052520d0d937ba8e69c` |
| 7 | `example` | [(anonymous)](../../../../../mathematics/Algebra/CommutativeAlgebra/Polynomial/Variant8474f04a5a9bf61842a30cc78d832a6e59faad5e55b6a761f42fb056bd7e8cda.lean/declarations/example--b3709b8b7d192255a7c63a81.md) | 174 | `declaration-track:b3709b8b7d192255a7c63a816406b3a75f7afbce2867c3a95fb98b18d315a0d0` |
| 8 | `example` | [(anonymous)](../../../../../mathematics/Algebra/CommutativeAlgebra/Polynomial/Variant8474f04a5a9bf61842a30cc78d832a6e59faad5e55b6a761f42fb056bd7e8cda.lean/declarations/example--0eca1be329a2f57530fbdce1.md) | 183 | `declaration-track:0eca1be329a2f57530fbdce10db0eef09bcebfd9183d085fcd2ad8b6b42ac578` |
| 9 | `example` | [(anonymous)](../../../../../mathematics/Algebra/CommutativeAlgebra/Polynomial/Variant8474f04a5a9bf61842a30cc78d832a6e59faad5e55b6a761f42fb056bd7e8cda.lean/declarations/example--bb3f427a9b22e7b40c3718bf.md) | 192 | `declaration-track:bb3f427a9b22e7b40c3718bf5a3b2f330fd0c05449e60453f9f9f0b656f2ad93` |
| 10 | `example` | [(anonymous)](../../../../../mathematics/Algebra/CommutativeAlgebra/Polynomial/Variant8474f04a5a9bf61842a30cc78d832a6e59faad5e55b6a761f42fb056bd7e8cda.lean/declarations/example--403be912c55a10e746d5ed85.md) | 201 | `declaration-track:403be912c55a10e746d5ed8510f14b6ea363d962661432562223c731ca3a81a3` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
