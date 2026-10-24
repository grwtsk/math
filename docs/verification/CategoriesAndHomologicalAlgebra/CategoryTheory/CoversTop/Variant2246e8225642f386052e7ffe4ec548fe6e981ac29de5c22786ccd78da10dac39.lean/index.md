# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.CoversTop.Variant2246e8225642f386052e7ffe4ec548fe6e981ac29de5c22786ccd78da10dac39

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "30872ff792de98589d5b2f6b53fbd772b422f62c",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/CoversTop/Variant2246e8225642f386052e7ffe4ec548fe6e981ac29de5c22786ccd78da10dac39.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CoversTop/Variant2246e8225642f386052e7ffe4ec548fe6e981ac29de5c22786ccd78da10dac39.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CoversTop/Variant2246e8225642f386052e7ffe4ec548fe6e981ac29de5c22786ccd78da10dac39.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `30872ff792de98589d5b2f6b53fbd772b422f62c`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/CoversTop/Variant2246e8225642f386052e7ffe4ec548fe6e981ac29de5c22786ccd78da10dac39.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/CoversTop/Variant2246e8225642f386052e7ffe4ec548fe6e981ac29de5c22786ccd78da10dac39.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Sites.Sheaf` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [CoversTop](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CoversTop/Variant2246e8225642f386052e7ffe4ec548fe6e981ac29de5c22786ccd78da10dac39.lean/declarations/coverstop--e1d09bfcf060ebf7faed813d.md) | 37 | `declaration-track:e1d09bfcf060ebf7faed813d98bd7ceeb84aefb494fe28b67b4fcbf02c8b5299` |
| 2 | `lemma` | [coversTop_iff_of_isTerminal](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CoversTop/Variant2246e8225642f386052e7ffe4ec548fe6e981ac29de5c22786ccd78da10dac39.lean/declarations/coverstop-iff-of-isterminal--8a387ea293d842741cf0ed28.md) | 40 | `result-track:8a387ea293d842741cf0ed28b771db9bc7b6f0f2b6713ea4d4137e55e6e2e1d3` |
| 3 | `abbrev` | [cover](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CoversTop/Variant2246e8225642f386052e7ffe4ec548fe6e981ac29de5c22786ccd78da10dac39.lean/declarations/cover--af8bfcfb3fd7102d0f628ec6.md) | 58 | `declaration-track:af8bfcfb3fd7102d0f628ec6c8028c1bc6a29a8e19ffee4f5dd047064b1a55bf` |
| 4 | `lemma` | [ext](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CoversTop/Variant2246e8225642f386052e7ffe4ec548fe6e981ac29de5c22786ccd78da10dac39.lean/declarations/ext--2f113f0dd757b4c11f9960bb.md) | 60 | `result-track:2f113f0dd757b4c11f9960bbbcc59eaf547305a1ac7f50f8facac665b1e1e268` |
| 5 | `lemma` | [sections_ext](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CoversTop/Variant2246e8225642f386052e7ffe4ec548fe6e981ac29de5c22786ccd78da10dac39.lean/declarations/sections-ext--c7bc917cf983992a76428e17.md) | 68 | `result-track:c7bc917cf983992a76428e17f476792c5635139618586c36bd53b6e12c38ba74` |
| 6 | `def` | [FamilyOfElementsOnObjects](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CoversTop/Variant2246e8225642f386052e7ffe4ec548fe6e981ac29de5c22786ccd78da10dac39.lean/declarations/familyofelementsonobjects--7fae27ea281a04f8dac638f3.md) | 87 | `declaration-track:7fae27ea281a04f8dac638f39f87835d9d751c08470fe28b1787bb9f5aa4b85c` |
| 7 | `def` | [IsCompatible](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CoversTop/Variant2246e8225642f386052e7ffe4ec548fe6e981ac29de5c22786ccd78da10dac39.lean/declarations/iscompatible--434b24ede74ad1043923eb64.md) | 97 | `declaration-track:434b24ede74ad1043923eb64c2da647cefe373c37c55059dcc193fd18fb2bf88` |
| 8 | `def` | [familyOfElements](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CoversTop/Variant2246e8225642f386052e7ffe4ec548fe6e981ac29de5c22786ccd78da10dac39.lean/declarations/familyofelements--fa5cd2bf129fbcb51cfe3a5d.md) | 104 | `declaration-track:fa5cd2bf129fbcb51cfe3a5d13cd4d9116cf6b5613ee3b073d320fcfc5df945d` |
| 9 | `lemma` | [familyOfElements_apply](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CoversTop/Variant2246e8225642f386052e7ffe4ec548fe6e981ac29de5c22786ccd78da10dac39.lean/declarations/familyofelements-apply--70ad6fe50617ba7bd3bc9682.md) | 112 | `result-track:70ad6fe50617ba7bd3bc9682a02ab2834b5f965c5309bc07c7d352edc2eb5f50` |
| 10 | `lemma` | [familyOfElements_isCompatible](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CoversTop/Variant2246e8225642f386052e7ffe4ec548fe6e981ac29de5c22786ccd78da10dac39.lean/declarations/familyofelements-iscompatible--209562d64dd2e088a3cc4623.md) | 116 | `result-track:209562d64dd2e088a3cc4623184bbcda1ef67d538751a21a001794e9b9844bc2` |
| 11 | `lemma` | [existsUnique_section](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CoversTop/Variant2246e8225642f386052e7ffe4ec548fe6e981ac29de5c22786ccd78da10dac39.lean/declarations/existsunique-section--a57f012d8a7913cefe2209f6.md) | 124 | `result-track:a57f012d8a7913cefe2209f6c6fe02cb2530ee5401f74f67028c572e3f1fb77f` |
| 12 | `def` | [section_](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CoversTop/Variant2246e8225642f386052e7ffe4ec548fe6e981ac29de5c22786ccd78da10dac39.lean/declarations/section--20de7db12897152b75c6feb6.md) | 156 | `declaration-track:20de7db12897152b75c6feb6d1805340b25d42c744749a51593e051ef738fd58` |
| 13 | `lemma` | [section_apply](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CoversTop/Variant2246e8225642f386052e7ffe4ec548fe6e981ac29de5c22786ccd78da10dac39.lean/declarations/section-apply--3e4c19f51b1c5eaf5fcc573a.md) | 159 | `result-track:3e4c19f51b1c5eaf5fcc573a91cdaf3dc5a941632ad54a0b6082e26360f327bc` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
