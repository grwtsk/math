# Verification target: GRWTSK.NumberTheory.Moebius.ResponseBudgetIdentification

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "50e291b05fce0e6ef3336bdf02b92386c61938a9",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Moebius/ResponseBudgetIdentification.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/NumberTheory/Moebius/ResponseBudgetIdentification.lean/index.md) · [Full source](../../../../mathematics/NumberTheory/Moebius/ResponseBudgetIdentification.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `50e291b05fce0e6ef3336bdf02b92386c61938a9`.

Source path: `GRWTSK/NumberTheory/Moebius/ResponseBudgetIdentification.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Moebius/ResponseBudgetIdentification.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.Analysis.AsymptoticAnalysis.FixedWidthEnergyBoundEquivalence`](../../../../mathematics/Analysis/AsymptoticAnalysis/FixedWidthEnergyBoundEquivalence__SourceOccurrence0bc4416f682389a6dc94acd4.lean/index.md) — import line 1; pinned internal source present.
- [`GRWTSK.NumberTheory.Moebius.MertensPrimitive`](../../../../mathematics/NumberTheory/Moebius/MertensPrimitive.lean/index.md) — import line 2; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [response_eq](../../../../mathematics/NumberTheory/Moebius/ResponseBudgetIdentification.lean/declarations/response-eq--302c7d746a6508bdfa642682.md) | 13 | `result-track:302c7d746a6508bdfa6426827b00f999497621488e76ae78a6bcb8a24fad7adb` |
| 2 | `lemma` | [coefficient_eq](../../../../mathematics/NumberTheory/Moebius/ResponseBudgetIdentification.lean/declarations/coefficient-eq--6e5f2eade6cc8753112a0683.md) | 14 | `result-track:6e5f2eade6cc8753112a06839b2b7897df4165ce364e091864a20f5712fac826` |
| 3 | `lemma` | [response_gram_eq](../../../../mathematics/NumberTheory/Moebius/ResponseBudgetIdentification.lean/declarations/response-gram-eq--01db86849c6458c8354aaf3c.md) | 16 | `result-track:01db86849c6458c8354aaf3c16b86fadb28aff311a8a317b4087a75e2763665b` |
| 4 | `lemma` | [diagonal_eq](../../../../mathematics/NumberTheory/Moebius/ResponseBudgetIdentification.lean/declarations/diagonal-eq--4f0b842bbb070741e7ec3cde.md) | 22 | `result-track:4f0b842bbb070741e7ec3cde2572c278e47000ad2ca43bb79e0d44cdfc0a31ea` |
| 5 | `lemma` | [complete_gram_eq_energy](../../../../mathematics/NumberTheory/Moebius/ResponseBudgetIdentification.lean/declarations/complete-gram-eq-energy--fe458909456e9131db5fe59f.md) | 27 | `result-track:fe458909456e9131db5fe59fc1697e9e752b4890504ff0e978f3fe1f78a7375f` |
| 6 | `theorem` | [cross_eq](../../../../mathematics/NumberTheory/Moebius/ResponseBudgetIdentification.lean/declarations/cross-eq--f0b37543a89711f837aa73c7.md) | 35 | `result-track:f0b37543a89711f837aa73c73c1935a117cc467cdbbe2e6f42a988d2b760b038` |
| 7 | `theorem` | [native_P04_iff_literal_P04](../../../../mathematics/NumberTheory/Moebius/ResponseBudgetIdentification.lean/declarations/native-p04-iff-literal-p04--d6fc1e9b8b5633b298cd96db.md) | 42 | `result-track:d6fc1e9b8b5633b298cd96db585902a9d000cf39e7260ce6084820100d46f76e` |
| 8 | `theorem` | [native_P04_eq_literal_P04](../../../../mathematics/NumberTheory/Moebius/ResponseBudgetIdentification.lean/declarations/native-p04-eq-literal-p04--541b513c544a65109c42826a.md) | 55 | `result-track:541b513c544a65109c42826a13119d2fda142af4e7dfb776a9aeee77eb4c445e` |
| 9 | `theorem` | [HSS_iff_native_P04](../../../../mathematics/NumberTheory/Moebius/ResponseBudgetIdentification.lean/declarations/hss-iff-native-p04--3ea88e353414ca22571fa7cc.md) | 58 | `result-track:3ea88e353414ca22571fa7ccf8a22b4e25bbb61eee7fedd45b537829d8d0946f` |
| 10 | `theorem` | [native_P04_implies_literal_RH](../../../../mathematics/NumberTheory/Moebius/ResponseBudgetIdentification.lean/declarations/native-p04-implies-literal-rh--ee85ab92411115bfbcfff181.md) | 61 | `result-track:ee85ab92411115bfbcfff181f63472b68bfc7ac44534660a0097b994f3d165a9` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
