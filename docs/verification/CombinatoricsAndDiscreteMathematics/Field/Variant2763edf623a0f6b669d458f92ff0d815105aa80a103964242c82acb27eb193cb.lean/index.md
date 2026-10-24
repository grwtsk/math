# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.Field.Variant2763edf623a0f6b669d458f92ff0d815105aa80a103964242c82acb27eb193cb

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5b6aad39392837218086aacd562de5f504d5fc08",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Field/Variant2763edf623a0f6b669d458f92ff0d815105aa80a103964242c82acb27eb193cb.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Field/Variant2763edf623a0f6b669d458f92ff0d815105aa80a103964242c82acb27eb193cb.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Field/Variant2763edf623a0f6b669d458f92ff0d815105aa80a103964242c82acb27eb193cb.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5b6aad39392837218086aacd562de5f504d5fc08`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Field/Variant2763edf623a0f6b669d458f92ff0d815105aa80a103964242c82acb27eb193cb.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Field/Variant2763edf623a0f6b669d458f92ff0d815105aa80a103964242c82acb27eb193cb.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.BigOperators.Ring.Finset` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Field.Defs` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Finset.Density` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [Multiset.sum_map_div](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Field/Variant2763edf623a0f6b669d458f92ff0d815105aa80a103964242c82acb27eb193cb.lean/declarations/multiset-sum-map-div--48f097638a89983cff4110ee.md) | 26 | `result-track:48f097638a89983cff4110ee4ee1b43f6023bef03fd0ef2a1513781a27bfd292` |
| 2 | `lemma` | [Finset.sum_div](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Field/Variant2763edf623a0f6b669d458f92ff0d815105aa80a103964242c82acb27eb193cb.lean/declarations/finset-sum-div--ad7cf05c3a6e545ddc716418.md) | 30 | `result-track:ad7cf05c3a6e545ddc716418acaeba2c0dfba2ec7f45696dbe6aaa17218979b9` |
| 3 | `lemma` | [dens_disjiUnion](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Field/Variant2763edf623a0f6b669d458f92ff0d815105aa80a103964242c82acb27eb193cb.lean/declarations/dens-disjiunion--bb4782d6ce00e4aebdc862d1.md) | 39 | `result-track:bb4782d6ce00e4aebdc862d1cd4928c1196a5be8671e74d736ff1a51408fa757` |
| 4 | `lemma` | [dens_biUnion](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Field/Variant2763edf623a0f6b669d458f92ff0d815105aa80a103964242c82acb27eb193cb.lean/declarations/dens-biunion--67002166df7fce0508ba0ba9.md) | 44 | `result-track:67002166df7fce0508ba0ba9450c40feacdad043d7b39a87c663acf932f1a0c4` |
| 5 | `lemma` | [dens_biUnion_le](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Field/Variant2763edf623a0f6b669d458f92ff0d815105aa80a103964242c82acb27eb193cb.lean/declarations/dens-biunion-le--b4e72af05981327fdb24809f.md) | 48 | `result-track:b4e72af05981327fdb24809fef43b8e438d33d2478e538385fb75178b06a7bea` |
| 6 | `lemma` | [dens_eq_sum_dens_fiberwise](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Field/Variant2763edf623a0f6b669d458f92ff0d815105aa80a103964242c82acb27eb193cb.lean/declarations/dens-eq-sum-dens-fiberwise--d81e406b9f8a37ea6f235a3c.md) | 54 | `result-track:d81e406b9f8a37ea6f235a3c31c010fd76f2a945b6356ea2cfa07fd4650f8b45` |
| 7 | `lemma` | [dens_eq_sum_dens_image](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Field/Variant2763edf623a0f6b669d458f92ff0d815105aa80a103964242c82acb27eb193cb.lean/declarations/dens-eq-sum-dens-image--a480d92bddf30891d6db1d41.md) | 58 | `result-track:a480d92bddf30891d6db1d4103f4359c87aef911f72e212585ea830fc7a3a560` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
