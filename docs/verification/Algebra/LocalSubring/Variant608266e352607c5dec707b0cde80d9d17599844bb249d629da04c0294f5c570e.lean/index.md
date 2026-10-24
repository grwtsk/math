# Verification target: GRWTSK.Algebra.LocalSubring.Variant608266e352607c5dec707b0cde80d9d17599844bb249d629da04c0294f5c570e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "df8c3bc29a5f3d2057aeeb24fa9d5646d80e0585",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LocalSubring/Variant608266e352607c5dec707b0cde80d9d17599844bb249d629da04c0294f5c570e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/LocalSubring/Variant608266e352607c5dec707b0cde80d9d17599844bb249d629da04c0294f5c570e.lean/index.md) · [Full source](../../../../mathematics/Algebra/LocalSubring/Variant608266e352607c5dec707b0cde80d9d17599844bb249d629da04c0294f5c570e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `df8c3bc29a5f3d2057aeeb24fa9d5646d80e0585`.

Source path: `GRWTSK/Algebra/LocalSubring/Variant608266e352607c5dec707b0cde80d9d17599844bb249d629da04c0294f5c570e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LocalSubring/Variant608266e352607c5dec707b0cde80d9d17599844bb249d629da04c0294f5c570e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.RingTheory.Ideal.GoingUp` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.LocalRing.LocalSubring` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Polynomial.Ideal` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Valuation.ValuationSubring` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [ValuationSubring.toLocalSubring](../../../../mathematics/Algebra/LocalSubring/Variant608266e352607c5dec707b0cde80d9d17599844bb249d629da04c0294f5c570e.lean/declarations/valuationsubring-tolocalsubring--a4a4fd6faa3d01672e781be1.md) | 25 | `declaration-track:a4a4fd6faa3d01672e781be1fcb31be2d04733de2f51594c5b23a1f7ce222438` |
| 2 | `lemma` | [ValuationSubring.toLocalSubring_injective](../../../../mathematics/Algebra/LocalSubring/Variant608266e352607c5dec707b0cde80d9d17599844bb249d629da04c0294f5c570e.lean/declarations/valuationsubring-tolocalsubring-injective--45ee600d4972248d896bb99d.md) | 29 | `result-track:45ee600d4972248d896bb99db06cfd8e1a1f4aec6b202330467baeeb16884d96` |
| 3 | `lemma` | [LocalSubring.map_maximalIdeal_eq_top_of_isMax](../../../../mathematics/Algebra/LocalSubring/Variant608266e352607c5dec707b0cde80d9d17599844bb249d629da04c0294f5c570e.lean/declarations/localsubring-map-maximalideal-eq-top-of-ismax--ac1915a325947fb1d4d14711.md) | 33 | `result-track:ac1915a325947fb1d4d147119642f19d7c999243cbcd269c6fd707e9e35b9dd3` |
| 4 | `lemma` | [LocalSubring.mem_of_isMax_of_isIntegral](../../../../mathematics/Algebra/LocalSubring/Variant608266e352607c5dec707b0cde80d9d17599844bb249d629da04c0294f5c570e.lean/declarations/localsubring-mem-of-ismax-of-isintegral--73d74f23516a3991cb0fff69.md) | 53 | `result-track:73d74f23516a3991cb0fff69f8494bcf25bb652d4fd1cce26c210cd5d4f123ce` |
| 5 | `lemma` | [ValuationSubring.isMax_toLocalSubring](../../../../mathematics/Algebra/LocalSubring/Variant608266e352607c5dec707b0cde80d9d17599844bb249d629da04c0294f5c570e.lean/declarations/valuationsubring-ismax-tolocalsubring--38c6cdc7a4d09b7df380024c.md) | 72 | `result-track:38c6cdc7a4d09b7df380024c8132c2e7eece4394dbe7aeead933ef8a1719e0f2` |
| 6 | `lemma` | [LocalSubring.exists_valuationRing_of_isMax](../../../../mathematics/Algebra/LocalSubring/Variant608266e352607c5dec707b0cde80d9d17599844bb249d629da04c0294f5c570e.lean/declarations/localsubring-exists-valuationring-of-ismax--f515cd16d28942f49e33c998.md) | 88 | `result-track:f515cd16d28942f49e33c99831d9d5062c7551ef6f6e6c511b648f464a84235d` |
| 7 | `lemma` | [LocalSubring.isMax_iff](../../../../mathematics/Algebra/LocalSubring/Variant608266e352607c5dec707b0cde80d9d17599844bb249d629da04c0294f5c570e.lean/declarations/localsubring-ismax-iff--6b4da66c58fb2a7f073128c0.md) | 123 | `result-track:6b4da66c58fb2a7f073128c0e935c5efc97ea0a2737478b4d0c52352cfc24f4b` |
| 8 | `lemma` | [LocalSubring.exists_le_valuationSubring](../../../../mathematics/Algebra/LocalSubring/Variant608266e352607c5dec707b0cde80d9d17599844bb249d629da04c0294f5c570e.lean/declarations/localsubring-exists-le-valuationsubring--0eff13b3858b7cecc24f2cbf.md) | 128 | `result-track:0eff13b3858b7cecc24f2cbfbb35ef6a4cfb50be35e09ec53b43d7d32d7e4057` |
| 9 | `lemma` | [bijective_rangeRestrict_comp_of_valuationRing](../../../../mathematics/Algebra/LocalSubring/Variant608266e352607c5dec707b0cde80d9d17599844bb249d629da04c0294f5c570e.lean/declarations/bijective-rangerestrict-comp-of-valuationring--e096abb7265357cb811b4045.md) | 155 | `result-track:e096abb7265357cb811b4045b0b0956d7c305d00eca63f5c89f213358267314a` |
| 10 | `lemma` | [IsLocalRing.exists_factor_valuationRing](../../../../mathematics/Algebra/LocalSubring/Variant608266e352607c5dec707b0cde80d9d17599844bb249d629da04c0294f5c570e.lean/declarations/islocalring-exists-factor-valuationring--d0d903eb19db2b64aa2ca137.md) | 177 | `result-track:d0d903eb19db2b64aa2ca137b7754111a824f49224ba88c9487177eda96ca10e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
