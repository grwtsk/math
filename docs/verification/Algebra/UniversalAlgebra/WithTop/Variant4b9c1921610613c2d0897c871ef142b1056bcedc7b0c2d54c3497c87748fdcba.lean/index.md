# Verification target: GRWTSK.Algebra.UniversalAlgebra.WithTop.Variant4b9c1921610613c2d0897c871ef142b1056bcedc7b0c2d54c3497c87748fdcba

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9a06679259d5c0acc174bb5500eb98476e990e5c",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/UniversalAlgebra/WithTop/Variant4b9c1921610613c2d0897c871ef142b1056bcedc7b0c2d54c3497c87748fdcba.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/UniversalAlgebra/WithTop/Variant4b9c1921610613c2d0897c871ef142b1056bcedc7b0c2d54c3497c87748fdcba.lean/index.md) · [Full source](../../../../../mathematics/Algebra/UniversalAlgebra/WithTop/Variant4b9c1921610613c2d0897c871ef142b1056bcedc7b0c2d54c3497c87748fdcba.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9a06679259d5c0acc174bb5500eb98476e990e5c`.

Source path: `GRWTSK/Algebra/UniversalAlgebra/WithTop/Variant4b9c1921610613c2d0897c871ef142b1056bcedc7b0c2d54c3497c87748fdcba.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/UniversalAlgebra/WithTop/Variant4b9c1921610613c2d0897c871ef142b1056bcedc7b0c2d54c3497c87748fdcba.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Order.Sub.Defs` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Monoid.Unbundled.WithTop` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [sub](../../../../../mathematics/Algebra/UniversalAlgebra/WithTop/Variant4b9c1921610613c2d0897c871ef142b1056bcedc7b0c2d54c3497c87748fdcba.lean/declarations/sub--af8e3dedee321e664730df81.md) | 33 | `declaration-track:af8e3dedee321e664730df8172c4e9ddc175cbeed619413ee3bf50434ca070e4` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/UniversalAlgebra/WithTop/Variant4b9c1921610613c2d0897c871ef142b1056bcedc7b0c2d54c3497c87748fdcba.lean/declarations/instance--5c954c53d8175d0c8aa17969.md) | 38 | `declaration-track:5c954c53d8175d0c8aa1796943b191c790309176c27aff607dee00248ea60b27` |
| 3 | `theorem` | [coe_sub](../../../../../mathematics/Algebra/UniversalAlgebra/WithTop/Variant4b9c1921610613c2d0897c871ef142b1056bcedc7b0c2d54c3497c87748fdcba.lean/declarations/coe-sub--d48ded31fe231f55e3df02b0.md) | 42 | `result-track:d48ded31fe231f55e3df02b057b2324d6d77013fd7753bf164982fc84790086d` |
| 4 | `theorem` | [top_sub_coe](../../../../../mathematics/Algebra/UniversalAlgebra/WithTop/Variant4b9c1921610613c2d0897c871ef142b1056bcedc7b0c2d54c3497c87748fdcba.lean/declarations/top-sub-coe--484755dde49b12827f6e2306.md) | 46 | `result-track:484755dde49b12827f6e2306ea7e8e26e766181f4e048ae451f5570692da7872` |
| 5 | `theorem` | [sub_top](../../../../../mathematics/Algebra/UniversalAlgebra/WithTop/Variant4b9c1921610613c2d0897c871ef142b1056bcedc7b0c2d54c3497c87748fdcba.lean/declarations/sub-top--5736b85d921ded6a4f5eefc1.md) | 50 | `result-track:5736b85d921ded6a4f5eefc122b1fd562419433a3637b48c8dc13629a8ca5e55` |
| 6 | `theorem` | [sub_eq_top_iff](../../../../../mathematics/Algebra/UniversalAlgebra/WithTop/Variant4b9c1921610613c2d0897c871ef142b1056bcedc7b0c2d54c3497c87748fdcba.lean/declarations/sub-eq-top-iff--f5d6756999cd4891e9ed1b66.md) | 52 | `result-track:f5d6756999cd4891e9ed1b6692d4d0bed03627583cfb305e528500ab556b4aff` |
| 7 | `lemma` | [sub_ne_top_iff](../../../../../mathematics/Algebra/UniversalAlgebra/WithTop/Variant4b9c1921610613c2d0897c871ef142b1056bcedc7b0c2d54c3497c87748fdcba.lean/declarations/sub-ne-top-iff--9a15d196748a2ae857562623.md) | 57 | `result-track:9a15d196748a2ae857562623cf221e2755cc53039045f74dcaafce7904d6e569` |
| 8 | `theorem` | [map_sub](../../../../../mathematics/Algebra/UniversalAlgebra/WithTop/Variant4b9c1921610613c2d0897c871ef142b1056bcedc7b0c2d54c3497c87748fdcba.lean/declarations/map-sub--5aba82f63b24bc6179a2a58b.md) | 60 | `result-track:5aba82f63b24bc6179a2a58b388f5e971941269a77f6e79c0acc5d8739371482` |
| 9 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/UniversalAlgebra/WithTop/Variant4b9c1921610613c2d0897c871ef142b1056bcedc7b0c2d54c3497c87748fdcba.lean/declarations/instance--93f56a4d959931c5a2672fd4.md) | 70 | `declaration-track:93f56a4d959931c5a2672fd45580cb02aae5bc6978521601c5be6fe62a7d427e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
