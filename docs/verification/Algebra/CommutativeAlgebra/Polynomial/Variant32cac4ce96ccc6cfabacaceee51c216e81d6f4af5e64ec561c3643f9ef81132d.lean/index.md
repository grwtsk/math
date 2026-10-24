# Verification target: GRWTSK.Algebra.CommutativeAlgebra.Polynomial.Variant32cac4ce96ccc6cfabacaceee51c216e81d6f4af5e64ec561c3643f9ef81132d

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2f4d8907dfa7144c89e133d4bb02768fe90a764f",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/CommutativeAlgebra/Polynomial/Variant32cac4ce96ccc6cfabacaceee51c216e81d6f4af5e64ec561c3643f9ef81132d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/CommutativeAlgebra/Polynomial/Variant32cac4ce96ccc6cfabacaceee51c216e81d6f4af5e64ec561c3643f9ef81132d.lean/index.md) · [Full source](../../../../../mathematics/Algebra/CommutativeAlgebra/Polynomial/Variant32cac4ce96ccc6cfabacaceee51c216e81d6f4af5e64ec561c3643f9ef81132d.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2f4d8907dfa7144c89e133d4bb02768fe90a764f`.

Source path: `GRWTSK/Algebra/CommutativeAlgebra/Polynomial/Variant32cac4ce96ccc6cfabacaceee51c216e81d6f4af5e64ec561c3643f9ef81132d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/CommutativeAlgebra/Polynomial/Variant32cac4ce96ccc6cfabacaceee51c216e81d6f4af5e64ec561c3643f9ef81132d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Polynomial.AlgebraMap` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [adjoin_X](../../../../../mathematics/Algebra/CommutativeAlgebra/Polynomial/Variant32cac4ce96ccc6cfabacaceee51c216e81d6f4af5e64ec561c3643f9ef81132d.lean/declarations/adjoin-x--e7d73cbb8e8ffe970acbc228.md) | 36 | `result-track:e7d73cbb8e8ffe970acbc2282281d40855524291ed485b371e3ebe74cb9a590c` |
| 2 | `theorem` | [_root_.Algebra.adjoin_singleton_eq_range_aeval](../../../../../mathematics/Algebra/CommutativeAlgebra/Polynomial/Variant32cac4ce96ccc6cfabacaceee51c216e81d6f4af5e64ec561c3643f9ef81132d.lean/declarations/root-algebra-adjoin-singleton-eq-range-aeval--6ddca4cfad21bcf6bebf6147.md) | 43 | `result-track:6ddca4cfad21bcf6bebf61470fb50f154da01c0cf8a50616c63ecbb98bc11034` |
| 3 | `theorem` | [aeval_mem_adjoin_singleton](../../../../../mathematics/Algebra/CommutativeAlgebra/Polynomial/Variant32cac4ce96ccc6cfabacaceee51c216e81d6f4af5e64ec561c3643f9ef81132d.lean/declarations/aeval-mem-adjoin-singleton--b10bf2439353fc7f15f52c1c.md) | 48 | `result-track:b10bf2439353fc7f15f52c1c44261f719cffa3c859acac0cc40c84c26042fce1` |
| 4 | `instance` | [instCommSemiringAdjoinSingleton](../../../../../mathematics/Algebra/CommutativeAlgebra/Polynomial/Variant32cac4ce96ccc6cfabacaceee51c216e81d6f4af5e64ec561c3643f9ef81132d.lean/declarations/instcommsemiringadjoinsingleton--f4c30522e374a717bf06dd92.md) | 52 | `declaration-track:f4c30522e374a717bf06dd92503cf57c54bb1e1417e1a1d45aadf80733501d92` |
| 5 | `instance` | [instCommRingAdjoinSingleton](../../../../../mathematics/Algebra/CommutativeAlgebra/Polynomial/Variant32cac4ce96ccc6cfabacaceee51c216e81d6f4af5e64ec561c3643f9ef81132d.lean/declarations/instcommringadjoinsingleton--f4f0f9e91baa25cbe2ddc36f.md) | 60 | `declaration-track:f4f0f9e91baa25cbe2ddc36f83e7793f4b1ac7bdc280433b014023d200acc914` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
