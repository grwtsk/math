# Verification target: GRWTSK.Algebra.Ramification.Variant94d07cc5b17513bf8283ba2ecf728994a886085b40a9d8442c3c08cb88a31d42

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b03b00f0a11e4dac24dd38293fa2c12c315cf439",
  "lexical_observation_count": 19,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Ramification/Variant94d07cc5b17513bf8283ba2ecf728994a886085b40a9d8442c3c08cb88a31d42.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Ramification/Variant94d07cc5b17513bf8283ba2ecf728994a886085b40a9d8442c3c08cb88a31d42.lean/index.md) · [Full source](../../../../mathematics/Algebra/Ramification/Variant94d07cc5b17513bf8283ba2ecf728994a886085b40a9d8442c3c08cb88a31d42.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b03b00f0a11e4dac24dd38293fa2c12c315cf439`.

Source path: `GRWTSK/Algebra/Ramification/Variant94d07cc5b17513bf8283ba2ecf728994a886085b40a9d8442c3c08cb88a31d42.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Ramification/Variant94d07cc5b17513bf8283ba2ecf728994a886085b40a9d8442c3c08cb88a31d42.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [ramificationIdx](../../../../mathematics/Algebra/Ramification/Variant94d07cc5b17513bf8283ba2ecf728994a886085b40a9d8442c3c08cb88a31d42.lean/declarations/ramificationidx--76ba9a78c5e5c2679955c7d9.md) | 60 | `declaration-track:76ba9a78c5e5c2679955c7d934538c8b98984fde7f18ea220407091319890ec2` |
| 2 | `theorem` | [ramificationIdx_def](../../../../mathematics/Algebra/Ramification/Variant94d07cc5b17513bf8283ba2ecf728994a886085b40a9d8442c3c08cb88a31d42.lean/declarations/ramificationidx-def--6b1cffb2591c19beb9a3f33b.md) | 66 | `result-track:6b1cffb2591c19beb9a3f33bbda5f2cf7659d55e7dd5e74f10d66759572c48fc` |
| 3 | `theorem` | [ramificationIdx_of_not_isPrime](../../../../mathematics/Algebra/Ramification/Variant94d07cc5b17513bf8283ba2ecf728994a886085b40a9d8442c3c08cb88a31d42.lean/declarations/ramificationidx-of-not-isprime--036e6ab7aba28685e42479a9.md) | 73 | `result-track:036e6ab7aba28685e42479a98433a25693eb9a7ae3687e774a0c91563f7b9d40` |
| 4 | `theorem` | [ramificationIdx_pos](../../../../mathematics/Algebra/Ramification/Variant94d07cc5b17513bf8283ba2ecf728994a886085b40a9d8442c3c08cb88a31d42.lean/declarations/ramificationidx-pos--be8dc3c2682a8bd91aaf18ae.md) | 79 | `result-track:be8dc3c2682a8bd91aaf18ae5ecea943d0ab6dec8b5252702aa7d61e24775eee` |
| 5 | `theorem` | [ramificationIdx_eq_one](../../../../mathematics/Algebra/Ramification/Variant94d07cc5b17513bf8283ba2ecf728994a886085b40a9d8442c3c08cb88a31d42.lean/declarations/ramificationidx-eq-one--e5711cd81683875785ebe311.md) | 94 | `result-track:e5711cd81683875785ebe3111d9d775ad8ae0ee29d0c33277b7b9c9cf53740dd` |
| 6 | `theorem` | [ramificationIdx_eq_one_iff](../../../../mathematics/Algebra/Ramification/Variant94d07cc5b17513bf8283ba2ecf728994a886085b40a9d8442c3c08cb88a31d42.lean/declarations/ramificationidx-eq-one-iff--447085eb7e46ead1d8362689.md) | 109 | `result-track:447085eb7e46ead1d8362689a704b59fcebcb9be56147d727c640fc452bbf3fc` |
| 7 | `theorem` | [ramificationIdx_eq](../../../../mathematics/Algebra/Ramification/Variant94d07cc5b17513bf8283ba2ecf728994a886085b40a9d8442c3c08cb88a31d42.lean/declarations/ramificationidx-eq--2bd8665dbfe5c6dbfccc2358.md) | 136 | `result-track:2bd8665dbfe5c6dbfccc2358238f9c2b59ed35e537f8c3633d5ec49a0204c77b` |
| 8 | `theorem` | [ramificationIdx'_eq_ramificationIdx'](../../../../mathematics/Algebra/Ramification/Variant94d07cc5b17513bf8283ba2ecf728994a886085b40a9d8442c3c08cb88a31d42.lean/declarations/ramificationidx-eq-ramificationidx--a154f29584ba12f6d662ce61.md) | 144 | `result-track:a154f29584ba12f6d662ce6195e577e013d1a0c3a02085e399450206bdedcca6` |
| 9 | `theorem` | [ramificationIdx'_eq_ramificationIdx](../../../../mathematics/Algebra/Ramification/Variant94d07cc5b17513bf8283ba2ecf728994a886085b40a9d8442c3c08cb88a31d42.lean/declarations/ramificationidx-eq-ramificationidx--e713be6e9964e46e0b77e6bb.md) | 164 | `result-track:e713be6e9964e46e0b77e6bb6ac224e4559f74274adeec6cb17313b462b6936e` |
| 10 | `theorem` | [ramificationIdx_eq_factors_count](../../../../mathematics/Algebra/Ramification/Variant94d07cc5b17513bf8283ba2ecf728994a886085b40a9d8442c3c08cb88a31d42.lean/declarations/ramificationidx-eq-factors-count--67a6bc965a9ed943851e701b.md) | 177 | `result-track:67a6bc965a9ed943851e701b5f7bbb57fa575c47ec092b953220f084821a009f` |
| 11 | `theorem` | [ramificationIdx_eq_normalizedFactors_count](../../../../mathematics/Algebra/Ramification/Variant94d07cc5b17513bf8283ba2ecf728994a886085b40a9d8442c3c08cb88a31d42.lean/declarations/ramificationidx-eq-normalizedfactors-count--ae87dce1491fb7d1f79d9ab4.md) | 188 | `result-track:ae87dce1491fb7d1f79d9ab41be0c3118a7eae7553f93d02601d645ae6120c87` |
| 12 | `theorem` | [ramificationIdx_eq_multiplicity](../../../../mathematics/Algebra/Ramification/Variant94d07cc5b17513bf8283ba2ecf728994a886085b40a9d8442c3c08cb88a31d42.lean/declarations/ramificationidx-eq-multiplicity--45c1a5af91fe0ae8572dd360.md) | 194 | `result-track:45c1a5af91fe0ae8572dd3604c2971a1171d7c34ba1d3c71d2839fe8f353cd5d` |
| 13 | `theorem` | [ramificationIdx_tower'](../../../../mathematics/Algebra/Ramification/Variant94d07cc5b17513bf8283ba2ecf728994a886085b40a9d8442c3c08cb88a31d42.lean/declarations/ramificationidx-tower--48d065a1a1fa478e3274a6dd.md) | 205 | `result-track:48d065a1a1fa478e3274a6ddf8c91e64fca4cc7e1e0b28e2aed592ba989918d0` |
| 14 | `theorem` | [ramificationIdx_tower](../../../../mathematics/Algebra/Ramification/Variant94d07cc5b17513bf8283ba2ecf728994a886085b40a9d8442c3c08cb88a31d42.lean/declarations/ramificationidx-tower--aa9effa3a968eeedb2fd18fc.md) | 222 | `result-track:aa9effa3a968eeedb2fd18fc399393e3ccbfe226f21b60d21c43964f776a7c54` |
| 15 | `theorem` | [ramificationIdx_below_dvd](../../../../mathematics/Algebra/Ramification/Variant94d07cc5b17513bf8283ba2ecf728994a886085b40a9d8442c3c08cb88a31d42.lean/declarations/ramificationidx-below-dvd--f51c43119759681929ecc28c.md) | 232 | `result-track:f51c43119759681929ecc28c0452f8c97c66df83da3e9ad6e69d601a83b6e6eb` |
| 16 | `theorem` | [ramificationIdx_above_dvd](../../../../mathematics/Algebra/Ramification/Variant94d07cc5b17513bf8283ba2ecf728994a886085b40a9d8442c3c08cb88a31d42.lean/declarations/ramificationidx-above-dvd--c8e69653f81607b91a4df966.md) | 239 | `result-track:c8e69653f81607b91a4df966228b4274b4f9f57a1ec7548a3848fe68b7cd7427` |
| 17 | `theorem` | [ramificationIdx_below_le](../../../../mathematics/Algebra/Ramification/Variant94d07cc5b17513bf8283ba2ecf728994a886085b40a9d8442c3c08cb88a31d42.lean/declarations/ramificationidx-below-le--58c147443c580cc86c8d3f8e.md) | 246 | `result-track:58c147443c580cc86c8d3f8e259993adb53a2144a4ab565e1b040dfd6322486c` |
| 18 | `theorem` | [ramificationIdx_above_le](../../../../mathematics/Algebra/Ramification/Variant94d07cc5b17513bf8283ba2ecf728994a886085b40a9d8442c3c08cb88a31d42.lean/declarations/ramificationidx-above-le--cf910516de06bf3cb703f66d.md) | 253 | `result-track:cf910516de06bf3cb703f66d9c9eb25d6eb307a4b314d314b279572a3c8c9260` |
| 19 | `theorem` | [ramificationIdx_smul](../../../../mathematics/Algebra/Ramification/Variant94d07cc5b17513bf8283ba2ecf728994a886085b40a9d8442c3c08cb88a31d42.lean/declarations/ramificationidx-smul--064954a0703a56a804a1d29c.md) | 263 | `result-track:064954a0703a56a804a1d29c52f04d267e3b87f5f0a6ffe461e360446bbe0560` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
