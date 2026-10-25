# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.Basic.Variant158baf891423d3c29a35b0d04331bb81cfc9f258ae6cfd5368242aea7c10e05f

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2fdb2992e103e72fff882de6dc5dd345d7df0b99",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/Basic/Variant158baf891423d3c29a35b0d04331bb81cfc9f258ae6cfd5368242aea7c10e05f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/FoundationsLogicAndTypeTheory/Basic/Variant158baf891423d3c29a35b0d04331bb81cfc9f258ae6cfd5368242aea7c10e05f.lean/index.md) · [Full source](../../../../mathematics/FoundationsLogicAndTypeTheory/Basic/Variant158baf891423d3c29a35b0d04331bb81cfc9f258ae6cfd5368242aea7c10e05f.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2fdb2992e103e72fff882de6dc5dd345d7df0b99`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/Basic/Variant158baf891423d3c29a35b0d04331bb81cfc9f258ae6cfd5368242aea7c10e05f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/Basic/Variant158baf891423d3c29a35b0d04331bb81cfc9f258ae6cfd5368242aea7c10e05f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Int.Notation` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.Notation` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Defs.LinearOrder` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [le.elim](../../../../mathematics/FoundationsLogicAndTypeTheory/Basic/Variant158baf891423d3c29a35b0d04331bb81cfc9f258ae6cfd5368242aea7c10e05f.lean/declarations/le-elim--c3cf63f85b39729fec2dd9fc.md) | 21 | `result-track:c3cf63f85b39729fec2dd9fc1996a02000876928834db05f4bf407ec883de0aa` |
| 2 | `theorem` | [lt.elim](../../../../mathematics/FoundationsLogicAndTypeTheory/Basic/Variant158baf891423d3c29a35b0d04331bb81cfc9f258ae6cfd5368242aea7c10e05f.lean/declarations/lt-elim--219b340448f776890b6cb1be.md) | 26 | `result-track:219b340448f776890b6cb1be3d9270b0f75616866b9a5834f96644568eee7a44` |
| 3 | `instance` | [instLinearOrder](../../../../mathematics/FoundationsLogicAndTypeTheory/Basic/Variant158baf891423d3c29a35b0d04331bb81cfc9f258ae6cfd5368242aea7c10e05f.lean/declarations/instlinearorder--a70a3172fa773fa835a8e73e.md) | 31 | `declaration-track:a70a3172fa773fa835a8e73e936e89d955e8cc30ec1b66bea767a32f73bf9bab` |
| 4 | `theorem` | [eq_zero_or_eq_zero_of_mul_eq_zero](../../../../mathematics/FoundationsLogicAndTypeTheory/Basic/Variant158baf891423d3c29a35b0d04331bb81cfc9f258ae6cfd5368242aea7c10e05f.lean/declarations/eq-zero-or-eq-zero-of-mul-eq-zero--e0b2ef98de4bf48a56934f0a.md) | 43 | `result-track:e0b2ef98de4bf48a56934f0ab12f0c51e7a91f63e4f86e0aa7c71529f9a62d1a` |
| 5 | `theorem` | [nonneg_or_nonpos_of_mul_nonneg](../../../../mathematics/FoundationsLogicAndTypeTheory/Basic/Variant158baf891423d3c29a35b0d04331bb81cfc9f258ae6cfd5368242aea7c10e05f.lean/declarations/nonneg-or-nonpos-of-mul-nonneg--4fb827431620614e857ee082.md) | 46 | `result-track:4fb827431620614e857ee082479241ea6bd9667ee9653d4ba73c46550826a722` |
| 6 | `theorem` | [mul_nonneg_of_nonneg_or_nonpos](../../../../mathematics/FoundationsLogicAndTypeTheory/Basic/Variant158baf891423d3c29a35b0d04331bb81cfc9f258ae6cfd5368242aea7c10e05f.lean/declarations/mul-nonneg-of-nonneg-or-nonpos--38e0d33b696833d82a5215ad.md) | 60 | `result-track:38e0d33b696833d82a5215adb487d389fc6609c4fa4bb2e93253639854cd5af9` |
| 7 | `theorem` | [mul_nonneg_iff](../../../../mathematics/FoundationsLogicAndTypeTheory/Basic/Variant158baf891423d3c29a35b0d04331bb81cfc9f258ae6cfd5368242aea7c10e05f.lean/declarations/mul-nonneg-iff--b2f953967e70c8da2f2eca78.md) | 64 | `result-track:b2f953967e70c8da2f2eca78a3792c99fe9c46ad005787b8610da41ebb9c46af` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
