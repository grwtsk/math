# Verification target: GRWTSK.Algebra.CommutativeAlgebra.SMul.Variant74c6098e7b7a4e71db6e017c6a6bedc4b57c71d1d0636bb21276a516bcbd933e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4954ab31c7dceb52889f08f75d4f18769e656fbf",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/CommutativeAlgebra/SMul/Variant74c6098e7b7a4e71db6e017c6a6bedc4b57c71d1d0636bb21276a516bcbd933e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/CommutativeAlgebra/SMul/Variant74c6098e7b7a4e71db6e017c6a6bedc4b57c71d1d0636bb21276a516bcbd933e.lean/index.md) · [Full source](../../../../../mathematics/Algebra/CommutativeAlgebra/SMul/Variant74c6098e7b7a4e71db6e017c6a6bedc4b57c71d1d0636bb21276a516bcbd933e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4954ab31c7dceb52889f08f75d4f18769e656fbf`.

Source path: `GRWTSK/Algebra/CommutativeAlgebra/SMul/Variant74c6098e7b7a4e71db6e017c6a6bedc4b57c71d1d0636bb21276a516bcbd933e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/CommutativeAlgebra/SMul/Variant74c6098e7b7a4e71db6e017c6a6bedc4b57c71d1d0636bb21276a516bcbd933e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [eval₂_smul](../../../../../mathematics/Algebra/CommutativeAlgebra/SMul/Variant74c6098e7b7a4e71db6e017c6a6bedc4b57c71d1d0636bb21276a516bcbd933e.lean/declarations/eval-smul--7af8da0fefcefc751214d347.md) | 44 | `result-track:7af8da0fefcefc751214d3471d75a02c5352ae87f1d1d30e5625a43fe0eef9fd` |
| 2 | `theorem` | [eval_smul](../../../../../mathematics/Algebra/CommutativeAlgebra/SMul/Variant74c6098e7b7a4e71db6e017c6a6bedc4b57c71d1d0636bb21276a516bcbd933e.lean/declarations/eval-smul--b035677d682ca75b88f32656.md) | 58 | `result-track:b035677d682ca75b88f3265617be64451eaf9c0578d2869cffce94e92284b035` |
| 3 | `def` | [leval](../../../../../mathematics/Algebra/CommutativeAlgebra/SMul/Variant74c6098e7b7a4e71db6e017c6a6bedc4b57c71d1d0636bb21276a516bcbd933e.lean/declarations/leval--a30903d9cb49bed934e3e9ca.md) | 64 | `declaration-track:a30903d9cb49bed934e3e9ca7da6f824654ef37e4d3898063a60116c4569b5ef` |
| 4 | `theorem` | [smul_comp](../../../../../mathematics/Algebra/CommutativeAlgebra/SMul/Variant74c6098e7b7a4e71db6e017c6a6bedc4b57c71d1d0636bb21276a516bcbd933e.lean/declarations/smul-comp--2bec6dbde85e95f00c5f9a75.md) | 74 | `result-track:2bec6dbde85e95f00c5f9a75bccf89140ed4125e06c610fbb0e7fcfb65251d67` |
| 5 | `theorem` | [map_smul](../../../../../mathematics/Algebra/CommutativeAlgebra/SMul/Variant74c6098e7b7a4e71db6e017c6a6bedc4b57c71d1d0636bb21276a516bcbd933e.lean/declarations/map-smul--4d7051f6f4957c54fb488ca7.md) | 86 | `result-track:4d7051f6f4957c54fb488ca7b619d4875dcd55e5147630cc5f7ca20b909028bd` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
