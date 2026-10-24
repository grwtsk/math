# Verification target: GRWTSK.Algebra.LinearAlgebra.Stability.Variantcd1360e14f9269648805a2c81eddffb7c7dd110a100a55db7a57eef317346443

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "450cd215be59e2df358b33689d980fe3db798c67",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Stability/Variantcd1360e14f9269648805a2c81eddffb7c7dd110a100a55db7a57eef317346443.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Stability/Variantcd1360e14f9269648805a2c81eddffb7c7dd110a100a55db7a57eef317346443.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Stability/Variantcd1360e14f9269648805a2c81eddffb7c7dd110a100a55db7a57eef317346443.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `450cd215be59e2df358b33689d980fe3db798c67`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Stability/Variantcd1360e14f9269648805a2c81eddffb7c7dd110a100a55db7a57eef317346443.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Stability/Variantcd1360e14f9269648805a2c81eddffb7c7dd110a100a55db7a57eef317346443.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.RingTheory.Flat.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.IsTensorProduct` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.TensorProduct.Tower` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Localization.BaseChange` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Module.LocalizedModule.Basic` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [trans](../../../../../mathematics/Algebra/LinearAlgebra/Stability/Variantcd1360e14f9269648805a2c81eddffb7c7dd110a100a55db7a57eef317346443.lean/declarations/trans--b78caddbec93c8b705c6873e.md) | 66 | `result-track:b78caddbec93c8b705c6873eec942cd2f916166a25c4f2982e632637584624dd` |
| 2 | `instance` | [baseChange](../../../../../mathematics/Algebra/LinearAlgebra/Stability/Variantcd1360e14f9269648805a2c81eddffb7c7dd110a100a55db7a57eef317346443.lean/declarations/basechange--f5a68a2dcf2d30c19bb61bd3.md) | 93 | `declaration-track:f5a68a2dcf2d30c19bb61bd3c6603caf19740a9a2b557d55a88597fc2f188a96` |
| 3 | `theorem` | [isBaseChange](../../../../../mathematics/Algebra/LinearAlgebra/Stability/Variantcd1360e14f9269648805a2c81eddffb7c7dd110a100a55db7a57eef317346443.lean/declarations/isbasechange--cf44a3e6a1e68fd2e47ae818.md) | 96 | `result-track:cf44a3e6a1e68fd2e47ae818209652b15bcc7065f2353ae5ba6cd201306b40f5` |
| 4 | `instance` | [localizedModule](../../../../../mathematics/Algebra/LinearAlgebra/Stability/Variantcd1360e14f9269648805a2c81eddffb7c7dd110a100a55db7a57eef317346443.lean/declarations/localizedmodule--6b1432031247da72781c9347.md) | 109 | `declaration-track:6b1432031247da72781c93474ef694b15080774d78e622f785f87a2d266a95b5` |
| 5 | `theorem` | [of_isLocalizedModule](../../../../../mathematics/Algebra/LinearAlgebra/Stability/Variantcd1360e14f9269648805a2c81eddffb7c7dd110a100a55db7a57eef317346443.lean/declarations/of-islocalizedmodule--a391a6c3a3d87ff750eb098a.md) | 116 | `result-track:a391a6c3a3d87ff750eb098aaa7078f776065db931a349ca36a3cf500b7be531` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
