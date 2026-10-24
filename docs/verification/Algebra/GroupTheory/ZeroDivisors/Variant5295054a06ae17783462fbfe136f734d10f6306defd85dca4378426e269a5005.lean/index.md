# Verification target: GRWTSK.Algebra.GroupTheory.ZeroDivisors.Variant5295054a06ae17783462fbfe136f734d10f6306defd85dca4378426e269a5005

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d71768efc7ba225bfcecc8fb4d8d8fe7952cbdd4",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/ZeroDivisors/Variant5295054a06ae17783462fbfe136f734d10f6306defd85dca4378426e269a5005.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/ZeroDivisors/Variant5295054a06ae17783462fbfe136f734d10f6306defd85dca4378426e269a5005.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/ZeroDivisors/Variant5295054a06ae17783462fbfe136f734d10f6306defd85dca4378426e269a5005.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d71768efc7ba225bfcecc8fb4d8d8fe7952cbdd4`.

Source path: `GRWTSK/Algebra/GroupTheory/ZeroDivisors/Variant5295054a06ae17783462fbfe136f734d10f6306defd85dca4378426e269a5005.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/ZeroDivisors/Variant5295054a06ae17783462fbfe136f734d10f6306defd85dca4378426e269a5005.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.GroupTheory.Submonoid.Basic` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [nonZeroDivisorsLeft](../../../../../mathematics/Algebra/GroupTheory/ZeroDivisors/Variant5295054a06ae17783462fbfe136f734d10f6306defd85dca4378426e269a5005.lean/declarations/nonzerodivisorsleft--692b586fe40aa820b9c590dc.md) | 32 | `declaration-track:692b586fe40aa820b9c590dc4399c3e4668bcf7985498d4853cf1c69efb69303` |
| 2 | `lemma` | [mem_nonZeroDivisorsLeft_iff](../../../../../mathematics/Algebra/GroupTheory/ZeroDivisors/Variant5295054a06ae17783462fbfe136f734d10f6306defd85dca4378426e269a5005.lean/declarations/mem-nonzerodivisorsleft-iff--51ed6d6cddb14db3ece75a56.md) | 37 | `result-track:51ed6d6cddb14db3ece75a56cee66410f3426b68dfac6e0dd7f58a7abb2e3eb5` |
| 3 | `def` | [nonZeroDivisorsRight](../../../../../mathematics/Algebra/GroupTheory/ZeroDivisors/Variant5295054a06ae17783462fbfe136f734d10f6306defd85dca4378426e269a5005.lean/declarations/nonzerodivisorsright--b1800cfec81ccb174a2473a6.md) | 43 | `declaration-track:b1800cfec81ccb174a2473a6bc6db4efa571b513ca1de96a5941544c7bc67c3b` |
| 4 | `lemma` | [mem_nonZeroDivisorsRight_iff](../../../../../mathematics/Algebra/GroupTheory/ZeroDivisors/Variant5295054a06ae17783462fbfe136f734d10f6306defd85dca4378426e269a5005.lean/declarations/mem-nonzerodivisorsright-iff--4ef403bb7c78dfb0b140c18d.md) | 48 | `result-track:4ef403bb7c78dfb0b140c18d9db71ee29d3d7a99719c4a23649fa5b67f65d921` |
| 5 | `lemma` | [nonZeroDivisorsLeft_eq_right](../../../../../mathematics/Algebra/GroupTheory/ZeroDivisors/Variant5295054a06ae17783462fbfe136f734d10f6306defd85dca4378426e269a5005.lean/declarations/nonzerodivisorsleft-eq-right--e47daeb8bb589edf03a99495.md) | 52 | `result-track:e47daeb8bb589edf03a994951e2ebf921dd7baf571a7809f382fa0f3accf7830` |
| 6 | `lemma` | [coe_nonZeroDivisorsLeft_eq](../../../../../mathematics/Algebra/GroupTheory/ZeroDivisors/Variant5295054a06ae17783462fbfe136f734d10f6306defd85dca4378426e269a5005.lean/declarations/coe-nonzerodivisorsleft-eq--c94f9b18c0563518c30add8c.md) | 56 | `result-track:c94f9b18c0563518c30add8c3aa9f0c8f527c2f169e4f0aa3620e691e409e31d` |
| 7 | `lemma` | [coe_nonZeroDivisorsRight_eq](../../../../../mathematics/Algebra/GroupTheory/ZeroDivisors/Variant5295054a06ae17783462fbfe136f734d10f6306defd85dca4378426e269a5005.lean/declarations/coe-nonzerodivisorsright-eq--e1bf510f775bb910480a1c7f.md) | 65 | `result-track:e1bf510f775bb910480a1c7fc1620871909960c01f9cc79740aa80a3922cf720` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
