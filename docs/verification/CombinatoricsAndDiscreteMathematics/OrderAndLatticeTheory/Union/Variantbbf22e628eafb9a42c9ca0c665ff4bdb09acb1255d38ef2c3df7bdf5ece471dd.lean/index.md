# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.Union.Variantbbf22e628eafb9a42c9ca0c665ff4bdb09acb1255d38ef2c3df7bdf5ece471dd

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2d4ff6e39217ee02c2ca4f238622665656f3c1db",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Union/Variantbbf22e628eafb9a42c9ca0c665ff4bdb09acb1255d38ef2c3df7bdf5ece471dd.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Union/Variantbbf22e628eafb9a42c9ca0c665ff4bdb09acb1255d38ef2c3df7bdf5ece471dd.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Union/Variantbbf22e628eafb9a42c9ca0c665ff4bdb09acb1255d38ef2c3df7bdf5ece471dd.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2d4ff6e39217ee02c2ca4f238622665656f3c1db`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Union/Variantbbf22e628eafb9a42c9ca0c665ff4bdb09acb1255d38ef2c3df7bdf5ece471dd.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Union/Variantbbf22e628eafb9a42c9ca0c665ff4bdb09acb1255d38ef2c3df7bdf5ece471dd.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Order.Bounds.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Interval.Set.LinearOrder` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [StrictMonoOn.union](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Union/Variantbbf22e628eafb9a42c9ca0c665ff4bdb09acb1255d38ef2c3df7bdf5ece471dd.lean/declarations/strictmonoon-union--307440c2c3988f7f64a7a206.md) | 25 | `result-track:307440c2c3988f7f64a7a206fb071176afee1dc5b21040773494773de8b4d613` |
| 2 | `theorem` | [StrictMonoOn.Iic_union_Ici](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Union/Variantbbf22e628eafb9a42c9ca0c665ff4bdb09acb1255d38ef2c3df7bdf5ece471dd.lean/declarations/strictmonoon-iic-union-ici--68ac7fd81e97b086564e463a.md) | 54 | `result-track:68ac7fd81e97b086564e463ab4f2f56c03b4867af9df2451fd79adc86a0352f4` |
| 3 | `theorem` | [StrictAntiOn.union](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Union/Variantbbf22e628eafb9a42c9ca0c665ff4bdb09acb1255d38ef2c3df7bdf5ece471dd.lean/declarations/strictantion-union--00104315c8746fe20674b3eb.md) | 61 | `result-track:00104315c8746fe20674b3ebf291b3ca679002bfcc1c8a90626b138c0629adbc` |
| 4 | `theorem` | [StrictAntiOn.Iic_union_Ici](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Union/Variantbbf22e628eafb9a42c9ca0c665ff4bdb09acb1255d38ef2c3df7bdf5ece471dd.lean/declarations/strictantion-iic-union-ici--02ad49ec08da6b8e9f02a809.md) | 67 | `result-track:02ad49ec08da6b8e9f02a8090f742d52ee923f2ba0903a509dc864e36daded67` |
| 5 | `theorem` | [MonotoneOn.union_right](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Union/Variantbbf22e628eafb9a42c9ca0c665ff4bdb09acb1255d38ef2c3df7bdf5ece471dd.lean/declarations/monotoneon-union-right--2284c98e5899b7c258f71c44.md) | 73 | `result-track:2284c98e5899b7c258f71c4437f192a4897c54778e437830a457ede60a2f9967` |
| 6 | `theorem` | [MonotoneOn.Iic_union_Ici](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Union/Variantbbf22e628eafb9a42c9ca0c665ff4bdb09acb1255d38ef2c3df7bdf5ece471dd.lean/declarations/monotoneon-iic-union-ici--0f775fa873890168986a5433.md) | 101 | `result-track:0f775fa873890168986a543307073f9eebad63ed41143316b59e4686a7402a81` |
| 7 | `theorem` | [AntitoneOn.union_right](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Union/Variantbbf22e628eafb9a42c9ca0c665ff4bdb09acb1255d38ef2c3df7bdf5ece471dd.lean/declarations/antitoneon-union-right--c9f01d2f816bd1db3dbae8b1.md) | 108 | `result-track:c9f01d2f816bd1db3dbae8b17b3c2b134c48b79865a569f348e90795644222dc` |
| 8 | `theorem` | [AntitoneOn.Iic_union_Ici](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Union/Variantbbf22e628eafb9a42c9ca0c665ff4bdb09acb1255d38ef2c3df7bdf5ece471dd.lean/declarations/antitoneon-iic-union-ici--8a0b78e37b36a4aba137c05b.md) | 113 | `result-track:8a0b78e37b36a4aba137c05b09ddfe6421cc96a50782b3e349ba01f3c0a3a0aa` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
