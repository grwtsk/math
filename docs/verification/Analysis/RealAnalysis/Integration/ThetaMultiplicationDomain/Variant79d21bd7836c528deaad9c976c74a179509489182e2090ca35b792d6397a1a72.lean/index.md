# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.ThetaMultiplicationDomain.Variant79d21bd7836c528deaad9c976c74a179509489182e2090ca35b792d6397a1a72

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "44cb1c2fa5bd7223764a01a0c7eb5206a27d5850",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/ThetaMultiplicationDomain/Variant79d21bd7836c528deaad9c976c74a179509489182e2090ca35b792d6397a1a72.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ThetaMultiplicationDomain/Variant79d21bd7836c528deaad9c976c74a179509489182e2090ca35b792d6397a1a72.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ThetaMultiplicationDomain/Variant79d21bd7836c528deaad9c976c74a179509489182e2090ca35b792d6397a1a72.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `44cb1c2fa5bd7223764a01a0c7eb5206a27d5850`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/ThetaMultiplicationDomain/Variant79d21bd7836c528deaad9c976c74a179509489182e2090ca35b792d6397a1a72.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/ThetaMultiplicationDomain/Variant79d21bd7836c528deaad9c976c74a179509489182e2090ca35b792d6397a1a72.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.InnerProductSpace.LinearPMap` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Function.L2Space` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Function.ContinuousMapDense` — import line 3; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [coordinateDomain](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ThetaMultiplicationDomain/Variant79d21bd7836c528deaad9c976c74a179509489182e2090ca35b792d6397a1a72.lean/declarations/coordinatedomain--cd9f31161cbe5d137d4c928f.md) | 23 | `declaration-track:cd9f31161cbe5d137d4c928fb70b0d6534d21a7aebce68685291b46f582b5488` |
| 2 | `theorem` | [mem_coordinateDomain](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ThetaMultiplicationDomain/Variant79d21bd7836c528deaad9c976c74a179509489182e2090ca35b792d6397a1a72.lean/declarations/mem-coordinatedomain--3535e6a54906374abf7ad3f4.md) | 49 | `result-track:3535e6a54906374abf7ad3f41779cea243fd0c258901496c91e1a6f3916c8d7b` |
| 3 | `def` | [coordinateMultiplication](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ThetaMultiplicationDomain/Variant79d21bd7836c528deaad9c976c74a179509489182e2090ca35b792d6397a1a72.lean/declarations/coordinatemultiplication--325539b8071360c9dd1ed4c3.md) | 53 | `declaration-track:325539b8071360c9dd1ed4c37d2a421323369d8820e28052f89f54ab15b8cde8` |
| 4 | `theorem` | [coordinateMultiplication_domain](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ThetaMultiplicationDomain/Variant79d21bd7836c528deaad9c976c74a179509489182e2090ca35b792d6397a1a72.lean/declarations/coordinatemultiplication-domain--ef53ad69648f2edfe73255d0.md) | 82 | `result-track:ef53ad69648f2edfe73255d0220ac9fc099c3fe43fdddb80f887a48666f504a3` |
| 5 | `theorem` | [coordinateMultiplication_apply_ae](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ThetaMultiplicationDomain/Variant79d21bd7836c528deaad9c976c74a179509489182e2090ca35b792d6397a1a72.lean/declarations/coordinatemultiplication-apply-ae--750d016b6bcfdb9084e72b50.md) | 86 | `result-track:750d016b6bcfdb9084e72b50714264440434e286e3919f21749e0c71b2a1a850` |
| 6 | `theorem` | [coordinateMultiplication_formalAdjoint](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ThetaMultiplicationDomain/Variant79d21bd7836c528deaad9c976c74a179509489182e2090ca35b792d6397a1a72.lean/declarations/coordinatemultiplication-formaladjoint--0330b4b01842b7c310fbf5fb.md) | 92 | `result-track:0330b4b01842b7c310fbf5fbbb952145d9c86e402ad9dd0e9bf0f6495ac61f54` |
| 7 | `theorem` | [coordinateMultiplication_maximal_domain](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ThetaMultiplicationDomain/Variant79d21bd7836c528deaad9c976c74a179509489182e2090ca35b792d6397a1a72.lean/declarations/coordinatemultiplication-maximal-domain--3775b23de473c3ea9eae9e73.md) | 103 | `result-track:3775b23de473c3ea9eae9e73bf745b7e336b8df80efbdce86ed4eb70957ec6de` |
| 8 | `theorem` | [norm_sq_eq_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ThetaMultiplicationDomain/Variant79d21bd7836c528deaad9c976c74a179509489182e2090ca35b792d6397a1a72.lean/declarations/norm-sq-eq-integral--cf236820c1b290e635ebadbd.md) | 109 | `result-track:cf236820c1b290e635ebadbd1302445eba1aa809f8eb164b3564fb8b450e6346` |
| 9 | `theorem` | [graph_norm_sq_eq_weighted_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ThetaMultiplicationDomain/Variant79d21bd7836c528deaad9c976c74a179509489182e2090ca35b792d6397a1a72.lean/declarations/graph-norm-sq-eq-weighted-integral--915a5210907d513204f7d40f.md) | 118 | `result-track:915a5210907d513204f7d40f6684eea08ef9296e38ffce76325e00d873ec4c36` |
| 10 | `theorem` | [mem_coordinateDomain_iff_weighted_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ThetaMultiplicationDomain/Variant79d21bd7836c528deaad9c976c74a179509489182e2090ca35b792d6397a1a72.lean/declarations/mem-coordinatedomain-iff-weighted-integrable--7414a7c1793ab8957d937610.md) | 137 | `result-track:7414a7c1793ab8957d9376102957de328d1f45cc7a9be625610d28ebd7950b66` |
| 11 | `def` | [graphMeasure](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ThetaMultiplicationDomain/Variant79d21bd7836c528deaad9c976c74a179509489182e2090ca35b792d6397a1a72.lean/declarations/graphmeasure--9119f5c6e2f5ee732f336690.md) | 161 | `declaration-track:9119f5c6e2f5ee732f3366909db1996007b688cba32c1c79ef97b74ea9644a36` |
| 12 | `theorem` | [graphMeasure_absolutelyContinuous](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ThetaMultiplicationDomain/Variant79d21bd7836c528deaad9c976c74a179509489182e2090ca35b792d6397a1a72.lean/declarations/graphmeasure-absolutelycontinuous--c315c8781ff09c63e51b8adc.md) | 164 | `result-track:c315c8781ff09c63e51b8adc3154048d92fa5d017b2285ece1a42eebf403562f` |
| 13 | `theorem` | [mem_coordinateDomain_iff_graph_memLp](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ThetaMultiplicationDomain/Variant79d21bd7836c528deaad9c976c74a179509489182e2090ca35b792d6397a1a72.lean/declarations/mem-coordinatedomain-iff-graph-memlp--a9c5c1cbc6ebc017d606f14c.md) | 168 | `result-track:a9c5c1cbc6ebc017d606f14cd53584dcf749d3c2386e7aa066832cf7354792dd` |
| 14 | `theorem` | [compactContinuous_mem_coordinateDomain](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ThetaMultiplicationDomain/Variant79d21bd7836c528deaad9c976c74a179509489182e2090ca35b792d6397a1a72.lean/declarations/compactcontinuous-mem-coordinatedomain--eec6f6debbbfd5930a18c7ed.md) | 179 | `result-track:eec6f6debbbfd5930a18c7ed7b20a38089239881f1bc337b620fb00cc068cf82` |
| 15 | `theorem` | [coordinateDomain_dense](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ThetaMultiplicationDomain/Variant79d21bd7836c528deaad9c976c74a179509489182e2090ca35b792d6397a1a72.lean/declarations/coordinatedomain-dense--134c69fe3ea2bb52574798af.md) | 191 | `result-track:134c69fe3ea2bb52574798af7ec1bdd4461f2206b7e9ef5fc0caf9491097216b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
