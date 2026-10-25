# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.RealSqrt.Variantbe792ca894c6dc86bf3199757f6fa1a5f32e31a98581d99dd17ba69c2ecb9399

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5968b4578dc7656e01b2f1133d4d2aa406b3d571",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RealSqrt/Variantbe792ca894c6dc86bf3199757f6fa1a5f32e31a98581d99dd17ba69c2ecb9399.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RealSqrt/Variantbe792ca894c6dc86bf3199757f6fa1a5f32e31a98581d99dd17ba69c2ecb9399.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RealSqrt/Variantbe792ca894c6dc86bf3199757f6fa1a5f32e31a98581d99dd17ba69c2ecb9399.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5968b4578dc7656e01b2f1133d4d2aa406b3d571`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RealSqrt/Variantbe792ca894c6dc86bf3199757f6fa1a5f32e31a98581d99dd17ba69c2ecb9399.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RealSqrt/Variantbe792ca894c6dc86bf3199757f6fa1a5f32e31a98581d99dd17ba69c2ecb9399.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Real.Sqrt` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [isNat_realSqrt](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RealSqrt/Variantbe792ca894c6dc86bf3199757f6fa1a5f32e31a98581d99dd17ba69c2ecb9399.lean/declarations/isnat-realsqrt--9b5698f73c5be96bf35db01a.md) | 31 | `result-track:9b5698f73c5be96bf35db01a5238f7e30a7a1df2095dc14daf349a428acdfb01` |
| 2 | `lemma` | [isNat_nnrealSqrt](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RealSqrt/Variantbe792ca894c6dc86bf3199757f6fa1a5f32e31a98581d99dd17ba69c2ecb9399.lean/declarations/isnat-nnrealsqrt--ca507a775add8e19594edaa8.md) | 34 | `result-track:ca507a775add8e19594edaa87897379b5ce337b1e7f511869d83f229b96d9fea` |
| 3 | `lemma` | [isNat_realSqrt_neg](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RealSqrt/Variantbe792ca894c6dc86bf3199757f6fa1a5f32e31a98581d99dd17ba69c2ecb9399.lean/declarations/isnat-realsqrt-neg--f702c5b40c9cbe5d35a3b088.md) | 37 | `result-track:f702c5b40c9cbe5d35a3b0888d793d5c09ba2661636812fbd028e249f13d6ead` |
| 4 | `lemma` | [isNat_realSqrt_of_isRat_negOfNat](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RealSqrt/Variantbe792ca894c6dc86bf3199757f6fa1a5f32e31a98581d99dd17ba69c2ecb9399.lean/declarations/isnat-realsqrt-of-israt-negofnat--e11c062dd8c337ebcb90869b.md) | 40 | `result-track:e11c062dd8c337ebcb90869b5393f482ce05171020a2689aad785d57eb478cc3` |
| 5 | `lemma` | [isRat_realSqrt_of_isRat_ofNat](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RealSqrt/Variantbe792ca894c6dc86bf3199757f6fa1a5f32e31a98581d99dd17ba69c2ecb9399.lean/declarations/israt-realsqrt-of-israt-ofnat--233b114f98507e997339a486.md) | 48 | `result-track:233b114f98507e997339a486fa7ad08b7515546630f40357b3f060be5a83568e` |
| 6 | `def` | [evalRealSqrt](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RealSqrt/Variantbe792ca894c6dc86bf3199757f6fa1a5f32e31a98581d99dd17ba69c2ecb9399.lean/declarations/evalrealsqrt--fa6286223fbd2cf978afff95.md) | 60 | `declaration-track:fa6286223fbd2cf978afff954018d5dccb72caf7a2148e1807893ff4a9aeee8d` |
| 7 | `def` | [evalNNRealSqrt](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RealSqrt/Variantbe792ca894c6dc86bf3199757f6fa1a5f32e31a98581d99dd17ba69c2ecb9399.lean/declarations/evalnnrealsqrt--3be85c2e5120dd405a656527.md) | 99 | `declaration-track:3be85c2e5120dd405a656527c87e40728dca873041a0de498e593b2b62dc0692` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
