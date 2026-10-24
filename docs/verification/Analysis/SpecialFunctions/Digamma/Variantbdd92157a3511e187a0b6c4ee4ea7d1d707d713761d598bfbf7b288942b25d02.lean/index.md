# Verification target: GRWTSK.Analysis.SpecialFunctions.Digamma.Variantbdd92157a3511e187a0b6c4ee4ea7d1d707d713761d598bfbf7b288942b25d02

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7a13afbf72c57f912beea85d5325ca7da3e66ed1",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/SpecialFunctions/Digamma/Variantbdd92157a3511e187a0b6c4ee4ea7d1d707d713761d598bfbf7b288942b25d02.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/SpecialFunctions/Digamma/Variantbdd92157a3511e187a0b6c4ee4ea7d1d707d713761d598bfbf7b288942b25d02.lean/index.md) · [Full source](../../../../../mathematics/Analysis/SpecialFunctions/Digamma/Variantbdd92157a3511e187a0b6c4ee4ea7d1d707d713761d598bfbf7b288942b25d02.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7a13afbf72c57f912beea85d5325ca7da3e66ed1`.

Source path: `GRWTSK/Analysis/SpecialFunctions/Digamma/Variantbdd92157a3511e187a0b6c4ee4ea7d1d707d713761d598bfbf7b288942b25d02.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/SpecialFunctions/Digamma/Variantbdd92157a3511e187a0b6c4ee4ea7d1d707d713761d598bfbf7b288942b25d02.lean.json)

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
| 1 | `def` | [digamma](../../../../../mathematics/Analysis/SpecialFunctions/Digamma/Variantbdd92157a3511e187a0b6c4ee4ea7d1d707d713761d598bfbf7b288942b25d02.lean/declarations/digamma--f689bee3971cdd725c92140f.md) | 48 | `declaration-track:f689bee3971cdd725c92140f9573b9d01f39e507990df138342c1d8cc44d50dd` |
| 2 | `theorem` | [digamma_def](../../../../../mathematics/Analysis/SpecialFunctions/Digamma/Variantbdd92157a3511e187a0b6c4ee4ea7d1d707d713761d598bfbf7b288942b25d02.lean/declarations/digamma-def--c48adfe44a66b7b0df3d5144.md) | 50 | `result-track:c48adfe44a66b7b0df3d51442f20862ead4f2216015d115f74cee6069c93cc04` |
| 3 | `theorem` | [digamma_zero](../../../../../mathematics/Analysis/SpecialFunctions/Digamma/Variantbdd92157a3511e187a0b6c4ee4ea7d1d707d713761d598bfbf7b288942b25d02.lean/declarations/digamma-zero--63640eb72ab5d058b4dba920.md) | 53 | `result-track:63640eb72ab5d058b4dba92017fc0aa75913841abebffede70664a778923e807` |
| 4 | `theorem` | [digamma_one](../../../../../mathematics/Analysis/SpecialFunctions/Digamma/Variantbdd92157a3511e187a0b6c4ee4ea7d1d707d713761d598bfbf7b288942b25d02.lean/declarations/digamma-one--921c895408cb81a1c99cbd01.md) | 56 | `result-track:921c895408cb81a1c99cbd01e401c6f06664f81d6704b5e5559a5abb8385082d` |
| 5 | `theorem` | [digamma_one_half](../../../../../mathematics/Analysis/SpecialFunctions/Digamma/Variantbdd92157a3511e187a0b6c4ee4ea7d1d707d713761d598bfbf7b288942b25d02.lean/declarations/digamma-one-half--dd47a116836825b5839fb015.md) | 59 | `result-track:dd47a116836825b5839fb01572d15dbe2315c102e2328aa8891db2886422304e` |
| 6 | `theorem` | [digamma_apply_add_one](../../../../../mathematics/Analysis/SpecialFunctions/Digamma/Variantbdd92157a3511e187a0b6c4ee4ea7d1d707d713761d598bfbf7b288942b25d02.lean/declarations/digamma-apply-add-one--0d14604b4f583fd61942ed58.md) | 64 | `result-track:0d14604b4f583fd61942ed58f666c803d286ec3d7a55d7fbafe932743eda158d` |
| 7 | `theorem` | [digamma_apply_add_nat](../../../../../mathematics/Analysis/SpecialFunctions/Digamma/Variantbdd92157a3511e187a0b6c4ee4ea7d1d707d713761d598bfbf7b288942b25d02.lean/declarations/digamma-apply-add-nat--e9c4c328a00ebf6237f033a0.md) | 72 | `result-track:e9c4c328a00ebf6237f033a0705eb3d7c9534f2eaaad0e2f060466cd0f6d525d` |
| 8 | `theorem` | [digamma_nat_add_one](../../../../../mathematics/Analysis/SpecialFunctions/Digamma/Variantbdd92157a3511e187a0b6c4ee4ea7d1d707d713761d598bfbf7b288942b25d02.lean/declarations/digamma-nat-add-one--a1fbe8a7e04f54469639c36a.md) | 85 | `result-track:a1fbe8a7e04f54469639c36a6e34757348d42d881657092bbbc45da4af7950e4` |
| 9 | `theorem` | [digamma_one_sub](../../../../../mathematics/Analysis/SpecialFunctions/Digamma/Variantbdd92157a3511e187a0b6c4ee4ea7d1d707d713761d598bfbf7b288942b25d02.lean/declarations/digamma-one-sub--1364401968bde9f64391cd97.md) | 94 | `result-track:1364401968bde9f64391cd97a10745b9df4ef2503cf7769a48f4b24bbffe9f33` |
| 10 | `theorem` | [meromorphic_digamma](../../../../../mathematics/Analysis/SpecialFunctions/Digamma/Variantbdd92157a3511e187a0b6c4ee4ea7d1d707d713761d598bfbf7b288942b25d02.lean/declarations/meromorphic-digamma--b1b7ff02e9b55e149cbe7917.md) | 108 | `result-track:b1b7ff02e9b55e149cbe79170a3de37c3afc22be10d4361e9e67c5c584e5b78b` |
| 11 | `theorem` | [_root_.HasDerivAt.logDeriv_Gamma](../../../../../mathematics/Analysis/SpecialFunctions/Digamma/Variantbdd92157a3511e187a0b6c4ee4ea7d1d707d713761d598bfbf7b288942b25d02.lean/declarations/root-hasderivat-logderiv-gamma--6997195a0fb6211d5c023d5e.md) | 113 | `result-track:6997195a0fb6211d5c023d5e99d3757ab2e1b4a22fd2e203915fd169dd5c2479` |
| 12 | `theorem` | [digamma_two_mul](../../../../../mathematics/Analysis/SpecialFunctions/Digamma/Variantbdd92157a3511e187a0b6c4ee4ea7d1d707d713761d598bfbf7b288942b25d02.lean/declarations/digamma-two-mul--8a98a790c67a218300a1dd58.md) | 124 | `result-track:8a98a790c67a218300a1dd58eb2d55f9cab0c1ac3813ce7aa2547499941c0d69` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
