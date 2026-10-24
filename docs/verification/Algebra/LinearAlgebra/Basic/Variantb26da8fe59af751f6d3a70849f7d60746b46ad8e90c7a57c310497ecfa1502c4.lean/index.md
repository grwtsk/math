# Verification target: GRWTSK.Algebra.LinearAlgebra.Basic.Variantb26da8fe59af751f6d3a70849f7d60746b46ad8e90c7a57c310497ecfa1502c4

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2ce7a05f1760cc52cbf054bfa317fe76753d4c5c",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Basic/Variantb26da8fe59af751f6d3a70849f7d60746b46ad8e90c7a57c310497ecfa1502c4.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantb26da8fe59af751f6d3a70849f7d60746b46ad8e90c7a57c310497ecfa1502c4.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantb26da8fe59af751f6d3a70849f7d60746b46ad8e90c7a57c310497ecfa1502c4.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2ce7a05f1760cc52cbf054bfa317fe76753d4c5c`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Basic/Variantb26da8fe59af751f6d3a70849f7d60746b46ad8e90c7a57c310497ecfa1502c4.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Basic/Variantb26da8fe59af751f6d3a70849f7d60746b46ad8e90c7a57c310497ecfa1502c4.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.LinearAlgebra.FreeModule.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Matrix.StdBasis` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Finiteness.Cardinality` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [Module.Free.ChooseBasisIndex.fintype](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantb26da8fe59af751f6d3a70849f7d60746b46ad8e90c7a57c310497ecfa1502c4.lean/declarations/module-free-choosebasisindex-fintype--151682a43a0f157f1c538484.md) | 24 | `declaration-track:151682a43a0f157f1c5384840b8efe35d92caec4433774bdd54020c93eb98fb4` |
| 2 | `theorem` | [Module.Finite.of_basis](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantb26da8fe59af751f6d3a70849f7d60746b46ad8e90c7a57c310497ecfa1502c4.lean/declarations/module-finite-of-basis--21a22b35c1c7bc6968631080.md) | 35 | `result-track:21a22b35c1c7bc69686310801a31c733acc2528931ab9cc2630dbdb3664ce2a1` |
| 3 | `instance` | [Module.Finite.matrix](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantb26da8fe59af751f6d3a70849f7d60746b46ad8e90c7a57c310497ecfa1502c4.lean/declarations/module-finite-matrix--40dae190a8ed683b28dc4a11.md) | 42 | `declaration-track:40dae190a8ed683b28dc4a113d133cf9f4b237d2f44b873a235abf58f178e6d8` |
| 4 | `example` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantb26da8fe59af751f6d3a70849f7d60746b46ad8e90c7a57c310497ecfa1502c4.lean/declarations/example--91963fc3750ede2db8beb115.md) | 50 | `declaration-track:91963fc3750ede2db8beb1158c48929b1f437d4216a1b1ec010cc17026a1f074` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
