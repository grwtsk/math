# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.OperatorOrder.Variant6253d8adccded8e623f0d1006046eb40c739a9e1d0bdc81a56fa6320f090b837

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8d369f64a568cbd63412d452bc657e748a3e049d",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/OperatorOrder/Variant6253d8adccded8e623f0d1006046eb40c739a9e1d0bdc81a56fa6320f090b837.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/OperatorOrder/Variant6253d8adccded8e623f0d1006046eb40c739a9e1d0bdc81a56fa6320f090b837.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/OperatorOrder/Variant6253d8adccded8e623f0d1006046eb40c739a9e1d0bdc81a56fa6320f090b837.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8d369f64a568cbd63412d452bc657e748a3e049d`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/OperatorOrder/Variant6253d8adccded8e623f0d1006046eb40c739a9e1d0bdc81a56fa6320f090b837.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/OperatorOrder/Variant6253d8adccded8e623f0d1006046eb40c739a9e1d0bdc81a56fa6320f090b837.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Order.Pi` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Rat.Lemmas` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.NormNum` — import line 3; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Ring` — import line 4; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [DiagonalOperator](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/OperatorOrder/Variant6253d8adccded8e623f0d1006046eb40c739a9e1d0bdc81a56fa6320f090b837.lean/declarations/diagonaloperator--9c46ffb1421b73bcf2bcdf3b.md) | 16 | `declaration-track:9c46ffb1421b73bcf2bcdf3b568c410e399288a1991811a4972fc760649195b8` |
| 2 | `def` | [OperatorNonnegative](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/OperatorOrder/Variant6253d8adccded8e623f0d1006046eb40c739a9e1d0bdc81a56fa6320f090b837.lean/declarations/operatornonnegative--a85a42343edafb5bde6094a9.md) | 19 | `declaration-track:a85a42343edafb5bde6094a95534118c648ec2e49178bf0c12b4dec2a9ec526b` |
| 3 | `def` | [OperatorLe](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/OperatorOrder/Variant6253d8adccded8e623f0d1006046eb40c739a9e1d0bdc81a56fa6320f090b837.lean/declarations/operatorle--8cba0f82db4a6e8dca532670.md) | 24 | `declaration-track:8cba0f82db4a6e8dca5326708fd92a05351e4cbbca2dd3d25f46c0ddc2c9f10a` |
| 4 | `def` | [identityOperator](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/OperatorOrder/Variant6253d8adccded8e623f0d1006046eb40c739a9e1d0bdc81a56fa6320f090b837.lean/declarations/identityoperator--1373419558e70f02f7c69e12.md) | 29 | `declaration-track:1373419558e70f02f7c69e12550a55ee0a2e73b5c47e252fcd706a8e666fc992` |
| 5 | `theorem` | [operatorLe_refl](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/OperatorOrder/Variant6253d8adccded8e623f0d1006046eb40c739a9e1d0bdc81a56fa6320f090b837.lean/declarations/operatorle-refl--56189ec7f17d54c5350a242e.md) | 34 | `result-track:56189ec7f17d54c5350a242e7f531406bc6e224dcbe4fb860f45dd29886a3f3c` |
| 6 | `theorem` | [operatorLe_trans](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/OperatorOrder/Variant6253d8adccded8e623f0d1006046eb40c739a9e1d0bdc81a56fa6320f090b837.lean/declarations/operatorle-trans--4100f57aa13a8054134e729e.md) | 40 | `result-track:4100f57aa13a8054134e729efcd1702594e272d515ad8c5ec1b0591d0a02745e` |
| 7 | `theorem` | [operator_increment_nonnegative](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/OperatorOrder/Variant6253d8adccded8e623f0d1006046eb40c739a9e1d0bdc81a56fa6320f090b837.lean/declarations/operator-increment-nonnegative--d132863c5c7922e3d1ee11d0.md) | 51 | `result-track:d132863c5c7922e3d1ee11d09d78ba3fa9f8ca6086268e80686c4bd73d239781` |
| 8 | `theorem` | [nonnegative_add](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/OperatorOrder/Variant6253d8adccded8e623f0d1006046eb40c739a9e1d0bdc81a56fa6320f090b837.lean/declarations/nonnegative-add--75d1bbc393859c80690af741.md) | 59 | `result-track:75d1bbc393859c80690af741c20e002687fb4a3c333c21ee7007f0cfa2d782a2` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
