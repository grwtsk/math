# Verification target: GRWTSK.Algebra.LinearAlgebra.Prod.Variantb8a1b91ac398f1705bf94563414e575ac7aeb623af356fa471a2c673017141b1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d387dfc51aa889ab4ee768d4d57cad51e66bba77",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Prod/Variantb8a1b91ac398f1705bf94563414e575ac7aeb623af356fa471a2c673017141b1.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Prod/Variantb8a1b91ac398f1705bf94563414e575ac7aeb623af356fa471a2c673017141b1.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Prod/Variantb8a1b91ac398f1705bf94563414e575ac7aeb623af356fa471a2c673017141b1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d387dfc51aa889ab4ee768d4d57cad51e66bba77`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Prod/Variantb8a1b91ac398f1705bf94563414e575ac7aeb623af356fa471a2c673017141b1.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Prod/Variantb8a1b91ac398f1705bf94563414e575ac7aeb623af356fa471a2c673017141b1.lean.json)

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
| 1 | `def` | [prodRight](../../../../../mathematics/Algebra/LinearAlgebra/Prod/Variantb8a1b91ac398f1705bf94563414e575ac7aeb623af356fa471a2c673017141b1.lean/declarations/prodright--08d2ead1d26615580e3970ad.md) | 48 | `declaration-track:08d2ead1d26615580e3970adcd9b05b45a3fb48981b32c8cee453e118901ce99` |
| 2 | `theorem` | [prodRight_tmul](../../../../../mathematics/Algebra/LinearAlgebra/Prod/Variantb8a1b91ac398f1705bf94563414e575ac7aeb623af356fa471a2c673017141b1.lean/declarations/prodright-tmul--d4377ce7f8f6b0fcbad67abc.md) | 59 | `result-track:d4377ce7f8f6b0fcbad67abcbb0858dc9f9cbeef77c7bbf5c124f477040cd873` |
| 3 | `theorem` | [prodRight_symm_tmul](../../../../../mathematics/Algebra/LinearAlgebra/Prod/Variantb8a1b91ac398f1705bf94563414e575ac7aeb623af356fa471a2c673017141b1.lean/declarations/prodright-symm-tmul--856224ef7a5d57e9a9e47203.md) | 63 | `result-track:856224ef7a5d57e9a9e47203ccc9e4b8bd5fadbbd63da16918bac90a9a44c0b8` |
| 4 | `def` | [prodLeft](../../../../../mathematics/Algebra/LinearAlgebra/Prod/Variantb8a1b91ac398f1705bf94563414e575ac7aeb623af356fa471a2c673017141b1.lean/declarations/prodleft--77aa59ef517433d2fafab9b9.md) | 70 | `declaration-track:77aa59ef517433d2fafab9b9078cd09fad10974699e420278e57d195c8a18267` |
| 5 | `theorem` | [prodLeft_tmul](../../../../../mathematics/Algebra/LinearAlgebra/Prod/Variantb8a1b91ac398f1705bf94563414e575ac7aeb623af356fa471a2c673017141b1.lean/declarations/prodleft-tmul--21834a19bcb7b2aaaaa9f43c.md) | 76 | `result-track:21834a19bcb7b2aaaaa9f43cbaaa8b7dbda4d030dab7482dfc4673e2bbe1aced` |
| 6 | `theorem` | [prodLeft_symm_tmul](../../../../../mathematics/Algebra/LinearAlgebra/Prod/Variantb8a1b91ac398f1705bf94563414e575ac7aeb623af356fa471a2c673017141b1.lean/declarations/prodleft-symm-tmul--32395531cb3fb97e8637706b.md) | 80 | `result-track:32395531cb3fb97e8637706bbc31bc9c3e86d7be26bcfec4b6133db251596b77` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
