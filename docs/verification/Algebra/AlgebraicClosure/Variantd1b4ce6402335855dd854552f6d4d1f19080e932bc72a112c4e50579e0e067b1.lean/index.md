# Verification target: GRWTSK.Algebra.AlgebraicClosure.Variantd1b4ce6402335855dd854552f6d4d1f19080e932bc72a112c4e50579e0e067b1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "eda66a58ad467f77825913cc1fea13a696ea8b3a",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/AlgebraicClosure/Variantd1b4ce6402335855dd854552f6d4d1f19080e932bc72a112c4e50579e0e067b1.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/AlgebraicClosure/Variantd1b4ce6402335855dd854552f6d4d1f19080e932bc72a112c4e50579e0e067b1.lean/index.md) · [Full source](../../../../mathematics/Algebra/AlgebraicClosure/Variantd1b4ce6402335855dd854552f6d4d1f19080e932bc72a112c4e50579e0e067b1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `eda66a58ad467f77825913cc1fea13a696ea8b3a`.

Source path: `GRWTSK/Algebra/AlgebraicClosure/Variantd1b4ce6402335855dd854552f6d4d1f19080e932bc72a112c4e50579e0e067b1.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/AlgebraicClosure/Variantd1b4ce6402335855dd854552f6d4d1f19080e932bc72a112c4e50579e0e067b1.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.FieldTheory.AlgebraicClosure` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Algebraic.Integral` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.AlgebraicIndependent.Transcendental` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [extendScalars](../../../../mathematics/Algebra/AlgebraicClosure/Variantd1b4ce6402335855dd854552f6d4d1f19080e932bc72a112c4e50579e0e067b1.lean/declarations/extendscalars--e084253f1f7088586cb29f25.md) | 43 | `result-track:e084253f1f7088586cb29f25f11c9bd0534aa303ce88fbffab17db625a13eba6` |
| 2 | `theorem` | [extendScalars_of_isIntegral](../../../../mathematics/Algebra/AlgebraicClosure/Variantd1b4ce6402335855dd854552f6d4d1f19080e932bc72a112c4e50579e0e067b1.lean/declarations/extendscalars-of-isintegral--e82920723ce7b8990d21af69.md) | 66 | `result-track:e82920723ce7b8990d21af6945d27228af94f80e8873df3acdce374c3529cd95` |
| 3 | `theorem` | [subalgebraAlgebraicClosure](../../../../mathematics/Algebra/AlgebraicClosure/Variantd1b4ce6402335855dd854552f6d4d1f19080e932bc72a112c4e50579e0e067b1.lean/declarations/subalgebraalgebraicclosure--0d9b1827be7ef65053b5d7dc.md) | 75 | `result-track:0d9b1827be7ef65053b5d7dce115c7d87247a36e6b2061f602b6defe9967343d` |
| 4 | `theorem` | [integralClosure](../../../../mathematics/Algebra/AlgebraicClosure/Variantd1b4ce6402335855dd854552f6d4d1f19080e932bc72a112c4e50579e0e067b1.lean/declarations/integralclosure--3d82e4727a5604c8f0bbfb5d.md) | 79 | `result-track:3d82e4727a5604c8f0bbfb5d7e7ac9f69574ace3729de65339933b98afd8c51c` |
| 5 | `theorem` | [algebraicClosure](../../../../mathematics/Algebra/AlgebraicClosure/Variantd1b4ce6402335855dd854552f6d4d1f19080e932bc72a112c4e50579e0e067b1.lean/declarations/algebraicclosure--5eebe8dd4f236e4c154057a4.md) | 84 | `result-track:5eebe8dd4f236e4c154057a426be47f6012803a0db4da927a1bdc440c7d41cbb` |
| 6 | `theorem` | [IsIntegral.algebraicIndependent_iff](../../../../mathematics/Algebra/AlgebraicClosure/Variantd1b4ce6402335855dd854552f6d4d1f19080e932bc72a112c4e50579e0e067b1.lean/declarations/isintegral-algebraicindependent-iff--46864f13ed6bcdb4b072f3a9.md) | 95 | `result-track:46864f13ed6bcdb4b072f3a9be32497ecd20ceabd98aaaa35db4761a11180d0b` |
| 7 | `theorem` | [IsIntegral.isTranscendenceBasis_iff](../../../../mathematics/Algebra/AlgebraicClosure/Variantd1b4ce6402335855dd854552f6d4d1f19080e932bc72a112c4e50579e0e067b1.lean/declarations/isintegral-istranscendencebasis-iff--75e1ce31726ccdee211d0831.md) | 100 | `result-track:75e1ce31726ccdee211d0831254f4d194e596ab886328ecd89650b60a37d2230` |
| 8 | `theorem` | [IsAlgebraic.algebraicIndependent_iff](../../../../mathematics/Algebra/AlgebraicClosure/Variantd1b4ce6402335855dd854552f6d4d1f19080e932bc72a112c4e50579e0e067b1.lean/declarations/isalgebraic-algebraicindependent-iff--2408f967a3010b10e06a1112.md) | 104 | `result-track:2408f967a3010b10e06a1112238c0495047dec40ee36b62fe600d07199b4d698` |
| 9 | `theorem` | [IsAlgebraic.isTranscendenceBasis_iff](../../../../mathematics/Algebra/AlgebraicClosure/Variantd1b4ce6402335855dd854552f6d4d1f19080e932bc72a112c4e50579e0e067b1.lean/declarations/isalgebraic-istranscendencebasis-iff--a1a4a6428696f88a52d59cd4.md) | 108 | `result-track:a1a4a6428696f88a52d59cd4ae328f980e258a1153b548876612fd2517991a25` |
| 10 | `theorem` | [isAlgebraic_adjoin_iff](../../../../mathematics/Algebra/AlgebraicClosure/Variantd1b4ce6402335855dd854552f6d4d1f19080e932bc72a112c4e50579e0e067b1.lean/declarations/isalgebraic-adjoin-iff--0e276c50cb940e8b6be5f3e7.md) | 128 | `result-track:0e276c50cb940e8b6be5f3e72ffaa045687cf1e041e1eb332791411fa9295890` |
| 11 | `theorem` | [isAlgebraic_adjoin_iff_top](../../../../mathematics/Algebra/AlgebraicClosure/Variantd1b4ce6402335855dd854552f6d4d1f19080e932bc72a112c4e50579e0e067b1.lean/declarations/isalgebraic-adjoin-iff-top--76acc437017460c4d3e6d6b4.md) | 132 | `result-track:76acc437017460c4d3e6d6b44c1b63bba749cdbd0b5aac02c1c41e972b9383b9` |
| 12 | `theorem` | [isAlgebraic_adjoin_iff_bot](../../../../mathematics/Algebra/AlgebraicClosure/Variantd1b4ce6402335855dd854552f6d4d1f19080e932bc72a112c4e50579e0e067b1.lean/declarations/isalgebraic-adjoin-iff-bot--33d229b1e0a3251863807fab.md) | 136 | `result-track:33d229b1e0a3251863807fab4d5ea1cd4a7918f3d52d5678e7b2ed7174e347ee` |
| 13 | `theorem` | [transcendental_adjoin_iff](../../../../mathematics/Algebra/AlgebraicClosure/Variantd1b4ce6402335855dd854552f6d4d1f19080e932bc72a112c4e50579e0e067b1.lean/declarations/transcendental-adjoin-iff--46ce185ade0d77d4d747c30a.md) | 140 | `result-track:46ce185ade0d77d4d747c30a3ac8991bf1a41efddbf0ed7654cb11240ff168ae` |
| 14 | `theorem` | [algebraicIndependent_adjoin_iff](../../../../mathematics/Algebra/AlgebraicClosure/Variantd1b4ce6402335855dd854552f6d4d1f19080e932bc72a112c4e50579e0e067b1.lean/declarations/algebraicindependent-adjoin-iff--247a407b45af255d5c19040b.md) | 148 | `result-track:247a407b45af255d5c19040bc69de4009ab3459e03b04d363e6c55dc834b8316` |
| 15 | `theorem` | [isTranscendenceBasis_adjoin_iff](../../../../mathematics/Algebra/AlgebraicClosure/Variantd1b4ce6402335855dd854552f6d4d1f19080e932bc72a112c4e50579e0e067b1.lean/declarations/istranscendencebasis-adjoin-iff--a5b11e994863b658f38a7120.md) | 152 | `result-track:a5b11e994863b658f38a7120df4b8f4bc4b2675866f835bd3b40eb91a91644ff` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
