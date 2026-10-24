# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.Finset.Variant50d5e87a0ac564a15ed74159ef557d50334d1d82e23fc9e0b64895194c09d399

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d7b50eea655925f162e73c9f15620a0e836c8b35",
  "lexical_observation_count": 23,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Finset/Variant50d5e87a0ac564a15ed74159ef557d50334d1d82e23fc9e0b64895194c09d399.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variant50d5e87a0ac564a15ed74159ef557d50334d1d82e23fc9e0b64895194c09d399.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variant50d5e87a0ac564a15ed74159ef557d50334d1d82e23fc9e0b64895194c09d399.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d7b50eea655925f162e73c9f15620a0e836c8b35`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Finset/Variant50d5e87a0ac564a15ed74159ef557d50334d1d82e23fc9e0b64895194c09d399.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Finset/Variant50d5e87a0ac564a15ed74159ef557d50334d1d82e23fc9e0b64895194c09d399.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.BigOperators.Ring.Finset` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.AbsoluteValue.Basic` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.BigOperators.Group.Finset` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.BigOperators.Ring.Multiset` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Ring` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [prod_nonneg](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variant50d5e87a0ac564a15ed74159ef557d50334d1d82e23fc9e0b64895194c09d399.lean/declarations/prod-nonneg--979c4ff55e134efb508e16e6.md) | 40 | `result-track:979c4ff55e134efb508e16e6ab80c2c370080fdf3572c0cd404e8a61a9b624f1` |
| 2 | `lemma` | [prod_le_prod](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variant50d5e87a0ac564a15ed74159ef557d50334d1d82e23fc9e0b64895194c09d399.lean/declarations/prod-le-prod--40823a56e6567b5088fa387e.md) | 47 | `result-track:40823a56e6567b5088fa387eedeab02a5a766fac0973361dff711a6a4b3d1177` |
| 3 | `lemma` | [prod_le_one](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variant50d5e87a0ac564a15ed74159ef557d50334d1d82e23fc9e0b64895194c09d399.lean/declarations/prod-le-one--08f859571646cbf8bc1dc9f1.md) | 59 | `result-track:08f859571646cbf8bc1dc9f13f07fdcf2d54652a3d845d38cd453b3a43519ae0` |
| 4 | `lemma` | [prod_pos](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variant50d5e87a0ac564a15ed74159ef557d50334d1d82e23fc9e0b64895194c09d399.lean/declarations/prod-pos--8efcf8940a512230f2e4a6f7.md) | 68 | `result-track:8efcf8940a512230f2e4a6f7c10fab4e4c680736c91e398edf89128395dd247a` |
| 5 | `lemma` | [prod_lt_prod](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variant50d5e87a0ac564a15ed74159ef557d50334d1d82e23fc9e0b64895194c09d399.lean/declarations/prod-lt-prod--cf007ec6449c0643d1a980a2.md) | 71 | `result-track:cf007ec6449c0643d1a980a27c916f331f16c0dfba04e3de795fc123f9006271` |
| 6 | `lemma` | [prod_lt_prod_of_nonempty](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variant50d5e87a0ac564a15ed74159ef557d50334d1d82e23fc9e0b64895194c09d399.lean/declarations/prod-lt-prod-of-nonempty--fb239a80260f3a25a03b3876.md) | 84 | `result-track:fb239a80260f3a25a03b3876678f7220154d7cf905b519ca470057b11a905301` |
| 7 | `lemma` | [sum_sq_le_sq_sum_of_nonneg](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variant50d5e87a0ac564a15ed74159ef557d50334d1d82e23fc9e0b64895194c09d399.lean/declarations/sum-sq-le-sq-sum-of-nonneg--bc600e17f6b86cd286f32dff.md) | 98 | `result-track:bc600e17f6b86cd286f32dffb458414d46fcd341eaed9218b6dd4454e1a2ad17` |
| 8 | `lemma` | [prod_add_prod_le](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variant50d5e87a0ac564a15ed74159ef557d50334d1d82e23fc9e0b64895194c09d399.lean/declarations/prod-add-prod-le--02ab31a2bc34e6a5ebe5f5d0.md) | 114 | `result-track:02ab31a2bc34e6a5ebe5f5d07b2bc7d2fc7016a8a0893d54152b083c5dd0beb4` |
| 9 | `theorem` | [le_prod_of_submultiplicative_on_pred_of_nonneg](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variant50d5e87a0ac564a15ed74159ef557d50334d1d82e23fc9e0b64895194c09d399.lean/declarations/le-prod-of-submultiplicative-on-pred-of-nonneg--6492b2abfe78927391a4a729.md) | 126 | `result-track:6492b2abfe78927391a4a729cc725277a3b9278e5e5743b50647cb0dde64da48` |
| 10 | `theorem` | [le_prod_of_submultiplicative_of_nonneg](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variant50d5e87a0ac564a15ed74159ef557d50334d1d82e23fc9e0b64895194c09d399.lean/declarations/le-prod-of-submultiplicative-of-nonneg--2a5635607ff11a41a9ec8f65.md) | 137 | `result-track:2a5635607ff11a41a9ec8f652cdb6bcc055f1e08865623bf0d258e5edabb2fd5` |
| 11 | `theorem` | [sum_mul_self_eq_zero_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variant50d5e87a0ac564a15ed74159ef557d50334d1d82e23fc9e0b64895194c09d399.lean/declarations/sum-mul-self-eq-zero-iff--90b818f9697d3e6b7ac24b4f.md) | 146 | `result-track:90b818f9697d3e6b7ac24b4fd0e56967f53a627907b13516b5678692a500ba22` |
| 12 | `lemma` | [abs_prod](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variant50d5e87a0ac564a15ed74159ef557d50334d1d82e23fc9e0b64895194c09d399.lean/declarations/abs-prod--2df4ba20eb43b2772e0fad8d.md) | 152 | `result-track:2df4ba20eb43b2772e0fad8d9b1826b8eb9eca2b359235eb326fd809cfb59122` |
| 13 | `theorem` | [PNat.coe_prod](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variant50d5e87a0ac564a15ed74159ef557d50334d1d82e23fc9e0b64895194c09d399.lean/declarations/pnat-coe-prod--5b54640494dc50fda3e81004.md) | 157 | `result-track:5b54640494dc50fda3e8100477cc5ab2e36c3c66f7890cd6a4ee7454b38d1c83` |
| 14 | `lemma` | [_root_.GRWTSK.CombinatoricsAndDiscreteMathematics.ProdNonneg.Variant025e6b14f0bbceccf0370183a04055f91d6698ebf97d7d6dbaba84d500f9fd52.CanonicallyOrderedAdd.prod_pos](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variant50d5e87a0ac564a15ed74159ef557d50334d1d82e23fc9e0b64895194c09d399.lean/declarations/root-grwtsk-combinatoricsanddiscretemathematics-prodnonneg-variant025e6b--ed6d9082ef1b20869cae7b43.md) | 166 | `result-track:ed6d9082ef1b20869cae7b43164937561a33afca72cf2931cf6836d1ba7f6525` |
| 15 | `lemma` | [prod_add_prod_le'](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variant50d5e87a0ac564a15ed74159ef557d50334d1d82e23fc9e0b64895194c09d399.lean/declarations/prod-add-prod-le--e11edd299cd29287be9ff5c2.md) | 173 | `result-track:e11edd299cd29287be9ff5c2f7392d02a862d9bcb1705b7034603fd0f3f385aa` |
| 16 | `lemma` | [sum_sq_le_sum_mul_sum_of_sq_eq_mul](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variant50d5e87a0ac564a15ed74159ef557d50334d1d82e23fc9e0b64895194c09d399.lean/declarations/sum-sq-le-sum-mul-sum-of-sq-eq-mul--ae3cb50af54a9c28cdd8886c.md) | 190 | `result-track:ae3cb50af54a9c28cdd8886c648254fa5469212ab651b12aeb33e0d1e146d340` |
| 17 | `lemma` | [sum_mul_sq_le_sq_mul_sq](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variant50d5e87a0ac564a15ed74159ef557d50334d1d82e23fc9e0b64895194c09d399.lean/declarations/sum-mul-sq-le-sq-mul-sq--93179389f14577793492eded.md) | 216 | `result-track:93179389f14577793492ededc2955795468d2b6c1ccbe06f56322e23903f59af` |
| 18 | `theorem` | [sq_sum_div_le_sum_sq_div](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variant50d5e87a0ac564a15ed74159ef557d50334d1d82e23fc9e0b64895194c09d399.lean/declarations/sq-sum-div-le-sum-sq-div--2593a9f182bd88853e57a6de.md) | 226 | `result-track:2593a9f182bd88853e57a6de777e3b1d6132112e04cc5ba696b2ca361308634f` |
| 19 | `lemma` | [AbsoluteValue.sum_le](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variant50d5e87a0ac564a15ed74159ef557d50334d1d82e23fc9e0b64895194c09d399.lean/declarations/absolutevalue-sum-le--d1f95ee845b171304fb36141.md) | 243 | `result-track:d1f95ee845b171304fb36141cbf4eb57483e906e79410c2648b1d4ff61c81876` |
| 20 | `lemma` | [IsAbsoluteValue.abv_sum](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variant50d5e87a0ac564a15ed74159ef557d50334d1d82e23fc9e0b64895194c09d399.lean/declarations/isabsolutevalue-abv-sum--2d48286e59e789ab1ab9b961.md) | 248 | `result-track:2d48286e59e789ab1ab9b96123c689530c7dee0aa16d00e83cbf814f9157f53c` |
| 21 | `lemma` | [AbsoluteValue.map_prod](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variant50d5e87a0ac564a15ed74159ef557d50334d1d82e23fc9e0b64895194c09d399.lean/declarations/absolutevalue-map-prod--a3e73ddabc0f2e380e0dffbb.md) | 253 | `result-track:a3e73ddabc0f2e380e0dffbbf853424883332250e38ad066cea976cbf2415385` |
| 22 | `lemma` | [IsAbsoluteValue.map_prod](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variant50d5e87a0ac564a15ed74159ef557d50334d1d82e23fc9e0b64895194c09d399.lean/declarations/isabsolutevalue-map-prod--61bfb3a47cff26674f76c195.md) | 259 | `result-track:61bfb3a47cff26674f76c1959fa91260f3d861c1683c0835d653764a48ea2b07` |
| 23 | `def` | [evalFinsetProd](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variant50d5e87a0ac564a15ed74159ef557d50334d1d82e23fc9e0b64895194c09d399.lean/declarations/evalfinsetprod--fb615a53ef3a2e08bdfbbf0c.md) | 285 | `declaration-track:fb615a53ef3a2e08bdfbbf0c1cb27b7ccf08657cf44fec8e8aee91064d20b127` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
