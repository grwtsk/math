# Verification target: GRWTSK.Analysis.FunctionalAnalysis.ContinuousAlgEquiv.Variant1ec17ba432ddc083403e32726475eba9ab34a6190700e5bd31aea5f6a5d21156

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9260b859824c0b6c039ba02c62833f0749769222",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/FunctionalAnalysis/ContinuousAlgEquiv/Variant1ec17ba432ddc083403e32726475eba9ab34a6190700e5bd31aea5f6a5d21156.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/FunctionalAnalysis/ContinuousAlgEquiv/Variant1ec17ba432ddc083403e32726475eba9ab34a6190700e5bd31aea5f6a5d21156.lean/index.md) · [Full source](../../../../../mathematics/Analysis/FunctionalAnalysis/ContinuousAlgEquiv/Variant1ec17ba432ddc083403e32726475eba9ab34a6190700e5bd31aea5f6a5d21156.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9260b859824c0b6c039ba02c62833f0749769222`.

Source path: `GRWTSK/Analysis/FunctionalAnalysis/ContinuousAlgEquiv/Variant1ec17ba432ddc083403e32726475eba9ab34a6190700e5bd31aea5f6a5d21156.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/FunctionalAnalysis/ContinuousAlgEquiv/Variant1ec17ba432ddc083403e32726475eba9ab34a6190700e5bd31aea5f6a5d21156.lean.json)

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
| 1 | `theorem` | [ContinuousAlgEquiv.eq_continuousLinearEquivConjContinuousAlgEquiv](../../../../../mathematics/Analysis/FunctionalAnalysis/ContinuousAlgEquiv/Variant1ec17ba432ddc083403e32726475eba9ab34a6190700e5bd31aea5f6a5d21156.lean/declarations/continuousalgequiv-eq-continuouslinearequivconjcontinuousalgequiv--d755f74fe2c15756df14cdab.md) | 47 | `result-track:d755f74fe2c15756df14cdaba708f7938f6b9239f9aafe8de4d1e2b4024e411c` |
| 2 | `theorem` | [ContinuousLinearEquiv.conjContinuousAlgEquiv_surjective](../../../../../mathematics/Analysis/FunctionalAnalysis/ContinuousAlgEquiv/Variant1ec17ba432ddc083403e32726475eba9ab34a6190700e5bd31aea5f6a5d21156.lean/declarations/continuouslinearequiv-conjcontinuousalgequiv-surjective--8a12062c3d94e7a71fc533da.md) | 102 | `result-track:8a12062c3d94e7a71fc533da5124f4c1dec1f9b5e613b9d4156d168eeca2e6ff` |
| 3 | `abbrev` | [auxContinuousLinearEquiv](../../../../../mathematics/Analysis/FunctionalAnalysis/ContinuousAlgEquiv/Variant1ec17ba432ddc083403e32726475eba9ab34a6190700e5bd31aea5f6a5d21156.lean/declarations/auxcontinuouslinearequiv--24359fc0a95b7a729dc977e9.md) | 119 | `declaration-track:24359fc0a95b7a729dc977e92eb23b52243494c9b46f56bf1e6d217f849b6b6b` |
| 4 | `theorem` | [coe_auxContinuousLinearEquiv](../../../../../mathematics/Analysis/FunctionalAnalysis/ContinuousAlgEquiv/Variant1ec17ba432ddc083403e32726475eba9ab34a6190700e5bd31aea5f6a5d21156.lean/declarations/coe-auxcontinuouslinearequiv--68d704e3070a87375d0b04c9.md) | 132 | `result-track:68d704e3070a87375d0b04c98dce617c914628e593da2a2cf72dae5f23085c8e` |
| 5 | `abbrev` | [auxIsometry](../../../../../mathematics/Analysis/FunctionalAnalysis/ContinuousAlgEquiv/Variant1ec17ba432ddc083403e32726475eba9ab34a6190700e5bd31aea5f6a5d21156.lean/declarations/auxisometry--a927b2d082b507b186695314.md) | 138 | `declaration-track:a927b2d082b507b18669531495de621ee87d6c2dfded0d23c388d8dc48457d8e` |
| 6 | `theorem` | [coe_auxIsometry](../../../../../mathematics/Analysis/FunctionalAnalysis/ContinuousAlgEquiv/Variant1ec17ba432ddc083403e32726475eba9ab34a6190700e5bd31aea5f6a5d21156.lean/declarations/coe-auxisometry--0bb1e843085c2e95797a1fdf.md) | 148 | `result-track:0bb1e843085c2e95797a1fdfe45e01b7456f7362fb4302b77dc6312753370c08` |
| 7 | `theorem` | [coe_symm_auxIsometry](../../../../../mathematics/Analysis/FunctionalAnalysis/ContinuousAlgEquiv/Variant1ec17ba432ddc083403e32726475eba9ab34a6190700e5bd31aea5f6a5d21156.lean/declarations/coe-symm-auxisometry--f3beffac08ef67cca0b7e4b2.md) | 152 | `result-track:f3beffac08ef67cca0b7e4b2738676a7f4b85cadd4811d433fc9acab06b33a12` |
| 8 | `theorem` | [StarAlgEquiv.eq_linearIsometryEquivConjStarAlgEquiv](../../../../../mathematics/Analysis/FunctionalAnalysis/ContinuousAlgEquiv/Variant1ec17ba432ddc083403e32726475eba9ab34a6190700e5bd31aea5f6a5d21156.lean/declarations/staralgequiv-eq-linearisometryequivconjstaralgequiv--606cc97c3dd9fab309f9e3c1.md) | 169 | `result-track:606cc97c3dd9fab309f9e3c130b419e08b635aaaa55a3a75a8c50f1c7de22d21` |
| 9 | `instance` | [(anonymous)](../../../../../mathematics/Analysis/FunctionalAnalysis/ContinuousAlgEquiv/Variant1ec17ba432ddc083403e32726475eba9ab34a6190700e5bd31aea5f6a5d21156.lean/declarations/instance--336a6955a62f471cbc9e1a4d.md) | 241 | `declaration-track:336a6955a62f471cbc9e1a4d5c20afc3ee32b5f8d8996516e74d8b771ff78544` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
