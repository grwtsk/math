# Verification target: GRWTSK.Analysis.PosPart.Variantb8fefa0f7bfbfd5af450238e2a0ed071d9d6054492089eda4a4d42006b71d404

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4e46a0447ea93d25a2f095ded5de6c98e071731a",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/PosPart/Variantb8fefa0f7bfbfd5af450238e2a0ed071d9d6054492089eda4a4d42006b71d404.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Analysis/PosPart/Variantb8fefa0f7bfbfd5af450238e2a0ed071d9d6054492089eda4a4d42006b71d404.lean/index.md) · [Full source](../../../../mathematics/Analysis/PosPart/Variantb8fefa0f7bfbfd5af450238e2a0ed071d9d6054492089eda4a4d42006b71d404.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4e46a0447ea93d25a2f095ded5de6c98e071731a`.

Source path: `GRWTSK/Analysis/PosPart/Variantb8fefa0f7bfbfd5af450238e2a0ed071d9d6054492089eda4a4d42006b71d404.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/PosPart/Variantb8fefa0f7bfbfd5af450238e2a0ed071d9d6054492089eda4a4d42006b71d404.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.CStarAlgebra.ContinuousFunctionalCalculus.Range` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.CStarAlgebra.Hom` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [realToRCLike_posPart_negPart](../../../../mathematics/Analysis/PosPart/Variantb8fefa0f7bfbfd5af450238e2a0ed071d9d6054492089eda4a4d42006b71d404.lean/declarations/realtorclike-pospart-negpart--f96b8ca062b70d5fbeb87666.md) | 28 | `result-track:f96b8ca062b70d5fbeb87666ab216cd89889ea98647fcb80a4a803bb72eaabc0` |
| 2 | `lemma` | [realToRCLike_posPart](../../../../mathematics/Analysis/PosPart/Variantb8fefa0f7bfbfd5af450238e2a0ed071d9d6054492089eda4a4d42006b71d404.lean/declarations/realtorclike-pospart--5f002d749123fa61bf6a6279.md) | 41 | `result-track:5f002d749123fa61bf6a6279df1e6a9050737e81474d2240123c6a6c5ddeed89` |
| 3 | `lemma` | [realToRCLike_negPart](../../../../mathematics/Analysis/PosPart/Variantb8fefa0f7bfbfd5af450238e2a0ed071d9d6054492089eda4a4d42006b71d404.lean/declarations/realtorclike-negpart--8fce4f4962ee1e85d5679bad.md) | 44 | `result-track:8fce4f4962ee1e85d5679bad616eba7e1b11eda0b82d6505033bc2dfda0f1199` |
| 4 | `lemma` | [posPart_mono](../../../../mathematics/Analysis/PosPart/Variantb8fefa0f7bfbfd5af450238e2a0ed071d9d6054492089eda4a4d42006b71d404.lean/declarations/pospart-mono--75512f84857e544e536da01c.md) | 57 | `result-track:75512f84857e544e536da01cf7454e7a785fdeae8f43a38229132ddb43ea2083` |
| 5 | `lemma` | [negPart_anti](../../../../mathematics/Analysis/PosPart/Variantb8fefa0f7bfbfd5af450238e2a0ed071d9d6054492089eda4a4d42006b71d404.lean/declarations/negpart-anti--9993738f8663d32a7dec3013.md) | 75 | `result-track:9993738f8663d32a7dec30131fdfb6250c38e93cae81b1d543189c6064be8e07` |
| 6 | `lemma` | [Commute.posPart_mono](../../../../mathematics/Analysis/PosPart/Variantb8fefa0f7bfbfd5af450238e2a0ed071d9d6054492089eda4a4d42006b71d404.lean/declarations/commute-pospart-mono--d36e75b281160e4edaae89c5.md) | 89 | `result-track:d36e75b281160e4edaae89c56cf23969539d963351fbc0fb13b0ad9e50e97d57` |
| 7 | `lemma` | [Commute.negPart_anti](../../../../mathematics/Analysis/PosPart/Variantb8fefa0f7bfbfd5af450238e2a0ed071d9d6054492089eda4a4d42006b71d404.lean/declarations/commute-negpart-anti--3e6d72ada8f105ad7f880f84.md) | 105 | `result-track:3e6d72ada8f105ad7f880f841a0b572f6a5bdfbe9d78ec81a2b07fbe1aa51d08` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
