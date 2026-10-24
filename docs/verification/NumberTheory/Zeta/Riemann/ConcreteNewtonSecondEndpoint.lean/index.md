# Verification target: GRWTSK.NumberTheory.Zeta.Riemann.ConcreteNewtonSecondEndpoint

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b23215f2e315a358d7eb18d0f9c73fb65b973209",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Zeta/Riemann/ConcreteNewtonSecondEndpoint.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/Zeta/Riemann/ConcreteNewtonSecondEndpoint.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/Zeta/Riemann/ConcreteNewtonSecondEndpoint.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b23215f2e315a358d7eb18d0f9c73fb65b973209`.

Source path: `GRWTSK/NumberTheory/Zeta/Riemann/ConcreteNewtonSecondEndpoint.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Zeta/Riemann/ConcreteNewtonSecondEndpoint.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Zeta.Riemann.ConcreteNewtonSecondSeed`](../../../../../mathematics/NumberTheory/Zeta/Riemann/ConcreteNewtonSecondSeed.lean/index.md) — import line 4; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [secondTrace](../../../../../mathematics/NumberTheory/Zeta/Riemann/ConcreteNewtonSecondEndpoint.lean/declarations/secondtrace--641a83b36459eaf4fab008af.md) | 26 | `declaration-track:641a83b36459eaf4fab008afce219c1cb33d23ff0340e8ada2677287f342e3c5` |
| 2 | `def` | [secondOutput](../../../../../mathematics/NumberTheory/Zeta/Riemann/ConcreteNewtonSecondEndpoint.lean/declarations/secondoutput--de7006eeb6b5b7517a1619f0.md) | 38 | `declaration-track:de7006eeb6b5b7517a1619f05582e6513727d24193d9fd75b6d319e2b2244763` |
| 3 | `theorem` | [second_steps_valid](../../../../../mathematics/NumberTheory/Zeta/Riemann/ConcreteNewtonSecondEndpoint.lean/declarations/second-steps-valid--6f167ca7cf5bd05eb151fddc.md) | 44 | `result-track:6f167ca7cf5bd05eb151fddcc5af4fcb41c7dc321af464e6c05d3d063dc9348f` |
| 4 | `theorem` | [second_trace_valid](../../../../../mathematics/NumberTheory/Zeta/Riemann/ConcreteNewtonSecondEndpoint.lean/declarations/second-trace-valid--f8116aefa89da8021b1a2081.md) | 50 | `result-track:f8116aefa89da8021b1a2081e89bca04b9595744bca3d8ffca681a32d3cc7a89` |
| 5 | `theorem` | [second_output_identity](../../../../../mathematics/NumberTheory/Zeta/Riemann/ConcreteNewtonSecondEndpoint.lean/declarations/second-output-identity--02ac7c4d8209e66ab52f384a.md) | 53 | `result-track:02ac7c4d8209e66ab52f384a0a20dc3e7a7deac6284b9b3d2a9d0e49f4a7f908` |
| 6 | `theorem` | [second_endpoint_compute](../../../../../mathematics/NumberTheory/Zeta/Riemann/ConcreteNewtonSecondEndpoint.lean/declarations/second-endpoint-compute--ebbe6c16c5b4f80d04c7e2c0.md) | 59 | `result-track:ebbe6c16c5b4f80d04c7e2c0fc736336524a50015640ae3049a7cbd8d7feb733` |
| 7 | `theorem` | [second_trace_check](../../../../../mathematics/NumberTheory/Zeta/Riemann/ConcreteNewtonSecondEndpoint.lean/declarations/second-trace-check--320336a61f994ebb7f9d14df.md) | 67 | `result-track:320336a61f994ebb7f9d14dffbf91526772fb792d33c26b5b27a35158ee9fdd9` |
| 8 | `theorem` | [second_power_enclosure](../../../../../mathematics/NumberTheory/Zeta/Riemann/ConcreteNewtonSecondEndpoint.lean/declarations/second-power-enclosure--788fb36cfe3c2fcdfbeaeca1.md) | 77 | `result-track:788fb36cfe3c2fcdfbeaeca1bd7b12b0e258f4a55be19b10c4403ff81adc8efa` |
| 9 | `def` | [firstTwo](../../../../../mathematics/NumberTheory/Zeta/Riemann/ConcreteNewtonSecondEndpoint.lean/declarations/firsttwo--10df480f3517a86258d6071b.md) | 85 | `declaration-track:10df480f3517a86258d6071b161ff92f226992511f1f91fa4417d597a717d597` |
| 10 | `theorem` | [second_prefix_check](../../../../../mathematics/NumberTheory/Zeta/Riemann/ConcreteNewtonSecondEndpoint.lean/declarations/second-prefix-check--2d4687b958d1323b997a7072.md) | 88 | `result-track:2d4687b958d1323b997a7072c4eafadf3d6962678cbc570c91c7bb6e9ad22810` |
| 11 | `theorem` | [first_two_prefix_check](../../../../../mathematics/NumberTheory/Zeta/Riemann/ConcreteNewtonSecondEndpoint.lean/declarations/first-two-prefix-check--fa2cba327591d59a0ae6b262.md) | 100 | `result-track:fa2cba327591d59a0ae6b262db82af3182ef92b380d049e7511d6ae1272dc0ac` |
| 12 | `theorem` | [first_block_of_remainder](../../../../../mathematics/NumberTheory/Zeta/Riemann/ConcreteNewtonSecondEndpoint.lean/declarations/first-block-of-remainder--9b4cd4b53146304bd66637bc.md) | 114 | `result-track:9b4cd4b53146304bd66637bccf52b65deda77430bf9f0ab9e1c7a0f217f1a57f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
