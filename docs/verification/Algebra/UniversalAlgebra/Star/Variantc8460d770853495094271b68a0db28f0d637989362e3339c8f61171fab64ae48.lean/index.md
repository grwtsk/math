# Verification target: GRWTSK.Algebra.UniversalAlgebra.Star.Variantc8460d770853495094271b68a0db28f0d637989362e3339c8f61171fab64ae48

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "814867ed44a23634381ded3c04f086b7d6eb0b24",
  "lexical_observation_count": 3,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/UniversalAlgebra/Star/Variantc8460d770853495094271b68a0db28f0d637989362e3339c8f61171fab64ae48.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/UniversalAlgebra/Star/Variantc8460d770853495094271b68a0db28f0d637989362e3339c8f61171fab64ae48.lean/index.md) · [Full source](../../../../../mathematics/Algebra/UniversalAlgebra/Star/Variantc8460d770853495094271b68a0db28f0d637989362e3339c8f61171fab64ae48.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `814867ed44a23634381ded3c04f086b7d6eb0b24`.

Source path: `GRWTSK/Algebra/UniversalAlgebra/Star/Variantc8460d770853495094271b68a0db28f0d637989362e3339c8f61171fab64ae48.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/UniversalAlgebra/Star/Variantc8460d770853495094271b68a0db28f0d637989362e3339c8f61171fab64ae48.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Order.Ring.Defs` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Star.Basic` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `example` | [(anonymous)](../../../../../mathematics/Algebra/UniversalAlgebra/Star/Variantc8460d770853495094271b68a0db28f0d637989362e3339c8f61171fab64ae48.lean/declarations/example--d2fb5b538d86ee727c7900ec.md) | 36 | `declaration-track:d2fb5b538d86ee727c7900ec02274761f0fc6da3af9e99bab5d0612a0d4243e2` |
| 2 | `lemma` | [mul_le_mul_of_nonneg_left](../../../../../mathematics/Algebra/UniversalAlgebra/Star/Variantc8460d770853495094271b68a0db28f0d637989362e3339c8f61171fab64ae48.lean/declarations/mul-le-mul-of-nonneg-left--f9f6095729476c0480956c57.md) | 44 | `result-track:f9f6095729476c0480956c579019750835a1ab114b050c734b314b62e9c228ac` |
| 3 | `instance` | [toIsOrderedRing](../../../../../mathematics/Algebra/UniversalAlgebra/Star/Variantc8460d770853495094271b68a0db28f0d637989362e3339c8f61171fab64ae48.lean/declarations/toisorderedring--0255a91e844637f8ebed3301.md) | 58 | `declaration-track:0255a91e844637f8ebed33014f5fb04f1d6e5952648e0d5876fb2ef2d81deaa4` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
