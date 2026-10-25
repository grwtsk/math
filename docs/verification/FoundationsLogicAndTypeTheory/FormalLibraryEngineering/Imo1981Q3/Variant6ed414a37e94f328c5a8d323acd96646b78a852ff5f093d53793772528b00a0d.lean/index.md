# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Imo1981Q3.Variant6ed414a37e94f328c5a8d323acd96646b78a852ff5f093d53793772528b00a0d

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5b0765b4a9cf994d27c5089bf0bf1bd6ea2dfe1d",
  "lexical_observation_count": 18,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Imo1981Q3/Variant6ed414a37e94f328c5a8d323acd96646b78a852ff5f093d53793772528b00a0d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Imo1981Q3/Variant6ed414a37e94f328c5a8d323acd96646b78a852ff5f093d53793772528b00a0d.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Imo1981Q3/Variant6ed414a37e94f328c5a8d323acd96646b78a852ff5f093d53793772528b00a0d.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5b0765b4a9cf994d27c5089bf0bf1bd6ea2dfe1d`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Imo1981Q3/Variant6ed414a37e94f328c5a8d323acd96646b78a852ff5f093d53793772528b00a0d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Imo1981Q3/Variant6ed414a37e94f328c5a8d323acd96646b78a852ff5f093d53793772528b00a0d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Int.Lemmas` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.Fib` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Linarith` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.LinearCombination` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [ProblemPredicate](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Imo1981Q3/Variant6ed414a37e94f328c5a8d323acd96646b78a852ff5f093d53793772528b00a0d.lean/declarations/problempredicate--b9fc174ef64b204d43fa0629.md) | 37 | `declaration-track:b9fc174ef64b204d43fa0629d300b941afa42e0c741854d6d2bf4c5dfac2853f` |
| 2 | `def` | [specifiedSet](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Imo1981Q3/Variant6ed414a37e94f328c5a8d323acd96646b78a852ff5f093d53793772528b00a0d.lean/declarations/specifiedset--896d99f866ccd16fc09a2f94.md) | 43 | `declaration-track:896d99f866ccd16fc09a2f94c8775d1f17cb1f542765f16cd7873786e31d7c91` |
| 3 | `theorem` | [m_le_n](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Imo1981Q3/Variant6ed414a37e94f328c5a8d323acd96646b78a852ff5f093d53793772528b00a0d.lean/declarations/m-le-n--124beba55ea12baab9fdc290.md) | 56 | `result-track:124beba55ea12baab9fdc290fad0f8ea2b85cb27698864ab272a49675e7876d4` |
| 4 | `theorem` | [eq_imp_1](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Imo1981Q3/Variant6ed414a37e94f328c5a8d323acd96646b78a852ff5f093d53793772528b00a0d.lean/declarations/eq-imp-1--8fd313d6ed4c9a503aaa5024.md) | 64 | `result-track:8fd313d6ed4c9a503aaa5024508193c7d9ad7836fc00a9af117e9c0831dcec3e` |
| 5 | `theorem` | [reduction](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Imo1981Q3/Variant6ed414a37e94f328c5a8d323acd96646b78a852ff5f093d53793772528b00a0d.lean/declarations/reduction--2ca912bd5c5e4dd607c91b2b.md) | 69 | `result-track:2ca912bd5c5e4dd607c91b2b4dbfad382ff6bcd1df47457be09223b27be80eb8` |
| 6 | `def` | [NatPredicate](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Imo1981Q3/Variant6ed414a37e94f328c5a8d323acd96646b78a852ff5f093d53793772528b00a0d.lean/declarations/natpredicate--e3b8807aa8610c88538f9cb5.md) | 92 | `declaration-track:e3b8807aa8610c88538f9cb56ecc1575a26b6dae3984173f14beb8c57e85b294` |
| 7 | `theorem` | [m_le_n](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Imo1981Q3/Variant6ed414a37e94f328c5a8d323acd96646b78a852ff5f093d53793772528b00a0d.lean/declarations/m-le-n--2c1531fd290c034aedc5e38c.md) | 100 | `result-track:2c1531fd290c034aedc5e38c345ebe2de739ed808dec14d0873353307ee95c62` |
| 8 | `theorem` | [eq_imp_1](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Imo1981Q3/Variant6ed414a37e94f328c5a8d323acd96646b78a852ff5f093d53793772528b00a0d.lean/declarations/eq-imp-1--be8373dd701766a71ce128a4.md) | 103 | `result-track:be8373dd701766a71ce128a46ca9cec10c15333b5ce60c17997abd48844b4ecd` |
| 9 | `theorem` | [reduction](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Imo1981Q3/Variant6ed414a37e94f328c5a8d323acd96646b78a852ff5f093d53793772528b00a0d.lean/declarations/reduction--8dba89029a4681ad2dafa229.md) | 106 | `result-track:8dba89029a4681ad2dafa2291bf03329a178d409388fdb48f72c639fb4ae4e99` |
| 10 | `theorem` | [n_pos](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Imo1981Q3/Variant6ed414a37e94f328c5a8d323acd96646b78a852ff5f093d53793772528b00a0d.lean/declarations/n-pos--64e10a3e310fce8320392618.md) | 112 | `result-track:64e10a3e310fce832039261833c8e7b53641cceb213123e72d562dd11a871bff` |
| 11 | `theorem` | [m_pos](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Imo1981Q3/Variant6ed414a37e94f328c5a8d323acd96646b78a852ff5f093d53793772528b00a0d.lean/declarations/m-pos--98bb3a9f3ec059572b3bbc1b.md) | 115 | `result-track:98bb3a9f3ec059572b3bbc1be21fa3cd25f3c7e5d7075b63ef196075e9c27430` |
| 12 | `theorem` | [n_le_N](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Imo1981Q3/Variant6ed414a37e94f328c5a8d323acd96646b78a852ff5f093d53793772528b00a0d.lean/declarations/n-le-n--8fdb325d372741cfa686e46b.md) | 118 | `result-track:8fdb325d372741cfa686e46be0211695c04dd29bbdd9983308f0b0c9a4ec7fad` |
| 13 | `theorem` | [imp_fib](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Imo1981Q3/Variant6ed414a37e94f328c5a8d323acd96646b78a852ff5f093d53793772528b00a0d.lean/declarations/imp-fib--44eb1295c79f9fbae8fc09f6.md) | 125 | `result-track:44eb1295c79f9fbae8fc09f64d9c2d2352b1a7b700cfb8ce237b5ee6e6bef602` |
| 14 | `theorem` | [m_n_bounds](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Imo1981Q3/Variant6ed414a37e94f328c5a8d323acd96646b78a852ff5f093d53793772528b00a0d.lean/declarations/m-n-bounds--0cd29533962ef3ceaf47bffb.md) | 149 | `result-track:0cd29533962ef3ceaf47bffb6bb56d4b64ec70840d6b410785f5d0428bbc2503` |
| 15 | `theorem` | [k_bound](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Imo1981Q3/Variant6ed414a37e94f328c5a8d323acd96646b78a852ff5f093d53793772528b00a0d.lean/declarations/k-bound--c8ca93c38791a62765d152f9.md) | 177 | `result-track:c8ca93c38791a62765d152f9af5b82c96c554ec87c83e84d70e305af5614474d` |
| 16 | `theorem` | [solution_bound](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Imo1981Q3/Variant6ed414a37e94f328c5a8d323acd96646b78a852ff5f093d53793772528b00a0d.lean/declarations/solution-bound--c716681bed2d1b0bc501276c.md) | 187 | `result-track:c716681bed2d1b0bc501276cd2d19da0fce179d26ae73de7b4788eb6d011f867` |
| 17 | `theorem` | [solution_greatest](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Imo1981Q3/Variant6ed414a37e94f328c5a8d323acd96646b78a852ff5f093d53793772528b00a0d.lean/declarations/solution-greatest--87b64eb4045ce64ce76eded8.md) | 191 | `result-track:87b64eb4045ce64ce76eded810ccaa8fd5616c37c2aa4134d9ffc721ad00c68c` |
| 18 | `theorem` | [imo1981_q3](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Imo1981Q3/Variant6ed414a37e94f328c5a8d323acd96646b78a852ff5f093d53793772528b00a0d.lean/declarations/imo1981-q3--5a2cf64ddba1eb4b5ee0f80c.md) | 204 | `result-track:5a2cf64ddba1eb4b5ee0f80cd9ca18f5247f210e10cd03a2cdf1b214bdf224b8` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
