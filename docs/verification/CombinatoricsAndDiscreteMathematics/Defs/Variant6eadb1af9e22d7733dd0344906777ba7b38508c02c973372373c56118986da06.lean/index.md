# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.Defs.Variant6eadb1af9e22d7733dd0344906777ba7b38508c02c973372373c56118986da06

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9334af5bff49b8acf4faa4a5e95b05508286f906",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Defs/Variant6eadb1af9e22d7733dd0344906777ba7b38508c02c973372373c56118986da06.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Defs/Variant6eadb1af9e22d7733dd0344906777ba7b38508c02c973372373c56118986da06.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Defs/Variant6eadb1af9e22d7733dd0344906777ba7b38508c02c973372373c56118986da06.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9334af5bff49b8acf4faa4a5e95b05508286f906`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Defs/Variant6eadb1af9e22d7733dd0344906777ba7b38508c02c973372373c56118986da06.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Defs/Variant6eadb1af9e22d7733dd0344906777ba7b38508c02c973372373c56118986da06.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.BigOperators.Finprod` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Filter.AtTopBot.BigOperators` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Separation.Hausdorff` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [HasProd](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Defs/Variant6eadb1af9e22d7733dd0344906777ba7b38508c02c973372373c56118986da06.lean/declarations/hasprod--f5c6683d347668fd4bdfc601.md) | 95 | `declaration-track:f5c6683d347668fd4bdfc601277ca1b4400b7950bf7dc0723b876482a0388636` |
| 2 | `def` | [Multipliable](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Defs/Variant6eadb1af9e22d7733dd0344906777ba7b38508c02c973372373c56118986da06.lean/declarations/multipliable--f41d43940b77d545c4335dc8.md) | 100 | `declaration-track:f41d43940b77d545c4335dc80478d45170c21fe0639ebc286357a45552c16ebb` |
| 3 | `theorem` | [HasProd.multipliable](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Defs/Variant6eadb1af9e22d7733dd0344906777ba7b38508c02c973372373c56118986da06.lean/declarations/hasprod-multipliable--d5940cddab09b1ae6253aa4c.md) | 127 | `result-track:d5940cddab09b1ae6253aa4c4c04b82d9dc9b9d55cad98f9f50b9e1575dc4301` |
| 4 | `theorem` | [tprod_eq_one_of_not_multipliable](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Defs/Variant6eadb1af9e22d7733dd0344906777ba7b38508c02c973372373c56118986da06.lean/declarations/tprod-eq-one-of-not-multipliable--16807bfc6b85ebccdb83cfec.md) | 131 | `result-track:16807bfc6b85ebccdb83cfece82523a282dd6cb4d932b891608bb49880327920` |
| 5 | `theorem` | [Function.Injective.hasProd_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Defs/Variant6eadb1af9e22d7733dd0344906777ba7b38508c02c973372373c56118986da06.lean/declarations/function-injective-hasprod-iff--180e1b5ebe034602ae13b440.md) | 135 | `result-track:180e1b5ebe034602ae13b4402c8a14ce1990403e1871fea2a0d5c9b995133d37` |
| 6 | `theorem` | [hasProd_subtype_iff_of_mulSupport_subset](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Defs/Variant6eadb1af9e22d7733dd0344906777ba7b38508c02c973372373c56118986da06.lean/declarations/hasprod-subtype-iff-of-mulsupport-subset--d0c18718e34f32620266edef.md) | 140 | `result-track:d0c18718e34f32620266edef9f23277b64c33614af913e1905409cc3e9b1f3b3` |
| 7 | `theorem` | [hasProd_fintype](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Defs/Variant6eadb1af9e22d7733dd0344906777ba7b38508c02c973372373c56118986da06.lean/declarations/hasprod-fintype--09265b1bd0ff68455f255f67.md) | 145 | `result-track:09265b1bd0ff68455f255f6733e942293974d6a35f1f6a7c98a0d335e09d0978` |
| 8 | `theorem` | [Finset.hasProd](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Defs/Variant6eadb1af9e22d7733dd0344906777ba7b38508c02c973372373c56118986da06.lean/declarations/finset-hasprod--ed5a9b13a193cf71a001d4d4.md) | 149 | `result-track:ed5a9b13a193cf71a001d4d4df5539ab5f9be4f65f1ecfe2f28561320c6130b7` |
| 9 | `theorem` | [hasProd_prod_of_ne_finset_one](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Defs/Variant6eadb1af9e22d7733dd0344906777ba7b38508c02c973372373c56118986da06.lean/declarations/hasprod-prod-of-ne-finset-one--cb7103ec73f8ff1c5b74b3cb.md) | 157 | `result-track:cb7103ec73f8ff1c5b74b3cbd67afc757cc1d2faf3d038950a5e3bef6b661d62` |
| 10 | `theorem` | [multipliable_of_ne_finset_one](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Defs/Variant6eadb1af9e22d7733dd0344906777ba7b38508c02c973372373c56118986da06.lean/declarations/multipliable-of-ne-finset-one--1a4eeac94707c7bb3db1b20f.md) | 162 | `result-track:1a4eeac94707c7bb3db1b20ff08fc4fc9e0e722620846d964bdc6229d1102da6` |
| 11 | `theorem` | [Multipliable.hasProd](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Defs/Variant6eadb1af9e22d7733dd0344906777ba7b38508c02c973372373c56118986da06.lean/declarations/multipliable-hasprod--de11d27a948aa8e6791bfbf6.md) | 166 | `result-track:de11d27a948aa8e6791bfbf694182c5080cdddea03742a9f085887c37a27de7c` |
| 12 | `theorem` | [HasProd.unique](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Defs/Variant6eadb1af9e22d7733dd0344906777ba7b38508c02c973372373c56118986da06.lean/declarations/hasprod-unique--6f360d27300d9c910ff3cabf.md) | 173 | `result-track:6f360d27300d9c910ff3cabf55e5f47f2c76708b78d271bca0ed898fbac9ceeb` |
| 13 | `theorem` | [HasProd.tprod_eq](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Defs/Variant6eadb1af9e22d7733dd0344906777ba7b38508c02c973372373c56118986da06.lean/declarations/hasprod-tprod-eq--b8c93d76bc0e6d06dffd2d90.md) | 179 | `result-track:b8c93d76bc0e6d06dffd2d909ae3365b20a28a2fe249c51eb6f6580af93d25ad` |
| 14 | `theorem` | [Multipliable.hasProd_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Defs/Variant6eadb1af9e22d7733dd0344906777ba7b38508c02c973372373c56118986da06.lean/declarations/multipliable-hasprod-iff--58816645a499d810b0bdb627.md) | 183 | `result-track:58816645a499d810b0bdb627c887d343efd0f87b5f7eb8a6db80d9593e766fa7` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
