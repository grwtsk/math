# Verification target: GRWTSK.Analysis.FunctionalAnalysis.OperatorData.Variant58a621a47f2ed325e723c711e4e405ea356bb335a8ee447a9d26724f86cf7c9b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f9def97b3233b5a39518d98c809ebe72c52975e5",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/FunctionalAnalysis/OperatorData/Variant58a621a47f2ed325e723c711e4e405ea356bb335a8ee447a9d26724f86cf7c9b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/FunctionalAnalysis/OperatorData/Variant58a621a47f2ed325e723c711e4e405ea356bb335a8ee447a9d26724f86cf7c9b.lean/index.md) · [Full source](../../../../../mathematics/Analysis/FunctionalAnalysis/OperatorData/Variant58a621a47f2ed325e723c711e4e405ea356bb335a8ee447a9d26724f86cf7c9b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f9def97b3233b5a39518d98c809ebe72c52975e5`.

Source path: `GRWTSK/Analysis/FunctionalAnalysis/OperatorData/Variant58a621a47f2ed325e723c711e4e405ea356bb335a8ee447a9d26724f86cf7c9b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/FunctionalAnalysis/OperatorData/Variant58a621a47f2ed325e723c711e4e405ea356bb335a8ee447a9d26724f86cf7c9b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.InnerProductSpace.Basic` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [RHUnboundedOperator](../../../../../mathematics/Analysis/FunctionalAnalysis/OperatorData/Variant58a621a47f2ed325e723c711e4e405ea356bb335a8ee447a9d26724f86cf7c9b.lean/declarations/rhunboundedoperator--6b60b2384785daa35b661395.md) | 27 | `declaration-track:6b60b2384785daa35b661395217e3f8b09fab5d67ed481197057298c454b3d9d` |
| 2 | `def` | [RHUnboundedOperator.apply](../../../../../mathematics/Analysis/FunctionalAnalysis/OperatorData/Variant58a621a47f2ed325e723c711e4e405ea356bb335a8ee447a9d26724f86cf7c9b.lean/declarations/rhunboundedoperator-apply--3521df340b60a729aa54b2d7.md) | 32 | `declaration-track:3521df340b60a729aa54b2d70a9e1c4a5d03e392e6b72bd1e8d62f51312cd470` |
| 3 | `def` | [RHSpectrum](../../../../../mathematics/Analysis/FunctionalAnalysis/OperatorData/Variant58a621a47f2ed325e723c711e4e405ea356bb335a8ee447a9d26724f86cf7c9b.lean/declarations/rhspectrum--598469d3f5708e0025232360.md) | 39 | `declaration-track:598469d3f5708e0025232360b90906c2f375d09558c1a083cf6559018e15634f` |
| 4 | `def` | [IsSelfAdjoint](../../../../../mathematics/Analysis/FunctionalAnalysis/OperatorData/Variant58a621a47f2ed325e723c711e4e405ea356bb335a8ee447a9d26724f86cf7c9b.lean/declarations/isselfadjoint--c9ab86efa16173f6b754cdc8.md) | 45 | `declaration-track:c9ab86efa16173f6b754cdc803a084ad55a699d22a87dc83620bd7ae168b4df8` |
| 5 | `def` | [HasCompactResolvent](../../../../../mathematics/Analysis/FunctionalAnalysis/OperatorData/Variant58a621a47f2ed325e723c711e4e405ea356bb335a8ee447a9d26724f86cf7c9b.lean/declarations/hascompactresolvent--121059b70aa3b36a88928a63.md) | 52 | `declaration-track:121059b70aa3b36a88928a638fabf2e262c7f3f22998f5fe899365b58b054c86` |
| 6 | `structure` | [RHOperatorData](../../../../../mathematics/Analysis/FunctionalAnalysis/OperatorData/Variant58a621a47f2ed325e723c711e4e405ea356bb335a8ee447a9d26724f86cf7c9b.lean/declarations/rhoperatordata--69b6a1dfd20c4dfac19231c9.md) | 64 | `declaration-track:69b6a1dfd20c4dfac19231c94fa0bcf3ba8436cd333b27a5d01308a40ba8f80c` |
| 7 | `def` | [spectralParameter](../../../../../mathematics/Analysis/FunctionalAnalysis/OperatorData/Variant58a621a47f2ed325e723c711e4e405ea356bb335a8ee447a9d26724f86cf7c9b.lean/declarations/spectralparameter--b9a9205465075f515ad0ba2d.md) | 80 | `declaration-track:b9a9205465075f515ad0ba2d5bce7a852f8adce24b83f74c49d8593005e3a4f4` |
| 8 | `theorem` | [operator_data_has_hilbert_type](../../../../../mathematics/Analysis/FunctionalAnalysis/OperatorData/Variant58a621a47f2ed325e723c711e4e405ea356bb335a8ee447a9d26724f86cf7c9b.lean/declarations/operator-data-has-hilbert-type--246a2edcb572f2d9566084fa.md) | 83 | `result-track:246a2edcb572f2d9566084fa6674a9452f85f171c2404aad749321e26357e934` |
| 9 | `theorem` | [operator_data_domain_dense](../../../../../mathematics/Analysis/FunctionalAnalysis/OperatorData/Variant58a621a47f2ed325e723c711e4e405ea356bb335a8ee447a9d26724f86cf7c9b.lean/declarations/operator-data-domain-dense--0ee12f8f2fb621f61943df4a.md) | 88 | `result-track:0ee12f8f2fb621f61943df4a459b19fffb56712b05c912f639392b3c68c6d30a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
