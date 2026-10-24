# Verification target: GRWTSK.Algebra.List.Variant6cb5536a3384b3e875d3dbba0d4ad7bd0f8e2fde8ba31fea58860ea4a58a9e40

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5e4ade3c89e86e4574122e851da027cd174215af",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/List/Variant6cb5536a3384b3e875d3dbba0d4ad7bd0f8e2fde8ba31fea58860ea4a58a9e40.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/List/Variant6cb5536a3384b3e875d3dbba0d4ad7bd0f8e2fde8ba31fea58860ea4a58a9e40.lean/index.md) · [Full source](../../../../mathematics/Algebra/List/Variant6cb5536a3384b3e875d3dbba0d4ad7bd0f8e2fde8ba31fea58860ea4a58a9e40.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5e4ade3c89e86e4574122e851da027cd174215af`.

Source path: `GRWTSK/Algebra/List/Variant6cb5536a3384b3e875d3dbba0d4ad7bd0f8e2fde8ba31fea58860ea4a58a9e40.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/List/Variant6cb5536a3384b3e875d3dbba0d4ad7bd0f8e2fde8ba31fea58860ea4a58a9e40.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.BigOperators.Group.List.Defs` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.GroupWithZero.Unbundled.Basic` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [prod_nonneg](../../../../mathematics/Algebra/List/Variant6cb5536a3384b3e875d3dbba0d4ad7bd0f8e2fde8ba31fea58860ea4a58a9e40.lean/declarations/prod-nonneg--92ef6b99c09f6ca09d093b1d.md) | 19 | `result-track:92ef6b99c09f6ca09d093b1d10ff35ca1ba5db9034cff3c40c5959258e3b09ca` |
| 2 | `lemma` | [one_le_prod](../../../../mathematics/Algebra/List/Variant6cb5536a3384b3e875d3dbba0d4ad7bd0f8e2fde8ba31fea58860ea4a58a9e40.lean/declarations/one-le-prod--2b3e6d17ffc06b1566ff6ccf.md) | 28 | `result-track:2b3e6d17ffc06b1566ff6ccf738d3c8752a0dc59d5e686988c648047047ab5e0` |
| 3 | `theorem` | [prod_map_le_prod_map₀](../../../../mathematics/Algebra/List/Variant6cb5536a3384b3e875d3dbba0d4ad7bd0f8e2fde8ba31fea58860ea4a58a9e40.lean/declarations/prod-map-le-prod-map--d1ff720dca31118002321ec2.md) | 36 | `result-track:d1ff720dca31118002321ec29ddfac448b4bf7d41c9045c1d43072e4be46995e` |
| 4 | `theorem` | [prod_map_le_pow_length₀](../../../../mathematics/Algebra/List/Variant6cb5536a3384b3e875d3dbba0d4ad7bd0f8e2fde8ba31fea58860ea4a58a9e40.lean/declarations/prod-map-le-pow-length--b55c738e65b076f04dcf331f.md) | 61 | `result-track:b55c738e65b076f04dcf331fc4e6e2d70a693ef77c2bac1a67bfba27c39bbbad` |
| 5 | `lemma` | [prod_pos](../../../../mathematics/Algebra/List/Variant6cb5536a3384b3e875d3dbba0d4ad7bd0f8e2fde8ba31fea58860ea4a58a9e40.lean/declarations/prod-pos--46a5748c26592e46cf82e5dc.md) | 70 | `result-track:46a5748c26592e46cf82e5dc8ae78f78ac9d4f8c2ce88de71e98ca26f06693f1` |
| 6 | `theorem` | [prod_map_lt_prod_map](../../../../mathematics/Algebra/List/Variant6cb5536a3384b3e875d3dbba0d4ad7bd0f8e2fde8ba31fea58860ea4a58a9e40.lean/declarations/prod-map-lt-prod-map--7a5270176306f18ac90ef150.md) | 78 | `result-track:7a5270176306f18ac90ef15058ad011857bdc98939404bb47960f5a0a671929d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
