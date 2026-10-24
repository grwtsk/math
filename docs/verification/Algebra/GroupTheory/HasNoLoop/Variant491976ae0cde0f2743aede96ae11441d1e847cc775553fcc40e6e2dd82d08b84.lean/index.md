# Verification target: GRWTSK.Algebra.GroupTheory.HasNoLoop.Variant491976ae0cde0f2743aede96ae11441d1e847cc775553fcc40e6e2dd82d08b84

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4bef7e4fc5ef1a644f9100f131769390c1ed5457",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/HasNoLoop/Variant491976ae0cde0f2743aede96ae11441d1e847cc775553fcc40e6e2dd82d08b84.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/HasNoLoop/Variant491976ae0cde0f2743aede96ae11441d1e847cc775553fcc40e6e2dd82d08b84.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/HasNoLoop/Variant491976ae0cde0f2743aede96ae11441d1e847cc775553fcc40e6e2dd82d08b84.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4bef7e4fc5ef1a644f9100f131769390c1ed5457`.

Source path: `GRWTSK/Algebra/GroupTheory/HasNoLoop/Variant491976ae0cde0f2743aede96ae11441d1e847cc775553fcc40e6e2dd82d08b84.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/HasNoLoop/Variant491976ae0cde0f2743aede96ae11441d1e847cc775553fcc40e6e2dd82d08b84.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Homology.ComplexShape` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.Int.Defs` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.Nat.Defs` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [HasNoLoop](../../../../../mathematics/Algebra/GroupTheory/HasNoLoop/Variant491976ae0cde0f2743aede96ae11441d1e847cc775553fcc40e6e2dd82d08b84.lean/declarations/hasnoloop--3ded032955f58d82802bac7e.md) | 23 | `declaration-track:3ded032955f58d82802bac7ee80832ed303e0db0ee7f288e269e3a9390e7de71` |
| 2 | `lemma` | [not_rel_self](../../../../../mathematics/Algebra/GroupTheory/HasNoLoop/Variant491976ae0cde0f2743aede96ae11441d1e847cc775553fcc40e6e2dd82d08b84.lean/declarations/not-rel-self--44baf9ab688d55bb348e31e4.md) | 30 | `result-track:44baf9ab688d55bb348e31e464deaa40930fd88e78d740b619dc892863c69f61` |
| 3 | `lemma` | [not_rel_of_eq](../../../../../mathematics/Algebra/GroupTheory/HasNoLoop/Variant491976ae0cde0f2743aede96ae11441d1e847cc775553fcc40e6e2dd82d08b84.lean/declarations/not-rel-of-eq--28253bd52a609227bb682d41.md) | 34 | `result-track:28253bd52a609227bb682d4102680d5d5d7106165e7c98e4160541611a850473` |
| 4 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/HasNoLoop/Variant491976ae0cde0f2743aede96ae11441d1e847cc775553fcc40e6e2dd82d08b84.lean/declarations/instance--dbd0dde28f4b33fbf3e3293f.md) | 38 | `declaration-track:dbd0dde28f4b33fbf3e3293fd3192e7bd40da040977bb7eb716554bf36281a81` |
| 5 | `lemma` | [exists_distinct_prev_or](../../../../../mathematics/Algebra/GroupTheory/HasNoLoop/Variant491976ae0cde0f2743aede96ae11441d1e847cc775553fcc40e6e2dd82d08b84.lean/declarations/exists-distinct-prev-or--3b254bea31b759c96f4a14d9.md) | 41 | `result-track:3b254bea31b759c96f4a14d9ca13c841fc506b100f99a2d1c145b66475a564e0` |
| 6 | `lemma` | [exists_distinct_next_or](../../../../../mathematics/Algebra/GroupTheory/HasNoLoop/Variant491976ae0cde0f2743aede96ae11441d1e847cc775553fcc40e6e2dd82d08b84.lean/declarations/exists-distinct-next-or--0a8060500c45c8c25dcff6ed.md) | 48 | `result-track:0a8060500c45c8c25dcff6edbfebde786c79d28b8eb46b3bd51402cb43ec85bf` |
| 7 | `lemma` | [hasNoLoop_up'](../../../../../mathematics/Algebra/GroupTheory/HasNoLoop/Variant491976ae0cde0f2743aede96ae11441d1e847cc775553fcc40e6e2dd82d08b84.lean/declarations/hasnoloop-up--04bc35faa3c8b9bbe5a9a63e.md) | 55 | `result-track:04bc35faa3c8b9bbe5a9a63e0326ad2b1f75f9983ed3fe738a3ef074a68bc6b0` |
| 8 | `lemma` | [hasNoLoop_down'](../../../../../mathematics/Algebra/GroupTheory/HasNoLoop/Variant491976ae0cde0f2743aede96ae11441d1e847cc775553fcc40e6e2dd82d08b84.lean/declarations/hasnoloop-down--0e97c5bd32ff08f0dd87022a.md) | 61 | `result-track:0e97c5bd32ff08f0dd87022aa00a09ea66333d3561092b6121d1a2004d7f5a49` |
| 9 | `lemma` | [hasNoLoop_up](../../../../../mathematics/Algebra/GroupTheory/HasNoLoop/Variant491976ae0cde0f2743aede96ae11441d1e847cc775553fcc40e6e2dd82d08b84.lean/declarations/hasnoloop-up--ea1dfe664aaa35be94ed13ad.md) | 67 | `result-track:ea1dfe664aaa35be94ed13ad57bb692820d1a245ea55672d86710416cb9173e2` |
| 10 | `lemma` | [hasNoLoop_down](../../../../../mathematics/Algebra/GroupTheory/HasNoLoop/Variant491976ae0cde0f2743aede96ae11441d1e847cc775553fcc40e6e2dd82d08b84.lean/declarations/hasnoloop-down--1b2cef8ffa3f975b7b11a65e.md) | 72 | `result-track:1b2cef8ffa3f975b7b11a65e18f506768c7ff5d5dd26b96f1b425204d8fc68b9` |
| 11 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/HasNoLoop/Variant491976ae0cde0f2743aede96ae11441d1e847cc775553fcc40e6e2dd82d08b84.lean/declarations/instance--1256a0047c0cf79cdf85eb74.md) | 79 | `declaration-track:1256a0047c0cf79cdf85eb74181edfc78b6dde015bddfb87fe223e53d32b5fc0` |
| 12 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/HasNoLoop/Variant491976ae0cde0f2743aede96ae11441d1e847cc775553fcc40e6e2dd82d08b84.lean/declarations/instance--51a2f7e19486bc2377252ce6.md) | 80 | `declaration-track:51a2f7e19486bc2377252ce65c79b394f9459bd5b6e6488119b2149721e24c03` |
| 13 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/HasNoLoop/Variant491976ae0cde0f2743aede96ae11441d1e847cc775553fcc40e6e2dd82d08b84.lean/declarations/instance--fc69ac9a55086843cd15a4c7.md) | 81 | `declaration-track:fc69ac9a55086843cd15a4c76e73d2e30805b9c76548bff7a8c4c5857c16391b` |
| 14 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/HasNoLoop/Variant491976ae0cde0f2743aede96ae11441d1e847cc775553fcc40e6e2dd82d08b84.lean/declarations/instance--588c7b99dde65d7a193ba079.md) | 82 | `declaration-track:588c7b99dde65d7a193ba0794dd7cc8983d8c1c03593bafdde35dc2c724686cb` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
