# Verification target: GRWTSK.LinearAlgebra.QuadraticForm.OrderedTransport

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "da1306ddad6bb6e1ad7fa8dc0bd3734a0e2abda4",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/LinearAlgebra/QuadraticForm/OrderedTransport.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/QuadraticForm/OrderedTransport.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/QuadraticForm/OrderedTransport.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `da1306ddad6bb6e1ad7fa8dc0bd3734a0e2abda4`.

Source path: `GRWTSK/LinearAlgebra/QuadraticForm/OrderedTransport.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/LinearAlgebra/QuadraticForm/OrderedTransport.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [Majorizes](../../../../../mathematics/Algebra/LinearAlgebra/QuadraticForm/OrderedTransport.lean/declarations/majorizes--5716da3a3e52f2f1ff4436c0.md) | 16 | `declaration-track:5716da3a3e52f2f1ff4436c017da6cc97ab1298324c5c6db3368c2d9adbe6918` |
| 2 | `theorem` | [Majorizes.comp](../../../../../mathematics/Algebra/LinearAlgebra/QuadraticForm/OrderedTransport.lean/declarations/majorizes-comp--8e512832a208be44b8560702.md) | 19 | `result-track:8e512832a208be44b8560702713dd651b53c3d3f27801d37b9e79484a5cc0cc0` |
| 3 | `theorem` | [Majorizes.spectator](../../../../../mathematics/Algebra/LinearAlgebra/QuadraticForm/OrderedTransport.lean/declarations/majorizes-spectator--d361fbb53466aa4338d86b71.md) | 31 | `result-track:d361fbb53466aa4338d86b71c887884f8119c031045aa75db1dbaa25657d8696` |
| 4 | `inductive` | [Chain](../../../../../mathematics/Algebra/LinearAlgebra/QuadraticForm/OrderedTransport.lean/declarations/chain--b8fed05f8574f46a54159ac9.md) | 44 | `declaration-track:b8fed05f8574f46a54159ac98ed482c85aa296d3155a8b9478facc0b899b42e7` |
| 5 | `theorem` | [Chain.sound](../../../../../mathematics/Algebra/LinearAlgebra/QuadraticForm/OrderedTransport.lean/declarations/chain-sound--2615fe6e2db22fc3cb13d4e5.md) | 51 | `result-track:2615fe6e2db22fc3cb13d4e5ec8c85857c468a8c56aa38e98d20bd0e0862bea3` |
| 6 | `theorem` | [endpoint_norm_bound](../../../../../mathematics/Algebra/LinearAlgebra/QuadraticForm/OrderedTransport.lean/declarations/endpoint-norm-bound--7e0402da2dcf6e90758c8916.md) | 58 | `result-track:7e0402da2dcf6e90758c8916705f981696133749e49c14ad378273ffe4112583` |
| 7 | `theorem` | [squared_to_norm](../../../../../mathematics/Algebra/LinearAlgebra/QuadraticForm/OrderedTransport.lean/declarations/squared-to-norm--35dbce27f2f14e0d17902255.md) | 71 | `result-track:35dbce27f2f14e0d17902255c43512e292c89a221ba7eab88432503d18520882` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
