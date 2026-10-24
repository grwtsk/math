# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.Interval.Variantad401a83f1eaabc74c5655b4cb874eb10ccdee957748325a9605616fab16356b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3ecee09158d0b0be5307088f8429ba3922b92e26",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Interval/Variantad401a83f1eaabc74c5655b4cb874eb10ccdee957748325a9605616fab16356b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interval/Variantad401a83f1eaabc74c5655b4cb874eb10ccdee957748325a9605616fab16356b.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interval/Variantad401a83f1eaabc74c5655b4cb874eb10ccdee957748325a9605616fab16356b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3ecee09158d0b0be5307088f8429ba3922b92e26`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Interval/Variantad401a83f1eaabc74c5655b4cb874eb10ccdee957748325a9605616fab16356b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Interval/Variantad401a83f1eaabc74c5655b4cb874eb10ccdee957748325a9605616fab16356b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Sigma.Order` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Interval.Finset.Defs` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [instLocallyFiniteOrder](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interval/Variantad401a83f1eaabc74c5655b4cb874eb10ccdee957748325a9605616fab16356b.lean/declarations/instlocallyfiniteorder--7f0ab188fddbe67c21d90ccb.md) | 42 | `declaration-track:7f0ab188fddbe67c21d90ccb1ce397b8a07fba9015b500214b37183132ccafaf` |
| 2 | `theorem` | [card_Icc](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interval/Variantad401a83f1eaabc74c5655b4cb874eb10ccdee957748325a9605616fab16356b.lean/declarations/card-icc--cd241786bd62ec857afc96ab.md) | 66 | `result-track:cd241786bd62ec857afc96ab438a7a5801ed6af2b1f34d3b33e75e62c8c355f3` |
| 3 | `theorem` | [card_Ico](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interval/Variantad401a83f1eaabc74c5655b4cb874eb10ccdee957748325a9605616fab16356b.lean/declarations/card-ico--9e14998916cb075dbda2f2e7.md) | 69 | `result-track:9e14998916cb075dbda2f2e7742a7b7667e6212433c40e147ee26bbf628a75c4` |
| 4 | `theorem` | [card_Ioc](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interval/Variantad401a83f1eaabc74c5655b4cb874eb10ccdee957748325a9605616fab16356b.lean/declarations/card-ioc--cd892299eb3bbb1f65a0f698.md) | 72 | `result-track:cd892299eb3bbb1f65a0f698cadbf9b2ca2cb5f88a1b54724f0e08839af0d00a` |
| 5 | `theorem` | [card_Ioo](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interval/Variantad401a83f1eaabc74c5655b4cb874eb10ccdee957748325a9605616fab16356b.lean/declarations/card-ioo--a9499db32956b3bd0bf6690a.md) | 75 | `result-track:a9499db32956b3bd0bf6690ab00a5c2b259135138d31bfd4e14909b711e0699b` |
| 6 | `theorem` | [Icc_mk_mk](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interval/Variantad401a83f1eaabc74c5655b4cb874eb10ccdee957748325a9605616fab16356b.lean/declarations/icc-mk-mk--cbd9272ef090376a9b3b5309.md) | 83 | `result-track:cbd9272ef090376a9b3b5309976c7af30b5e599475f2942c4ebd495676b1c096` |
| 7 | `theorem` | [Ico_mk_mk](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interval/Variantad401a83f1eaabc74c5655b4cb874eb10ccdee957748325a9605616fab16356b.lean/declarations/ico-mk-mk--9fa8df2a88bafddb055e43e4.md) | 87 | `result-track:9fa8df2a88bafddb055e43e4df5ca7f31a36d1d79cbf41dfe4e0682b2c3f7abe` |
| 8 | `theorem` | [Ioc_mk_mk](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interval/Variantad401a83f1eaabc74c5655b4cb874eb10ccdee957748325a9605616fab16356b.lean/declarations/ioc-mk-mk--7e19fb7cb14d9108648c5cb3.md) | 91 | `result-track:7e19fb7cb14d9108648c5cb385ca5ce51198e9aa005924d6b3c740a9c3c61b85` |
| 9 | `theorem` | [Ioo_mk_mk](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interval/Variantad401a83f1eaabc74c5655b4cb874eb10ccdee957748325a9605616fab16356b.lean/declarations/ioo-mk-mk--3c53dcd91483e504f9adadc1.md) | 95 | `result-track:3c53dcd91483e504f9adadc150ddedc9d7de84bccb54f4dc4871cd98d8dd236a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
