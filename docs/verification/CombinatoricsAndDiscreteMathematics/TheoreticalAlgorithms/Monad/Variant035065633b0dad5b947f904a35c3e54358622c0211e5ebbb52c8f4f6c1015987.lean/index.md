# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Monad.Variant035065633b0dad5b947f904a35c3e54358622c0211e5ebbb52c8f4f6c1015987

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c24ce9216f50b110e2e5bb5966220a69aa2e51ab",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Monad/Variant035065633b0dad5b947f904a35c3e54358622c0211e5ebbb52c8f4f6c1015987.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Monad/Variant035065633b0dad5b947f904a35c3e54358622c0211e5ebbb52c8f4f6c1015987.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Monad/Variant035065633b0dad5b947f904a35c3e54358622c0211e5ebbb52c8f4f6c1015987.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c24ce9216f50b110e2e5bb5966220a69aa2e51ab`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Monad/Variant035065633b0dad5b947f904a35c3e54358622c0211e5ebbb52c8f4f6c1015987.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Monad/Variant035065633b0dad5b947f904a35c3e54358622c0211e5ebbb52c8f4f6c1015987.lean.json)

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
| 1 | `instance` | [instMonad](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Monad/Variant035065633b0dad5b947f904a35c3e54358622c0211e5ebbb52c8f4f6c1015987.lean/declarations/instmonad--870052b74d92c39617d2b3d6.md) | 30 | `declaration-track:870052b74d92c39617d2b3d6246a1c0bbf3cc851e6025a0fecc19cf638786ef6` |
| 2 | `theorem` | [pure_def](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Monad/Variant035065633b0dad5b947f904a35c3e54358622c0211e5ebbb52c8f4f6c1015987.lean/declarations/pure-def--19597e66312bc828d387faa4.md) | 35 | `result-track:19597e66312bc828d387faa489bae2800ced6d33fedf5330dd53e995d33fec1c` |
| 3 | `instance` | [instLawfulMonad](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Monad/Variant035065633b0dad5b947f904a35c3e54358622c0211e5ebbb52c8f4f6c1015987.lean/declarations/instlawfulmonad--c2ab11a219054b126eb1dac4.md) | 37 | `declaration-track:c2ab11a219054b126eb1dac40ed189826c9233d45e285b640b6687e27614848b` |
| 4 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Monad/Variant035065633b0dad5b947f904a35c3e54358622c0211e5ebbb52c8f4f6c1015987.lean/declarations/instance--9538d2b3a8f46ce511fa33eb.md) | 43 | `declaration-track:9538d2b3a8f46ce511fa33eb2d32e4c85e74940c71739598906d3da1cd966b4f` |
| 5 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Monad/Variant035065633b0dad5b947f904a35c3e54358622c0211e5ebbb52c8f4f6c1015987.lean/declarations/instance--51fa01cae87acb0e70b08f47.md) | 47 | `declaration-track:51fa01cae87acb0e70b08f47a4917a318fd76eb2ac51dfa72daaa388e0a618f1` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
