# Verification target: GRWTSK.NumberTheory.AnalyticNumberTheory.PrimeCounting.Variant9d5f78145ae5c6ff4a6e7dab08c9bbc9965bf8a07fa79e90630164284d0595b1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d13ad1f0c88cd64057507ace58d239ec712709f2",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/PrimeCounting/Variant9d5f78145ae5c6ff4a6e7dab08c9bbc9965bf8a07fa79e90630164284d0595b1.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/PrimeCounting/Variant9d5f78145ae5c6ff4a6e7dab08c9bbc9965bf8a07fa79e90630164284d0595b1.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/PrimeCounting/Variant9d5f78145ae5c6ff4a6e7dab08c9bbc9965bf8a07fa79e90630164284d0595b1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d13ad1f0c88cd64057507ace58d239ec712709f2`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/PrimeCounting/Variant9d5f78145ae5c6ff4a6e7dab08c9bbc9965bf8a07fa79e90630164284d0595b1.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/PrimeCounting/Variant9d5f78145ae5c6ff4a6e7dab08c9bbc9965bf8a07fa79e90630164284d0595b1.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Nat.PrimeFin` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.Totient` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Finset.LocallyFinite` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.Count` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.Nth` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [primeCounting'](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/PrimeCounting/Variant9d5f78145ae5c6ff4a6e7dab08c9bbc9965bf8a07fa79e90630164284d0595b1.lean/declarations/primecounting--4ac75c46cb70b110a3d19ea0.md) | 55 | `declaration-track:4ac75c46cb70b110a3d19ea00df414410e5bb120bdee16a3dcb97f7cebf5067b` |
| 2 | `def` | [primeCounting](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/PrimeCounting/Variant9d5f78145ae5c6ff4a6e7dab08c9bbc9965bf8a07fa79e90630164284d0595b1.lean/declarations/primecounting--6e3baba36371e7abd3757421.md) | 60 | `declaration-track:6e3baba36371e7abd3757421acdb25ccee65fa932ac4991beec53be70cab679e` |
| 3 | `theorem` | [monotone_primeCounting'](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/PrimeCounting/Variant9d5f78145ae5c6ff4a6e7dab08c9bbc9965bf8a07fa79e90630164284d0595b1.lean/declarations/monotone-primecounting--cbe029e2f318b9c5c07387a2.md) | 68 | `result-track:cbe029e2f318b9c5c07387a2c3dbe78e5fad99b99c25ca59f7997da4bd51d6f4` |
| 4 | `theorem` | [monotone_primeCounting](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/PrimeCounting/Variant9d5f78145ae5c6ff4a6e7dab08c9bbc9965bf8a07fa79e90630164284d0595b1.lean/declarations/monotone-primecounting--4d46b21f84de4ca6a18bf9bd.md) | 72 | `result-track:4d46b21f84de4ca6a18bf9bd294dd3d0c79381fc8c97c589329641ea96ffad40` |
| 5 | `theorem` | [primeCounting'_nth_eq](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/PrimeCounting/Variant9d5f78145ae5c6ff4a6e7dab08c9bbc9965bf8a07fa79e90630164284d0595b1.lean/declarations/primecounting-nth-eq--e2b04994d3ef2c2178617a9d.md) | 77 | `result-track:e2b04994d3ef2c2178617a9de808173a018a7bbb9d6ea5485961006dada5918c` |
| 6 | `theorem` | [prime_nth_prime](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/PrimeCounting/Variant9d5f78145ae5c6ff4a6e7dab08c9bbc9965bf8a07fa79e90630164284d0595b1.lean/declarations/prime-nth-prime--908e0a93a68dba0f7e36f79a.md) | 82 | `result-track:908e0a93a68dba0f7e36f79a73c57b3acc3845bd851f21b0e6ef82e2ed90c360` |
| 7 | `theorem` | [primeCounting'_add_le](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/PrimeCounting/Variant9d5f78145ae5c6ff4a6e7dab08c9bbc9965bf8a07fa79e90630164284d0595b1.lean/declarations/primecounting-add-le--59fba00018bcbca248256e1e.md) | 87 | `result-track:59fba00018bcbca248256e1e2616a9582209cd05512959331b2fdaa5431429f6` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
