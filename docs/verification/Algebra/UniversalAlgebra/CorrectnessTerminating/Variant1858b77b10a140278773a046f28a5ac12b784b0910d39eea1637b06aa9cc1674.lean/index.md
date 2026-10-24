# Verification target: GRWTSK.Algebra.UniversalAlgebra.CorrectnessTerminating.Variant1858b77b10a140278773a046f28a5ac12b784b0910d39eea1637b06aa9cc1674

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "09986d9b8a2f91556bf27428dec7c6ecb817ffe4",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/UniversalAlgebra/CorrectnessTerminating/Variant1858b77b10a140278773a046f28a5ac12b784b0910d39eea1637b06aa9cc1674.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/UniversalAlgebra/CorrectnessTerminating/Variant1858b77b10a140278773a046f28a5ac12b784b0910d39eea1637b06aa9cc1674.lean/index.md) · [Full source](../../../../../mathematics/Algebra/UniversalAlgebra/CorrectnessTerminating/Variant1858b77b10a140278773a046f28a5ac12b784b0910d39eea1637b06aa9cc1674.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `09986d9b8a2f91556bf27428dec7c6ecb817ffe4`.

Source path: `GRWTSK/Algebra/UniversalAlgebra/CorrectnessTerminating/Variant1858b77b10a140278773a046f28a5ac12b784b0910d39eea1637b06aa9cc1674.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/UniversalAlgebra/CorrectnessTerminating/Variant1858b77b10a140278773a046f28a5ac12b784b0910d39eea1637b06aa9cc1674.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.ContinuedFractions.Computation.Translations` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.ContinuedFractions.TerminatedStable` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.ContinuedFractions.ContinuantsRecurrence` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Filter.AtTopBot.Basic` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.FieldSimp` — import line 15; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Ring` — import line 16; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [compExactValue](../../../../../mathematics/Algebra/UniversalAlgebra/CorrectnessTerminating/Variant1858b77b10a140278773a046f28a5ac12b784b0910d39eea1637b06aa9cc1674.lean/declarations/compexactvalue--a0f2f69d60ef4bf5b304224d.md) | 69 | `declaration-track:a0f2f69d60ef4bf5b304224d983e7a181c6d764da4dfcb6cc901dc9a9ce02b0d` |
| 2 | `theorem` | [compExactValue_correctness_of_stream_eq_some_aux_comp](../../../../../mathematics/Algebra/UniversalAlgebra/CorrectnessTerminating/Variant1858b77b10a140278773a046f28a5ac12b784b0910d39eea1637b06aa9cc1674.lean/declarations/compexactvalue-correctness-of-stream-eq-some-aux-comp--ece501a80bcc33373fff478d.md) | 80 | `result-track:ece501a80bcc33373fff478d9e27fad18f30b077f4c68a6020288e3d1d9bc0a2` |
| 3 | `theorem` | [compExactValue_correctness_of_stream_eq_some](../../../../../mathematics/Algebra/UniversalAlgebra/CorrectnessTerminating/Variant1858b77b10a140278773a046f28a5ac12b784b0910d39eea1637b06aa9cc1674.lean/declarations/compexactvalue-correctness-of-stream-eq-some--8fc251f3f92eadbefe15fdf2.md) | 105 | `result-track:8fc251f3f92eadbefe15fdf23657bdc166cba55c7e69907b64d8853e672cf84a` |
| 4 | `theorem` | [of_correctness_of_nth_stream_eq_none](../../../../../mathematics/Algebra/UniversalAlgebra/CorrectnessTerminating/Variant1858b77b10a140278773a046f28a5ac12b784b0910d39eea1637b06aa9cc1674.lean/declarations/of-correctness-of-nth-stream-eq-none--16fb5b8fd0e9cdb1d184102f.md) | 214 | `result-track:16fb5b8fd0e9cdb1d184102f123fdb1656a543a4993a4e791e706cac632117cc` |
| 5 | `theorem` | [of_correctness_of_terminatedAt](../../../../../mathematics/Algebra/UniversalAlgebra/CorrectnessTerminating/Variant1858b77b10a140278773a046f28a5ac12b784b0910d39eea1637b06aa9cc1674.lean/declarations/of-correctness-of-terminatedat--d2a4c7ae4901010b71ed6c91.md) | 240 | `result-track:d2a4c7ae4901010b71ed6c9172ee7aac58a26a6ced5f57f6ed5c26ddb02df2f3` |
| 6 | `theorem` | [of_correctness_of_terminates](../../../../../mathematics/Algebra/UniversalAlgebra/CorrectnessTerminating/Variant1858b77b10a140278773a046f28a5ac12b784b0910d39eea1637b06aa9cc1674.lean/declarations/of-correctness-of-terminates--122a5959f314f2a18c51cfae.md) | 249 | `result-track:122a5959f314f2a18c51cfaed7a2603ad59bf75cc6eabacc1cff727203ed7667` |
| 7 | `theorem` | [of_correctness_atTop_of_terminates](../../../../../mathematics/Algebra/UniversalAlgebra/CorrectnessTerminating/Variant1858b77b10a140278773a046f28a5ac12b784b0910d39eea1637b06aa9cc1674.lean/declarations/of-correctness-attop-of-terminates--6a9b5c998cc49b075b3aa661.md) | 257 | `result-track:6a9b5c998cc49b075b3aa6612a1944febefc3dd395334f8ba5464c2907f529d1` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
