# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.Baer.Variantf7b37ae4a7af15c5e845a745bf615a3af7db9cc899ab46c6ef6106e5761d1560

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "40c8f112ed578793647e84defef7de48c559d4cb",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Baer/Variantf7b37ae4a7af15c5e845a745bf615a3af7db9cc899ab46c6ef6106e5761d1560.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Baer/Variantf7b37ae4a7af15c5e845a745bf615a3af7db9cc899ab46c6ef6106e5761d1560.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Baer/Variantf7b37ae4a7af15c5e845a745bf615a3af7db9cc899ab46c6ef6106e5761d1560.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `40c8f112ed578793647e84defef7de48c559d4cb`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Baer/Variantf7b37ae4a7af15c5e845a745bf615a3af7db9cc899ab46c6ef6106e5761d1560.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/Baer/Variantf7b37ae4a7af15c5e845a745bf615a3af7db9cc899ab46c6ef6106e5761d1560.lean.json)

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
| 1 | `lemma` | [ext_quotient_one_subsingleton_iff](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Baer/Variantf7b37ae4a7af15c5e845a745bf615a3af7db9cc899ab46c6ef6106e5761d1560.lean/declarations/ext-quotient-one-subsingleton-iff--56350031b23d0af296c932a8.md) | 64 | `result-track:56350031b23d0af296c932a8d163d13428b21aea0d435b7f18ea70d9fed58e1f` |
| 2 | `lemma` | [injective_of_subsingleton_ext_quotient_one](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Baer/Variantf7b37ae4a7af15c5e845a745bf615a3af7db9cc899ab46c6ef6106e5761d1560.lean/declarations/injective-of-subsingleton-ext-quotient-one--f6d58c1ff3f30f11109b3f56.md) | 101 | `result-track:f6d58c1ff3f30f11109b3f569ec498be72aa6770e429472e916225ba3babefef` |
| 3 | `lemma` | [injective_iff_subsingleton_ext_quotient_one](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Baer/Variantf7b37ae4a7af15c5e845a745bf615a3af7db9cc899ab46c6ef6106e5761d1560.lean/declarations/injective-iff-subsingleton-ext-quotient-one--56769a6836bd2138d95a4bf9.md) | 107 | `result-track:56769a6836bd2138d95a4bf9dfb0196a942d9c7e8d1db12c49c6cb16eb5f9919` |
| 4 | `lemma` | [hasInjectiveDimensionLE_of_quotients](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Baer/Variantf7b37ae4a7af15c5e845a745bf615a3af7db9cc899ab46c6ef6106e5761d1560.lean/declarations/hasinjectivedimensionle-of-quotients--4cec2a553498c95df80f24d1.md) | 116 | `result-track:4cec2a553498c95df80f24d11b7b025afb05d5df35680229b3b4bd7930f5d765` |
| 5 | `def` | [extQuotientBotZeroEquiv](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Baer/Variantf7b37ae4a7af15c5e845a745bf615a3af7db9cc899ab46c6ef6106e5761d1560.lean/declarations/extquotientbotzeroequiv--f3a962ff275df1fe67b740d0.md) | 135 | `declaration-track:f3a962ff275df1fe67b740d0a4b869e54f70e6454c7944255cab989c380a8bb1` |
| 6 | `lemma` | [subsingleton_of_ext_quotient_bot_zero](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Baer/Variantf7b37ae4a7af15c5e845a745bf615a3af7db9cc899ab46c6ef6106e5761d1560.lean/declarations/subsingleton-of-ext-quotient-bot-zero--af6747c59a99e99596f809bf.md) | 142 | `result-track:af6747c59a99e99596f809bfd28207b5a2ea52ce4b0a3ceb91b000662e497802` |
| 7 | `lemma` | [hasInjectiveDimensionLT_of_quotients](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Baer/Variantf7b37ae4a7af15c5e845a745bf615a3af7db9cc899ab46c6ef6106e5761d1560.lean/declarations/hasinjectivedimensionlt-of-quotients--77ebecd91918485348308b93.md) | 150 | `result-track:77ebecd91918485348308b93d69ba00cd8e918160f251c85b5548c6f31bcbade` |
| 8 | `lemma` | [hasInjectiveDimensionLT_iff_quotients](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Baer/Variantf7b37ae4a7af15c5e845a745bf615a3af7db9cc899ab46c6ef6106e5761d1560.lean/declarations/hasinjectivedimensionlt-iff-quotients--5bfbbe4efccc8b1a319b1a79.md) | 160 | `result-track:5bfbbe4efccc8b1a319b1a79bb9cac41cea249d9f61f127bf38a9521e80fd6d6` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
