# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.Defs.Variant93261d14208c57f631633e9fc005dd11419c927581a9f222d42ae3442e58cfa1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "db6ba150068fac60b823d09755d1d9b3b5eca82e",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Defs/Variant93261d14208c57f631633e9fc005dd11419c927581a9f222d42ae3442e58cfa1.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Defs/Variant93261d14208c57f631633e9fc005dd11419c927581a9f222d42ae3442e58cfa1.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Defs/Variant93261d14208c57f631633e9fc005dd11419c927581a9f222d42ae3442e58cfa1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `db6ba150068fac60b823d09755d1d9b3b5eca82e`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Defs/Variant93261d14208c57f631633e9fc005dd11419c927581a9f222d42ae3442e58cfa1.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Defs/Variant93261d14208c57f631633e9fc005dd11419c927581a9f222d42ae3442e58cfa1.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.BigOperators.Finprod` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Filter.AtTopBot.BigOperators` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Separation.Hausdorff` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [HasProd](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Defs/Variant93261d14208c57f631633e9fc005dd11419c927581a9f222d42ae3442e58cfa1.lean/declarations/hasprod--94ccd43ff704ad2cd839ab14.md) | 87 | `declaration-track:94ccd43ff704ad2cd839ab14a957f6b0557483a0cc922cff54a53305b972b21b` |
| 2 | `def` | [Multipliable](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Defs/Variant93261d14208c57f631633e9fc005dd11419c927581a9f222d42ae3442e58cfa1.lean/declarations/multipliable--4f1ad961f4b9861122acb8b4.md) | 92 | `declaration-track:4f1ad961f4b9861122acb8b4dcff2b2d54e21b5a6162fdc260b4bfca2d1458d9` |
| 3 | `theorem` | [HasProd.multipliable](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Defs/Variant93261d14208c57f631633e9fc005dd11419c927581a9f222d42ae3442e58cfa1.lean/declarations/hasprod-multipliable--691be7474c5adb23a9a33cc0.md) | 119 | `result-track:691be7474c5adb23a9a33cc00032380d19ac34b7fd2520d7985766f3284d96d4` |
| 4 | `theorem` | [tprod_eq_one_of_not_multipliable](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Defs/Variant93261d14208c57f631633e9fc005dd11419c927581a9f222d42ae3442e58cfa1.lean/declarations/tprod-eq-one-of-not-multipliable--6a2dae1ca2e9b02a897359de.md) | 123 | `result-track:6a2dae1ca2e9b02a897359dee72eb4d64903a1962852ca9b6c3e9ac78ae5a275` |
| 5 | `theorem` | [Function.Injective.hasProd_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Defs/Variant93261d14208c57f631633e9fc005dd11419c927581a9f222d42ae3442e58cfa1.lean/declarations/function-injective-hasprod-iff--e1a5e1d2302983fa208eadf5.md) | 127 | `result-track:e1a5e1d2302983fa208eadf520c415a474147a606bf84a98cc183cf3b73bd0f3` |
| 6 | `theorem` | [hasProd_subtype_iff_of_mulSupport_subset](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Defs/Variant93261d14208c57f631633e9fc005dd11419c927581a9f222d42ae3442e58cfa1.lean/declarations/hasprod-subtype-iff-of-mulsupport-subset--907f9f257693f0f9396d311c.md) | 132 | `result-track:907f9f257693f0f9396d311c8dac860f974ff2eedfdcdf55da0e260f75681dea` |
| 7 | `theorem` | [hasProd_fintype](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Defs/Variant93261d14208c57f631633e9fc005dd11419c927581a9f222d42ae3442e58cfa1.lean/declarations/hasprod-fintype--9950c0e21d0e7aaeee29f837.md) | 137 | `result-track:9950c0e21d0e7aaeee29f8377ccafcb23d57346aab735a00d9ba0e96552adfcb` |
| 8 | `theorem` | [Finset.hasProd](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Defs/Variant93261d14208c57f631633e9fc005dd11419c927581a9f222d42ae3442e58cfa1.lean/declarations/finset-hasprod--0f49794419bfe1f15e280d50.md) | 141 | `result-track:0f49794419bfe1f15e280d5028727ade083d61ace53f09a3cb58763e5d9afa02` |
| 9 | `theorem` | [hasProd_prod_of_ne_finset_one](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Defs/Variant93261d14208c57f631633e9fc005dd11419c927581a9f222d42ae3442e58cfa1.lean/declarations/hasprod-prod-of-ne-finset-one--aab9e6301f3b6fed32123a43.md) | 149 | `result-track:aab9e6301f3b6fed32123a43d1da2b7a279809102cc428a911566d3ca99002b1` |
| 10 | `theorem` | [multipliable_of_ne_finset_one](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Defs/Variant93261d14208c57f631633e9fc005dd11419c927581a9f222d42ae3442e58cfa1.lean/declarations/multipliable-of-ne-finset-one--7d7b0c9c3e1c3b1446c9bc26.md) | 154 | `result-track:7d7b0c9c3e1c3b1446c9bc2606d571862667172c83c2921decdde1f9a2e37e57` |
| 11 | `theorem` | [Multipliable.hasProd](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Defs/Variant93261d14208c57f631633e9fc005dd11419c927581a9f222d42ae3442e58cfa1.lean/declarations/multipliable-hasprod--45de5d1d25db09ef2edb81d8.md) | 158 | `result-track:45de5d1d25db09ef2edb81d8aff381219eaa5dfdee612e51332865cacdabb4e3` |
| 12 | `theorem` | [HasProd.unique](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Defs/Variant93261d14208c57f631633e9fc005dd11419c927581a9f222d42ae3442e58cfa1.lean/declarations/hasprod-unique--9196e518215338c4c1deb2e6.md) | 165 | `result-track:9196e518215338c4c1deb2e623acdfbfb633561560f8c3cf76f68b294b690c46` |
| 13 | `theorem` | [HasProd.tprod_eq](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Defs/Variant93261d14208c57f631633e9fc005dd11419c927581a9f222d42ae3442e58cfa1.lean/declarations/hasprod-tprod-eq--8e670c831076743a0a7be094.md) | 171 | `result-track:8e670c831076743a0a7be094e240bec4645df79c3ea6141f1bd07479be16afc8` |
| 14 | `theorem` | [Multipliable.hasProd_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Defs/Variant93261d14208c57f631633e9fc005dd11419c927581a9f222d42ae3442e58cfa1.lean/declarations/multipliable-hasprod-iff--b67bfc7e0703f2475b9eee0d.md) | 175 | `result-track:b67bfc7e0703f2475b9eee0da76adf9451425ae0df07a7c92b30238d5aac5c1a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
