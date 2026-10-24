# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Quotient.Variant56c4d049d1842d85fdf86498cc5436cf60f00f6f5c235eea8f38d49d8e6ce0f0

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f8afbda46565bde81b0c49034c56049b39cf66df",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Quotient/Variant56c4d049d1842d85fdf86498cc5436cf60f00f6f5c235eea8f38d49d8e6ce0f0.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Quotient/Variant56c4d049d1842d85fdf86498cc5436cf60f00f6f5c235eea8f38d49d8e6ce0f0.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Quotient/Variant56c4d049d1842d85fdf86498cc5436cf60f00f6f5c235eea8f38d49d8e6ce0f0.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f8afbda46565bde81b0c49034c56049b39cf66df`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Quotient/Variant56c4d049d1842d85fdf86498cc5436cf60f00f6f5c235eea8f38d49d8e6ce0f0.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Quotient/Variant56c4d049d1842d85fdf86498cc5436cf60f00f6f5c235eea8f38d49d8e6ce0f0.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.ZMod.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.GroupAction.Quotient` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Int.Basic` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Ideal.QuotientOperations` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Hom.Equiv.TypeTags` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [quotientZmultiplesNatEquivZMod](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Quotient/Variant56c4d049d1842d85fdf86498cc5436cf60f00f6f5c235eea8f38d49d8e6ce0f0.lean/declarations/quotientzmultiplesnatequivzmod--27db6689b470f5b2c9971a76.md) | 46 | `declaration-track:27db6689b470f5b2c9971a766001a70124fe221949cf09c454eea4f40df87a2b` |
| 2 | `def` | [quotientZmultiplesEquivZMod](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Quotient/Variant56c4d049d1842d85fdf86498cc5436cf60f00f6f5c235eea8f38d49d8e6ce0f0.lean/declarations/quotientzmultiplesequivzmod--f1da68746c5e108c15f352e8.md) | 52 | `declaration-track:f1da68746c5e108c15f352e8519f556d8e6556054229d80724c92c82f514c68c` |
| 3 | `def` | [quotientSpanNatEquivZMod](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Quotient/Variant56c4d049d1842d85fdf86498cc5436cf60f00f6f5c235eea8f38d49d8e6ce0f0.lean/declarations/quotientspannatequivzmod--98671458ded90028d99efa4c.md) | 57 | `declaration-track:98671458ded90028d99efa4ceeb6068e531f29dc9dcc842d63ca56a5ee2a6dd0` |
| 4 | `def` | [quotientSpanEquivZMod](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Quotient/Variant56c4d049d1842d85fdf86498cc5436cf60f00f6f5c235eea8f38d49d8e6ce0f0.lean/declarations/quotientspanequivzmod--1c539e361bf1bd4b0d578d6a.md) | 64 | `declaration-track:1c539e361bf1bd4b0d578d6a5cd042c56e665124b8399a96107a04b6682e5df8` |
| 5 | `def` | [zmultiplesQuotientStabilizerEquiv](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Quotient/Variant56c4d049d1842d85fdf86498cc5436cf60f00f6f5c235eea8f38d49d8e6ce0f0.lean/declarations/zmultiplesquotientstabilizerequiv--fae1bbe189a79f5ea216ebd1.md) | 77 | `declaration-track:fae1bbe189a79f5ea216ebd15e0797453347689a8cc94ce1a01190ce8a196c19` |
| 6 | `theorem` | [zmultiplesQuotientStabilizerEquiv_symm_apply](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Quotient/Variant56c4d049d1842d85fdf86498cc5436cf60f00f6f5c235eea8f38d49d8e6ce0f0.lean/declarations/zmultiplesquotientstabilizerequiv-symm-apply--a06060c47e68b4dced7c163f.md) | 95 | `result-track:a06060c47e68b4dced7c163f197d986d6fc3697b7e6648f5bdd1901a9e8eed6a` |
| 7 | `def` | [zpowersQuotientStabilizerEquiv](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Quotient/Variant56c4d049d1842d85fdf86498cc5436cf60f00f6f5c235eea8f38d49d8e6ce0f0.lean/declarations/zpowersquotientstabilizerequiv--3f76871dab799f2726613625.md) | 110 | `declaration-track:3f76871dab799f27266136258d4548b548c3dbf425ab5e1cb010d2c63416f884` |
| 8 | `theorem` | [zpowersQuotientStabilizerEquiv_symm_apply](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Quotient/Variant56c4d049d1842d85fdf86498cc5436cf60f00f6f5c235eea8f38d49d8e6ce0f0.lean/declarations/zpowersquotientstabilizerequiv-symm-apply--ce27894cf5ec7a9c4121cd94.md) | 116 | `result-track:ce27894cf5ec7a9c4121cd942fd2d1126aa38093522cce50771d2dedbe65b331` |
| 9 | `def` | [orbitZpowersEquiv](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Quotient/Variant56c4d049d1842d85fdf86498cc5436cf60f00f6f5c235eea8f38d49d8e6ce0f0.lean/declarations/orbitzpowersequiv--534bf71ff434360b2be9c3bd.md) | 122 | `declaration-track:534bf71ff434360b2be9c3bdc276c37028938973c38ef7cc0a8e388a6c017fc9` |
| 10 | `def` | [_root_.AddAction.orbitZmultiplesEquiv](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Quotient/Variant56c4d049d1842d85fdf86498cc5436cf60f00f6f5c235eea8f38d49d8e6ce0f0.lean/declarations/root-addaction-orbitzmultiplesequiv--6213c5ce7205150c8add80e3.md) | 127 | `declaration-track:6213c5ce7205150c8add80e3545aeae776152ea3dba6c38769225c9fcc4c638f` |
| 11 | `theorem` | [orbitZpowersEquiv_symm_apply](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Quotient/Variant56c4d049d1842d85fdf86498cc5436cf60f00f6f5c235eea8f38d49d8e6ce0f0.lean/declarations/orbitzpowersequiv-symm-apply--e116c917c88441e0cf2743a0.md) | 137 | `result-track:e116c917c88441e0cf2743a0670b9480a4f7e3ae745cce6a4891e4dc515f5770` |
| 12 | `theorem` | [orbitZpowersEquiv_symm_apply'](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Quotient/Variant56c4d049d1842d85fdf86498cc5436cf60f00f6f5c235eea8f38d49d8e6ce0f0.lean/declarations/orbitzpowersequiv-symm-apply--34e353d3cff296894b88cb8f.md) | 144 | `result-track:34e353d3cff296894b88cb8faf9e260e9babac48557e3bc337cd6c3029ccfbf6` |
| 13 | `theorem` | [_root_.AddAction.orbitZmultiplesEquiv_symm_apply'](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Quotient/Variant56c4d049d1842d85fdf86498cc5436cf60f00f6f5c235eea8f38d49d8e6ce0f0.lean/declarations/root-addaction-orbitzmultiplesequiv-symm-apply--21f82003d3d8827f3dd3b25f.md) | 151 | `result-track:21f82003d3d8827f3dd3b25f207190eec39c71123ba54146829c33b2d16eab9b` |
| 14 | `theorem` | [minimalPeriod_eq_card](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Quotient/Variant56c4d049d1842d85fdf86498cc5436cf60f00f6f5c235eea8f38d49d8e6ce0f0.lean/declarations/minimalperiod-eq-card--e657e5b945b721d7eb29ce80.md) | 164 | `result-track:e657e5b945b721d7eb29ce8030188649f2edae17149e3bb0564223f2fbdf31ca` |
| 15 | `instance` | [minimalPeriod_pos](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Quotient/Variant56c4d049d1842d85fdf86498cc5436cf60f00f6f5c235eea8f38d49d8e6ce0f0.lean/declarations/minimalperiod-pos--36188b44765dc8ca7e7fddab.md) | 172 | `declaration-track:36188b44765dc8ca7e7fddabf8be2e832adb29c2b338957d64adaf0a4100004e` |
| 16 | `theorem` | [order_eq_card_zpowers'](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Quotient/Variant56c4d049d1842d85fdf86498cc5436cf60f00f6f5c235eea8f38d49d8e6ce0f0.lean/declarations/order-eq-card-zpowers--ba2c9c4f51fd1786693b3a0a.md) | 192 | `result-track:ba2c9c4f51fd1786693b3a0a5688149db2d1a05ddf3ea3c84ac03993179ffe27` |
| 17 | `theorem` | [IsOfFinOrder.finite_zpowers](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Quotient/Variant56c4d049d1842d85fdf86498cc5436cf60f00f6f5c235eea8f38d49d8e6ce0f0.lean/declarations/isoffinorder-finite-zpowers--9d7a93d3152fc107ef482c0e.md) | 201 | `result-track:9d7a93d3152fc107ef482c0e91ed759d5a1b008643d9a74349d6caee1afa870c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
