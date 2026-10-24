# Verification target: GRWTSK.Algebra.Differentials.Variantc3c055fb21164767d5e70db602bb86ed0677e89483912d4886538f99a882c7d0

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1521979d702bdffd432726ab9a16b1b8f236c363",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Differentials/Variantc3c055fb21164767d5e70db602bb86ed0677e89483912d4886538f99a882c7d0.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Differentials/Variantc3c055fb21164767d5e70db602bb86ed0677e89483912d4886538f99a882c7d0.lean/index.md) · [Full source](../../../../mathematics/Algebra/Differentials/Variantc3c055fb21164767d5e70db602bb86ed0677e89483912d4886538f99a882c7d0.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1521979d702bdffd432726ab9a16b1b8f236c363`.

Source path: `GRWTSK/Algebra/Differentials/Variantc3c055fb21164767d5e70db602bb86ed0677e89483912d4886538f99a882c7d0.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Differentials/Variantc3c055fb21164767d5e70db602bb86ed0677e89483912d4886538f99a882c7d0.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Module.Presentation.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Kaehler.Polynomial` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Extension.Cotangent.Basic` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Extension.Presentation.Basic` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [differentialsRelations](../../../../mathematics/Algebra/Differentials/Variantc3c055fb21164767d5e70db602bb86ed0677e89483912d4886538f99a882c7d0.lean/declarations/differentialsrelations--e5ca1a85510ce3dbba9521a4.md) | 46 | `declaration-track:e5ca1a85510ce3dbba9521a4c3bcf20b228c873213141434bd30cfcfadb518b1` |
| 2 | `lemma` | [comm₂₃'](../../../../mathematics/Algebra/Differentials/Variantc3c055fb21164767d5e70db602bb86ed0677e89483912d4886538f99a882c7d0.lean/declarations/comm--09713d4d3b9b0d82c1c11334.md) | 65 | `result-track:09713d4d3b9b0d82c1c113347a8f24ae554579faaffdbc058364290e8851e6c2` |
| 3 | `def` | [hom₁](../../../../mathematics/Algebra/Differentials/Variantc3c055fb21164767d5e70db602bb86ed0677e89483912d4886538f99a882c7d0.lean/declarations/hom--61a04df5ba4cb0a53c110ce8.md) | 75 | `declaration-track:61a04df5ba4cb0a53c110ce8cd607fb9c0eb7a7928feab0f7cd5bced173466d9` |
| 4 | `lemma` | [hom₁_single](../../../../mathematics/Algebra/Differentials/Variantc3c055fb21164767d5e70db602bb86ed0677e89483912d4886538f99a882c7d0.lean/declarations/hom-single--bbe38175c1d6b67257b8895c.md) | 78 | `result-track:bbe38175c1d6b67257b8895c714ec23970a645632fd47a5dd88a7dc3315bf2d5` |
| 5 | `lemma` | [surjective_hom₁](../../../../mathematics/Algebra/Differentials/Variantc3c055fb21164767d5e70db602bb86ed0677e89483912d4886538f99a882c7d0.lean/declarations/surjective-hom--2cc04d49a73f181fae9b153d.md) | 82 | `result-track:2cc04d49a73f181fae9b153d88cd0d4226a0a870f156574c4012e932dcc99b19` |
| 6 | `lemma` | [comm₁₂_single](../../../../mathematics/Algebra/Differentials/Variantc3c055fb21164767d5e70db602bb86ed0677e89483912d4886538f99a882c7d0.lean/declarations/comm-single--191a7fd8c2605fe593cc8ca3.md) | 108 | `result-track:191a7fd8c2605fe593cc8ca37c77ae9f4925136cead5ab005159b773e1128ba9` |
| 7 | `lemma` | [comm₁₂](../../../../mathematics/Algebra/Differentials/Variantc3c055fb21164767d5e70db602bb86ed0677e89483912d4886538f99a882c7d0.lean/declarations/comm--7989c381d9836d554f239523.md) | 115 | `result-track:7989c381d9836d554f2395238784f88f13aa068aa22f92450a6c23f51e40034c` |
| 8 | `def` | [differentialsSolution](../../../../mathematics/Algebra/Differentials/Variantc3c055fb21164767d5e70db602bb86ed0677e89483912d4886538f99a882c7d0.lean/declarations/differentialssolution--53ec48cff07a5444596b6f2d.md) | 128 | `declaration-track:53ec48cff07a5444596b6f2d325e49b3bccf87983b9add528e17efd4bedf8e1b` |
| 9 | `lemma` | [differentials.comm₂₃](../../../../mathematics/Algebra/Differentials/Variantc3c055fb21164767d5e70db602bb86ed0677e89483912d4886538f99a882c7d0.lean/declarations/differentials-comm--39cdeadfcd9c483ae9990c25.md) | 137 | `result-track:39cdeadfcd9c483ae9990c25bd6f3c0d34e9f01d724e57ed716fe6d95f754ff3` |
| 10 | `lemma` | [differentialsSolution_isPresentation](../../../../mathematics/Algebra/Differentials/Variantc3c055fb21164767d5e70db602bb86ed0677e89483912d4886538f99a882c7d0.lean/declarations/differentialssolution-ispresentation--89a62ece8801b38287e145a5.md) | 143 | `result-track:89a62ece8801b38287e145a5d0d46fe2425852eda77e320766097c8d74617204` |
| 11 | `def` | [differentials](../../../../mathematics/Algebra/Differentials/Variantc3c055fb21164767d5e70db602bb86ed0677e89483912d4886538f99a882c7d0.lean/declarations/differentials--cf97a0ed7aa9d112b527d72b.md) | 160 | `declaration-track:cf97a0ed7aa9d112b527d72bfe982ddc1a31e4389ceeb103d560292f600a9780` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
