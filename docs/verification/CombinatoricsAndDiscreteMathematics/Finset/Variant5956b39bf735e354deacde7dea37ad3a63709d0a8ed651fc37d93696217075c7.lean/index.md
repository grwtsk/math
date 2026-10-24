# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.Finset.Variant5956b39bf735e354deacde7dea37ad3a63709d0a8ed651fc37d93696217075c7

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ee6bd10227a83705fb5f8c8008b0e1b7c0b40b6b",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Finset/Variant5956b39bf735e354deacde7dea37ad3a63709d0a8ed651fc37d93696217075c7.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variant5956b39bf735e354deacde7dea37ad3a63709d0a8ed651fc37d93696217075c7.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variant5956b39bf735e354deacde7dea37ad3a63709d0a8ed651fc37d93696217075c7.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ee6bd10227a83705fb5f8c8008b0e1b7c0b40b6b`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Finset/Variant5956b39bf735e354deacde7dea37ad3a63709d0a8ed651fc37d93696217075c7.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Finset/Variant5956b39bf735e354deacde7dea37ad3a63709d0a8ed651fc37d93696217075c7.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Order.GroupWithZero.Canonical` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.GroupWithZero.Unbundled.OrderIso` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Finset.Lattice.Fold` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [sup_mul_le_mul_sup_of_nonneg](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variant5956b39bf735e354deacde7dea37ad3a63709d0a8ed651fc37d93696217075c7.lean/declarations/sup-mul-le-mul-sup-of-nonneg--a3a9aac3cc943b2f432c3730.md) | 28 | `result-track:a3a9aac3cc943b2f432c3730ecbf80a4fbcdd1ec7ec33faea7d50362f044d4e4` |
| 2 | `lemma` | [mul_inf_le_inf_mul_of_nonneg](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variant5956b39bf735e354deacde7dea37ad3a63709d0a8ed651fc37d93696217075c7.lean/declarations/mul-inf-le-inf-mul-of-nonneg--0b23233a98a76d1e5e0a297a.md) | 33 | `result-track:0b23233a98a76d1e5e0a297add278a93eb6e3ae8bf39acb8a611a441334db93a` |
| 3 | `lemma` | [sup'_mul_le_mul_sup'_of_nonneg](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variant5956b39bf735e354deacde7dea37ad3a63709d0a8ed651fc37d93696217075c7.lean/declarations/sup-mul-le-mul-sup-of-nonneg--b7d1f825f217200e42dbc6aa.md) | 37 | `result-track:b7d1f825f217200e42dbc6aabfce3d282c97f730128abb0273b056dbad62bb43` |
| 4 | `lemma` | [inf'_mul_le_mul_inf'_of_nonneg](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variant5956b39bf735e354deacde7dea37ad3a63709d0a8ed651fc37d93696217075c7.lean/declarations/inf-mul-le-mul-inf-of-nonneg--dc423967ff55d53087225fc1.md) | 43 | `result-track:dc423967ff55d53087225fc13a2a6ddece335d0874de2c4135e3b0a8c3181a83` |
| 5 | `lemma` | [sup'_mul₀](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variant5956b39bf735e354deacde7dea37ad3a63709d0a8ed651fc37d93696217075c7.lean/declarations/sup-mul--acf27bcdb6d580a6785d5759.md) | 53 | `result-track:acf27bcdb6d580a6785d5759d59d0afbc58a9fdcd93967eac629f11574fe0d5d` |
| 6 | `lemma` | [mul₀_sup'](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variant5956b39bf735e354deacde7dea37ad3a63709d0a8ed651fc37d93696217075c7.lean/declarations/mul-sup--c730a65288dd72a9be934b93.md) | 57 | `result-track:c730a65288dd72a9be934b93b04ee0adbc251d3be9e129e2821ccfb6fd35b682` |
| 7 | `lemma` | [sup'_div₀](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variant5956b39bf735e354deacde7dea37ad3a63709d0a8ed651fc37d93696217075c7.lean/declarations/sup-div--177378ea9fd3d0722f64693d.md) | 60 | `result-track:177378ea9fd3d0722f64693da62690362e249087c1e777bbf37f04ce44e53471` |
| 8 | `lemma` | [sup_div₀](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variant5956b39bf735e354deacde7dea37ad3a63709d0a8ed651fc37d93696217075c7.lean/declarations/sup-div--eb437e6d946e2a1057446814.md) | 66 | `result-track:eb437e6d946e2a1057446814567b682d03503b20f057076d0bc16dc28da0319b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
