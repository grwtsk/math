# Verification target: GRWTSK.Analysis.FunctionalAnalysis.Section.Variant1c7408b3bce3ee717ba512c84509f2344d95a7a0184253ce8309db5e84479d44

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "aecd7642cc186fc8951865f6c0ed2cb2f12615be",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/FunctionalAnalysis/Section/Variant1c7408b3bce3ee717ba512c84509f2344d95a7a0184253ce8309db5e84479d44.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/FunctionalAnalysis/Section/Variant1c7408b3bce3ee717ba512c84509f2344d95a7a0184253ce8309db5e84479d44.lean/index.md) · [Full source](../../../../../mathematics/Analysis/FunctionalAnalysis/Section/Variant1c7408b3bce3ee717ba512c84509f2344d95a7a0184253ce8309db5e84479d44.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `aecd7642cc186fc8951865f6c0ed2cb2f12615be`.

Source path: `GRWTSK/Analysis/FunctionalAnalysis/Section/Variant1c7408b3bce3ee717ba512c84509f2344d95a7a0184253ce8309db5e84479d44.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/FunctionalAnalysis/Section/Variant1c7408b3bce3ee717ba512c84509f2344d95a7a0184253ce8309db5e84479d44.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Module.Projective` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Basis.VectorSpace` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.SeparationQuotient.Basic` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Maps.OpenQuotient` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [exists_out_continuousLinearMap](../../../../../mathematics/Analysis/FunctionalAnalysis/Section/Variant1c7408b3bce3ee717ba512c84509f2344d95a7a0184253ce8309db5e84479d44.lean/declarations/exists-out-continuouslinearmap--996c8c9fc89dc87373e99072.md) | 39 | `result-track:996c8c9fc89dc87373e9907297e95f4aae7d3a2f113530ceae606691a070f7a4` |
| 2 | `def` | [outCLM](../../../../../mathematics/Analysis/FunctionalAnalysis/Section/Variant1c7408b3bce3ee717ba512c84509f2344d95a7a0184253ce8309db5e84479d44.lean/declarations/outclm--d5fc94bdd581210b6987493c.md) | 48 | `declaration-track:d5fc94bdd581210b6987493caa8af3a8b9c64672061b162d9a5f4b9ab84dcb8b` |
| 3 | `theorem` | [mkCLM_comp_outCLM](../../../../../mathematics/Analysis/FunctionalAnalysis/Section/Variant1c7408b3bce3ee717ba512c84509f2344d95a7a0184253ce8309db5e84479d44.lean/declarations/mkclm-comp-outclm--efb0bb62142a184eef223371.md) | 52 | `result-track:efb0bb62142a184eef223371db7835de96b0a9ea8119b55321e4ebaa303b3602` |
| 4 | `theorem` | [mk_outCLM](../../../../../mathematics/Analysis/FunctionalAnalysis/Section/Variant1c7408b3bce3ee717ba512c84509f2344d95a7a0184253ce8309db5e84479d44.lean/declarations/mk-outclm--d37a7c2e46c2d119979135c7.md) | 57 | `result-track:d37a7c2e46c2d119979135c75c8b500a9e090b796347a84de045ac3af54f137c` |
| 5 | `theorem` | [mk_comp_outCLM](../../../../../mathematics/Analysis/FunctionalAnalysis/Section/Variant1c7408b3bce3ee717ba512c84509f2344d95a7a0184253ce8309db5e84479d44.lean/declarations/mk-comp-outclm--c7c320bdc9ac35b7ef56c752.md) | 61 | `result-track:c7c320bdc9ac35b7ef56c752a67ed9897179c5053e3db3a7113a2125ee4577dd` |
| 6 | `theorem` | [postcomp_mkCLM_surjective](../../../../../mathematics/Analysis/FunctionalAnalysis/Section/Variant1c7408b3bce3ee717ba512c84509f2344d95a7a0184253ce8309db5e84479d44.lean/declarations/postcomp-mkclm-surjective--a951524451cd771f750820ce.md) | 64 | `result-track:a951524451cd771f750820ce0c8848cc4f54e9ac38e75ee72abbb661eda83c6d` |
| 7 | `theorem` | [isEmbedding_outCLM](../../../../../mathematics/Analysis/FunctionalAnalysis/Section/Variant1c7408b3bce3ee717ba512c84509f2344d95a7a0184253ce8309db5e84479d44.lean/declarations/isembedding-outclm--54e6e6e7f6a2047bc258108a.md) | 72 | `result-track:54e6e6e7f6a2047bc258108a5113be725d479de68d7da29f76d1b15e24002013` |
| 8 | `theorem` | [outCLM_injective](../../../../../mathematics/Analysis/FunctionalAnalysis/Section/Variant1c7408b3bce3ee717ba512c84509f2344d95a7a0184253ce8309db5e84479d44.lean/declarations/outclm-injective--13c03217a499efdafa7e0b55.md) | 78 | `result-track:13c03217a499efdafa7e0b5586abcbb7548203818553b228d77c4edd3232490c` |
| 9 | `theorem` | [outCLM_isUniformInducing](../../../../../mathematics/Analysis/FunctionalAnalysis/Section/Variant1c7408b3bce3ee717ba512c84509f2344d95a7a0184253ce8309db5e84479d44.lean/declarations/outclm-isuniforminducing--5bc949e2112487e575728108.md) | 88 | `result-track:5bc949e2112487e575728108ff3a31bb17239da1d157712f0114e03ce27f87b3` |
| 10 | `theorem` | [outCLM_isUniformEmbedding](../../../../../mathematics/Analysis/FunctionalAnalysis/Section/Variant1c7408b3bce3ee717ba512c84509f2344d95a7a0184253ce8309db5e84479d44.lean/declarations/outclm-isuniformembedding--6499355324d307b69c91c04f.md) | 92 | `result-track:6499355324d307b69c91c04f9732f70d5698363994248722fd875b7ff08e7d79` |
| 11 | `theorem` | [outCLM_uniformContinuous](../../../../../mathematics/Analysis/FunctionalAnalysis/Section/Variant1c7408b3bce3ee717ba512c84509f2344d95a7a0184253ce8309db5e84479d44.lean/declarations/outclm-uniformcontinuous--f395a0ee5e69bb520602ffbb.md) | 96 | `result-track:f395a0ee5e69bb520602ffbb753ffb8d7c9e1dd5f8ce9157346634e670e32dca` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
