# Verification target: GRWTSK.Algebra.UniversalAlgebra.LinearOrderWithPosMulPosEqZero.Variant7decd12fb36c688c0b026a4976461ba80e848f653c3858649e725875fe98b5c8

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a20b56bb93669668a7d3a92dba196b6ccefd9e2b",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/UniversalAlgebra/LinearOrderWithPosMulPosEqZero/Variant7decd12fb36c688c0b026a4976461ba80e848f653c3858649e725875fe98b5c8.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/UniversalAlgebra/LinearOrderWithPosMulPosEqZero/Variant7decd12fb36c688c0b026a4976461ba80e848f653c3858649e725875fe98b5c8.lean/index.md) · [Full source](../../../../../mathematics/Algebra/UniversalAlgebra/LinearOrderWithPosMulPosEqZero/Variant7decd12fb36c688c0b026a4976461ba80e848f653c3858649e725875fe98b5c8.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a20b56bb93669668a7d3a92dba196b6ccefd9e2b`.

Source path: `GRWTSK/Algebra/UniversalAlgebra/LinearOrderWithPosMulPosEqZero/Variant7decd12fb36c688c0b026a4976461ba80e848f653c3858649e725875fe98b5c8.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/UniversalAlgebra/LinearOrderWithPosMulPosEqZero/Variant7decd12fb36c688c0b026a4976461ba80e848f653c3858649e725875fe98b5c8.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Order.Monoid.Defs` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.GroupWithZero.Canonical` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [Foo](../../../../../mathematics/Algebra/UniversalAlgebra/LinearOrderWithPosMulPosEqZero/Variant7decd12fb36c688c0b026a4976461ba80e848f653c3858649e725875fe98b5c8.lean/declarations/foo--20581d7e5776b90e76f08908.md) | 24 | `declaration-track:20581d7e5776b90e76f0890852c571bd6a86838c1cf1e68ac569e1f2c8cf2fe4` |
| 2 | `instance` | [inhabited](../../../../../mathematics/Algebra/UniversalAlgebra/LinearOrderWithPosMulPosEqZero/Variant7decd12fb36c688c0b026a4976461ba80e848f653c3858649e725875fe98b5c8.lean/declarations/inhabited--e1880099daa00bb0b60fee1d.md) | 32 | `declaration-track:e1880099daa00bb0b60fee1db47b9ac0d9715ca2f453fc7ffa6d8fac2fa1857f` |
| 3 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/UniversalAlgebra/LinearOrderWithPosMulPosEqZero/Variant7decd12fb36c688c0b026a4976461ba80e848f653c3858649e725875fe98b5c8.lean/declarations/instance--c9b89e292761527f5149a9cf.md) | 35 | `declaration-track:c9b89e292761527f5149a9cfb1f07fcbae8e3790f7a0b44fe62b795a2a36c442` |
| 4 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/UniversalAlgebra/LinearOrderWithPosMulPosEqZero/Variant7decd12fb36c688c0b026a4976461ba80e848f653c3858649e725875fe98b5c8.lean/declarations/instance--a26666c4d18afa9e78d4a6c8.md) | 38 | `declaration-track:a26666c4d18afa9e78d4a6c8adf15bbbd432dba2ded00eb425e9a60b065f4991` |
| 5 | `def` | [aux1](../../../../../mathematics/Algebra/UniversalAlgebra/LinearOrderWithPosMulPosEqZero/Variant7decd12fb36c688c0b026a4976461ba80e848f653c3858649e725875fe98b5c8.lean/declarations/aux1--a088b0d010bfa5f6eceab056.md) | 44 | `declaration-track:a088b0d010bfa5f6eceab05603ac34e5ea942cadc5cd177fadf02a6511f1153f` |
| 6 | `macro` | [(anonymous)](../../../../../mathematics/Algebra/UniversalAlgebra/LinearOrderWithPosMulPosEqZero/Variant7decd12fb36c688c0b026a4976461ba80e848f653c3858649e725875fe98b5c8.lean/declarations/macro--505c1eefb9c043d404672c90.md) | 50 | `declaration-track:505c1eefb9c043d404672c90ef5edc169951173459118c6c06bb0511ac184b7d` |
| 7 | `theorem` | [aux1_inj](../../../../../mathematics/Algebra/UniversalAlgebra/LinearOrderWithPosMulPosEqZero/Variant7decd12fb36c688c0b026a4976461ba80e848f653c3858649e725875fe98b5c8.lean/declarations/aux1-inj--e24f7d1f24bcef17a060f4b1.md) | 52 | `result-track:e24f7d1f24bcef17a060f4b174f8568951309adc3128fae9e268f7896b29b64f` |
| 8 | `instance` | [linearOrder](../../../../../mathematics/Algebra/UniversalAlgebra/LinearOrderWithPosMulPosEqZero/Variant7decd12fb36c688c0b026a4976461ba80e848f653c3858649e725875fe98b5c8.lean/declarations/linearorder--418be612c7631f2e43a0b223.md) | 54 | `declaration-track:418be612c7631f2e43a0b2235d14520d77690f1b523021f9d21c50b613de94d2` |
| 9 | `def` | [mul](../../../../../mathematics/Algebra/UniversalAlgebra/LinearOrderWithPosMulPosEqZero/Variant7decd12fb36c688c0b026a4976461ba80e848f653c3858649e725875fe98b5c8.lean/declarations/mul--d4808b71b36c8aac03cdb981.md) | 58 | `declaration-track:d4808b71b36c8aac03cdb981d5b773eb77922f64e1a996350865b4863294ad12` |
| 10 | `instance` | [commMonoid](../../../../../mathematics/Algebra/UniversalAlgebra/LinearOrderWithPosMulPosEqZero/Variant7decd12fb36c688c0b026a4976461ba80e848f653c3858649e725875fe98b5c8.lean/declarations/commmonoid--ff07a06e5ecd71e3250ad89f.md) | 63 | `declaration-track:ff07a06e5ecd71e3250ad89f98483e511800c03d9ae723c1914e356f56ad5fb8` |
| 11 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/UniversalAlgebra/LinearOrderWithPosMulPosEqZero/Variant7decd12fb36c688c0b026a4976461ba80e848f653c3858649e725875fe98b5c8.lean/declarations/instance--6c48ef86b616897bbad8fde7.md) | 71 | `declaration-track:6c48ef86b616897bbad8fde7ef60cea2c48a1fbfba4b59b2af3106453a4cf52f` |
| 12 | `theorem` | [not_mul_pos](../../../../../mathematics/Algebra/UniversalAlgebra/LinearOrderWithPosMulPosEqZero/Variant7decd12fb36c688c0b026a4976461ba80e848f653c3858649e725875fe98b5c8.lean/declarations/not-mul-pos--7d70c6d25162c1c511576be4.md) | 82 | `result-track:7d70c6d25162c1c511576be485e46884d054dac00f1d66650d3d8b73277ad138` |
| 13 | `example` | [(anonymous)](../../../../../mathematics/Algebra/UniversalAlgebra/LinearOrderWithPosMulPosEqZero/Variant7decd12fb36c688c0b026a4976461ba80e848f653c3858649e725875fe98b5c8.lean/declarations/example--d675d414d1d54c4cc1717b6d.md) | 88 | `declaration-track:d675d414d1d54c4cc1717b6dae484604050b4f080ecb0b97b57031065f7cbd2c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
