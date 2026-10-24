# Verification target: GRWTSK.Algebra.UniversalAlgebra.Conjneg.Variant87478cbccd5b70a31b0c9bca8258ef0dd1b0634cbe27ee8c6e3d673d62eda301

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5940c85f8157fe3a969b3b1dfe735f045434342a",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/UniversalAlgebra/Conjneg/Variant87478cbccd5b70a31b0c9bca8258ef0dd1b0634cbe27ee8c6e3d673d62eda301.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/UniversalAlgebra/Conjneg/Variant87478cbccd5b70a31b0c9bca8258ef0dd1b0634cbe27ee8c6e3d673d62eda301.lean/index.md) · [Full source](../../../../../mathematics/Algebra/UniversalAlgebra/Conjneg/Variant87478cbccd5b70a31b0c9bca8258ef0dd1b0634cbe27ee8c6e3d673d62eda301.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5940c85f8157fe3a969b3b1dfe735f045434342a`.

Source path: `GRWTSK/Algebra/UniversalAlgebra/Conjneg/Variant87478cbccd5b70a31b0c9bca8258ef0dd1b0634cbe27ee8c6e3d673d62eda301.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/UniversalAlgebra/Conjneg/Variant87478cbccd5b70a31b0c9bca8258ef0dd1b0634cbe27ee8c6e3d673d62eda301.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Order.Pi` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Star.Basic` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Star.Conjneg` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [conjneg_nonneg](../../../../../mathematics/Algebra/UniversalAlgebra/Conjneg/Variant87478cbccd5b70a31b0c9bca8258ef0dd1b0634cbe27ee8c6e3d673d62eda301.lean/declarations/conjneg-nonneg--fb71b816971007c77f86a92a.md) | 29 | `result-track:fb71b816971007c77f86a92a01a1844d722b5c67e2095f9b09aaf1be95a42c10` |
| 2 | `lemma` | [conjneg_pos](../../../../../mathematics/Algebra/UniversalAlgebra/Conjneg/Variant87478cbccd5b70a31b0c9bca8258ef0dd1b0634cbe27ee8c6e3d673d62eda301.lean/declarations/conjneg-pos--d251325381bf9f98c679f528.md) | 32 | `result-track:d251325381bf9f98c679f528bb8d034dab275a2758495c540e71799c1d75cdae` |
| 3 | `lemma` | [conjneg_nonpos](../../../../../mathematics/Algebra/UniversalAlgebra/Conjneg/Variant87478cbccd5b70a31b0c9bca8258ef0dd1b0634cbe27ee8c6e3d673d62eda301.lean/declarations/conjneg-nonpos--7e52af7087b20e991d3bf5e9.md) | 40 | `result-track:7e52af7087b20e991d3bf5e9fefe491e787ecf18869e0ccca3a247c463c0b0e6` |
| 4 | `lemma` | [conjneg_neg'](../../../../../mathematics/Algebra/UniversalAlgebra/Conjneg/Variant87478cbccd5b70a31b0c9bca8258ef0dd1b0634cbe27ee8c6e3d673d62eda301.lean/declarations/conjneg-neg--7db3baa747c6db9ea12dea9d.md) | 43 | `result-track:7db3baa747c6db9ea12dea9d77668011fb97eb1214f5729ed697f057485a4c9f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
