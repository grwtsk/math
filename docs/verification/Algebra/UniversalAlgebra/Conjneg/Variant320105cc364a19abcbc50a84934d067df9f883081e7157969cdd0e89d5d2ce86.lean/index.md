# Verification target: GRWTSK.Algebra.UniversalAlgebra.Conjneg.Variant320105cc364a19abcbc50a84934d067df9f883081e7157969cdd0e89d5d2ce86

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9a25fd347ad523fefa50e43959cf19db07e7238f",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/UniversalAlgebra/Conjneg/Variant320105cc364a19abcbc50a84934d067df9f883081e7157969cdd0e89d5d2ce86.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/UniversalAlgebra/Conjneg/Variant320105cc364a19abcbc50a84934d067df9f883081e7157969cdd0e89d5d2ce86.lean/index.md) · [Full source](../../../../../mathematics/Algebra/UniversalAlgebra/Conjneg/Variant320105cc364a19abcbc50a84934d067df9f883081e7157969cdd0e89d5d2ce86.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9a25fd347ad523fefa50e43959cf19db07e7238f`.

Source path: `GRWTSK/Algebra/UniversalAlgebra/Conjneg/Variant320105cc364a19abcbc50a84934d067df9f883081e7157969cdd0e89d5d2ce86.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/UniversalAlgebra/Conjneg/Variant320105cc364a19abcbc50a84934d067df9f883081e7157969cdd0e89d5d2ce86.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Order.Pi` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Star.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Star.Conjneg` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [conjneg_nonneg](../../../../../mathematics/Algebra/UniversalAlgebra/Conjneg/Variant320105cc364a19abcbc50a84934d067df9f883081e7157969cdd0e89d5d2ce86.lean/declarations/conjneg-nonneg--910126919a872ddeafa55e18.md) | 21 | `result-track:910126919a872ddeafa55e188aa1829d8d9216c048ccc86512df9cdd6ed7035a` |
| 2 | `lemma` | [conjneg_pos](../../../../../mathematics/Algebra/UniversalAlgebra/Conjneg/Variant320105cc364a19abcbc50a84934d067df9f883081e7157969cdd0e89d5d2ce86.lean/declarations/conjneg-pos--d67d750e7ce73dfb46e7c66f.md) | 24 | `result-track:d67d750e7ce73dfb46e7c66faebc9cb6100b9ab5e002df38347908c8a2e16bbb` |
| 3 | `lemma` | [conjneg_nonpos](../../../../../mathematics/Algebra/UniversalAlgebra/Conjneg/Variant320105cc364a19abcbc50a84934d067df9f883081e7157969cdd0e89d5d2ce86.lean/declarations/conjneg-nonpos--b173886aca77501c86dc7ec0.md) | 32 | `result-track:b173886aca77501c86dc7ec06e3fd638bedb8b4e7efa34f7dad64699600410ff` |
| 4 | `lemma` | [conjneg_neg'](../../../../../mathematics/Algebra/UniversalAlgebra/Conjneg/Variant320105cc364a19abcbc50a84934d067df9f883081e7157969cdd0e89d5d2ce86.lean/declarations/conjneg-neg--2226ed620632317d56c23c2c.md) | 35 | `result-track:2226ed620632317d56c23c2c5c2d8d94666126cbf8f50bc966e856050a08b630` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
