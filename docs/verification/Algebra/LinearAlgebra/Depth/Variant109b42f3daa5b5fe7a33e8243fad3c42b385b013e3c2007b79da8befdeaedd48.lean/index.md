# Verification target: GRWTSK.Algebra.LinearAlgebra.Depth.Variant109b42f3daa5b5fe7a33e8243fad3c42b385b013e3c2007b79da8befdeaedd48

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "66eb1b513e0b50dc14df2734663051a219ff8315",
  "lexical_observation_count": 2,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Depth/Variant109b42f3daa5b5fe7a33e8243fad3c42b385b013e3c2007b79da8befdeaedd48.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Depth/Variant109b42f3daa5b5fe7a33e8243fad3c42b385b013e3c2007b79da8befdeaedd48.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Depth/Variant109b42f3daa5b5fe7a33e8243fad3c42b385b013e3c2007b79da8befdeaedd48.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `66eb1b513e0b50dc14df2734663051a219ff8315`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Depth/Variant109b42f3daa5b5fe7a33e8243fad3c42b385b013e3c2007b79da8befdeaedd48.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Depth/Variant109b42f3daa5b5fe7a33e8243fad3c42b385b013e3c2007b79da8befdeaedd48.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Module.FinitePresentation` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Dual.Lemmas` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Ideal.AssociatedPrime.Finiteness` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Ideal.AssociatedPrime.Localization` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.LocalRing.ResidueField.Ideal` — import line 15; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Regular.IsSMulRegular` — import line 16; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Support` — import line 17; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [linearMap_subsingleton_of_mem_annihilator](../../../../../mathematics/Algebra/LinearAlgebra/Depth/Variant109b42f3daa5b5fe7a33e8243fad3c42b385b013e3c2007b79da8befdeaedd48.lean/declarations/linearmap-subsingleton-of-mem-annihilator--a1ec8bfa2a19c36e8bf00cb3.md) | 43 | `result-track:a1ec8bfa2a19c36e8bf00cb3a5348fe7626a521f37f7bbccb2a33f50d5940472` |
| 2 | `lemma` | [subsingleton_linearMap_iff](../../../../../mathematics/Algebra/LinearAlgebra/Depth/Variant109b42f3daa5b5fe7a33e8243fad3c42b385b013e3c2007b79da8befdeaedd48.lean/declarations/subsingleton-linearmap-iff--418fd28c5a9d7d9aae53086e.md) | 50 | `result-track:418fd28c5a9d7d9aae53086e93f672f662af068fab65a19a6911724399fbba14` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
