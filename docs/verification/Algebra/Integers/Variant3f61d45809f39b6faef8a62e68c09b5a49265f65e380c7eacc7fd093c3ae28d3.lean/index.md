# Verification target: GRWTSK.Algebra.Integers.Variant3f61d45809f39b6faef8a62e68c09b5a49265f65e380c7eacc7fd093c3ae28d3

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7ceb9d8380cef65676b0716f79394051c6d8c9ad",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Integers/Variant3f61d45809f39b6faef8a62e68c09b5a49265f65e380c7eacc7fd093c3ae28d3.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Integers/Variant3f61d45809f39b6faef8a62e68c09b5a49265f65e380c7eacc7fd093c3ae28d3.lean/index.md) · [Full source](../../../../mathematics/Algebra/Integers/Variant3f61d45809f39b6faef8a62e68c09b5a49265f65e380c7eacc7fd093c3ae28d3.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7ceb9d8380cef65676b0716f79394051c6d8c9ad`.

Source path: `GRWTSK/Algebra/Integers/Variant3f61d45809f39b6faef8a62e68c09b5a49265f65e380c7eacc7fd093c3ae28d3.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Integers/Variant3f61d45809f39b6faef8a62e68c09b5a49265f65e380c7eacc7fd093c3ae28d3.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.RingTheory.Valuation.Basic` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [integer](../../../../mathematics/Algebra/Integers/Variant3f61d45809f39b6faef8a62e68c09b5a49265f65e380c7eacc7fd093c3ae28d3.lean/declarations/integer--7252c767899fb6c5fd397268.md) | 30 | `declaration-track:7252c767899fb6c5fd3972680e84963129a8ca9355e93c4f68b27c6f18cacee9` |
| 2 | `structure` | [Integers](../../../../mathematics/Algebra/Integers/Variant3f61d45809f39b6faef8a62e68c09b5a49265f65e380c7eacc7fd093c3ae28d3.lean/declarations/integers--e791347bd138bf4d075ad537.md) | 51 | `declaration-track:e791347bd138bf4d075ad5376c149d093e0d97b49b350796191d8899bab7625e` |
| 3 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Integers/Variant3f61d45809f39b6faef8a62e68c09b5a49265f65e380c7eacc7fd093c3ae28d3.lean/declarations/instance--cb93d952e693123badb48a15.md) | 58 | `declaration-track:cb93d952e693123badb48a1509518bbeea731f90d0dcef73f8981380ecf634c2` |
| 4 | `theorem` | [integer.integers](../../../../mathematics/Algebra/Integers/Variant3f61d45809f39b6faef8a62e68c09b5a49265f65e380c7eacc7fd093c3ae28d3.lean/declarations/integer-integers--6637058b74133a7cc43adf1a.md) | 61 | `result-track:6637058b74133a7cc43adf1a2874e0f4efa5eb357cc484faf1091625737a42ae` |
| 5 | `theorem` | [one_of_isUnit](../../../../mathematics/Algebra/Integers/Variant3f61d45809f39b6faef8a62e68c09b5a49265f65e380c7eacc7fd093c3ae28d3.lean/declarations/one-of-isunit--b14523067f9835e50e27db39.md) | 72 | `result-track:b14523067f9835e50e27db391f5d6ea2fc255c849396bfbb142fe2028e0f8c61` |
| 6 | `theorem` | [isUnit_of_one](../../../../mathematics/Algebra/Integers/Variant3f61d45809f39b6faef8a62e68c09b5a49265f65e380c7eacc7fd093c3ae28d3.lean/declarations/isunit-of-one--c2c2e8928a201fd815d80700.md) | 80 | `result-track:c2c2e8928a201fd815d807006b52b8b6f3ccc19afe0fef62b2377c6331a18f45` |
| 7 | `theorem` | [le_of_dvd](../../../../mathematics/Algebra/Integers/Variant3f61d45809f39b6faef8a62e68c09b5a49265f65e380c7eacc7fd093c3ae28d3.lean/declarations/le-of-dvd--4fa63d32d3e83c7ff947e8cb.md) | 93 | `result-track:4fa63d32d3e83c7ff947e8cb202331dac0c42644f66ace126fb79cb600411935` |
| 8 | `theorem` | [dvd_of_le](../../../../mathematics/Algebra/Integers/Variant3f61d45809f39b6faef8a62e68c09b5a49265f65e380c7eacc7fd093c3ae28d3.lean/declarations/dvd-of-le--431cdcb40df5d368c452fd9d.md) | 111 | `result-track:431cdcb40df5d368c452fd9d0073031e120810f8333a2abbb76c9ddba0a64520` |
| 9 | `theorem` | [dvd_iff_le](../../../../mathematics/Algebra/Integers/Variant3f61d45809f39b6faef8a62e68c09b5a49265f65e380c7eacc7fd093c3ae28d3.lean/declarations/dvd-iff-le--4cd00271da05c19ae8475637.md) | 126 | `result-track:4cd00271da05c19ae8475637286d3f6de9fd214336bb02dcc5d9744a230ef20a` |
| 10 | `theorem` | [le_iff_dvd](../../../../mathematics/Algebra/Integers/Variant3f61d45809f39b6faef8a62e68c09b5a49265f65e380c7eacc7fd093c3ae28d3.lean/declarations/le-iff-dvd--e1a76a2f776395c2bf39314b.md) | 130 | `result-track:e1a76a2f776395c2bf39314beeb8df936cf6392b2b7af503cf2206107ce0019f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
