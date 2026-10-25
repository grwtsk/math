# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.Lemmas.Variant3a62564caf5c8c1d67c5997378285a9fcd7228653a6fcf7865747e5e45167233

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "bb58ae8d4f943ddb14b7c4b9e546785087b0b0ed",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/Lemmas/Variant3a62564caf5c8c1d67c5997378285a9fcd7228653a6fcf7865747e5e45167233.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/FoundationsLogicAndTypeTheory/Lemmas/Variant3a62564caf5c8c1d67c5997378285a9fcd7228653a6fcf7865747e5e45167233.lean/index.md) · [Full source](../../../../mathematics/FoundationsLogicAndTypeTheory/Lemmas/Variant3a62564caf5c8c1d67c5997378285a9fcd7228653a6fcf7865747e5e45167233.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `bb58ae8d4f943ddb14b7c4b9e546785087b0b0ed`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/Lemmas/Variant3a62564caf5c8c1d67c5997378285a9fcd7228653a6fcf7865747e5e45167233.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/Lemmas/Variant3a62564caf5c8c1d67c5997378285a9fcd7228653a6fcf7865747e5e45167233.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Nat.Find` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Set.Basic` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [Subtype.orderBot](../../../../mathematics/FoundationsLogicAndTypeTheory/Lemmas/Variant3a62564caf5c8c1d67c5997378285a9fcd7228653a6fcf7865747e5e45167233.lean/declarations/subtype-orderbot--adb6de94f5e8bccf28830601.md) | 24 | `declaration-track:adb6de94f5e8bccf288306013531559702c406679af25d8fe9c2937b9e340e42` |
| 2 | `instance` | [Subtype.semilatticeSup](../../../../mathematics/FoundationsLogicAndTypeTheory/Lemmas/Variant3a62564caf5c8c1d67c5997378285a9fcd7228653a6fcf7865747e5e45167233.lean/declarations/subtype-semilatticesup--c48870403a9fb289412611a6.md) | 28 | `declaration-track:c48870403a9fb289412611a6d7e36a7f977446fd0774e6cd5a40ce5fc121fda1` |
| 3 | `theorem` | [Subtype.coe_bot](../../../../mathematics/FoundationsLogicAndTypeTheory/Lemmas/Variant3a62564caf5c8c1d67c5997378285a9fcd7228653a6fcf7865747e5e45167233.lean/declarations/subtype-coe-bot--eb421a1bef711af062513b16.md) | 31 | `result-track:eb421a1bef711af062513b1639484695de79306b518422e9b26aaf05581cfced` |
| 4 | `theorem` | [set_eq_univ](../../../../mathematics/FoundationsLogicAndTypeTheory/Lemmas/Variant3a62564caf5c8c1d67c5997378285a9fcd7228653a6fcf7865747e5e45167233.lean/declarations/set-eq-univ--8be098c777cef7650edb1ed1.md) | 35 | `result-track:8be098c777cef7650edb1ed135caa045c5b303fdc8668ab0f799afca8c057b10` |
| 5 | `lemma` | [exists_not_and_succ_of_not_zero_of_exists](../../../../mathematics/FoundationsLogicAndTypeTheory/Lemmas/Variant3a62564caf5c8c1d67c5997378285a9fcd7228653a6fcf7865747e5e45167233.lean/declarations/exists-not-and-succ-of-not-zero-of-exists--1a91230c82ebc70323116855.md) | 38 | `result-track:1a91230c82ebc70323116855d9e00610f70c286db041639bf3b3833e8422d780` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
