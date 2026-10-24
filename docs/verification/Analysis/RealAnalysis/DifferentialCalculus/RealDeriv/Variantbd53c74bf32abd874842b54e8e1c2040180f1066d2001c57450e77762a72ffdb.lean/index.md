# Verification target: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.RealDeriv.Variantbd53c74bf32abd874842b54e8e1c2040180f1066d2001c57450e77762a72ffdb

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "141affe4dc46c932589b74b59acaf1c519cd6c40",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/RealDeriv/Variantbd53c74bf32abd874842b54e8e1c2040180f1066d2001c57450e77762a72ffdb.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/RealDeriv/Variantbd53c74bf32abd874842b54e8e1c2040180f1066d2001c57450e77762a72ffdb.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/RealDeriv/Variantbd53c74bf32abd874842b54e8e1c2040180f1066d2001c57450e77762a72ffdb.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `141affe4dc46c932589b74b59acaf1c519cd6c40`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/RealDeriv/Variantbd53c74bf32abd874842b54e8e1c2040180f1066d2001c57450e77762a72ffdb.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/RealDeriv/Variantbd53c74bf32abd874842b54e8e1c2040180f1066d2001c57450e77762a72ffdb.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Calculus.ContDiff` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.Deriv.Linear` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Complex.Conformal` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.Conformal.NormedSpace` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [HasStrictDerivAt.real_of_complex](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/RealDeriv/Variantbd53c74bf32abd874842b54e8e1c2040180f1066d2001c57450e77762a72ffdb.lean/declarations/hasstrictderivat-real-of-complex--970f22eb911b1094c28f9572.md) | 57 | `result-track:970f22eb911b1094c28f9572c40df8c30226b1f7de39fe28622f329847743798` |
| 2 | `theorem` | [HasDerivAt.real_of_complex](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/RealDeriv/Variantbd53c74bf32abd874842b54e8e1c2040180f1066d2001c57450e77762a72ffdb.lean/declarations/hasderivat-real-of-complex--2266d73dfa1f0af53e8b60f6.md) | 76 | `result-track:2266d73dfa1f0af53e8b60f6a80c3becde308dedf9f42e8776d395d9ac6fecfc` |
| 3 | `theorem` | [ContDiffAt.real_of_complex](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/RealDeriv/Variantbd53c74bf32abd874842b54e8e1c2040180f1066d2001c57450e77762a72ffdb.lean/declarations/contdiffat-real-of-complex--230120f242c768d303d093f7.md) | 92 | `result-track:230120f242c768d303d093f76d72aee8b9f614ead7af1d6c25a541ee3738b860` |
| 4 | `theorem` | [ContDiff.real_of_complex](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/RealDeriv/Variantbd53c74bf32abd874842b54e8e1c2040180f1066d2001c57450e77762a72ffdb.lean/declarations/contdiff-real-of-complex--c7cd4405a47e6c6edf90c741.md) | 100 | `result-track:c7cd4405a47e6c6edf90c74146a61a9e5f02620955a9ea87e31425b73af9d425` |
| 5 | `theorem` | [HasStrictDerivAt.complexToReal_fderiv'](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/RealDeriv/Variantbd53c74bf32abd874842b54e8e1c2040180f1066d2001c57450e77762a72ffdb.lean/declarations/hasstrictderivat-complextoreal-fderiv--cd3636fb35008369489ce1f7.md) | 107 | `result-track:cd3636fb35008369489ce1f7de9282db2888a5fc3edfe99527f3df2e47b2d167` |
| 6 | `theorem` | [HasDerivAt.complexToReal_fderiv'](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/RealDeriv/Variantbd53c74bf32abd874842b54e8e1c2040180f1066d2001c57450e77762a72ffdb.lean/declarations/hasderivat-complextoreal-fderiv--ee1814b8bf79330ccc822fd3.md) | 114 | `result-track:ee1814b8bf79330ccc822fd3b00090a1b917de1668008cf5cd593e4138b8a51a` |
| 7 | `theorem` | [HasDerivWithinAt.complexToReal_fderiv'](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/RealDeriv/Variantbd53c74bf32abd874842b54e8e1c2040180f1066d2001c57450e77762a72ffdb.lean/declarations/hasderivwithinat-complextoreal-fderiv--a95a316a123de286fe2e3c8f.md) | 119 | `result-track:a95a316a123de286fe2e3c8f15fc4c99349bbac2b8a93855e3b3e1e4fa09f30f` |
| 8 | `theorem` | [HasStrictDerivAt.complexToReal_fderiv](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/RealDeriv/Variantbd53c74bf32abd874842b54e8e1c2040180f1066d2001c57450e77762a72ffdb.lean/declarations/hasstrictderivat-complextoreal-fderiv--de0cc1cce0f45ad1112ef4fc.md) | 126 | `result-track:de0cc1cce0f45ad1112ef4fc8cb64dd512c01acbd7680b56567a04803f51dd4b` |
| 9 | `theorem` | [HasDerivAt.complexToReal_fderiv](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/RealDeriv/Variantbd53c74bf32abd874842b54e8e1c2040180f1066d2001c57450e77762a72ffdb.lean/declarations/hasderivat-complextoreal-fderiv--cc3b739b5424acf24ebcb260.md) | 131 | `result-track:cc3b739b5424acf24ebcb2606601394a33bd8564e05eb277af584eea3efec68c` |
| 10 | `theorem` | [HasDerivWithinAt.complexToReal_fderiv](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/RealDeriv/Variantbd53c74bf32abd874842b54e8e1c2040180f1066d2001c57450e77762a72ffdb.lean/declarations/hasderivwithinat-complextoreal-fderiv--05557359eb449b7401bffdd0.md) | 136 | `result-track:05557359eb449b7401bffdd0484ff7394cf722cc46588343e9ebc84c61a06481` |
| 11 | `theorem` | [HasDerivAt.comp_ofReal](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/RealDeriv/Variantbd53c74bf32abd874842b54e8e1c2040180f1066d2001c57450e77762a72ffdb.lean/declarations/hasderivat-comp-ofreal--5d0bb45b24a8b49545958b2b.md) | 143 | `result-track:5d0bb45b24a8b49545958b2bfdb884b8d38566a871df8bc835436eac7b003b26` |
| 12 | `theorem` | [HasDerivAt.ofReal_comp](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/RealDeriv/Variantbd53c74bf32abd874842b54e8e1c2040180f1066d2001c57450e77762a72ffdb.lean/declarations/hasderivat-ofreal-comp--80ed4ec4c418a0fc084f209c.md) | 149 | `result-track:80ed4ec4c418a0fc084f209cdb712ab9ba936bfc189c66ac41aa84d830eda084` |
| 13 | `theorem` | [DifferentiableAt.conformalAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/RealDeriv/Variantbd53c74bf32abd874842b54e8e1c2040180f1066d2001c57450e77762a72ffdb.lean/declarations/differentiableat-conformalat--67b90a4f157d7b05311288e0.md) | 170 | `result-track:67b90a4f157d7b05311288e0321a7adeecdc88f10e373f026606c9c02e29c932` |
| 14 | `theorem` | [conformalAt_iff_differentiableAt_or_differentiableAt_comp_conj](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/RealDeriv/Variantbd53c74bf32abd874842b54e8e1c2040180f1066d2001c57450e77762a72ffdb.lean/declarations/conformalat-iff-differentiableat-or-differentiableat-comp-conj--3e94de502c51058ae383b212.md) | 179 | `result-track:3e94de502c51058ae383b21244245136b44d292a4be5d4c76d7c7765935862d2` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
