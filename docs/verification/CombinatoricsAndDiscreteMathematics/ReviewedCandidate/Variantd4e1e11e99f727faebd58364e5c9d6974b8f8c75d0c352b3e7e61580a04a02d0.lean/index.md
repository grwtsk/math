# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.ReviewedCandidate.Variantd4e1e11e99f727faebd58364e5c9d6974b8f8c75d0c352b3e7e61580a04a02d0

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0075c4b19dca2524d7b84372679864b27e8d4406",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/ReviewedCandidate/Variantd4e1e11e99f727faebd58364e5c9d6974b8f8c75d0c352b3e7e61580a04a02d0.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ReviewedCandidate/Variantd4e1e11e99f727faebd58364e5c9d6974b8f8c75d0c352b3e7e61580a04a02d0.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ReviewedCandidate/Variantd4e1e11e99f727faebd58364e5c9d6974b8f8c75d0c352b3e7e61580a04a02d0.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0075c4b19dca2524d7b84372679864b27e8d4406`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/ReviewedCandidate/Variantd4e1e11e99f727faebd58364e5c9d6974b8f8c75d0c352b3e7e61580a04a02d0.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/ReviewedCandidate/Variantd4e1e11e99f727faebd58364e5c9d6974b8f8c75d0c352b3e7e61580a04a02d0.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathematics.Discovery.Index` — import line 1; external provider; requires a separately pinned dependency.
- `Mathematics.Kernel.Model` — import line 2; external provider; requires a separately pinned dependency.
- `Mathematics.Concept.Assignment` — import line 3; external provider; requires a separately pinned dependency.
- `Mathematics.Concept.AssignmentElements.Assignment` — import line 5; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [CandidateAuthority](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ReviewedCandidate/Variantd4e1e11e99f727faebd58364e5c9d6974b8f8c75d0c352b3e7e61580a04a02d0.lean/declarations/candidateauthority--d1e3bfdbbe71b519f6bf707f.md) | 18 | `declaration-track:d1e3bfdbbe71b519f6bf707f1de3f8b9a995c458ed02f09e489a33ea31e05fdc` |
| 2 | `structure` | [KernelCandidate](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ReviewedCandidate/Variantd4e1e11e99f727faebd58364e5c9d6974b8f8c75d0c352b3e7e61580a04a02d0.lean/declarations/kernelcandidate--9603e53459b9dd3f12b38b5e.md) | 23 | `declaration-track:9603e53459b9dd3f12b38b5e760daa43eab775d16ed24545340ba8d5075cf5be` |
| 3 | `structure` | [ReviewedCandidate](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ReviewedCandidate/Variantd4e1e11e99f727faebd58364e5c9d6974b8f8c75d0c352b3e7e61580a04a02d0.lean/declarations/reviewedcandidate--235851b3ab78f67f170a8eb0.md) | 35 | `declaration-track:235851b3ab78f67f170a8eb05042ad9860e588e23c3edfbb91243a92ea52c697` |
| 4 | `def` | [ReviewedCandidate.toOwnedAssignment](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ReviewedCandidate/Variantd4e1e11e99f727faebd58364e5c9d6974b8f8c75d0c352b3e7e61580a04a02d0.lean/declarations/reviewedcandidate-toownedassignment--6b9266f8d4808f13bcaa89fb.md) | 46 | `declaration-track:6b9266f8d4808f13bcaa89fb0848199ed3f006c5f1d6bf910055285c8321be0e` |
| 5 | `theorem` | [candidate_authority_is_navigation](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ReviewedCandidate/Variantd4e1e11e99f727faebd58364e5c9d6974b8f8c75d0c352b3e7e61580a04a02d0.lean/declarations/candidate-authority-is-navigation--5e6f67374b9dfcb57d9a9a4d.md) | 58 | `result-track:5e6f67374b9dfcb57d9a9a4d62262ca6e2eb72aebcd5359a3c2ea09d631fcf58` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
