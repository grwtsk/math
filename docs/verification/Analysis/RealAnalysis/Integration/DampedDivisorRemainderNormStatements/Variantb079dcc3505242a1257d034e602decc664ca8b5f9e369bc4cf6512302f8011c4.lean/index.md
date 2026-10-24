# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.DampedDivisorRemainderNormStatements.Variantb079dcc3505242a1257d034e602decc664ca8b5f9e369bc4cf6512302f8011c4

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "40904070380ae1083ed40656b7f5367bd001ffe3",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/DampedDivisorRemainderNormStatements/Variantb079dcc3505242a1257d034e602decc664ca8b5f9e369bc4cf6512302f8011c4.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/DampedDivisorRemainderNormStatements/Variantb079dcc3505242a1257d034e602decc664ca8b5f9e369bc4cf6512302f8011c4.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/DampedDivisorRemainderNormStatements/Variantb079dcc3505242a1257d034e602decc664ca8b5f9e369bc4cf6512302f8011c4.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `40904070380ae1083ed40656b7f5367bd001ffe3`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/DampedDivisorRemainderNormStatements/Variantb079dcc3505242a1257d034e602decc664ca8b5f9e369bc4cf6512302f8011c4.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/DampedDivisorRemainderNormStatements/Variantb079dcc3505242a1257d034e602decc664ca8b5f9e369bc4cf6512302f8011c4.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.SourceComparison.DampedDivisorTaylor` — import line 1; external provider; requires a separately pinned dependency.
- `FormalResearch.RiemannHypothesis.SourceComparison.SourceWeightedMultiplier` — import line 2; external provider; requires a separately pinned dependency.
- `FormalResearch.RiemannHypothesis.SourceComparison.FullLinePlancherel` — import line 3; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Integrals.Basic` — import line 4; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [divisorRemainderCore](../../../../../../mathematics/Analysis/RealAnalysis/Integration/DampedDivisorRemainderNormStatements/Variantb079dcc3505242a1257d034e602decc664ca8b5f9e369bc4cf6512302f8011c4.lean/declarations/divisorremaindercore--273c7e9863e915e352b3a8f3.md) | 14 | `declaration-track:273c7e9863e915e352b3a8f3e3e8886ab7d105cdb7347a9672b7f61951464245` |
| 2 | `theorem` | [divisorRemainderCore_measurable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/DampedDivisorRemainderNormStatements/Variantb079dcc3505242a1257d034e602decc664ca8b5f9e369bc4cf6512302f8011c4.lean/declarations/divisorremaindercore-measurable--82a9297dd85902963462edfb.md) | 20 | `result-track:82a9297dd85902963462edfb652a411fbbaeae00cd8e53126fd389b54cf7c630` |
| 3 | `theorem` | [divisorRemainderCore_sq_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/DampedDivisorRemainderNormStatements/Variantb079dcc3505242a1257d034e602decc664ca8b5f9e369bc4cf6512302f8011c4.lean/declarations/divisorremaindercore-sq-le--d12766ef66c2b60004bae3b0.md) | 32 | `result-track:d12766ef66c2b60004bae3b017d59d9767d962758988c022455910c8a767585f` |
| 4 | `theorem` | [remainderMajorant_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/DampedDivisorRemainderNormStatements/Variantb079dcc3505242a1257d034e602decc664ca8b5f9e369bc4cf6512302f8011c4.lean/declarations/remaindermajorant-integrable--6ea92746d931070dadb630c4.md) | 61 | `result-track:6ea92746d931070dadb630c43d3cd05a34415902ee4ef6518f110465733023ee` |
| 5 | `theorem` | [divisorRemainderCore_memLp](../../../../../../mathematics/Analysis/RealAnalysis/Integration/DampedDivisorRemainderNormStatements/Variantb079dcc3505242a1257d034e602decc664ca8b5f9e369bc4cf6512302f8011c4.lean/declarations/divisorremaindercore-memlp--eafb1fa47940201783afb218.md) | 68 | `result-track:eafb1fa47940201783afb21809e31cff974a06d9f9d2e328fb6fbb98c2ec2e94` |
| 6 | `def` | [divisorRemainderVector](../../../../../../mathematics/Analysis/RealAnalysis/Integration/DampedDivisorRemainderNormStatements/Variantb079dcc3505242a1257d034e602decc664ca8b5f9e369bc4cf6512302f8011c4.lean/declarations/divisorremaindervector--2783d05457632e75780a43ee.md) | 79 | `declaration-track:2783d05457632e75780a43ee228211eac0f3e9678e21cad1d84df1a47cdd31e5` |
| 7 | `theorem` | [divisorRemainderVector_norm_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/DampedDivisorRemainderNormStatements/Variantb079dcc3505242a1257d034e602decc664ca8b5f9e369bc4cf6512302f8011c4.lean/declarations/divisorremaindervector-norm-le--aea2b22273445828db0fc3a8.md) | 83 | `result-track:aea2b22273445828db0fc3a825198dde144eb12f68b6bdac117c0e9f36586866` |
| 8 | `theorem` | [sourceMultiplier_divisorRemainder_norm_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/DampedDivisorRemainderNormStatements/Variantb079dcc3505242a1257d034e602decc664ca8b5f9e369bc4cf6512302f8011c4.lean/declarations/sourcemultiplier-divisorremainder-norm-le--5e7cccc00a06ddee1fcab864.md) | 106 | `result-track:5e7cccc00a06ddee1fcab86404ef5fa2880b528390f773f2ad1ebf3b212e03f6` |
| 9 | `example` | [(anonymous)](../../../../../../mathematics/Analysis/RealAnalysis/Integration/DampedDivisorRemainderNormStatements/Variantb079dcc3505242a1257d034e602decc664ca8b5f9e369bc4cf6512302f8011c4.lean/declarations/example--7c37bdfe9fa8440bb2be3da3.md) | 122 | `declaration-track:7c37bdfe9fa8440bb2be3da3ee1c2bdb3353562a8c75b6b83bb7905c4301ccb0` |
| 10 | `example` | [(anonymous)](../../../../../../mathematics/Analysis/RealAnalysis/Integration/DampedDivisorRemainderNormStatements/Variantb079dcc3505242a1257d034e602decc664ca8b5f9e369bc4cf6512302f8011c4.lean/declarations/example--74ada9a817a30bd8a17704a9.md) | 128 | `declaration-track:74ada9a817a30bd8a17704a9b0a85cc277e3eeb8f0c844804e76f9a2a12de70b` |
| 11 | `example` | [(anonymous)](../../../../../../mathematics/Analysis/RealAnalysis/Integration/DampedDivisorRemainderNormStatements/Variantb079dcc3505242a1257d034e602decc664ca8b5f9e369bc4cf6512302f8011c4.lean/declarations/example--e3fcfa3b5e82920a7f8f4ddc.md) | 132 | `declaration-track:e3fcfa3b5e82920a7f8f4ddc3b97c0e8fbc43280fc3da50af338b1cc58c3534a` |
| 12 | `example` | [(anonymous)](../../../../../../mathematics/Analysis/RealAnalysis/Integration/DampedDivisorRemainderNormStatements/Variantb079dcc3505242a1257d034e602decc664ca8b5f9e369bc4cf6512302f8011c4.lean/declarations/example--088bb8c6fc5cd3236142a9cb.md) | 136 | `declaration-track:088bb8c6fc5cd3236142a9cb68b65bd8f552430d411d305bc294458bf80f4f58` |
| 13 | `example` | [(anonymous)](../../../../../../mathematics/Analysis/RealAnalysis/Integration/DampedDivisorRemainderNormStatements/Variantb079dcc3505242a1257d034e602decc664ca8b5f9e369bc4cf6512302f8011c4.lean/declarations/example--4a4250f1d9570f82c6e1f208.md) | 140 | `declaration-track:4a4250f1d9570f82c6e1f20881cd3137e2af42888706104322aeb9e1e4cf1699` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
