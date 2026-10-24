# Verification target: GRWTSK.Analysis.FunctionalAnalysis.OperatorData.Variant06e9e299b69be109d21c5c7578646c6b579124d19a4fcb6803ca049f128d1a00

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "bb1bf71f5587761a8487884ab2e3035004e01d6e",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/FunctionalAnalysis/OperatorData/Variant06e9e299b69be109d21c5c7578646c6b579124d19a4fcb6803ca049f128d1a00.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/FunctionalAnalysis/OperatorData/Variant06e9e299b69be109d21c5c7578646c6b579124d19a4fcb6803ca049f128d1a00.lean/index.md) · [Full source](../../../../../mathematics/Analysis/FunctionalAnalysis/OperatorData/Variant06e9e299b69be109d21c5c7578646c6b579124d19a4fcb6803ca049f128d1a00.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `bb1bf71f5587761a8487884ab2e3035004e01d6e`.

Source path: `GRWTSK/Analysis/FunctionalAnalysis/OperatorData/Variant06e9e299b69be109d21c5c7578646c6b579124d19a4fcb6803ca049f128d1a00.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/FunctionalAnalysis/OperatorData/Variant06e9e299b69be109d21c5c7578646c6b579124d19a4fcb6803ca049f128d1a00.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.InnerProductSpace.Basic` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [RHUnboundedOperator](../../../../../mathematics/Analysis/FunctionalAnalysis/OperatorData/Variant06e9e299b69be109d21c5c7578646c6b579124d19a4fcb6803ca049f128d1a00.lean/declarations/rhunboundedoperator--30535e141c1f2a7caa4dfc38.md) | 35 | `declaration-track:30535e141c1f2a7caa4dfc38e63f0b4bb967079435add78a6c8afa0d90679ee7` |
| 2 | `def` | [RHUnboundedOperator.apply](../../../../../mathematics/Analysis/FunctionalAnalysis/OperatorData/Variant06e9e299b69be109d21c5c7578646c6b579124d19a4fcb6803ca049f128d1a00.lean/declarations/rhunboundedoperator-apply--f99a9e2ebc56fc318c11cfdd.md) | 40 | `declaration-track:f99a9e2ebc56fc318c11cfdd64b61797a184ee4f4d6096b13e1cca873c79fc79` |
| 3 | `def` | [RHSpectrum](../../../../../mathematics/Analysis/FunctionalAnalysis/OperatorData/Variant06e9e299b69be109d21c5c7578646c6b579124d19a4fcb6803ca049f128d1a00.lean/declarations/rhspectrum--f993838c603f4e0b488cbc35.md) | 47 | `declaration-track:f993838c603f4e0b488cbc3571ed0fee3ddb1bae9db1e9698e50d51c8c3b2105` |
| 4 | `def` | [IsSelfAdjoint](../../../../../mathematics/Analysis/FunctionalAnalysis/OperatorData/Variant06e9e299b69be109d21c5c7578646c6b579124d19a4fcb6803ca049f128d1a00.lean/declarations/isselfadjoint--02531985700a944c7d75ae7a.md) | 53 | `declaration-track:02531985700a944c7d75ae7a23cf3f329836245996f1f9ce5b1b018af1242a94` |
| 5 | `def` | [HasCompactResolvent](../../../../../mathematics/Analysis/FunctionalAnalysis/OperatorData/Variant06e9e299b69be109d21c5c7578646c6b579124d19a4fcb6803ca049f128d1a00.lean/declarations/hascompactresolvent--e6d427992b1bc5943465f194.md) | 60 | `declaration-track:e6d427992b1bc5943465f194536194295a4f92463f038b518277ae434a200cc8` |
| 6 | `structure` | [RHOperatorData](../../../../../mathematics/Analysis/FunctionalAnalysis/OperatorData/Variant06e9e299b69be109d21c5c7578646c6b579124d19a4fcb6803ca049f128d1a00.lean/declarations/rhoperatordata--edf8798d8da0a60afb709dac.md) | 72 | `declaration-track:edf8798d8da0a60afb709dac730bb297b44058e8240341e68253d802f64addad` |
| 7 | `def` | [spectralParameter](../../../../../mathematics/Analysis/FunctionalAnalysis/OperatorData/Variant06e9e299b69be109d21c5c7578646c6b579124d19a4fcb6803ca049f128d1a00.lean/declarations/spectralparameter--5f35b2575e22805916db75e8.md) | 88 | `declaration-track:5f35b2575e22805916db75e826cf3ef556e34a20636174045d70de192af0e15c` |
| 8 | `theorem` | [operator_data_has_hilbert_type](../../../../../mathematics/Analysis/FunctionalAnalysis/OperatorData/Variant06e9e299b69be109d21c5c7578646c6b579124d19a4fcb6803ca049f128d1a00.lean/declarations/operator-data-has-hilbert-type--aa1188ca07b9905957f25d85.md) | 91 | `result-track:aa1188ca07b9905957f25d85a86f4377f2dc042bc9ee9c9d5365fe2eba0e671d` |
| 9 | `theorem` | [operator_data_domain_dense](../../../../../mathematics/Analysis/FunctionalAnalysis/OperatorData/Variant06e9e299b69be109d21c5c7578646c6b579124d19a4fcb6803ca049f128d1a00.lean/declarations/operator-data-domain-dense--27d1bb8790f6113924534b07.md) | 96 | `result-track:27d1bb8790f6113924534b07c2a411371f27e96520d5aab2a9b0ec0216524183` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
