# Verification target: GRWTSK.NumberTheory.AlgebraicNumberTheory.LocalFields.PAdicNumbers.Defs.Variant02156544240917473e93675843d240401f4c031494e3109624e2875cfccf4b96

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "37cc91fa6bf1a1ff6e57a3929e5065a32efcc550",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/Defs/Variant02156544240917473e93675843d240401f4c031494e3109624e2875cfccf4b96.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/Defs/Variant02156544240917473e93675843d240401f4c031494e3109624e2875cfccf4b96.lean/index.md) · [Full source](../../../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/Defs/Variant02156544240917473e93675843d240401f4c031494e3109624e2875cfccf4b96.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `37cc91fa6bf1a1ff6e57a3929e5065a32efcc550`.

Source path: `GRWTSK/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/Defs/Variant02156544240917473e93675843d240401f4c031494e3109624e2875cfccf4b96.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/Defs/Variant02156544240917473e93675843d240401f4c031494e3109624e2875cfccf4b96.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.RingTheory.Multiplicity` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.Factors` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [padicValNat](../../../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/Defs/Variant02156544240917473e93675843d240401f4c031494e3109624e2875cfccf4b96.lean/declarations/padicvalnat--6b797a8cc46f831431d784db.md) | 39 | `declaration-track:6b797a8cc46f831431d784dbdb8aca56515d280cd076118f1bad7ca0302d9906` |
| 2 | `theorem` | [padicValNat_def'](../../../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/Defs/Variant02156544240917473e93675843d240401f4c031494e3109624e2875cfccf4b96.lean/declarations/padicvalnat-def--e857976b3cb4972a303d54de.md) | 42 | `result-track:e857976b3cb4972a303d54def4dc8bf83d0e2827c7548fec9e2ff2000bd8e5a0` |
| 3 | `theorem` | [padicValNat_def](../../../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/Defs/Variant02156544240917473e93675843d240401f4c031494e3109624e2875cfccf4b96.lean/declarations/padicvalnat-def--e9811a3f0814b8cef35176f2.md) | 49 | `result-track:e9811a3f0814b8cef35176f26acf640ed78d8a9984c78cbdcf83bc3c0ef3f3dc` |
| 4 | `theorem` | [padicValNat_eq_emultiplicity](../../../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/Defs/Variant02156544240917473e93675843d240401f4c031494e3109624e2875cfccf4b96.lean/declarations/padicvalnat-eq-emultiplicity--237eef693241e5c0ab2f8335.md) | 55 | `result-track:237eef693241e5c0ab2f8335133518339e2a47434b0205ec0742ff26070b000d` |
| 5 | `theorem` | [zero](../../../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/Defs/Variant02156544240917473e93675843d240401f4c031494e3109624e2875cfccf4b96.lean/declarations/zero--1a0904141908c4c8c02ba77a.md) | 66 | `result-track:1a0904141908c4c8c02ba77a1f903cfc231d77c7d8b42197ec9150c065eaf099` |
| 6 | `theorem` | [one](../../../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/Defs/Variant02156544240917473e93675843d240401f4c031494e3109624e2875cfccf4b96.lean/declarations/one--d1f71c5a9459f2f10bbc4657.md) | 70 | `result-track:d1f71c5a9459f2f10bbc46575187959fdf351e801b84f085dcb0c54138767a38` |
| 7 | `theorem` | [eq_zero_iff](../../../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/Defs/Variant02156544240917473e93675843d240401f4c031494e3109624e2875cfccf4b96.lean/declarations/eq-zero-iff--a285bd214babd2422012f1e1.md) | 73 | `result-track:a285bd214babd2422012f1e13358fb89a921315c13a72a7ad223158ba0191ed0` |
| 8 | `theorem` | [le_emultiplicity_iff_replicate_subperm_primeFactorsList](../../../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/Defs/Variant02156544240917473e93675843d240401f4c031494e3109624e2875cfccf4b96.lean/declarations/le-emultiplicity-iff-replicate-subperm-primefactorslist--8ca9979ecd4bdaf281601a36.md) | 81 | `result-track:8ca9979ecd4bdaf281601a36c2621e63071d067505b6be41ab09c74f82a6888b` |
| 9 | `theorem` | [le_padicValNat_iff_replicate_subperm_primeFactorsList](../../../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/Defs/Variant02156544240917473e93675843d240401f4c031494e3109624e2875cfccf4b96.lean/declarations/le-padicvalnat-iff-replicate-subperm-primefactorslist--c1a8524ec74150fbb569a5ca.md) | 87 | `result-track:c1a8524ec74150fbb569a5ca31927c123fafe52dde92a5b776df7e64103133a0` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
