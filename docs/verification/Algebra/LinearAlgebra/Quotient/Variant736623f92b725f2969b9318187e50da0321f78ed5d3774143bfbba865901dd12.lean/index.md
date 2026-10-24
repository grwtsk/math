# Verification target: GRWTSK.Algebra.LinearAlgebra.Quotient.Variant736623f92b725f2969b9318187e50da0321f78ed5d3774143bfbba865901dd12

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "353991cca71f583a55c3b506dedf917ccd78267a",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Quotient/Variant736623f92b725f2969b9318187e50da0321f78ed5d3774143bfbba865901dd12.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Quotient/Variant736623f92b725f2969b9318187e50da0321f78ed5d3774143bfbba865901dd12.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Quotient/Variant736623f92b725f2969b9318187e50da0321f78ed5d3774143bfbba865901dd12.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `353991cca71f583a55c3b506dedf917ccd78267a`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Quotient/Variant736623f92b725f2969b9318187e50da0321f78ed5d3774143bfbba865901dd12.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Quotient/Variant736623f92b725f2969b9318187e50da0321f78ed5d3774143bfbba865901dd12.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.LinearAlgebra.TensorProduct.Quotient` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Ideal.Quotient.Operations` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.TensorProduct.Basic` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [quotIdealMapEquivTensorQuotAux](../../../../../mathematics/Algebra/LinearAlgebra/Quotient/Variant736623f92b725f2969b9318187e50da0321f78ed5d3774143bfbba865901dd12.lean/declarations/quotidealmapequivtensorquotaux--29ffee8498b765997e3d2ee1.md) | 28 | `declaration-track:29ffee8498b765997e3d2ee172802d01ff54953231eaeedbfe0c1642c8bfbb14` |
| 2 | `lemma` | [quotIdealMapEquivTensorQuotAux_mk](../../../../../mathematics/Algebra/LinearAlgebra/Quotient/Variant736623f92b725f2969b9318187e50da0321f78ed5d3774143bfbba865901dd12.lean/declarations/quotidealmapequivtensorquotaux-mk--804aa11648a5ffc3df5484db.md) | 37 | `result-track:804aa11648a5ffc3df5484dbef9f1e91748103de57142166723cd2707724f5dc` |
| 3 | `def` | [quotIdealMapEquivTensorQuot](../../../../../mathematics/Algebra/LinearAlgebra/Quotient/Variant736623f92b725f2969b9318187e50da0321f78ed5d3774143bfbba865901dd12.lean/declarations/quotidealmapequivtensorquot--203883a64a8f57c0b69890a5.md) | 42 | `declaration-track:203883a64a8f57c0b69890a51f3e4ace2fde27c7535f926c19aace21442f7239` |
| 4 | `lemma` | [quotIdealMapEquivTensorQuot_mk](../../../../../mathematics/Algebra/LinearAlgebra/Quotient/Variant736623f92b725f2969b9318187e50da0321f78ed5d3774143bfbba865901dd12.lean/declarations/quotidealmapequivtensorquot-mk--ccc9c60784e173aa886582c8.md) | 52 | `result-track:ccc9c60784e173aa886582c80dd74b0cb89d6892f715a4171d7d5292215b9f39` |
| 5 | `lemma` | [quotIdealMapEquivTensorQuot_symm_tmul](../../../../../mathematics/Algebra/LinearAlgebra/Quotient/Variant736623f92b725f2969b9318187e50da0321f78ed5d3774143bfbba865901dd12.lean/declarations/quotidealmapequivtensorquot-symm-tmul--853807d31d7f5c396c8f6887.md) | 57 | `result-track:853807d31d7f5c396c8f68876367507fc4c8accde5234496f601b4fa257428e9` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
