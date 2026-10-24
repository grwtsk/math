# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.EnumerativeCombinatorics.Catalan.Variant629cb80f3970b4dfc492691741cd8a45d2cff2b52ee45f48e600e520604a551b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c5fdbc1e5ee2e1a94cd879951e81409944830246",
  "lexical_observation_count": 20,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Catalan/Variant629cb80f3970b4dfc492691741cd8a45d2cff2b52ee45f48e600e520604a551b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Catalan/Variant629cb80f3970b4dfc492691741cd8a45d2cff2b52ee45f48e600e520604a551b.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Catalan/Variant629cb80f3970b4dfc492691741cd8a45d2cff2b52ee45f48e600e520604a551b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c5fdbc1e5ee2e1a94cd879951e81409944830246`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Catalan/Variant629cb80f3970b4dfc492691741cd8a45d2cff2b52ee45f48e600e520604a551b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Catalan/Variant629cb80f3970b4dfc492691741cd8a45d2cff2b52ee45f48e600e520604a551b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.BigOperators.Fin` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.BigOperators.NatAntidiagonal` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.Choose.Central` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.FieldSimp` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.GCongr` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Positivity` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [catalan](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Catalan/Variant629cb80f3970b4dfc492691741cd8a45d2cff2b52ee45f48e600e520604a551b.lean/declarations/catalan--b313205b59fb69aa2b9a8cde.md) | 52 | `declaration-track:b313205b59fb69aa2b9a8cde85e7061f76b8fb242ce7ee4670a8a82ddcd4f3da` |
| 2 | `theorem` | [catalan_zero](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Catalan/Variant629cb80f3970b4dfc492691741cd8a45d2cff2b52ee45f48e600e520604a551b.lean/declarations/catalan-zero--9839e3fa42d7bc81f1da1fcf.md) | 59 | `result-track:9839e3fa42d7bc81f1da1fcfa521e7e6364af9d0b661ac519a4aa3e873345683` |
| 3 | `theorem` | [catalan_succ](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Catalan/Variant629cb80f3970b4dfc492691741cd8a45d2cff2b52ee45f48e600e520604a551b.lean/declarations/catalan-succ--08aecb8431bbecf4efeecbe6.md) | 61 | `result-track:08aecb8431bbecf4efeecbe62cc7e7f82f552f6270f3fa7367daef2731718159` |
| 4 | `theorem` | [catalan_succ'](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Catalan/Variant629cb80f3970b4dfc492691741cd8a45d2cff2b52ee45f48e600e520604a551b.lean/declarations/catalan-succ--58cb9586575df1753505b414.md) | 64 | `result-track:58cb9586575df1753505b4148149033b3c40603779eae1178217e76f6cc54049` |
| 5 | `theorem` | [catalan_one](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Catalan/Variant629cb80f3970b4dfc492691741cd8a45d2cff2b52ee45f48e600e520604a551b.lean/declarations/catalan-one--89ebf3c5068ac8ba1de280d8.md) | 70 | `result-track:89ebf3c5068ac8ba1de280d8ad092f7bbff4f1c51098652d717ee1652886758f` |
| 6 | `def` | [gosperCatalan](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Catalan/Variant629cb80f3970b4dfc492691741cd8a45d2cff2b52ee45f48e600e520604a551b.lean/declarations/gospercatalan--8a57c42b17ab34027bd57e57.md) | 74 | `declaration-track:8a57c42b17ab34027bd57e574f9146efcbb7ca8d37f2ce21e16534451eac87ec` |
| 7 | `theorem` | [gosper_trick](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Catalan/Variant629cb80f3970b4dfc492691741cd8a45d2cff2b52ee45f48e600e520604a551b.lean/declarations/gosper-trick--5885be4f4412a8e51b52f29b.md) | 77 | `result-track:5885be4f4412a8e51b52f29ba05d092c36a939914455e4365ea9e27919cfbbf5` |
| 8 | `theorem` | [gosper_catalan_sub_eq_central_binom_div](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Catalan/Variant629cb80f3970b4dfc492691741cd8a45d2cff2b52ee45f48e600e520604a551b.lean/declarations/gosper-catalan-sub-eq-central-binom-div--42e4a5732950530371467966.md) | 97 | `result-track:42e4a5732950530371467966ed294444c62ee51147dfec57004274bbf2872e82` |
| 9 | `theorem` | [catalan_eq_centralBinom_div](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Catalan/Variant629cb80f3970b4dfc492691741cd8a45d2cff2b52ee45f48e600e520604a551b.lean/declarations/catalan-eq-centralbinom-div--c4a5e3b5fbdd973e0d20026c.md) | 106 | `result-track:c4a5e3b5fbdd973e0d20026c250871fb593c739e265169771e5ca09ed433e605` |
| 10 | `theorem` | [succ_mul_catalan_eq_centralBinom](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Catalan/Variant629cb80f3970b4dfc492691741cd8a45d2cff2b52ee45f48e600e520604a551b.lean/declarations/succ-mul-catalan-eq-centralbinom--6ffc62d62a4d31f7b2aaf81d.md) | 130 | `result-track:6ffc62d62a4d31f7b2aaf81de3b8e29dff1a8f7f5bcfcb8080040d9d42f7a6cd` |
| 11 | `theorem` | [catalan_two](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Catalan/Variant629cb80f3970b4dfc492691741cd8a45d2cff2b52ee45f48e600e520604a551b.lean/declarations/catalan-two--10d337be9c86e2334f4c7d1b.md) | 133 | `result-track:10d337be9c86e2334f4c7d1b5a2b9caf6f2febdc67dfb5ec80ebc08a06762577` |
| 12 | `theorem` | [catalan_three](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Catalan/Variant629cb80f3970b4dfc492691741cd8a45d2cff2b52ee45f48e600e520604a551b.lean/declarations/catalan-three--e42f79b33c0e12295e7fbbc9.md) | 136 | `result-track:e42f79b33c0e12295e7fbbc9d871e6da6db5ecc0045c8906005866ce7e6c3964` |
| 13 | `abbrev` | [pairwiseNode](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Catalan/Variant629cb80f3970b4dfc492691741cd8a45d2cff2b52ee45f48e600e520604a551b.lean/declarations/pairwisenode--d1c32b50f26dc69a1c6697e7.md) | 143 | `declaration-track:d1c32b50f26dc69a1c6697e7a9e72babccce34a16f83f620f6ef4f09d7022b64` |
| 14 | `def` | [treesOfNumNodesEq](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Catalan/Variant629cb80f3970b4dfc492691741cd8a45d2cff2b52ee45f48e600e520604a551b.lean/declarations/treesofnumnodeseq--bea121e06f366083dce71c22.md) | 147 | `declaration-track:bea121e06f366083dce71c22d6c135d6a27a1a4ea867fb5a3e54066700f037b4` |
| 15 | `theorem` | [treesOfNumNodesEq_zero](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Catalan/Variant629cb80f3970b4dfc492691741cd8a45d2cff2b52ee45f48e600e520604a551b.lean/declarations/treesofnumnodeseq-zero--ca6ce19a6fed3a7962e062ee.md) | 157 | `result-track:ca6ce19a6fed3a7962e062ee340a5cdfd820b2375f75378cfb3ae651fe55ec65` |
| 16 | `theorem` | [treesOfNumNodesEq_succ](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Catalan/Variant629cb80f3970b4dfc492691741cd8a45d2cff2b52ee45f48e600e520604a551b.lean/declarations/treesofnumnodeseq-succ--3c22ff86a4968dcdfae01417.md) | 159 | `result-track:3c22ff86a4968dcdfae0141736fc62051c012ec827d91beb2575caad56e0a93d` |
| 17 | `theorem` | [mem_treesOfNumNodesEq](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Catalan/Variant629cb80f3970b4dfc492691741cd8a45d2cff2b52ee45f48e600e520604a551b.lean/declarations/mem-treesofnumnodeseq--83a1f1931a2a09668b15a7cf.md) | 168 | `result-track:83a1f1931a2a09668b15a7cff9ccc3e468f1070c397d15e60f5bebac3243db19` |
| 18 | `theorem` | [mem_treesOfNumNodesEq_numNodes](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Catalan/Variant629cb80f3970b4dfc492691741cd8a45d2cff2b52ee45f48e600e520604a551b.lean/declarations/mem-treesofnumnodeseq-numnodes--20b0c1d9e0cf26ecfbd76c54.md) | 173 | `result-track:20b0c1d9e0cf26ecfbd76c54d5c17494c25be1f28ec6fed23c24284559bcba43` |
| 19 | `theorem` | [coe_treesOfNumNodesEq](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Catalan/Variant629cb80f3970b4dfc492691741cd8a45d2cff2b52ee45f48e600e520604a551b.lean/declarations/coe-treesofnumnodeseq--8f221ad7216da7a490736fe0.md) | 177 | `result-track:8f221ad7216da7a490736fe04ab953d46a4332e9939547e1600c7abc9721aa6b` |
| 20 | `theorem` | [treesOfNumNodesEq_card_eq_catalan](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Catalan/Variant629cb80f3970b4dfc492691741cd8a45d2cff2b52ee45f48e600e520604a551b.lean/declarations/treesofnumnodeseq-card-eq-catalan--28d811d762886822b244cf00.md) | 181 | `result-track:28d811d762886822b244cf00cbfde502e20939ea20e5437388c9c5c4637d7bcd` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
