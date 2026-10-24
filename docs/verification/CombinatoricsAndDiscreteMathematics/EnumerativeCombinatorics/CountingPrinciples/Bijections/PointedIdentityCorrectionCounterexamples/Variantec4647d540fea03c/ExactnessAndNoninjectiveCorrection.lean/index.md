# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.EnumerativeCombinatorics.CountingPrinciples.Bijections.PointedIdentityCorrectionCounterexamples.Variantec4647d540fea03c.ExactnessAndNoninjectiveCorrection

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e3ca1b5e8f53461556222941b8df544423566376",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/CountingPrinciples/Bijections/PointedIdentityCorrectionCounterexamples/Variantec4647d540fea03c/ExactnessAndNoninjectiveCorrection.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/CountingPrinciples/Bijections/PointedIdentityCorrectionCounterexamples/Variantec4647d540fea03c/ExactnessAndNoninjectiveCorrection.lean/index.md) · [Full source](../../../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/CountingPrinciples/Bijections/PointedIdentityCorrectionCounterexamples/Variantec4647d540fea03c/ExactnessAndNoninjectiveCorrection.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e3ca1b5e8f53461556222941b8df544423566376`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/CountingPrinciples/Bijections/PointedIdentityCorrectionCounterexamples/Variantec4647d540fea03c/ExactnessAndNoninjectiveCorrection.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/CountingPrinciples/Bijections/PointedIdentityCorrectionCounterexamples/Variantec4647d540fea03c/ExactnessAndNoninjectiveCorrection.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `BitMatrix.Network.Permutation` — import line 20; external provider; requires a separately pinned dependency.
- `BitMatrix.FiniteField.Round` — import line 21; external provider; requires a separately pinned dependency.
- `Mathlib.Data.ZMod.Basic` — import line 22; external provider; requires a separately pinned dependency.
- `Mathlib.Logic.Equiv.Fin.Rotate` — import line 23; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `example` | [(anonymous)](../../../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/CountingPrinciples/Bijections/PointedIdentityCorrectionCounterexamples/Variantec4647d540fea03c/ExactnessAndNoninjectiveCorrection.lean/declarations/example--3305441b416ba8b4c5f96b18.md) | 45 | `declaration-track:3305441b416ba8b4c5f96b1807db018693a22c5fc6c58376ba7a6fca9ad2499d` |
| 2 | `example` | [(anonymous)](../../../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/CountingPrinciples/Bijections/PointedIdentityCorrectionCounterexamples/Variantec4647d540fea03c/ExactnessAndNoninjectiveCorrection.lean/declarations/example--805a9677568620c734f98666.md) | 48 | `declaration-track:805a9677568620c734f98666795fad9982d740b19642a1f11b9683807a8bb834` |
| 3 | `example` | [(anonymous)](../../../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/CountingPrinciples/Bijections/PointedIdentityCorrectionCounterexamples/Variantec4647d540fea03c/ExactnessAndNoninjectiveCorrection.lean/declarations/example--317dcb4db8920d76b49138ac.md) | 55 | `declaration-track:317dcb4db8920d76b49138acea214c07f8a8a883b4da1b70f59052badfe7b0a3` |
| 4 | `example` | [(anonymous)](../../../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/CountingPrinciples/Bijections/PointedIdentityCorrectionCounterexamples/Variantec4647d540fea03c/ExactnessAndNoninjectiveCorrection.lean/declarations/example--c47cb9dd08d0db453e1b274e.md) | 58 | `declaration-track:c47cb9dd08d0db453e1b274e91d3fb8d8cafe804d51fb3a3bca992004b2bc20c` |
| 5 | `example` | [(anonymous)](../../../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/CountingPrinciples/Bijections/PointedIdentityCorrectionCounterexamples/Variantec4647d540fea03c/ExactnessAndNoninjectiveCorrection.lean/declarations/example--f35ee019b0762ca1705ef61c.md) | 62 | `declaration-track:f35ee019b0762ca1705ef61c59d0e0ca7d19f672f3b699591e419b7b1fc8804e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
