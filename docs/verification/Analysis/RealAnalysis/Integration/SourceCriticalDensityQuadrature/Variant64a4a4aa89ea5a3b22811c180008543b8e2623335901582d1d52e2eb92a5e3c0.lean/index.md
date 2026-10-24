# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.SourceCriticalDensityQuadrature.Variant64a4a4aa89ea5a3b22811c180008543b8e2623335901582d1d52e2eb92a5e3c0

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e526a93ca99038de7cade09dcb12104173ffe0b8",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/SourceCriticalDensityQuadrature/Variant64a4a4aa89ea5a3b22811c180008543b8e2623335901582d1d52e2eb92a5e3c0.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceCriticalDensityQuadrature/Variant64a4a4aa89ea5a3b22811c180008543b8e2623335901582d1d52e2eb92a5e3c0.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceCriticalDensityQuadrature/Variant64a4a4aa89ea5a3b22811c180008543b8e2623335901582d1d52e2eb92a5e3c0.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e526a93ca99038de7cade09dcb12104173ffe0b8`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/SourceCriticalDensityQuadrature/Variant64a4a4aa89ea5a3b22811c180008543b8e2623335901582d1d52e2eb92a5e3c0.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/SourceCriticalDensityQuadrature/Variant64a4a4aa89ea5a3b22811c180008543b8e2623335901582d1d52e2eb92a5e3c0.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `SourceCriticalRemovedPrimeWork` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [criticalDensity](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceCriticalDensityQuadrature/Variant64a4a4aa89ea5a3b22811c180008543b8e2623335901582d1d52e2eb92a5e3c0.lean/declarations/criticaldensity--38c5b80e2bceea6284caf845.md) | 34 | `declaration-track:38c5b80e2bceea6284caf845a7c142aac52d5dedca1187d0b7ed94039352c2d3` |
| 2 | `def` | [criticalDensityPrefixDiscrepancy](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceCriticalDensityQuadrature/Variant64a4a4aa89ea5a3b22811c180008543b8e2623335901582d1d52e2eb92a5e3c0.lean/declarations/criticaldensityprefixdiscrepancy--0677b1f7b7c221854569e94b.md) | 37 | `declaration-track:0677b1f7b7c221854569e94b6924f3a012e8ede4572cea540b2e7bcf7efd8903` |
| 3 | `theorem` | [decay_continuous](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceCriticalDensityQuadrature/Variant64a4a4aa89ea5a3b22811c180008543b8e2623335901582d1d52e2eb92a5e3c0.lean/declarations/decay-continuous--f20a21c27318def3c40c07d4.md) | 40 | `result-track:f20a21c27318def3c40c07d47d0fb199e419917f73a79d27f5edafe3a0c89c1a` |
| 4 | `theorem` | [density_continuous](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceCriticalDensityQuadrature/Variant64a4a4aa89ea5a3b22811c180008543b8e2623335901582d1d52e2eb92a5e3c0.lean/declarations/density-continuous--dcf3c2fddd94709932886c70.md) | 44 | `result-track:dcf3c2fddd94709932886c7020df4a5f49da116af191ed17389411cbe1a1fd69` |
| 5 | `theorem` | [decay_hasDerivAt](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceCriticalDensityQuadrature/Variant64a4a4aa89ea5a3b22811c180008543b8e2623335901582d1d52e2eb92a5e3c0.lean/declarations/decay-hasderivat--c374efeeae0b0dba64af197e.md) | 47 | `result-track:c374efeeae0b0dba64af197e3995c071e128f69e70a96149150776ac60cbd7df` |
| 6 | `theorem` | [criticalDensity_mem_Icc](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceCriticalDensityQuadrature/Variant64a4a4aa89ea5a3b22811c180008543b8e2623335901582d1d52e2eb92a5e3c0.lean/declarations/criticaldensity-mem-icc--7d6ff7a806fadf7b94544fe4.md) | 58 | `result-track:7d6ff7a806fadf7b94544fe4e5bd4590d0fb186b447501882af874bccecbbfff` |
| 7 | `theorem` | [criticalDensity_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceCriticalDensityQuadrature/Variant64a4a4aa89ea5a3b22811c180008543b8e2623335901582d1d52e2eb92a5e3c0.lean/declarations/criticaldensity-integral--c72c244467bb95819c031bca.md) | 69 | `result-track:c72c244467bb95819c031bcaee92daca4d0c1885cc2f460b2a238b1daeb645b9` |
| 8 | `theorem` | [criticalDensityPrefixDiscrepancy_eq](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceCriticalDensityQuadrature/Variant64a4a4aa89ea5a3b22811c180008543b8e2623335901582d1d52e2eb92a5e3c0.lean/declarations/criticaldensityprefixdiscrepancy-eq--9e47b3fdbca63db4c3b70032.md) | 81 | `result-track:9e47b3fdbca63db4c3b700327e96b2cd93d9d8481786acd104d30092b464433c` |
| 9 | `theorem` | [criticalDensity_integral_pos](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceCriticalDensityQuadrature/Variant64a4a4aa89ea5a3b22811c180008543b8e2623335901582d1d52e2eb92a5e3c0.lean/declarations/criticaldensity-integral-pos--59c058a4c6afa606f65d2ccf.md) | 88 | `result-track:59c058a4c6afa606f65d2ccf68bc42035cb730cf0e39d5fc199a1a40f83b803c` |
| 10 | `theorem` | [criticalDensity_mass_lt_raw_length](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceCriticalDensityQuadrature/Variant64a4a4aa89ea5a3b22811c180008543b8e2623335901582d1d52e2eb92a5e3c0.lean/declarations/criticaldensity-mass-lt-raw-length--ebf0863c9eaf4a5e4ad77461.md) | 101 | `result-track:ebf0863c9eaf4a5e4ad774617f402558f3e819a0f3269def4b3c6bcb1a04e97c` |
| 11 | `theorem` | [criticalDensity_weighted_pairedTailTest](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceCriticalDensityQuadrature/Variant64a4a4aa89ea5a3b22811c180008543b8e2623335901582d1d52e2eb92a5e3c0.lean/declarations/criticaldensity-weighted-pairedtailtest--a362760007fc88c9b9eacfee.md) | 111 | `result-track:a362760007fc88c9b9eacfee26901ca8640c89c0805022becef56ca007c83885` |
| 12 | `theorem` | [criticalDensity_quadrature_eq_full_drift](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceCriticalDensityQuadrature/Variant64a4a4aa89ea5a3b22811c180008543b8e2623335901582d1d52e2eb92a5e3c0.lean/declarations/criticaldensity-quadrature-eq-full-drift--ddbd7283b459f9e5803d3066.md) | 165 | `result-track:ddbd7283b459f9e5803d30666d63b35dc74ecc63a74c8fcf41d14682b78a28c6` |
| 13 | `theorem` | [criticalRemovedPairedWork_eq_density_quadrature](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceCriticalDensityQuadrature/Variant64a4a4aa89ea5a3b22811c180008543b8e2623335901582d1d52e2eb92a5e3c0.lean/declarations/criticalremovedpairedwork-eq-density-quadrature--6c056455b0d1be283d6f44c7.md) | 186 | `result-track:6c056455b0d1be283d6f44c71a9a321fe5ff6ba0e98e4f51b91f762951b7e2d3` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
