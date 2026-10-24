# Verification target: GRWTSK.Algebra.LinearAlgebra.VertexOperator.Variant508d85e585aa7a735b29c9e9732fae6123c11ca591fc58c3a4eeaea6b512b2a3

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d2c51e5a1cdf2aee6feae1f8123f54917aae4389",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/VertexOperator/Variant508d85e585aa7a735b29c9e9732fae6123c11ca591fc58c3a4eeaea6b512b2a3.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/VertexOperator/Variant508d85e585aa7a735b29c9e9732fae6123c11ca591fc58c3a4eeaea6b512b2a3.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/VertexOperator/Variant508d85e585aa7a735b29c9e9732fae6123c11ca591fc58c3a4eeaea6b512b2a3.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d2c51e5a1cdf2aee6feae1f8123f54917aae4389`.

Source path: `GRWTSK/Algebra/LinearAlgebra/VertexOperator/Variant508d85e585aa7a735b29c9e9732fae6123c11ca591fc58c3a4eeaea6b512b2a3.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/VertexOperator/Variant508d85e585aa7a735b29c9e9732fae6123c11ca591fc58c3a4eeaea6b512b2a3.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Vertex.HVertexOperator` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Int.Interval` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [VertexOperator](../../../../../mathematics/Algebra/LinearAlgebra/VertexOperator/Variant508d85e585aa7a735b29c9e9732fae6123c11ca591fc58c3a4eeaea6b512b2a3.lean/declarations/vertexoperator--3de22a830b84ecadb6421161.md) | 35 | `declaration-track:3de22a830b84ecadb6421161895f54848038c85826a06bf91ea40b9dd9f4226c` |
| 2 | `theorem` | [ext](../../../../../mathematics/Algebra/LinearAlgebra/VertexOperator/Variant508d85e585aa7a735b29c9e9732fae6123c11ca591fc58c3a4eeaea6b512b2a3.lean/declarations/ext--3f660295ee0d6f6377b7da0c.md) | 43 | `result-track:3f660295ee0d6f6377b7da0c7e91d80e040d877736f29afbdacd7c387701d802` |
| 3 | `def` | [ncoeff](../../../../../mathematics/Algebra/LinearAlgebra/VertexOperator/Variant508d85e585aa7a735b29c9e9732fae6123c11ca591fc58c3a4eeaea6b512b2a3.lean/declarations/ncoeff--25611df22092e875b136deb0.md) | 47 | `declaration-track:25611df22092e875b136deb003259d523c75aff556cd08aee35478aa5fde804a` |
| 4 | `theorem` | [coeff_eq_ncoeff](../../../../../mathematics/Algebra/LinearAlgebra/VertexOperator/Variant508d85e585aa7a735b29c9e9732fae6123c11ca591fc58c3a4eeaea6b512b2a3.lean/declarations/coeff-eq-ncoeff--f4ccb0f6714baf3ca6be22be.md) | 55 | `result-track:f4ccb0f6714baf3ca6be22becb5c1f468ba344b428ef769efc366267f2143c02` |
| 5 | `theorem` | [ncoeff_add](../../../../../mathematics/Algebra/LinearAlgebra/VertexOperator/Variant508d85e585aa7a735b29c9e9732fae6123c11ca591fc58c3a4eeaea6b512b2a3.lean/declarations/ncoeff-add--09da6438ce709d8c1ee80141.md) | 60 | `result-track:09da6438ce709d8c1ee801414810699bd14eee854b633d53721e8a517fd6385a` |
| 6 | `theorem` | [ncoeff_smul](../../../../../mathematics/Algebra/LinearAlgebra/VertexOperator/Variant508d85e585aa7a735b29c9e9732fae6123c11ca591fc58c3a4eeaea6b512b2a3.lean/declarations/ncoeff-smul--b66bb636e0306dee348c2e95.md) | 64 | `result-track:b66bb636e0306dee348c2e951073249f14683403892761e0833e15ba86aa9d0a` |
| 7 | `theorem` | [ncoeff_eq_zero_of_lt_order](../../../../../mathematics/Algebra/LinearAlgebra/VertexOperator/Variant508d85e585aa7a735b29c9e9732fae6123c11ca591fc58c3a4eeaea6b512b2a3.lean/declarations/ncoeff-eq-zero-of-lt-order--d470d26680834d8c2c555046.md) | 67 | `result-track:d470d26680834d8c2c5550467968a2d97403ec905e689add2d8239a3f7882d95` |
| 8 | `theorem` | [coeff_eq_zero_of_lt_order](../../../../../mathematics/Algebra/LinearAlgebra/VertexOperator/Variant508d85e585aa7a735b29c9e9732fae6123c11ca591fc58c3a4eeaea6b512b2a3.lean/declarations/coeff-eq-zero-of-lt-order--f082e699ef9dbca68acca53d.md) | 72 | `result-track:f082e699ef9dbca68acca53dcb8d43d881fbe182b04f264f5988b9d9362ab55f` |
| 9 | `def` | [of_coeff](../../../../../mathematics/Algebra/LinearAlgebra/VertexOperator/Variant508d85e585aa7a735b29c9e9732fae6123c11ca591fc58c3a4eeaea6b512b2a3.lean/declarations/of-coeff--9c9981d005fd640cee66de56.md) | 79 | `declaration-track:9c9981d005fd640cee66de567be8d832955e1713cc307e8433d957800cf1b955` |
| 10 | `theorem` | [of_coeff_apply_coeff](../../../../../mathematics/Algebra/LinearAlgebra/VertexOperator/Variant508d85e585aa7a735b29c9e9732fae6123c11ca591fc58c3a4eeaea6b512b2a3.lean/declarations/of-coeff-apply-coeff--421da6bb0b1d9439c9a20651.md) | 87 | `result-track:421da6bb0b1d9439c9a20651b2ae0a00ba59f83018716f2373f72e892a78bf70` |
| 11 | `theorem` | [ncoeff_of_coeff](../../../../../mathematics/Algebra/LinearAlgebra/VertexOperator/Variant508d85e585aa7a735b29c9e9732fae6123c11ca591fc58c3a4eeaea6b512b2a3.lean/declarations/ncoeff-of-coeff--f2e328f5cb67ab6ca86421a6.md) | 93 | `result-track:f2e328f5cb67ab6ca86421a60efb52368e9701f037faefcbec0e7270a672540a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
