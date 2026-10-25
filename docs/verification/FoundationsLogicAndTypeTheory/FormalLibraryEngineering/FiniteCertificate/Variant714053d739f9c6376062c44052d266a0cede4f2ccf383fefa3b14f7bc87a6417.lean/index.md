# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.FiniteCertificate.Variant714053d739f9c6376062c44052d266a0cede4f2ccf383fefa3b14f7bc87a6417

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "18a1749dcdd80907299c8a0f21db428bb7bb4e8c",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FiniteCertificate/Variant714053d739f9c6376062c44052d266a0cede4f2ccf383fefa3b14f7bc87a6417.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FiniteCertificate/Variant714053d739f9c6376062c44052d266a0cede4f2ccf383fefa3b14f7bc87a6417.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FiniteCertificate/Variant714053d739f9c6376062c44052d266a0cede4f2ccf383fefa3b14f7bc87a6417.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `18a1749dcdd80907299c8a0f21db428bb7bb4e8c`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FiniteCertificate/Variant714053d739f9c6376062c44052d266a0cede4f2ccf383fefa3b14f7bc87a6417.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FiniteCertificate/Variant714053d739f9c6376062c44052d266a0cede4f2ccf383fefa3b14f7bc87a6417.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Tactic` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [rationalTailBound](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FiniteCertificate/Variant714053d739f9c6376062c44052d266a0cede4f2ccf383fefa3b14f7bc87a6417.lean/declarations/rationaltailbound--c96c2993032743d57f8b4d73.md) | 38 | `declaration-track:c96c2993032743d57f8b4d732650f4b3d37d3f1692a37bd0ad1e5c6425a59ba8` |
| 2 | `theorem` | [rationalTailBound_lt](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FiniteCertificate/Variant714053d739f9c6376062c44052d266a0cede4f2ccf383fefa3b14f7bc87a6417.lean/declarations/rationaltailbound-lt--22079245748f3d8ba972cedb.md) | 45 | `result-track:22079245748f3d8ba972cedb4903177fbe27d0d4de3a0ac1f83a1c89f1fc8eca` |
| 3 | `theorem` | [rationalTailBound_nonneg](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FiniteCertificate/Variant714053d739f9c6376062c44052d266a0cede4f2ccf383fefa3b14f7bc87a6417.lean/declarations/rationaltailbound-nonneg--a1fd219da8f472ed0329a9fa.md) | 49 | `result-track:a1fd219da8f472ed0329a9fa9971755e7119d17c0eea9166fa4e3ccbc11c3d6a` |
| 4 | `def` | [tailBound](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FiniteCertificate/Variant714053d739f9c6376062c44052d266a0cede4f2ccf383fefa3b14f7bc87a6417.lean/declarations/tailbound--bd9d66f843898fc22ebfd571.md) | 53 | `declaration-track:bd9d66f843898fc22ebfd5710ef8e0d2d043410c365379bbbaf57191d01b0602` |
| 5 | `theorem` | [tailBound_lt](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FiniteCertificate/Variant714053d739f9c6376062c44052d266a0cede4f2ccf383fefa3b14f7bc87a6417.lean/declarations/tailbound-lt--623553afdae365b1dcefc7e6.md) | 55 | `result-track:623553afdae365b1dcefc7e6e063aa9aa0e2262800ecfbbc85abef372ae3770a` |
| 6 | `theorem` | [tailBound_nonneg](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FiniteCertificate/Variant714053d739f9c6376062c44052d266a0cede4f2ccf383fefa3b14f7bc87a6417.lean/declarations/tailbound-nonneg--7dcf19dff5e29ec3d31c2ba1.md) | 62 | `result-track:7dcf19dff5e29ec3d31c2ba1451782f233adca4f5df56e4b2ca886883ecc2652` |
| 7 | `theorem` | [spectral_lower_of_head_tail](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FiniteCertificate/Variant714053d739f9c6376062c44052d266a0cede4f2ccf383fefa3b14f7bc87a6417.lean/declarations/spectral-lower-of-head-tail--e1e3ca89607fdcf753371477.md) | 68 | `result-track:e1e3ca89607fdcf753371477d297facd938cbb553951f75fec5803f1a9eafb83` |
| 8 | `theorem` | [residual_upper_of_spectral_lower](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FiniteCertificate/Variant714053d739f9c6376062c44052d266a0cede4f2ccf383fefa3b14f7bc87a6417.lean/declarations/residual-upper-of-spectral-lower--7870f0c179386629aa613de8.md) | 77 | `result-track:7870f0c179386629aa613de8935e1c1685599608da2d8a0bbab0aadb4dd9f2a4` |
| 9 | `theorem` | [residual_negative_of_upper](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FiniteCertificate/Variant714053d739f9c6376062c44052d266a0cede4f2ccf383fefa3b14f7bc87a6417.lean/declarations/residual-negative-of-upper--71676e3fa4d2ff1969bbd3c1.md) | 87 | `result-track:71676e3fa4d2ff1969bbd3c13f7caea6a3cd5c3987096fc5998c1188a770d0b9` |
| 10 | `structure` | [FinitePremises](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FiniteCertificate/Variant714053d739f9c6376062c44052d266a0cede4f2ccf383fefa3b14f7bc87a6417.lean/declarations/finitepremises--fbc1c77ede0f7dec29347e8d.md) | 107 | `declaration-track:fbc1c77ede0f7dec29347e8d178d06414ee3882ce69e7c44c1217933cf491b69` |
| 11 | `theorem` | [finite_bounds](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FiniteCertificate/Variant714053d739f9c6376062c44052d266a0cede4f2ccf383fefa3b14f7bc87a6417.lean/declarations/finite-bounds--82ab53a5316bd865758333c3.md) | 123 | `result-track:82ab53a5316bd865758333c39c9b5164c0c5e2fadd3a328ff9d1e1b0adb51182` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
