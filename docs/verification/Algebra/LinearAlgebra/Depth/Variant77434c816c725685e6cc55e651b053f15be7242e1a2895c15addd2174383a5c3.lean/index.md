# Verification target: GRWTSK.Algebra.LinearAlgebra.Depth.Variant77434c816c725685e6cc55e651b053f15be7242e1a2895c15addd2174383a5c3

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1035a4bae749c7d842f0e063238d17d90b2a1305",
  "lexical_observation_count": 2,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Depth/Variant77434c816c725685e6cc55e651b053f15be7242e1a2895c15addd2174383a5c3.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Depth/Variant77434c816c725685e6cc55e651b053f15be7242e1a2895c15addd2174383a5c3.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Depth/Variant77434c816c725685e6cc55e651b053f15be7242e1a2895c15addd2174383a5c3.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1035a4bae749c7d842f0e063238d17d90b2a1305`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Depth/Variant77434c816c725685e6cc55e651b053f15be7242e1a2895c15addd2174383a5c3.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Depth/Variant77434c816c725685e6cc55e651b053f15be7242e1a2895c15addd2174383a5c3.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Module.FinitePresentation` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Dual.Lemmas` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Ideal.AssociatedPrime.Finiteness` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Ideal.AssociatedPrime.Localization` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.LocalRing.ResidueField.Ideal` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Regular.IsSMulRegular` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Support` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [linearMap_subsingleton_of_mem_annihilator](../../../../../mathematics/Algebra/LinearAlgebra/Depth/Variant77434c816c725685e6cc55e651b053f15be7242e1a2895c15addd2174383a5c3.lean/declarations/linearmap-subsingleton-of-mem-annihilator--9f2f1f6589619c3be96b7d36.md) | 35 | `result-track:9f2f1f6589619c3be96b7d36a8575f72a9a4a04dc5f4f1c1baa3dcf364b8958d` |
| 2 | `lemma` | [subsingleton_linearMap_iff](../../../../../mathematics/Algebra/LinearAlgebra/Depth/Variant77434c816c725685e6cc55e651b053f15be7242e1a2895c15addd2174383a5c3.lean/declarations/subsingleton-linearmap-iff--7726acedf1640da35e30e0ad.md) | 42 | `result-track:7726acedf1640da35e30e0adf4d1bf80d5f969c9d22e3c09ad957871b3e46957` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
