# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.Fold.Variantaa7039a9d8553d50bea0348e40adaff09f1ecf4abdb38a10aaeaea97eb882f69

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "01320a027a2b7c40f4905080447f19fc133e6230",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Fold/Variantaa7039a9d8553d50bea0348e40adaff09f1ecf4abdb38a10aaeaea97eb882f69.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Fold/Variantaa7039a9d8553d50bea0348e40adaff09f1ecf4abdb38a10aaeaea97eb882f69.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Fold/Variantaa7039a9d8553d50bea0348e40adaff09f1ecf4abdb38a10aaeaea97eb882f69.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `01320a027a2b7c40f4905080447f19fc133e6230`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Fold/Variantaa7039a9d8553d50bea0348e40adaff09f1ecf4abdb38a10aaeaea97eb882f69.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Fold/Variantaa7039a9d8553d50bea0348e40adaff09f1ecf4abdb38a10aaeaea97eb882f69.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Multiset.Dedup` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [fold](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Fold/Variantaa7039a9d8553d50bea0348e40adaff09f1ecf4abdb38a10aaeaea97eb882f69.lean/declarations/fold--ae52f05bdd2dd16707815660.md) | 27 | `declaration-track:ae52f05bdd2dd16707815660debfddbe08c75961f0e079f95685f62ba727eb2c` |
| 2 | `theorem` | [fold_eq_foldr](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Fold/Variantaa7039a9d8553d50bea0348e40adaff09f1ecf4abdb38a10aaeaea97eb882f69.lean/declarations/fold-eq-foldr--7afd4d579c868495f9fdd228.md) | 30 | `result-track:7afd4d579c868495f9fdd22889f2b35b9ced20474df1a35aae08e8ae70ac6236` |
| 3 | `theorem` | [coe_fold_r](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Fold/Variantaa7039a9d8553d50bea0348e40adaff09f1ecf4abdb38a10aaeaea97eb882f69.lean/declarations/coe-fold-r--0b97a140855d1c1cb58a1786.md) | 35 | `result-track:0b97a140855d1c1cb58a1786ab4a77b7d3f9d5eb53845358749e14ec9e5fd84b` |
| 4 | `theorem` | [coe_fold_l](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Fold/Variantaa7039a9d8553d50bea0348e40adaff09f1ecf4abdb38a10aaeaea97eb882f69.lean/declarations/coe-fold-l--23aec88977daeb9689ae13a9.md) | 38 | `result-track:23aec88977daeb9689ae13a9701930ba7f86985f53f5789111b8f668e5535ded` |
| 5 | `theorem` | [fold_eq_foldl](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Fold/Variantaa7039a9d8553d50bea0348e40adaff09f1ecf4abdb38a10aaeaea97eb882f69.lean/declarations/fold-eq-foldl--83acb8bbccf3a3ed99d0cd2d.md) | 41 | `result-track:83acb8bbccf3a3ed99d0cd2ddd44c49d502e80faf2a3781ab7816d964ff20bf3` |
| 6 | `theorem` | [fold_zero](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Fold/Variantaa7039a9d8553d50bea0348e40adaff09f1ecf4abdb38a10aaeaea97eb882f69.lean/declarations/fold-zero--058e82d53d90596edee4e8bc.md) | 46 | `result-track:058e82d53d90596edee4e8bc57214967124851158899d6e45876d1f7d345bf06` |
| 7 | `theorem` | [fold_cons_left](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Fold/Variantaa7039a9d8553d50bea0348e40adaff09f1ecf4abdb38a10aaeaea97eb882f69.lean/declarations/fold-cons-left--a558440be4a4949d044d3962.md) | 50 | `result-track:a558440be4a4949d044d3962240b8c167a36e3e487956672912d8c5263939560` |
| 8 | `theorem` | [fold_cons_right](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Fold/Variantaa7039a9d8553d50bea0348e40adaff09f1ecf4abdb38a10aaeaea97eb882f69.lean/declarations/fold-cons-right--39bcbc07b097ed5037555a88.md) | 53 | `result-track:39bcbc07b097ed5037555a88cf52dc4d361089e2751b5b8eeac6787721455ad6` |
| 9 | `theorem` | [fold_cons'_right](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Fold/Variantaa7039a9d8553d50bea0348e40adaff09f1ecf4abdb38a10aaeaea97eb882f69.lean/declarations/fold-cons-right--b4af49993912181f06fa772d.md) | 56 | `result-track:b4af49993912181f06fa772d03bfc6b191f12c3e024c15e0ee65186fcc27c471` |
| 10 | `theorem` | [fold_cons'_left](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Fold/Variantaa7039a9d8553d50bea0348e40adaff09f1ecf4abdb38a10aaeaea97eb882f69.lean/declarations/fold-cons-left--a284c69e901af66311354053.md) | 59 | `result-track:a284c69e901af663113540532d87bc787a4e0046ab7a6e291ff9937dad128c59` |
| 11 | `theorem` | [fold_add](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Fold/Variantaa7039a9d8553d50bea0348e40adaff09f1ecf4abdb38a10aaeaea97eb882f69.lean/declarations/fold-add--80d8952cc0225c91440f69a4.md) | 62 | `result-track:80d8952cc0225c91440f69a4f9b65815acd7f100cc25e86795b0b239324e5978` |
| 12 | `theorem` | [fold_singleton](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Fold/Variantaa7039a9d8553d50bea0348e40adaff09f1ecf4abdb38a10aaeaea97eb882f69.lean/declarations/fold-singleton--0dfe9d881fae6391ce979a77.md) | 69 | `result-track:0dfe9d881fae6391ce979a77121e09b43d29986db7973d0e61249b69d0150195` |
| 13 | `theorem` | [fold_distrib](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Fold/Variantaa7039a9d8553d50bea0348e40adaff09f1ecf4abdb38a10aaeaea97eb882f69.lean/declarations/fold-distrib--4ea067427df1fff29d01a6d2.md) | 72 | `result-track:4ea067427df1fff29d01a6d223518472682f328dd791d86d496b12aa4ccf3b21` |
| 14 | `theorem` | [fold_hom](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Fold/Variantaa7039a9d8553d50bea0348e40adaff09f1ecf4abdb38a10aaeaea97eb882f69.lean/declarations/fold-hom--d9598e21d67ba3016dcf99f9.md) | 79 | `result-track:d9598e21d67ba3016dcf99f96af9a458f50cf28903fbb2432a3cb006925b4bb1` |
| 15 | `theorem` | [fold_union_inter](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Fold/Variantaa7039a9d8553d50bea0348e40adaff09f1ecf4abdb38a10aaeaea97eb882f69.lean/declarations/fold-union-inter--b230d7e7b6ddeaf738108ab1.md) | 84 | `result-track:b230d7e7b6ddeaf738108ab12cd3e0b3969fada33a36493f8f44adf18591a9c2` |
| 16 | `theorem` | [fold_dedup_idem](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Fold/Variantaa7039a9d8553d50bea0348e40adaff09f1ecf4abdb38a10aaeaea97eb882f69.lean/declarations/fold-dedup-idem--6cbfb825c988e9e8d0552e97.md) | 89 | `result-track:6cbfb825c988e9e8d0552e9713f005926a136217b9d3956952b4334c2e12357b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
