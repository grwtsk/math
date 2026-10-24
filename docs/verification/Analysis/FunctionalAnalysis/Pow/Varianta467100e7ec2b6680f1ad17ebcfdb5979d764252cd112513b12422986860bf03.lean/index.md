# Verification target: GRWTSK.Analysis.FunctionalAnalysis.Pow.Varianta467100e7ec2b6680f1ad17ebcfdb5979d764252cd112513b12422986860bf03

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4b5bad2ebfef011f4dc101ac6fa8c19a5233ddb3",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/FunctionalAnalysis/Pow/Varianta467100e7ec2b6680f1ad17ebcfdb5979d764252cd112513b12422986860bf03.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/FunctionalAnalysis/Pow/Varianta467100e7ec2b6680f1ad17ebcfdb5979d764252cd112513b12422986860bf03.lean/index.md) · [Full source](../../../../../mathematics/Analysis/FunctionalAnalysis/Pow/Varianta467100e7ec2b6680f1ad17ebcfdb5979d764252cd112513b12422986860bf03.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4b5bad2ebfef011f4dc101ac6fa8c19a5233ddb3`.

Source path: `GRWTSK/Analysis/FunctionalAnalysis/Pow/Varianta467100e7ec2b6680f1ad17ebcfdb5979d764252cd112513b12422986860bf03.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/FunctionalAnalysis/Pow/Varianta467100e7ec2b6680f1ad17ebcfdb5979d764252cd112513b12422986860bf03.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Convex.SpecificFunctions.Basic` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Pow.NNReal` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `macro_rules` | [(anonymous)](../../../../../mathematics/Analysis/FunctionalAnalysis/Pow/Varianta467100e7ec2b6680f1ad17ebcfdb5979d764252cd112513b12422986860bf03.lean/declarations/macro-rules--4dd5d391f93bee2034e5d8f6.md) | 38 | `declaration-track:4dd5d391f93bee2034e5d8f69a8d32d402d4ec3744b03649e63c19d08c8d69d8` |
| 2 | `lemma` | [strictConcaveOn_rpow](../../../../../mathematics/Analysis/FunctionalAnalysis/Pow/Varianta467100e7ec2b6680f1ad17ebcfdb5979d764252cd112513b12422986860bf03.lean/declarations/strictconcaveon-rpow--456664e5a82ff91c05a7b4cc.md) | 44 | `result-track:456664e5a82ff91c05a7b4cc0e47a46c879f939736a69689403eb8e8c539a19c` |
| 3 | `lemma` | [concaveOn_rpow](../../../../../mathematics/Analysis/FunctionalAnalysis/Pow/Varianta467100e7ec2b6680f1ad17ebcfdb5979d764252cd112513b12422986860bf03.lean/declarations/concaveon-rpow--f73b0258d3f1e2cbea2f7650.md) | 58 | `result-track:f73b0258d3f1e2cbea2f7650bf312182f3b458f50a3bbf41f7d5a04d5d8f7e41` |
| 4 | `lemma` | [strictConcaveOn_sqrt](../../../../../mathematics/Analysis/FunctionalAnalysis/Pow/Varianta467100e7ec2b6680f1ad17ebcfdb5979d764252cd112513b12422986860bf03.lean/declarations/strictconcaveon-sqrt--4ad801c3b4a25e5e35aab16b.md) | 70 | `result-track:4ad801c3b4a25e5e35aab16b45f35718fe308067e408f9fb8c56896688dd568d` |
| 5 | `lemma` | [strictConcaveOn_rpow](../../../../../mathematics/Analysis/FunctionalAnalysis/Pow/Varianta467100e7ec2b6680f1ad17ebcfdb5979d764252cd112513b12422986860bf03.lean/declarations/strictconcaveon-rpow--3e42bde06393eab46099d8b3.md) | 82 | `result-track:3e42bde06393eab46099d8b3e94bd722d937214ec4f4534c950b3e924fb2f357` |
| 6 | `lemma` | [concaveOn_rpow](../../../../../mathematics/Analysis/FunctionalAnalysis/Pow/Varianta467100e7ec2b6680f1ad17ebcfdb5979d764252cd112513b12422986860bf03.lean/declarations/concaveon-rpow--6141f80c765c4828d5509fc8.md) | 97 | `result-track:6141f80c765c4828d5509fc87407db05ab4e1e33183f613d3b064628041717b7` |
| 7 | `lemma` | [strictConcaveOn_sqrt](../../../../../mathematics/Analysis/FunctionalAnalysis/Pow/Varianta467100e7ec2b6680f1ad17ebcfdb5979d764252cd112513b12422986860bf03.lean/declarations/strictconcaveon-sqrt--cc1873b2fab205ef09b1a32c.md) | 109 | `result-track:cc1873b2fab205ef09b1a32c6226d354f3bc0639be5a66abf0406bef4d002ade` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
