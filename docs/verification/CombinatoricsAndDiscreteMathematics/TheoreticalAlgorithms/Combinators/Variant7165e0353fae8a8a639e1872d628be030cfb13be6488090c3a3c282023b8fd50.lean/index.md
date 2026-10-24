# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Combinators.Variant7165e0353fae8a8a639e1872d628be030cfb13be6488090c3a3c282023b8fd50

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "dcfc1ac3fc4bb03ca80d0e97fc9d12e6f239e6fa",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Combinators/Variant7165e0353fae8a8a639e1872d628be030cfb13be6488090c3a3c282023b8fd50.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Combinators/Variant7165e0353fae8a8a639e1872d628be030cfb13be6488090c3a3c282023b8fd50.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Combinators/Variant7165e0353fae8a8a639e1872d628be030cfb13be6488090c3a3c282023b8fd50.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `dcfc1ac3fc4bb03ca80d0e97fc9d12e6f239e6fa`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Combinators/Variant7165e0353fae8a8a639e1872d628be030cfb13be6488090c3a3c282023b8fd50.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Combinators/Variant7165e0353fae8a8a639e1872d628be030cfb13be6488090c3a3c282023b8fd50.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Init` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [joinM](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Combinators/Variant7165e0353fae8a8a639e1872d628be030cfb13be6488090c3a3c282023b8fd50.lean/declarations/joinm--5868320d5b729677710349b7.md) | 24 | `declaration-track:5868320d5b729677710349b7114870ea361a061bba7f7222c047f243d9947db0` |
| 2 | `def` | [when](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Combinators/Variant7165e0353fae8a8a639e1872d628be030cfb13be6488090c3a3c282023b8fd50.lean/declarations/when--20430e41bd835fcae1080d4c.md) | 29 | `declaration-track:20430e41bd835fcae1080d4c674319f01c8e04b25812994450fb6cede35f0264` |
| 3 | `def` | [condM](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Combinators/Variant7165e0353fae8a8a639e1872d628be030cfb13be6488090c3a3c282023b8fd50.lean/declarations/condm--1f6805c210bb59c80e8bfbc7.md) | 34 | `declaration-track:1f6805c210bb59c80e8bfbc7f9d28dac19f44307e63fc465fecf18cdb74bbe93` |
| 4 | `def` | [whenM](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Combinators/Variant7165e0353fae8a8a639e1872d628be030cfb13be6488090c3a3c282023b8fd50.lean/declarations/whenm--d2b48b1d022045cdcf2b4c96.md) | 41 | `declaration-track:d2b48b1d022045cdcf2b4c9682b7b968502d621ed714a246a3d2f73a03e76827` |
| 5 | `def` | [mapM](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Combinators/Variant7165e0353fae8a8a639e1872d628be030cfb13be6488090c3a3c282023b8fd50.lean/declarations/mapm--49a9f499b3dff1a86cdfea17.md) | 47 | `declaration-track:49a9f499b3dff1a86cdfea172b94c5b93d473cbbf896659032b49feb7c33f2da` |
| 6 | `def` | [mapM'](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Combinators/Variant7165e0353fae8a8a639e1872d628be030cfb13be6488090c3a3c282023b8fd50.lean/declarations/mapm--2032aa7cd3f4aa58e70caa32.md) | 51 | `declaration-track:2032aa7cd3f4aa58e70caa32c16a06366f0255ca3b8993913151ac95c7811123` |
| 7 | `def` | [join](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Combinators/Variant7165e0353fae8a8a639e1872d628be030cfb13be6488090c3a3c282023b8fd50.lean/declarations/join--3fd9248228083b15bfcf8518.md) | 55 | `declaration-track:3fd9248228083b15bfcf85187917643aa342535a22aa8298ecc05984934debc4` |
| 8 | `def` | [filter](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Combinators/Variant7165e0353fae8a8a639e1872d628be030cfb13be6488090c3a3c282023b8fd50.lean/declarations/filter--82c980454eaa3fd1b04107d5.md) | 59 | `declaration-track:82c980454eaa3fd1b04107d53e11a1e9bebcf5a4dfdd74a3b970080fd1d3c021` |
| 9 | `def` | [foldl](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Combinators/Variant7165e0353fae8a8a639e1872d628be030cfb13be6488090c3a3c282023b8fd50.lean/declarations/foldl--55cf09316872e233ce5e2c07.md) | 63 | `declaration-track:55cf09316872e233ce5e2c07480ed6ad3848f4f86d00fdd5d1fd00c2bf6f9427` |
| 10 | `def` | [cond](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Combinators/Variant7165e0353fae8a8a639e1872d628be030cfb13be6488090c3a3c282023b8fd50.lean/declarations/cond--f49a610266b2ade9205cfa4e.md) | 67 | `declaration-track:f49a610266b2ade9205cfa4e54e5562830e55444debea0d1e72169ec486711c7` |
| 11 | `def` | [sequence](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Combinators/Variant7165e0353fae8a8a639e1872d628be030cfb13be6488090c3a3c282023b8fd50.lean/declarations/sequence--4d67b6f11ed9d61d51592f36.md) | 72 | `declaration-track:4d67b6f11ed9d61d51592f36b5bfcbfb6f978cce9c915cc3a0f76a6ec4ebee09` |
| 12 | `def` | [sequence'](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Combinators/Variant7165e0353fae8a8a639e1872d628be030cfb13be6488090c3a3c282023b8fd50.lean/declarations/sequence--b5a4efe961b166e3a5be2202.md) | 81 | `declaration-track:b5a4efe961b166e3a5be2202cfe5d48dd7747925154b4eb779f46b0ebbd077fd` |
| 13 | `def` | [whenb](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Combinators/Variant7165e0353fae8a8a639e1872d628be030cfb13be6488090c3a3c282023b8fd50.lean/declarations/whenb--a25d3f1ecf63b196bc2930e4.md) | 89 | `declaration-track:a25d3f1ecf63b196bc2930e4adf1c35e1d5e9d023aed2a14984589571ad1cb4b` |
| 14 | `def` | [unlessb](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Combinators/Variant7165e0353fae8a8a639e1872d628be030cfb13be6488090c3a3c282023b8fd50.lean/declarations/unlessb--aa73118d2a2ac14a9041d7e1.md) | 94 | `declaration-track:aa73118d2a2ac14a9041d7e1f98dd05cf14498357816fc7918d2cccaafb644c9` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
