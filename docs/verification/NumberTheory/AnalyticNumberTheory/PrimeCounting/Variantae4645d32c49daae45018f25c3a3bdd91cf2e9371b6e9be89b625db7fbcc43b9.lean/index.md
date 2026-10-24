# Verification target: GRWTSK.NumberTheory.AnalyticNumberTheory.PrimeCounting.Variantae4645d32c49daae45018f25c3a3bdd91cf2e9371b6e9be89b625db7fbcc43b9

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "20c8927a39601a688ec7eda6b60dede58e0d7d91",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/PrimeCounting/Variantae4645d32c49daae45018f25c3a3bdd91cf2e9371b6e9be89b625db7fbcc43b9.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/PrimeCounting/Variantae4645d32c49daae45018f25c3a3bdd91cf2e9371b6e9be89b625db7fbcc43b9.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/PrimeCounting/Variantae4645d32c49daae45018f25c3a3bdd91cf2e9371b6e9be89b625db7fbcc43b9.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `20c8927a39601a688ec7eda6b60dede58e0d7d91`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/PrimeCounting/Variantae4645d32c49daae45018f25c3a3bdd91cf2e9371b6e9be89b625db7fbcc43b9.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/PrimeCounting/Variantae4645d32c49daae45018f25c3a3bdd91cf2e9371b6e9be89b625db7fbcc43b9.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Nat.PrimeFin` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.Totient` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Finset.LocallyFinite` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.Count` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.Nth` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [primeCounting'](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/PrimeCounting/Variantae4645d32c49daae45018f25c3a3bdd91cf2e9371b6e9be89b625db7fbcc43b9.lean/declarations/primecounting--885310039d6ea0c7ba39eb1e.md) | 47 | `declaration-track:885310039d6ea0c7ba39eb1e0a5ed063b778d9904f9c591c89c70c0bb1a256b3` |
| 2 | `def` | [primeCounting](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/PrimeCounting/Variantae4645d32c49daae45018f25c3a3bdd91cf2e9371b6e9be89b625db7fbcc43b9.lean/declarations/primecounting--2852d96419bf3cf0a7acf793.md) | 52 | `declaration-track:2852d96419bf3cf0a7acf79319947b9e6fa62fc7fef8ad058b25482a72a45d6c` |
| 3 | `theorem` | [monotone_primeCounting'](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/PrimeCounting/Variantae4645d32c49daae45018f25c3a3bdd91cf2e9371b6e9be89b625db7fbcc43b9.lean/declarations/monotone-primecounting--e120c257dd09dff8eeae4fcf.md) | 60 | `result-track:e120c257dd09dff8eeae4fcfecdc98687681373281df9e09b9f4d6bdf8a48f76` |
| 4 | `theorem` | [monotone_primeCounting](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/PrimeCounting/Variantae4645d32c49daae45018f25c3a3bdd91cf2e9371b6e9be89b625db7fbcc43b9.lean/declarations/monotone-primecounting--0114e6eb4d45c68ba19f4e08.md) | 64 | `result-track:0114e6eb4d45c68ba19f4e087ba3660b7b79a6c2accd5557522e6124ebef78f5` |
| 5 | `theorem` | [primeCounting'_nth_eq](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/PrimeCounting/Variantae4645d32c49daae45018f25c3a3bdd91cf2e9371b6e9be89b625db7fbcc43b9.lean/declarations/primecounting-nth-eq--b33b9f3d7841f6ea1ef1a3b4.md) | 69 | `result-track:b33b9f3d7841f6ea1ef1a3b484d9fd4c453c0bdab5612cc209d64d011efc683e` |
| 6 | `theorem` | [prime_nth_prime](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/PrimeCounting/Variantae4645d32c49daae45018f25c3a3bdd91cf2e9371b6e9be89b625db7fbcc43b9.lean/declarations/prime-nth-prime--2d5045becba1316c291d1d6e.md) | 74 | `result-track:2d5045becba1316c291d1d6e6316b2f0aec2cd20f12d16520a4d8973c6fec80f` |
| 7 | `theorem` | [primeCounting'_add_le](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/PrimeCounting/Variantae4645d32c49daae45018f25c3a3bdd91cf2e9371b6e9be89b625db7fbcc43b9.lean/declarations/primecounting-add-le--72b3840b9d9689236267da2f.md) | 79 | `result-track:72b3840b9d9689236267da2fd789cd985ce98f0d20dd96dad43f5b96c789caab` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
