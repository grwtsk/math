# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.CompleteLatticeIntervals.Variantc6bb5e99b7236e14fc2fc644d08b8b87be5f47b9c65705188b089e1c23ad0674

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3a9c19d206125d93b65eb1fe96969b7f94ac1c4c",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/CompleteLatticeIntervals/Variantc6bb5e99b7236e14fc2fc644d08b8b87be5f47b9c65705188b089e1c23ad0674.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/CompleteLatticeIntervals/Variantc6bb5e99b7236e14fc2fc644d08b8b87be5f47b9c65705188b089e1c23ad0674.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/CompleteLatticeIntervals/Variantc6bb5e99b7236e14fc2fc644d08b8b87be5f47b9c65705188b089e1c23ad0674.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3a9c19d206125d93b65eb1fe96969b7f94ac1c4c`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/CompleteLatticeIntervals/Variantc6bb5e99b7236e14fc2fc644d08b8b87be5f47b9c65705188b089e1c23ad0674.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/CompleteLatticeIntervals/Variantc6bb5e99b7236e14fc2fc644d08b8b87be5f47b9c65705188b089e1c23ad0674.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Order.ConditionallyCompleteLattice.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Set.Intervals.OrdConnected` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [subsetSupSet](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/CompleteLatticeIntervals/Variantc6bb5e99b7236e14fc2fc644d08b8b87be5f47b9c65705188b089e1c23ad0674.lean/declarations/subsetsupset--ea6c3383af9f4cf983369da6.md) | 46 | `declaration-track:ea6c3383af9f4cf983369da66317ccc6ace4164310b5fa25ac8687d02d4924bc` |
| 2 | `theorem` | [subset_sSup_def](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/CompleteLatticeIntervals/Variantc6bb5e99b7236e14fc2fc644d08b8b87be5f47b9c65705188b089e1c23ad0674.lean/declarations/subset-ssup-def--199b91f1cafb852b4ae51314.md) | 56 | `result-track:199b91f1cafb852b4ae513149a70d19b33b0b7a50a902d30109ac6e7cf697cee` |
| 3 | `theorem` | [subset_sSup_of_within](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/CompleteLatticeIntervals/Variantc6bb5e99b7236e14fc2fc644d08b8b87be5f47b9c65705188b089e1c23ad0674.lean/declarations/subset-ssup-of-within--d4f08d41ac2bc9cef043ccfd.md) | 64 | `result-track:d4f08d41ac2bc9cef043ccfd7cd116b0e6ad7ae726d8fcd406b3d1eb2c2163c1` |
| 4 | `def` | [subsetInfSet](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/CompleteLatticeIntervals/Variantc6bb5e99b7236e14fc2fc644d08b8b87be5f47b9c65705188b089e1c23ad0674.lean/declarations/subsetinfset--1c3574226bdd992c508a831e.md) | 77 | `declaration-track:1c3574226bdd992c508a831efcbda37ab50e5a0bd7c74ea00f6087179ff8fb44` |
| 5 | `theorem` | [subset_sInf_def](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/CompleteLatticeIntervals/Variantc6bb5e99b7236e14fc2fc644d08b8b87be5f47b9c65705188b089e1c23ad0674.lean/declarations/subset-sinf-def--d4d5d383ca664cfaaa6922a1.md) | 87 | `result-track:d4d5d383ca664cfaaa6922a17ab30698319d3bb809dc782ac5043e24a2cc2095` |
| 6 | `theorem` | [subset_sInf_of_within](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/CompleteLatticeIntervals/Variantc6bb5e99b7236e14fc2fc644d08b8b87be5f47b9c65705188b089e1c23ad0674.lean/declarations/subset-sinf-of-within--5fa08acc9a09de7f094aa35f.md) | 95 | `result-track:5fa08acc9a09de7f094aa35f0ed70ef8a814d56d3afb15801c217b0a3445975a` |
| 7 | `lemma` | [sSup_subtype_eq_sSup_univ_of_not_bddAbove](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/CompleteLatticeIntervals/Variantc6bb5e99b7236e14fc2fc644d08b8b87be5f47b9c65705188b089e1c23ad0674.lean/declarations/ssup-subtype-eq-ssup-univ-of-not-bddabove--0fc67d585194d00f5e04c142.md) | 107 | `result-track:0fc67d585194d00f5e04c142eb9179d0f41f32e3124f71b85c4f88b8a9fac56f` |
| 8 | `def` | [subsetConditionallyCompleteLinearOrder](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/CompleteLatticeIntervals/Variantc6bb5e99b7236e14fc2fc644d08b8b87be5f47b9c65705188b089e1c23ad0674.lean/declarations/subsetconditionallycompletelinearorder--2d8b25ec314e62f5d846e842.md) | 146 | `declaration-track:2d8b25ec314e62f5d846e8424bf589e1f312014e17bfdafa6fbb34eeda3451ef` |
| 9 | `theorem` | [sSup_within_of_ordConnected](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/CompleteLatticeIntervals/Variantc6bb5e99b7236e14fc2fc644d08b8b87be5f47b9c65705188b089e1c23ad0674.lean/declarations/ssup-within-of-ordconnected--0038dd242f58d2e649e1f3b2.md) | 178 | `result-track:0038dd242f58d2e649e1f3b24a3953c6da1c063c8f2f43dfabc5ef540dfb5e5a` |
| 10 | `theorem` | [sInf_within_of_ordConnected](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/CompleteLatticeIntervals/Variantc6bb5e99b7236e14fc2fc644d08b8b87be5f47b9c65705188b089e1c23ad0674.lean/declarations/sinf-within-of-ordconnected--538deb96d7c1c219473f1472.md) | 189 | `result-track:538deb96d7c1c219473f147255ef7a021ae56e1c50b0c0f6983112fa354ad169` |
| 11 | `instance` | [ordConnectedSubsetConditionallyCompleteLinearOrder](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/CompleteLatticeIntervals/Variantc6bb5e99b7236e14fc2fc644d08b8b87be5f47b9c65705188b089e1c23ad0674.lean/declarations/ordconnectedsubsetconditionallycompletelinearorder--a30cdd9154f12dcb11148e9a.md) | 200 | `declaration-track:a30cdd9154f12dcb11148e9a6a563663439fd17d4df6149e3de76f76fdde3f3c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
