# Verification target: GRWTSK.Algebra.PointsPi.Variant5ac8966b2ec102647685c57d2e5b7f8b7ee0e41d57c69c5bbcc40a4ab8b9711b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9e1bf693e98ab823106ec19179a3ef4f9eb04470",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/PointsPi/Variant5ac8966b2ec102647685c57d2e5b7f8b7ee0e41d57c69c5bbcc40a4ab8b9711b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/PointsPi/Variant5ac8966b2ec102647685c57d2e5b7f8b7ee0e41d57c69c5bbcc40a4ab8b9711b.lean/index.md) · [Full source](../../../../mathematics/Algebra/PointsPi/Variant5ac8966b2ec102647685c57d2e5b7f8b7ee0e41d57c69c5bbcc40a4ab8b9711b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9e1bf693e98ab823106ec19179a3ef4f9eb04470`.

Source path: `GRWTSK/Algebra/PointsPi/Variant5ac8966b2ec102647685c57d2e5b7f8b7ee0e41d57c69c5bbcc40a4ab8b9711b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/PointsPi/Variant5ac8966b2ec102647685c57d2e5b7f8b7ee0e41d57c69c5bbcc40a4ab8b9711b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.AlgebraicGeometry.Morphisms.Immersion` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [Ideal.span_eq_top_of_span_image_evalRingHom](../../../../mathematics/Algebra/PointsPi/Variant5ac8966b2ec102647685c57d2e5b7f8b7ee0e41d57c69c5bbcc40a4ab8b9711b.lean/declarations/ideal-span-eq-top-of-span-image-evalringhom--dfcd0358b3900a961bc5b9b5.md) | 33 | `result-track:dfcd0358b3900a961bc5b9b540f435a1befa337c5b0df6a8de0821d1f5f81de1` |
| 2 | `lemma` | [eq_top_of_sigmaSpec_subset_of_isCompact](../../../../mathematics/Algebra/PointsPi/Variant5ac8966b2ec102647685c57d2e5b7f8b7ee0e41d57c69c5bbcc40a4ab8b9711b.lean/declarations/eq-top-of-sigmaspec-subset-of-iscompact--aebd8410dfb63462d3269da0.md) | 45 | `result-track:aebd8410dfb63462d3269da0c28799379e40c79f7d54858e4b545dffe676b926` |
| 3 | `lemma` | [eq_bot_of_comp_quotientMk_eq_sigmaSpec](../../../../mathematics/Algebra/PointsPi/Variant5ac8966b2ec102647685c57d2e5b7f8b7ee0e41d57c69c5bbcc40a4ab8b9711b.lean/declarations/eq-bot-of-comp-quotientmk-eq-sigmaspec--394aec9369b42df2003cde25.md) | 69 | `result-track:394aec9369b42df2003cde252b4835afbdab20b74fd4c7ed705ce60d1ad459af` |
| 4 | `lemma` | [isIso_of_comp_eq_sigmaSpec](../../../../mathematics/Algebra/PointsPi/Variant5ac8966b2ec102647685c57d2e5b7f8b7ee0e41d57c69c5bbcc40a4ab8b9711b.lean/declarations/isiso-of-comp-eq-sigmaspec--b6ce2880f49d944c03880fb0.md) | 80 | `result-track:b6ce2880f49d944c03880fb086229a826a0aafd264e796a1726da827bacc5d92` |
| 5 | `def` | [pointsPi](../../../../mathematics/Algebra/PointsPi/Variant5ac8966b2ec102647685c57d2e5b7f8b7ee0e41d57c69c5bbcc40a4ab8b9711b.lean/declarations/pointspi--8f64adc0fc35d3b6ceacf7b1.md) | 103 | `declaration-track:8f64adc0fc35d3b6ceacf7b141fdebab584bf7d4edf7ead5f06df7d076d5bf61` |
| 6 | `lemma` | [pointsPi_injective](../../../../mathematics/Algebra/PointsPi/Variant5ac8966b2ec102647685c57d2e5b7f8b7ee0e41d57c69c5bbcc40a4ab8b9711b.lean/declarations/pointspi-injective--8c6af4b8c20ee10ad62c9d18.md) | 106 | `result-track:8c6af4b8c20ee10ad62c9d1803bd5581e39ddb123642583e0d222e6390f2ceb4` |
| 7 | `lemma` | [pointsPi_surjective_of_isAffine](../../../../mathematics/Algebra/PointsPi/Variant5ac8966b2ec102647685c57d2e5b7f8b7ee0e41d57c69c5bbcc40a4ab8b9711b.lean/declarations/pointspi-surjective-of-isaffine--d93cc56ae088a412275005a5.md) | 113 | `result-track:d93cc56ae088a412275005a5cb74254b9eba026fa33f792286c4c244b0e696fc` |
| 8 | `lemma` | [pointsPi_surjective](../../../../mathematics/Algebra/PointsPi/Variant5ac8966b2ec102647685c57d2e5b7f8b7ee0e41d57c69c5bbcc40a4ab8b9711b.lean/declarations/pointspi-surjective--9eaac44f7cbb0d50bb9eff51.md) | 121 | `result-track:9eaac44f7cbb0d50bb9eff51b84e9b8bc57a8854890ea9b3c9da4e1141d3598a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
