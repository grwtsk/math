# Verification target: GRWTSK.Analysis.FunctionalAnalysis.Correspondence.Variantd67f1ebce0561f9817a91b7ddb8b20de80a828ba04b792e787f89e2abaafd955

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e1068e8751ca0dfc5f2c890eb667160b03c501c9",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/FunctionalAnalysis/Correspondence/Variantd67f1ebce0561f9817a91b7ddb8b20de80a828ba04b792e787f89e2abaafd955.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/FunctionalAnalysis/Correspondence/Variantd67f1ebce0561f9817a91b7ddb8b20de80a828ba04b792e787f89e2abaafd955.lean/index.md) · [Full source](../../../../../mathematics/Analysis/FunctionalAnalysis/Correspondence/Variantd67f1ebce0561f9817a91b7ddb8b20de80a828ba04b792e787f89e2abaafd955.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e1068e8751ca0dfc5f2c890eb667160b03c501c9`.

Source path: `GRWTSK/Analysis/FunctionalAnalysis/Correspondence/Variantd67f1ebce0561f9817a91b7ddb8b20de80a828ba04b792e787f89e2abaafd955.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/FunctionalAnalysis/Correspondence/Variantd67f1ebce0561f9817a91b7ddb8b20de80a828ba04b792e787f89e2abaafd955.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathematics.RHIsolation.SpectralCandidate` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [LocalMatchStatus](../../../../../mathematics/Analysis/FunctionalAnalysis/Correspondence/Variantd67f1ebce0561f9817a91b7ddb8b20de80a828ba04b792e787f89e2abaafd955.lean/declarations/localmatchstatus--07ade527a32311bd2111c340.md) | 20 | `declaration-track:07ade527a32311bd2111c340c4335f1e524c5e77fdd728f4a9c56db6314cb207` |
| 2 | `structure` | [LocalMatchAssessment](../../../../../mathematics/Analysis/FunctionalAnalysis/Correspondence/Variantd67f1ebce0561f9817a91b7ddb8b20de80a828ba04b792e787f89e2abaafd955.lean/declarations/localmatchassessment--4c25f1d4713daa1ab188c19f.md) | 29 | `declaration-track:4c25f1d4713daa1ab188c19fafe470d425892e370e574761c21bc292bbe54f07` |
| 3 | `structure` | [LocalCorrespondenceCertificate](../../../../../mathematics/Analysis/FunctionalAnalysis/Correspondence/Variantd67f1ebce0561f9817a91b7ddb8b20de80a828ba04b792e787f89e2abaafd955.lean/declarations/localcorrespondencecertificate--0541c40306483eeef7fca6b5.md) | 39 | `declaration-track:0541c40306483eeef7fca6b532eaf4591823c85e7b3eb7250d5606bb4225398a` |
| 4 | `theorem` | [certifiedLocalCorrespondence_preservesMultiplicity](../../../../../mathematics/Analysis/FunctionalAnalysis/Correspondence/Variantd67f1ebce0561f9817a91b7ddb8b20de80a828ba04b792e787f89e2abaafd955.lean/declarations/certifiedlocalcorrespondence-preservesmultiplicity--12fa071ce0235b52b3fb83ec.md) | 67 | `result-track:12fa071ce0235b52b3fb83eca51e3cdd1b791865d58e4506c88fff5e8c4d3fa2` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
