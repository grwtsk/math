# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Alignment.Variant7d813c0a0cf02a6143c004a514457e882c2308b119bec694e568ceabd18cd840

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d8facb2e4d80404b871e54f8d55c73abd405f805",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Alignment/Variant7d813c0a0cf02a6143c004a514457e882c2308b119bec694e568ceabd18cd840.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Alignment/Variant7d813c0a0cf02a6143c004a514457e882c2308b119bec694e568ceabd18cd840.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Alignment/Variant7d813c0a0cf02a6143c004a514457e882c2308b119bec694e568ceabd18cd840.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d8facb2e4d80404b871e54f8d55c73abd405f805`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Alignment/Variant7d813c0a0cf02a6143c004a514457e882c2308b119bec694e568ceabd18cd840.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Alignment/Variant7d813c0a0cf02a6143c004a514457e882c2308b119bec694e568ceabd18cd840.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathematics.Federation.Bridge` — import line 6; external provider; requires a separately pinned dependency.
- `Mathematics.Federation.GlobalId` — import line 7; external provider; requires a separately pinned dependency.
- `Mathematics.Authority.Kernel` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [AlignmentEvidenceKind](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Alignment/Variant7d813c0a0cf02a6143c004a514457e882c2308b119bec694e568ceabd18cd840.lean/declarations/alignmentevidencekind--5d91509b69751295dadb236e.md) | 18 | `declaration-track:5d91509b69751295dadb236e963345730f3f5ecd2e2b3775ccf0c1bf5fba3599` |
| 2 | `structure` | [AlignmentEvidence](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Alignment/Variant7d813c0a0cf02a6143c004a514457e882c2308b119bec694e568ceabd18cd840.lean/declarations/alignmentevidence--bbca736dce27f2c907e51f91.md) | 27 | `declaration-track:bbca736dce27f2c907e51f919617e7b202e030b0c8140622948083356e2af2f9` |
| 3 | `inductive` | [ExactAlignmentKind](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Alignment/Variant7d813c0a0cf02a6143c004a514457e882c2308b119bec694e568ceabd18cd840.lean/declarations/exactalignmentkind--53b614f1fb022ab3457fcaec.md) | 36 | `declaration-track:53b614f1fb022ab3457fcaecdf7a7797570d26da82a21473d4bea99487586c1f` |
| 4 | `structure` | [ExactRelationProfile](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Alignment/Variant7d813c0a0cf02a6143c004a514457e882c2308b119bec694e568ceabd18cd840.lean/declarations/exactrelationprofile--2736bc9d2a2fbd2393251b39.md) | 43 | `declaration-track:2736bc9d2a2fbd2393251b390a2aac31b85ac0aff55719ebc0a66c6b3054a749` |
| 5 | `structure` | [CertifiedExactAlignment](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Alignment/Variant7d813c0a0cf02a6143c004a514457e882c2308b119bec694e568ceabd18cd840.lean/declarations/certifiedexactalignment--67704aefc66773edb23e989b.md) | 60 | `declaration-track:67704aefc66773edb23e989b76bf837dcf92a622c19944caed0fcaa1c6c14ed1` |
| 6 | `structure` | [QuotientAlignment](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Alignment/Variant7d813c0a0cf02a6143c004a514457e882c2308b119bec694e568ceabd18cd840.lean/declarations/quotientalignment--29b79ba43af16301d853f99b.md) | 71 | `declaration-track:29b79ba43af16301d853f99bac91f2088ac6864e5ae8f7f3f4dc7fbd3adf46e1` |
| 7 | `inductive` | [AlignmentArtifact](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Alignment/Variant7d813c0a0cf02a6143c004a514457e882c2308b119bec694e568ceabd18cd840.lean/declarations/alignmentartifact--c43b403dbdbe701e4ce465cd.md) | 77 | `declaration-track:c43b403dbdbe701e4ce465cd892bf358f6a8f70254d97158242c4c11a0e06f83` |
| 8 | `theorem` | [related](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Alignment/Variant7d813c0a0cf02a6143c004a514457e882c2308b119bec694e568ceabd18cd840.lean/declarations/related--5cf1deb09d9d7ac59b8f89b6.md) | 83 | `result-track:5cf1deb09d9d7ac59b8f89b6cbfee7270ed668151b727849d7c9d3bcb78ffc8c` |
| 9 | `theorem` | [lexical_similarity_cannot_generate_quotient](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Alignment/Variant7d813c0a0cf02a6143c004a514457e882c2308b119bec694e568ceabd18cd840.lean/declarations/lexical-similarity-cannot-generate-quotient--a4c54af1197e5318c75cba14.md) | 89 | `result-track:a4c54af1197e5318c75cba141c36679b9f042d9c5636cf7387549d7473796818` |
| 10 | `theorem` | [embedding_similarity_cannot_generate_quotient](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Alignment/Variant7d813c0a0cf02a6143c004a514457e882c2308b119bec694e568ceabd18cd840.lean/declarations/embedding-similarity-cannot-generate-quotient--ef7dfb5ec8805dea3a55ca84.md) | 98 | `result-track:ef7dfb5ec8805dea3a55ca8406133d8d4081f8bbe32fdfdb73923ff8187a40d7` |
| 11 | `theorem` | [structural_similarity_cannot_generate_quotient](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Alignment/Variant7d813c0a0cf02a6143c004a514457e882c2308b119bec694e568ceabd18cd840.lean/declarations/structural-similarity-cannot-generate-quotient--b3e78ca39dc6c6abe8641c2c.md) | 107 | `result-track:b3e78ca39dc6c6abe8641c2ca0b121da588c4eaacfde09f1d8bf83a696423608` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
