# Verification target: GRWTSK.Algebra.UniversalAlgebra.Star.Variant1a91d3f4ffcf5e3a3546626b05cb44faa9737b232ed397bf61051da652e73f05

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "088dcfbacbbdfaecacc9aedd1e0eca8d1a50bd17",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/UniversalAlgebra/Star/Variant1a91d3f4ffcf5e3a3546626b05cb44faa9737b232ed397bf61051da652e73f05.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/UniversalAlgebra/Star/Variant1a91d3f4ffcf5e3a3546626b05cb44faa9737b232ed397bf61051da652e73f05.lean/index.md) · [Full source](../../../../../mathematics/Algebra/UniversalAlgebra/Star/Variant1a91d3f4ffcf5e3a3546626b05cb44faa9737b232ed397bf61051da652e73f05.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `088dcfbacbbdfaecacc9aedd1e0eca8d1a50bd17`.

Source path: `GRWTSK/Algebra/UniversalAlgebra/Star/Variant1a91d3f4ffcf5e3a3546626b05cb44faa9737b232ed397bf61051da652e73f05.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/UniversalAlgebra/Star/Variant1a91d3f4ffcf5e3a3546626b05cb44faa9737b232ed397bf61051da652e73f05.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.GroupWithZero.Commute` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Monoid.Submonoid` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Ring.Abs` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Star.Basic` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Data.NNRat.Order` — import line 15; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.FieldSimp` — import line 16; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [addSubmonoid_closure_range_pow](../../../../../mathematics/Algebra/UniversalAlgebra/Star/Variant1a91d3f4ffcf5e3a3546626b05cb44faa9737b232ed397bf61051da652e73f05.lean/declarations/addsubmonoid-closure-range-pow--0542852002ba7116a1339092.md) | 33 | `result-track:0542852002ba7116a1339092333ac1f2643183daf1809855e28159a49a3bffa5` |
| 2 | `lemma` | [addSubmonoid_closure_range_mul_self](../../../../../mathematics/Algebra/UniversalAlgebra/Star/Variant1a91d3f4ffcf5e3a3546626b05cb44faa9737b232ed397bf61051da652e73f05.lean/declarations/addsubmonoid-closure-range-mul-self--d495fca29f3892a70fc85988.md) | 45 | `result-track:d495fca29f3892a70fc85988dcec86b46be6324529fa219289c862a6963f3343` |
| 3 | `instance` | [instStarOrderedRing](../../../../../mathematics/Algebra/UniversalAlgebra/Star/Variant1a91d3f4ffcf5e3a3546626b05cb44faa9737b232ed397bf61051da652e73f05.lean/declarations/inststarorderedring--2046c3bb81396d2605c90f1f.md) | 48 | `declaration-track:2046c3bb81396d2605c90f1f612d2a3c9ca4a11e86684859c56a71d0cf9c3147` |
| 4 | `lemma` | [addSubmonoid_closure_range_pow](../../../../../mathematics/Algebra/UniversalAlgebra/Star/Variant1a91d3f4ffcf5e3a3546626b05cb44faa9737b232ed397bf61051da652e73f05.lean/declarations/addsubmonoid-closure-range-pow--60b50a70434886e09169c410.md) | 55 | `result-track:60b50a70434886e09169c410f7de12ea99a2383c6326ee0250fe8d81e3120882` |
| 5 | `lemma` | [addSubmonoid_closure_range_mul_self](../../../../../mathematics/Algebra/UniversalAlgebra/Star/Variant1a91d3f4ffcf5e3a3546626b05cb44faa9737b232ed397bf61051da652e73f05.lean/declarations/addsubmonoid-closure-range-mul-self--a682e3feaff99a166f44648c.md) | 64 | `result-track:a682e3feaff99a166f44648c1e41e0928f68b3eaacfbfa25dea2d4d8cf491c28` |
| 6 | `instance` | [instStarOrderedRing](../../../../../mathematics/Algebra/UniversalAlgebra/Star/Variant1a91d3f4ffcf5e3a3546626b05cb44faa9737b232ed397bf61051da652e73f05.lean/declarations/inststarorderedring--b34643734c0132f315a768cf.md) | 67 | `declaration-track:b34643734c0132f315a768cf8ac1e0d54e020f036063259dd3a820ca657325ed` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
