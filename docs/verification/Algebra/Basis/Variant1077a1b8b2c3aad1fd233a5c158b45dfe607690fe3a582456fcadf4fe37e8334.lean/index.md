# Verification target: GRWTSK.Algebra.Basis.Variant1077a1b8b2c3aad1fd233a5c158b45dfe607690fe3a582456fcadf4fe37e8334

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2f019f15b06ed9ecb8da05e918485f868d8b857b",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Basis/Variant1077a1b8b2c3aad1fd233a5c158b45dfe607690fe3a582456fcadf4fe37e8334.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Basis/Variant1077a1b8b2c3aad1fd233a5c158b45dfe607690fe3a582456fcadf4fe37e8334.lean/index.md) · [Full source](../../../../mathematics/Algebra/Basis/Variant1077a1b8b2c3aad1fd233a5c158b45dfe607690fe3a582456fcadf4fe37e8334.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2f019f15b06ed9ecb8da05e918485f868d8b857b`.

Source path: `GRWTSK/Algebra/Basis/Variant1077a1b8b2c3aad1fd233a5c158b45dfe607690fe3a582456fcadf4fe37e8334.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Basis/Variant1077a1b8b2c3aad1fd233a5c158b45dfe607690fe3a582456fcadf4fe37e8334.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Algebra.Bilinear` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Basis.Defs` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Basis.Submodule` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Ideal.Span` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [basisSpanSingleton](../../../../mathematics/Algebra/Basis/Variant1077a1b8b2c3aad1fd233a5c158b45dfe607690fe3a582456fcadf4fe37e8334.lean/declarations/basisspansingleton--5d8c74ebf01fd6a0b9e0d26e.md) | 22 | `declaration-track:5d8c74ebf01fd6a0b9e0d26e42f77ccc5f33140bbd883a098630a6aed80b054f` |
| 2 | `theorem` | [basisSpanSingleton_apply](../../../../mathematics/Algebra/Basis/Variant1077a1b8b2c3aad1fd233a5c158b45dfe607690fe3a582456fcadf4fe37e8334.lean/declarations/basisspansingleton-apply--7166745da684a8af46d20aa3.md) | 33 | `result-track:7166745da684a8af46d20aa320629c5637c8ac7ffe481a1a9fb2e507be09f5fc` |
| 3 | `theorem` | [constr_basisSpanSingleton](../../../../mathematics/Algebra/Basis/Variant1077a1b8b2c3aad1fd233a5c158b45dfe607690fe3a582456fcadf4fe37e8334.lean/declarations/constr-basisspansingleton--93ef81fb18bcf4ba0e6cdc03.md) | 40 | `result-track:93ef81fb18bcf4ba0e6cdc03387020b96a8c857930b40d6b739e32e95f31ae9b` |
| 4 | `theorem` | [Basis.mem_ideal_iff](../../../../mathematics/Algebra/Basis/Variant1077a1b8b2c3aad1fd233a5c158b45dfe607690fe3a582456fcadf4fe37e8334.lean/declarations/basis-mem-ideal-iff--e3f09f114d746354b1941d06.md) | 50 | `result-track:e3f09f114d746354b1941d060d5fabc5ff6e92eb6b5c37da6b806bbef1bc1ef3` |
| 5 | `theorem` | [Basis.mem_ideal_iff'](../../../../mathematics/Algebra/Basis/Variant1077a1b8b2c3aad1fd233a5c158b45dfe607690fe3a582456fcadf4fe37e8334.lean/declarations/basis-mem-ideal-iff--c614e4a2428165d3b4d19d17.md) | 57 | `result-track:c614e4a2428165d3b4d19d17e925ea4f06f613fe2de422d8461749fb85688863` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
