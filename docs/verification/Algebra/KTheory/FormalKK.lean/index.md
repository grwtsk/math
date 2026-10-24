# Verification target: GRWTSK.Algebra.KTheory.FormalKK

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0c0205b65d8e2ead433a60d3479317f37952111b",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/KTheory/FormalKK.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/KTheory/FormalKK.lean/index.md) · [Full source](../../../../mathematics/Algebra/KTheory/FormalKK.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0c0205b65d8e2ead433a60d3479317f37952111b`.

Source path: `GRWTSK/Algebra/KTheory/FormalKK.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/KTheory/FormalKK.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib` — import line 1; external provider; requires a separately pinned dependency.
- [`GRWTSK.Algebra.KTheory.GrothendieckPort`](../../../../mathematics/Algebra/KTheory/GrothendieckPort.lean/index.md) — import line 2; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [BivariantTheory](../../../../mathematics/Algebra/KTheory/FormalKK.lean/declarations/bivarianttheory--5d218685d17db1a6a95f9d1a.md) | 12 | `declaration-track:5d218685d17db1a6a95f9d1a40cdcf9c097f9d1a14ec8b70634cc438b91d2ccb` |
| 2 | `structure` | [KKEquivalence](../../../../mathematics/Algebra/KTheory/FormalKK.lean/declarations/kkequivalence--991d3e846c3bcec3ebffb07a.md) | 25 | `declaration-track:991d3e846c3bcec3ebffb07aa531ac93a008e92948b810cf81cba163db89013a` |
| 3 | `structure` | [BivariantAction](../../../../mathematics/Algebra/KTheory/FormalKK.lean/declarations/bivariantaction--bd2fc226ab986ae54695d2a3.md) | 32 | `declaration-track:bd2fc226ab986ae54695d2a3215ea45e49d993546135f0e0e49925eac72ffdd3` |
| 4 | `def` | [actionEquiv](../../../../mathematics/Algebra/KTheory/FormalKK.lean/declarations/actionequiv--ae7ec8195f06d42660ea7821.md) | 49 | `declaration-track:ae7ec8195f06d42660ea7821f34d663fdbab0b8088de22f14076738b4d9570bb` |
| 5 | `structure` | [KKProfile](../../../../mathematics/Algebra/KTheory/FormalKK.lean/declarations/kkprofile--c1e802c2a808cc804e05b01f.md) | 75 | `declaration-track:c1e802c2a808cc804e05b01fdad7251e0e2281f51ebf6d62e820c1d9bbd08522` |
| 6 | `def` | [analyticKasparovProfile](../../../../mathematics/Algebra/KTheory/FormalKK.lean/declarations/analytickasparovprofile--31d108b938bac5db73e02988.md) | 88 | `declaration-track:31d108b938bac5db73e029889359908c819f4b19aaf2db876ba07c9a7fd3b753` |
| 7 | `inductive` | [ProductPath](../../../../mathematics/Algebra/KTheory/FormalKK.lean/declarations/productpath--4d24d4d6df13e6ffa854d874.md) | 101 | `declaration-track:4d24d4d6df13e6ffa854d874225775459d08fc463a50f7df9c04632af153344a` |
| 8 | `def` | [evaluate](../../../../mathematics/Algebra/KTheory/FormalKK.lean/declarations/evaluate--253243ff5bcdf7bff0dde6f0.md) | 112 | `declaration-track:253243ff5bcdf7bff0dde6f02faabfbd5a527568d741037ff7d5fec97ed04c7c` |
| 9 | `def` | [append](../../../../mathematics/Algebra/KTheory/FormalKK.lean/declarations/append--9754bdccd926f9866c000ba2.md) | 117 | `declaration-track:9754bdccd926f9866c000ba26b17f71d720f710824cef9d5ece1bc9c0546696f` |
| 10 | `theorem` | [evaluate_append](../../../../mathematics/Algebra/KTheory/FormalKK.lean/declarations/evaluate-append--5fb822ecb8d8ae3e03a04944.md) | 123 | `result-track:5fb822ecb8d8ae3e03a04944e41ac5c457a12e46170f0e8703db5232a1b167b2` |
| 11 | `def` | [theory](../../../../mathematics/Algebra/KTheory/FormalKK.lean/declarations/theory--c7eae327af2b18a688f58af8.md) | 140 | `declaration-track:c7eae327af2b18a688f58af8a0fbff897b2275e5673c9d24f02cb71418576682` |
| 12 | `def` | [action](../../../../mathematics/Algebra/KTheory/FormalKK.lean/declarations/action--f18a58377c08a0cd3384391c.md) | 155 | `declaration-track:f18a58377c08a0cd3384391c92421457813ecf6616aa856e2528028bb7dc9f76` |
| 13 | `def` | [equivalence](../../../../mathematics/Algebra/KTheory/FormalKK.lean/declarations/equivalence--375a6c720bffc3ab31d0fe18.md) | 161 | `declaration-track:375a6c720bffc3ab31d0fe18e26fbcde9df7144bda6d9349fdee1230701fc821` |
| 14 | `theorem` | [actionEquiv_apply](../../../../mathematics/Algebra/KTheory/FormalKK.lean/declarations/actionequiv-apply--5f6c8edb4769519b258ece46.md) | 173 | `result-track:5f6c8edb4769519b258ece46212c2b7507a7a74f45ec92d641f17da964cf70d1` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
