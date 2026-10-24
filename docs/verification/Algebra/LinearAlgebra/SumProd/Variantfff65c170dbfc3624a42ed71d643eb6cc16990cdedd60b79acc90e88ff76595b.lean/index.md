# Verification target: GRWTSK.Algebra.LinearAlgebra.SumProd.Variantfff65c170dbfc3624a42ed71d643eb6cc16990cdedd60b79acc90e88ff76595b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ea5eeb9a9dc4607f41d50cf462d6e1991d6a154a",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/SumProd/Variantfff65c170dbfc3624a42ed71d643eb6cc16990cdedd60b79acc90e88ff76595b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/SumProd/Variantfff65c170dbfc3624a42ed71d643eb6cc16990cdedd60b79acc90e88ff76595b.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/SumProd/Variantfff65c170dbfc3624a42ed71d643eb6cc16990cdedd60b79acc90e88ff76595b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ea5eeb9a9dc4607f41d50cf462d6e1991d6a154a`.

Source path: `GRWTSK/Algebra/LinearAlgebra/SumProd/Variantfff65c170dbfc3624a42ed71d643eb6cc16990cdedd60b79acc90e88ff76595b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/SumProd/Variantfff65c170dbfc3624a42ed71d643eb6cc16990cdedd60b79acc90e88ff76595b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Module.Equiv.Defs` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Module.Pi` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Module.Prod` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Finsupp.SMul` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [sumFinsuppLEquivProdFinsupp](../../../../../mathematics/Algebra/LinearAlgebra/SumProd/Variantfff65c170dbfc3624a42ed71d643eb6cc16990cdedd60b79acc90e88ff76595b.lean/declarations/sumfinsupplequivprodfinsupp--7971b1a9503bf190920f24b0.md) | 48 | `declaration-track:7971b1a9503bf190920f24b034e02af91e4086ae3df1731ee05a33c45b01b83a` |
| 2 | `theorem` | [fst_sumFinsuppLEquivProdFinsupp](../../../../../mathematics/Algebra/LinearAlgebra/SumProd/Variantfff65c170dbfc3624a42ed71d643eb6cc16990cdedd60b79acc90e88ff76595b.lean/declarations/fst-sumfinsupplequivprodfinsupp--f4e5c62a9c9f53275a75a9ef.md) | 57 | `result-track:f4e5c62a9c9f53275a75a9ef2d38f6df9dbd49315bc4e1d5a2b2c16bbc9dfb69` |
| 3 | `theorem` | [snd_sumFinsuppLEquivProdFinsupp](../../../../../mathematics/Algebra/LinearAlgebra/SumProd/Variantfff65c170dbfc3624a42ed71d643eb6cc16990cdedd60b79acc90e88ff76595b.lean/declarations/snd-sumfinsupplequivprodfinsupp--65fd2673baeb7252d0c9cbf3.md) | 61 | `result-track:65fd2673baeb7252d0c9cbf3f3e4b48628eb00bcf01594a5556a410e648e580f` |
| 4 | `theorem` | [sumFinsuppLEquivProdFinsupp_symm_inl](../../../../../mathematics/Algebra/LinearAlgebra/SumProd/Variantfff65c170dbfc3624a42ed71d643eb6cc16990cdedd60b79acc90e88ff76595b.lean/declarations/sumfinsupplequivprodfinsupp-symm-inl--60089b90a2d88dc56c9cdf7b.md) | 65 | `result-track:60089b90a2d88dc56c9cdf7bd72927d14a055ab5ed07a40f4ba90cb3fe97f893` |
| 5 | `theorem` | [sumFinsuppLEquivProdFinsupp_symm_inr](../../../../../mathematics/Algebra/LinearAlgebra/SumProd/Variantfff65c170dbfc3624a42ed71d643eb6cc16990cdedd60b79acc90e88ff76595b.lean/declarations/sumfinsupplequivprodfinsupp-symm-inr--cd0ead29ab6f1c8058f60332.md) | 69 | `result-track:cd0ead29ab6f1c8058f60332326f7a43d17101354caa30238ea99987f652dcfb` |
| 6 | `def` | [sigmaFinsuppLEquivPiFinsupp](../../../../../mathematics/Algebra/LinearAlgebra/SumProd/Variantfff65c170dbfc3624a42ed71d643eb6cc16990cdedd60b79acc90e88ff76595b.lean/declarations/sigmafinsupplequivpifinsupp--4355437b30b2f7dd42503859.md) | 84 | `declaration-track:4355437b30b2f7dd42503859b9bdae49b32e25bdb8fc19feaa31aec695e6f05f` |
| 7 | `theorem` | [sigmaFinsuppLEquivPiFinsupp_apply](../../../../../mathematics/Algebra/LinearAlgebra/SumProd/Variantfff65c170dbfc3624a42ed71d643eb6cc16990cdedd60b79acc90e88ff76595b.lean/declarations/sigmafinsupplequivpifinsupp-apply--7f8f6bc59ad582f0d1a261ce.md) | 92 | `result-track:7f8f6bc59ad582f0d1a261ce8b2ef73f458257d00c27b3a9a224df62310b9700` |
| 8 | `theorem` | [sigmaFinsuppLEquivPiFinsupp_symm_apply](../../../../../mathematics/Algebra/LinearAlgebra/SumProd/Variantfff65c170dbfc3624a42ed71d643eb6cc16990cdedd60b79acc90e88ff76595b.lean/declarations/sigmafinsupplequivpifinsupp-symm-apply--12aee24dfc5af3033ef9a9a7.md) | 97 | `result-track:12aee24dfc5af3033ef9a9a74a1c01c83b8fafdeaa4938aa347dd7ba907cad2f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
